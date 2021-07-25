
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:point_of_sale/constant/constants.dart';
import 'package:point_of_sale/utils/size_config.dart';
import 'package:point_of_sale/utils/styles/text.dart';

enum DefaultValidators { REQUIRED, VALID_EMAIL, VALID_PASSWORD }

// ignore: must_be_immutable
class AppTextField extends StatefulWidget {
  final String initialValue;
  final String placeholder;
  final String hint;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  TextEditingController controller;
  final FormFieldValidator<String> validator;
  final List<DefaultValidators> defaultValidators;
  final Widget suffix;
  final Widget prefix;
  final bool isMultiline;
  final bool enabled;
  final FocusNode focusNode;
  final int maxLength;
  final int multiLines;
  final bool readOnly;
  final bool enableInteractiveSelection;
  final bool obscureText;
  final VoidCallback onTap;
  final void Function(String) onFieldSubmitted;
  final void Function(String) onSaved;
  final void Function(String) onChanged;
  final bool showCharacter;
  AppTextField({
    Key key,
    this.initialValue,
    this.placeholder,
    this.hint,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.controller,
    this.validator,
    this.defaultValidators,
    this.suffix,
    this.prefix,
    this.isMultiline = false,
    this.enabled = true,
    this.readOnly = false,
    this.focusNode,
    this.maxLength,
    this.multiLines = 2,
    this.onFieldSubmitted,
    this.onSaved,
    this.onChanged,
    this.onTap,
    this.enableInteractiveSelection = true,
    this.showCharacter = false,
    this.obscureText = false
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isPasswordHidden = true;

  @override
  void initState() {
    _isPasswordHidden = true;
    super.initState();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  // helper func : for toggle password visibility
  Widget _togglePasswordButton(Icon iconData1, Icon iconData2) {
    return IconButton(
      onPressed: _togglePasswordVisibility,
      icon: _isPasswordHidden ? iconData1 : iconData2,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> formatters = [
      FilteringTextInputFormatter.singleLineFormatter,
    ];
    if (widget.maxLength != null && widget.maxLength > 0) {
      formatters.add(LengthLimitingTextInputFormatter(widget.maxLength));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0)
          ),
          child: widget.defaultValidators.contains(DefaultValidators.VALID_PASSWORD)
              ? TextFormField(
              enableInteractiveSelection:
              widget.enableInteractiveSelection,
              onTap: widget.onTap,
              readOnly: widget.readOnly,
              initialValue: widget.initialValue,
              focusNode: widget.focusNode,
              enabled: widget.enabled,
              inputFormatters: formatters,

              validator: (widget.defaultValidators == null
                  ? widget.validator
                  : (val) {
                if (widget.defaultValidators
                    .contains(DefaultValidators.REQUIRED) &&
                    val.isEmpty) {
                  return "Please enter ${widget.hint}";
                }
                if (widget.defaultValidators
                    .contains(DefaultValidators.VALID_EMAIL)) {
                  if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(val)) {
                    return "${widget.placeholder} is not valid";
                  }
                }
                if (widget.defaultValidators
                    .contains(DefaultValidators.VALID_PASSWORD)) {
                  if (val.length < 6 || val.length > 20) {
                    return '${widget.placeholder} must be betweem 5 and 20 characters';
                  }
                }
                if (widget.validator != null) {
                  return widget.validator(val);
                }
                return null;
              }),
              textInputAction: widget.textInputAction,
              controller: widget.controller,
              obscureText: widget.defaultValidators
                  .contains(DefaultValidators.VALID_PASSWORD)
                  ? _isPasswordHidden
                  : false,
              obscuringCharacter: '*',
              keyboardType: widget.textInputType,
              maxLines: widget.isMultiline ? widget.multiLines : 1,
              minLines: widget.isMultiline ? widget.multiLines : 1,
              onFieldSubmitted: widget.onFieldSubmitted,
              onSaved: widget.onSaved,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                labelText: widget.placeholder == null ? null:
                widget.defaultValidators
                    .contains(DefaultValidators.REQUIRED)
                    ? widget.placeholder + ' *'
                    : widget.placeholder + ' ',
                contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                suffixIcon: _togglePasswordButton(Icon(Icons.visibility_off), Icon(Icons.visibility)),
                prefixIcon: widget.prefix,
                fillColor: Colors.white,
                hintText: widget.hint,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:themeColor, width: 2.0),
                    borderRadius: BorderRadius.circular(0)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(0)
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(0)
                ),
                focusedErrorBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                    borderRadius: BorderRadius.circular(0)
                ),
                // labelStyle: TextFieldStyles.placeholderSmall
              ),
              style: TextStyles.bodyText1Black)
              : TextFormField(
                  onTap: widget.onTap,
                  readOnly: widget.readOnly,
                  initialValue: widget.initialValue,
                  focusNode: widget.focusNode,
                  enabled: widget.enabled,
                  inputFormatters: formatters,
                  validator: (widget.defaultValidators == null
                      ? widget.validator
                      : (val) {
                          if (widget.defaultValidators
                                  .contains(DefaultValidators.REQUIRED) &&
                              val.isEmpty) {
                            return "Please enter ${widget.hint}";
                          }
                          if (widget.defaultValidators
                              .contains(DefaultValidators.VALID_EMAIL)) {
                            if (!RegExp(
                                    r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                .hasMatch(val)) {
                              return "${widget.placeholder} is not valid";
                            }
                          }
                          if (widget.defaultValidators
                              .contains(DefaultValidators.VALID_PASSWORD)) {
                            if (val.length < 6 || val.length > 20) {
                              return '${widget.placeholder} must be betweem 5 and 20 characters';
                            }
                          }
                          if (widget.validator != null) {
                            return widget.validator(val);
                          }
                          return null;
                        }),
                  textInputAction: widget.textInputAction,
                  controller: widget.controller,
                  obscureText: widget.obscureText,
                  obscuringCharacter: '*',
                  keyboardType: widget.textInputType,
                  maxLines: widget.isMultiline ? widget.multiLines : 1,
                  minLines: widget.isMultiline ? widget.multiLines : 1,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  onSaved: widget.onSaved,
                  onChanged: widget.onChanged,
                  decoration: InputDecoration(
                      labelText : widget.placeholder == null ? null :
                      widget.defaultValidators
                              .contains(DefaultValidators.REQUIRED)
                          ? widget.placeholder + ' *'
                          : widget.placeholder + ' ',
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      suffixIcon: widget.suffix,
                      prefixIcon: widget.prefix,
                      hintText: widget.hint,
                    alignLabelWithHint: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:themeColor, width: 2.0),
                        borderRadius: BorderRadius.circular(0)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(0)
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(0)
                    ),
                    focusedErrorBorder:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(0)
                    )
                      // labelStyle: TextFieldStyles.placeholderSmall
                  ),
                  style: TextStyles.bodyText1Black),
        ),
        widget.showCharacter ? Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Text('${widget.controller.text.length}/${widget.maxLength} Character',style: TextStyle(color: Colors.grey,fontSize: SizeConfig.textMultiplier * 1.2),),
        ):SizedBox()
      ],
    );
  }
}
