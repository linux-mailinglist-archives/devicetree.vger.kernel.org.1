Return-Path: <devicetree+bounces-111128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1082F99D5A9
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 19:37:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B60F1C22F3E
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1D91BDABD;
	Mon, 14 Oct 2024 17:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C92HOHSp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2290B29A0;
	Mon, 14 Oct 2024 17:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728927421; cv=none; b=tBUC7AntbnbutSGAVI6igzRlc4KOn8b58yFAGthsA1LYftcG9klEgejBQUQg4CqEIkqPTlbr1BQoG8NXJ/8KAYYIfqRyzYXlz1/vjN87yiRxpepHTj8CXX9N+uVsVmdnIi70w9nliV+4HCiPZ4ZGMxDFrB7xjZgPgJ4QbhYidJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728927421; c=relaxed/simple;
	bh=qOvyEqW0fULJAxjg0DiRegvK4wtMXhzBMJMQuY/MzBY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NIGE7z576uiXIbkLzFFRkIa3s5KY5PUJ67bZ6rUwInXhQq/q6TgJ2APsDNFVy5j0nehgXKS2FrKB0EuP7BlQ6QTsINRHZn83wQnWOdf/OJx1ys79R8T1YSEJyMWHCYbKEe+K0dxI9Dsf0oJ4ilxTWx0W9uDqqFbWpdPv2DhGM70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C92HOHSp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A78C2C4CED9;
	Mon, 14 Oct 2024 17:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728927419;
	bh=qOvyEqW0fULJAxjg0DiRegvK4wtMXhzBMJMQuY/MzBY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=C92HOHSpdPZ2m2MTBl5C01uBqvwganHVQJ11JVWSFZc+p6Q+GM1ldlDnAdAE4pihz
	 fe8lXRqIsdShk0qnHOo+LGMx9/xcbyDnCETo46EKeg5/OeMVUx727b6HaOjZ/em9Ar
	 FrjiZOlKj9l6LoxiqKkXNHo9F9ZtKwgS+8VB4TSqTTTEJJygnsDE21sS/ARdlGcguL
	 cbp4amC7QexMfQIikRuXa0L4cHQ3nY6oB0c9T3YSP8nuvr0BdFwymPUNaxGfXrR2ah
	 PGuuwfPjMiAPosP1tL5QGOEqL7nRCEoYqP4V8uVcjIxL94dM3yi2t40Ga0ZznovkKX
	 KM9ENEoF3DjIg==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539fbbadf83so1107244e87.0;
        Mon, 14 Oct 2024 10:36:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUCsZRjGVgKNpUGfJj/8LUxKjvx4AqfBCarC+qtnErfw7aQyd4W0RDaavah08qZWNpEtlZFVzVCuQSs@vger.kernel.org, AJvYcCX1Fdcoakkp3zaqcOBadKEAxG3EPxkqusQYZyJAx7CT8AJDb+QC/YSwUe5DWbuExsvsTjxdkJzZDiVx+TeN@vger.kernel.org
X-Gm-Message-State: AOJu0YyXPQDUuPInOySlPJ6kRLGQdHy6GOVUi7FGAF2Rbfbt3CjVgAIr
	49wWpUP5J7f1en6OT2HGbcN1HaCB71x6Q08ENMFaKEb1/xMnfKm3AB0ZuVudxcu+PEgXDowruXx
	aB76EXMjUAgPdkgluUt1rypuqKw==
X-Google-Smtp-Source: AGHT+IFf6Y0wAjF+7yqTeCoSqo7n28uDDtB9UljeOD1dh4pkGJYIoadHhPjcP9Tq4VyMNuRvNFdymi1nGdUVFgwjr9o=
X-Received: by 2002:a05:6512:114f:b0:535:6992:f2cb with SMTP id
 2adb3069b0e04-539da586e45mr5694104e87.42.1728927417791; Mon, 14 Oct 2024
 10:36:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014085148.71105-1-angelogioacchino.delregno@collabora.com> <20241014085148.71105-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20241014085148.71105-2-angelogioacchino.delregno@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Oct 2024 12:36:44 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+hpTPCkuXoCF88nyS_D+iFZB5osrt1q04RxffDsY7cXw@mail.gmail.com>
Message-ID: <CAL_Jsq+hpTPCkuXoCF88nyS_D+iFZB5osrt1q04RxffDsY7cXw@mail.gmail.com>
Subject: Re: [PATCH v12 1/3] dt-bindings: display: mediatek: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, matthias.bgg@gmail.com, shawn.sung@mediatek.com, 
	yu-chang.lee@mediatek.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	kernel@collabora.com, sui.jingfeng@linux.dev, michael@walle.cc, 
	sjoerd@collabora.com, Alexandre Mergnat <amergnat@baylibre.com>, 
	Michael Walle <mwalle@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2024 at 3:51=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The display IPs in MediaTek SoCs support being interconnected with
