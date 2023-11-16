Return-Path: <devicetree+bounces-16409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC747EE870
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 21:45:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94ABE1F25375
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 20:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A08862D021;
	Thu, 16 Nov 2023 20:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyKNnOgN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838364644F
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 20:44:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D2C4C433C8;
	Thu, 16 Nov 2023 20:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700167499;
	bh=9b50gVIpYoywMdVUtuLgK1S6vFQ1hew22S0Iy/w9p5Y=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eyKNnOgNeiYsp35aNDxzb7ZO+JfnynFlAi5J+iGg13cmXsNh/Yd5jpe4wINahH+xi
	 jzB9ybd3k3BdAVxVNXpWtaQzrG1A6pVLbuKzcDQvMLALBuwI9ttviReDTxtMgS9szI
	 Cld3e1okiND5qt6ye3/UreAojsIgpHnYLy3K/afFQfDJZiFlH6nI3Mql6wY+LSHKqF
	 z0aUPjncNUyAc0WbyVQIXEI2CZ7bpJ7nD6b7WD9Xzb7Bl/2Po71xrS8eVnRKJTJOk+
	 GBeLZFcWOb8KLxRM1TVIyyR7pI7JI19WhHR1oUKiDjY6Enheeiv8oEJ3BxiXt4qZ+p
	 8/OrggUubrUkg==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-507a55302e0so1954574e87.0;
        Thu, 16 Nov 2023 12:44:58 -0800 (PST)
X-Gm-Message-State: AOJu0YzNLoalP8wn4DOkt7vGGOmNGIbLcliaAxvnRPwMsbWEyslVISoI
	6VlTbinS43qth1nV18fnUt0Me69Rrw8mhGI4dQ==
X-Google-Smtp-Source: AGHT+IH9Sz7SD+wnyqgJo0kTbS25aEU2miTAGbGFnL7WiDRW6zRI5NiXNBxSUeY9BJpIG/8kqChtvZSzDyxULLiDkak=
X-Received: by 2002:a19:9107:0:b0:507:a58f:79ad with SMTP id
 t7-20020a199107000000b00507a58f79admr10976106lfd.61.1700167497202; Thu, 16
 Nov 2023 12:44:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231116181218.18886-1-krzysztof.kozlowski@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 Nov 2023 14:44:44 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLxKWXVXp6+-yNxvHifZHEDvMdQChR7AHD9STJw_S9UiA@mail.gmail.com>
Message-ID: <CAL_JsqLxKWXVXp6+-yNxvHifZHEDvMdQChR7AHD9STJw_S9UiA@mail.gmail.com>
Subject: Re: [PATCH] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Bjorn Andersson <andersson@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <michal.simek@amd.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 12:12=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Document preferred coding style for Devicetree sources (DTS and DTSI),
> to bring consistency among all (sub)architectures and ease in reviews.

Thanks for doing this.

>
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: Michal Simek <michal.simek@amd.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Olof Johansson <olof@lixom.net>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Merging idea: Rob/DT bindings
> ---
>  Documentation/devicetree/bindings/index.rst   |   1 +
>  .../devicetree/bindings/writing-dts.rst       | 137 ++++++++++++++++++
>  2 files changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/writing-dts.rst

Perhaps dts-coding-style.rst

After adding writing-schema, I realized the difference between
writing-schema and writing-bindings isn't all that clear. I never got
around to renaming things.

>
> diff --git a/Documentation/devicetree/bindings/index.rst b/Documentation/=
devicetree/bindings/index.rst
> index d9002a3a0abb..975449be4862 100644
> --- a/Documentation/devicetree/bindings/index.rst
> +++ b/Documentation/devicetree/bindings/index.rst
> @@ -5,5 +5,6 @@
>
>     ABI
>     writing-bindings
> +   writing-dts
>     writing-schema
>     submitting-patches
> diff --git a/Documentation/devicetree/bindings/writing-dts.rst b/Document=
ation/devicetree/bindings/writing-dts.rst
> new file mode 100644
> index 000000000000..10c477ec1eed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/writing-dts.rst
> @@ -0,0 +1,137 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +.. _writingdts:
> +
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> +Writing Devicetree Sources (DTS) - DTS Coding Style
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> +
> +When writing Devicetree Sources (DTS) please observe below guidelines.  =
They
> +should be considered complementary to any rules expressed already in Dev=
icetree
> +Specification and dtc compiler (including W=3D1 and W=3D2 builds).
> +
> +Individual architectures and sub-architectures can add additional rules,=
 making
