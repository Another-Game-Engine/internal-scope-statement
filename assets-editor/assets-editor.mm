<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1397042743272" ID="ID_194710252" MODIFIED="1397043054149" TEXT="Main">
<node CREATED="1397042752511" ID="ID_1093980872" MODIFIED="1397042956670" POSITION="right" TEXT="AssetsManager">
<attribute_layout NAME_WIDTH="274" VALUE_WIDTH="274"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;RawFile&gt;&gt;" VALUE="_rawFiles"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;CookedFile&gt;&gt;" VALUE="_cookedFiles"/>
<attribute NAME="std::map&lt;std::string, std::shared_ptr&lt;MediaFile&gt;&gt;" VALUE="_mediaFiles"/>
</node>
<node CREATED="1397042962290" ID="ID_1385544368" MODIFIED="1397042998863" POSITION="left" TEXT="AFile">
<attribute NAME="std::string" VALUE="_name"/>
<attribute NAME="File" VALUE="_file"/>
<node CREATED="1397043054874" ID="ID_966034993" MODIFIED="1397043170720" TEXT="CookedFile : public AFile">
<attribute_layout NAME_WIDTH="63" VALUE_WIDTH="77"/>
<attribute NAME="Timestamp" VALUE="_cookedTime"/>
</node>
<node CREATED="1397043003138" ID="ID_73770902" MODIFIED="1397043172344" TEXT="RawFile : public AFile">
<attribute_layout NAME_WIDTH="63" VALUE_WIDTH="72"/>
<attribute NAME="Timestamp" VALUE="_editedTime"/>
<node CREATED="1397043185136" ID="ID_25962918" MODIFIED="1397043263278" TEXT="TextureFile : public RawFile">
<attribute NAME="GLByte*" VALUE="_datas"/>
<attribute NAME="std::uint_32" VALUE="_width"/>
<attribute NAME="std::uint_32" VALUE="_height"/>
<attribute NAME="..." VALUE="..."/>
</node>
</node>
</node>
</node>
</map>