> different instances of DDP IPs (for example, merge0 or merge1) and/or
> with different DDP IPs (for example, rdma can be connected with either
> color, dpi, dsi, merge, etc), forming a full Display Data Path that
> ends with an actual display.
>
> The final display pipeline is effectively board specific, as it does
> depend on the display that is attached to it, and eventually on the
> sensors supported by the board (for example, Adaptive Ambient Light
> would need an Ambient Light Sensor, otherwise it's pointless!), other
> than the output type.
>
> Add support for OF graphs to most of the MediaTek DDP (display) bindings
> to add flexibility to build custom hardware paths, hence enabling board
> specific configuration of the display pipeline and allowing to finally
> migrate away from using hardcoded paths.
>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
> Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Tested-by: Michael Walle <mwalle@kernel.org> # on kontron-sbc-i1200
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../display/mediatek/mediatek,aal.yaml        | 40 +++++++++++++++++++
>  .../display/mediatek/mediatek,ccorr.yaml      | 21 ++++++++++
>  .../display/mediatek/mediatek,color.yaml      | 22 ++++++++++
>  .../display/mediatek/mediatek,dither.yaml     | 22 ++++++++++
>  .../display/mediatek/mediatek,dpi.yaml        | 25 +++++++++++-
>  .../display/mediatek/mediatek,dsc.yaml        | 24 +++++++++++
>  .../display/mediatek/mediatek,dsi.yaml        | 27 ++++++++++++-
>  .../display/mediatek/mediatek,ethdr.yaml      | 22 ++++++++++
>  .../display/mediatek/mediatek,gamma.yaml      | 19 +++++++++
>  .../display/mediatek/mediatek,merge.yaml      | 23 +++++++++++
>  .../display/mediatek/mediatek,od.yaml         | 22 ++++++++++
>  .../display/mediatek/mediatek,ovl-2l.yaml     | 22 ++++++++++
>  .../display/mediatek/mediatek,ovl.yaml        | 22 ++++++++++
>  .../display/mediatek/mediatek,postmask.yaml   | 21 ++++++++++
>  .../display/mediatek/mediatek,rdma.yaml       | 22 ++++++++++
>  .../display/mediatek/mediatek,ufoe.yaml       | 21 ++++++++++
>  16 files changed, 372 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.=
yaml
> index cf24434854ff..47ddba5c41af 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yam=
l
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yam=
l
> @@ -62,6 +62,27 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description:
> +      Input and output ports can have multiple endpoints, each of those
> +      connects to either the primary, secondary, etc, display pipeline.
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: AAL input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          AAL output to the next component's input, for example could be=
 one
> +          of many gamma, overdrive or other blocks.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
>  required:
>    - compatible
>    - reg
> @@ -89,5 +110,24 @@ examples:
>             power-domains =3D <&scpsys MT8173_POWER_DOMAIN_MM>;
>             clocks =3D <&mmsys CLK_MM_DISP_AAL>;
>             mediatek,gce-client-reg =3D <&gce SUBSYS_1401XXXX 0x5000 0x10=
00>;
> +
> +           ports {
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               port@0 {
> +                   reg =3D <0>;
> +                   aal0_in: endpoint {
> +                       remote-endpoint =3D <&ccorr0_out>;
> +                   };
> +               };
> +
> +               port@1 {
> +                   reg =3D <1>;
> +                   aal0_out: endpoint {
> +                       remote-endpoint =3D <&gamma0_in>;
> +                   };
> +               };
> +           };
>         };
>      };
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,cc=
orr.yaml
> index 9f8366763831..fca8e7bb0cbc 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.y=
aml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ccorr.y=
aml
> @@ -57,6 +57,27 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description:
> +      Input and output ports can have multiple endpoints, each of those
> +      connects to either the primary, secondary, etc, display pipeline.
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: CCORR input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          CCORR output to the input of the next desired component in the
> +          display pipeline, usually only one of the available AAL blocks=
.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,co=
lor.yaml
> index 7df786bbad20..6160439ce4d7 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.y=
aml
> @@ -65,6 +65,28 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description:
> +      Input and output ports can have multiple endpoints, each of those
> +      connects to either the primary, secondary, etc, display pipeline.
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: COLOR input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          COLOR output to the input of the next desired component in the
> +          display pipeline, for example one of the available CCORR or AA=
L
> +          blocks.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dither.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,d=
ither.yaml
> index 6fceb1f95d2a..abaf27916d13 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.=
yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dither.=
yaml
> @@ -56,6 +56,28 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      maxItems: 1
>
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description:
> +      Input and output ports can have multiple endpoints, each of those
> +      connects to either the primary, secondary, etc, display pipeline.
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: DITHER input, usually from a POSTMASK or GAMMA bloc=
k.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          DITHER output to the input of the next desired component in th=
e
> +          display pipeline, for example one of the available DSC compres=
sors,
> +          DP_INTF, DSI, LVDS or others.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
>  required:
>    - compatible
>    - reg
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.=
yaml
> index 3a82aec9021c..b567e3d58aa1 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yam=
l
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yam=
l
> @@ -71,13 +71,34 @@ properties:
>        Output port node. This port should be connected to the input port =
of an
>        attached HDMI, LVDS or DisplayPort encoder chip.
>
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: DPI input port
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: DPI output to an HDMI, LVDS or DisplayPort encoder =
input

This is wrong. The existing 'port' is the output. 'port' and 'port@0'
are treated as the same thing. Since you are adding an input port, the
new port has to be 'port@1' (or any number but 0).

I haven't looked at the driver code, but it should request port 0 and
always get the output port. And requesting port 1 will return an error
or the input port.

Rob