> +the style stricter.
> +
> +Naming and Valid Characters
> +---------------------------
> +
> +1. Node and property names are allowed to use only:
> +
> +   * lowercase characters:: [a-z]
> +   * digits:: [0-9]
> +   * dash:: -
> +
> +2. Labels are allowed to use only:
> +
> +   * lowercase characters:: [a-z]
> +   * digits:: [0-9]
> +   * underscore:: _
> +
> +3. Unit addresses should use lowercase hex, without leading zeros (paddi=
ng).

Strictly speaking, the unit-address is whatever a bus defines, but
yes, by default, that is the format.

> +
> +4. Hex values in properties, e.g. "reg", should use lowercase hex.  Any =
address
> +   part can be padded with leading zeros.
> +
> +Example::
> +
> +       gpi_dma2: dma-controller@800000 {
> +               compatible =3D "qcom,sm8550-gpi-dma", "qcom,sm6350-gpi-dm=
a";
> +               reg =3D <0x0 0x00800000 0x0 0x60000>;
> +       }
> +
> +Order of Nodes
> +--------------
> +
> +1. Nodes within any bus, thus using unit addresses for children, shall b=
e
> +   ordered incrementally by unit address.
> +
> +2. Nodes without unit addresses should be ordered alpha-numerically.
> +
> +3. When extending nodes in board DTS via &label, the entries should be o=
rdered
> +   alpha-numerically.

Or matching the original node definition order?

> +
> +Example::
> +
> +       // SoC DTSI
> +
> +       \ {

/ {

> +               cpus {
> +                       // ...
> +               };
> +
> +               psci {
> +                       // ...
> +               };
> +
> +               soc@ {
> +                       dma: dma-controller@10000 {
> +                               // ...
> +                       };
> +
> +                       clk: clock-controller@80000 {
> +                               // ...
> +                       };
> +               };
> +       };
> +
> +       // Board DTS
> +
> +       &clk {
> +               // ...
> +       };
> +
> +       &dma {
> +               // ...
> +       };
> +
> +
> +Order of Properties in Device Node
> +----------------------------------
> +
> +Following order of properties in device nodes is preferred:
> +
> +1. compatible
> +2. reg
> +3. ranges

> +4. All properties with values
> +5. Boolean properties

I make this like schemas, standard/common properties first, then
vendor specific properties.

> +6. status (if applicable)
> +7. Child nodes
> +
> +The "status" property is by default "okay", thus it can be omitted.
> +
> +Example::
> +
> +       // SoC DTSI
> +
> +       usb_1_hsphy: phy@88e3000 {
> +               compatible =3D "qcom,sm8550-snps-eusb2-phy";
> +               reg =3D <0x0 0x088e3000 0x0 0x154>;
> +               #phy-cells =3D <0>;
> +               resets =3D <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +               status =3D "disabled";
> +       };
> +
> +       // Board DTS
> +
> +       &usb_1_hsphy {
> +               clocks =3D <&tcsr TCSR_USB2_CLKREF_EN>;
> +               clock-names =3D "ref";
> +               status =3D "okay";
> +       };
> +
> +
> +Indentation
> +-----------
> +
> +1. Use indentation according to :ref:`codingstyle`.
> +2. For arrays spanning across lines, preferred is to align the continued
> +   entries with opening < from first line.
> +
> +Example::
> +
> +       thermal-sensor@c271000 {
> +               compatible =3D "qcom,sm8550-tsens", "qcom,tsens-v2";
> +               reg =3D <0x0 0x0c271000 0x0 0x1000>,
> +                     <0x0 0x0c222000 0x0 0x1000>;

You should cover the <> style too, meaning <> around each logical entry.

> +       };
> --
> 2.34.1
>

