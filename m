Return-Path: <devicetree+bounces-112088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E379A0F62
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1650A1C22D40
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 16:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C460320F5DD;
	Wed, 16 Oct 2024 16:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISX0itdK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BC120F5B1;
	Wed, 16 Oct 2024 16:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729095004; cv=none; b=WNZfqgBOuxcD4Rk2merDv13gQhJZ8ZfAc9jFj+fRsIcWj8n4e7uahLsctWNPT4qpMlgnI+9ZpLs3avUarXTQzM0YAc52Kb2gL6o8BIVo0bFQceJx27JLy4De/up3suNOeKE+XSY71tEhMDqjrUKIFPgj1MaKDT6TZCqvVWR2gD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729095004; c=relaxed/simple;
	bh=/8oRRUNfNwnsU8fQTXriVpNbZe0khd8XO4L+5CG/c30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dvQdmsGaFr/BUFcUcCqN9+z75oXGOZwSRsM6eLr4VlGbFJtDUXM+64+VE11rGdAKDeZ91y+j0KBBVsuDVhqtJ+gx03CABl1R/YiGhfyl0plC776dv/IqtXc07YOr3Bn7JhbIyoL7dVjK6IORl0MZQLHUjEBCFrssXtHtDd31DXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISX0itdK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12960C4CED5;
	Wed, 16 Oct 2024 16:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729095004;
	bh=/8oRRUNfNwnsU8fQTXriVpNbZe0khd8XO4L+5CG/c30=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ISX0itdKvxuhzkcXl31Jr+FH7gR8rHpf0hU180oSkKAI1qRNn/OFaWmdP3wZO0z7Z
	 MKG3pvsRPPAggRL2plm9MkFvozeSSaRIVazkGHOI9gRTGtlKz3zbrjMNTtsZTLkws8
	 fqLAcZFyUzyJsF1Q9pIt+bJIaVnejKhn1hMu0KhW4m5PdK5i3998NZP0pAS9GRJaWb
	 C1tfXOQ2mWeXxJWAD9uX42cOAD9pQpO+omF6GcrGARmD1mMCTzOrPc/T7PpNUYka8X
	 EPMdCqtMbiTYrhCKOHUz5XWvwqkbSLz8hdPstzD434e7edqHaYhXYlQtzbFpBisLyZ
	 pkRDYxyz8MYxQ==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539e4b7409fso1221538e87.0;
        Wed, 16 Oct 2024 09:10:03 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUdx0hGHmjKZqlxET8BNTY5R4qwssOygZsfL9YnkRw6AltAEM384CyRlljdDTOewXEAUxrRS0zM/AWO@vger.kernel.org, AJvYcCVI7+AVo1QaMHmOr/8X4xVR6T2efNSme/lFnYYDAZlvci9Gal/w+g3fYrVOJgqB/YLcridzkB31J0z0UGwD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5uajElS1K02jNbYeJ0E6z+REyu/N+bcXMuR8aZQztbEJ3KNzo
	mxsn5KoIoWBTZv3qPbAzxvfQAolIQg98Q97UA4L5ctGLglST5pjBzOh0GuhjYRptSO9bs852i29
	F/Rgv5capcsrAdb1HA/xnv5JkGQ==
X-Google-Smtp-Source: AGHT+IF/6QT0m3wzFuScuoqgOYXxIDr4vByNBtyuhCH5zx/e1EquI+cWB+AcczT01dHOus+rfCXDCHNzCj4kuz2U5mk=
X-Received: by 2002:a05:6512:308d:b0:539:e2cc:d37c with SMTP id
 2adb3069b0e04-53a0c6a76e0mr45312e87.3.1729095002207; Wed, 16 Oct 2024
 09:10:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241014085148.71105-1-angelogioacchino.delregno@collabora.com>
 <20241014085148.71105-2-angelogioacchino.delregno@collabora.com>
 <CAL_Jsq+hpTPCkuXoCF88nyS_D+iFZB5osrt1q04RxffDsY7cXw@mail.gmail.com>
 <ec14b01e-7237-4f52-82a6-b8de42fb120b@collabora.com> <20241015134802.GB447702-robh@kernel.org>
 <e5612a1d-b609-4f4a-aec4-601f7060e4cf@collabora.com> <CAL_JsqLsFbJbLn76QYwzCfu+bmpjfsxCDp_OuKAFnktMXMbTBA@mail.gmail.com>
 <ff272e72-c5a2-4b67-a8c9-ee41219aa1bb@collabora.com>
In-Reply-To: <ff272e72-c5a2-4b67-a8c9-ee41219aa1bb@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 16 Oct 2024 11:09:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKXD=2zwckmNvCuZ2qyaopaxDE7WnaYUXkWPXBK2EYBQg@mail.gmail.com>
Message-ID: <CAL_JsqKXD=2zwckmNvCuZ2qyaopaxDE7WnaYUXkWPXBK2EYBQg@mail.gmail.com>
Subject: Re: [PATCH v12 1/3] dt-bindings: display: mediatek: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, matthias.bgg@kernel.org, 
	chunkuang.hu@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, shawn.sung@mediatek.com, yu-chang.lee@mediatek.com, 
	ck.hu@mediatek.com, jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	wenst@chromium.org, kernel@collabora.com, sui.jingfeng@linux.dev, 
	michael@walle.cc, sjoerd@collabora.com, 
	Alexandre Mergnat <amergnat@baylibre.com>, Michael Walle <mwalle@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 10:26=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 16/10/24 16:00, Rob Herring ha scritto:
> > On Wed, Oct 16, 2024 at 4:23=E2=80=AFAM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 15/10/24 15:48, Rob Herring ha scritto:
> >>> On Tue, Oct 15, 2024 at 10:32:22AM +0200, AngeloGioacchino Del Regno =
wrote:
> >>>> Il 14/10/24 19:36, Rob Herring ha scritto:
> >>>>> On Mon, Oct 14, 2024 at 3:51=E2=80=AFAM AngeloGioacchino Del Regno
> >>>>> <angelogioacchino.delregno@collabora.com> wrote:
> >>>>>>
> >>>>>> The display IPs in MediaTek SoCs support being interconnected with
> >>>>>> different instances of DDP IPs (for example, merge0 or merge1) and=
/or
> >>>>>> with different DDP IPs (for example, rdma can be connected with ei=
ther
> >>>>>> color, dpi, dsi, merge, etc), forming a full Display Data Path tha=
t
> >>>>>> ends with an actual display.
> >>>>>>
> >>>>>> The final display pipeline is effectively board specific, as it do=
es
> >>>>>> depend on the display that is attached to it, and eventually on th=
e
> >>>>>> sensors supported by the board (for example, Adaptive Ambient Ligh=
t
> >>>>>> would need an Ambient Light Sensor, otherwise it's pointless!), ot=
her
> >>>>>> than the output type.
> >>>>>>
> >>>>>> Add support for OF graphs to most of the MediaTek DDP (display) bi=
ndings
> >>>>>> to add flexibility to build custom hardware paths, hence enabling =
board
> >>>>>> specific configuration of the display pipeline and allowing to fin=
ally
> >>>>>> migrate away from using hardcoded paths.
> >>>>>>
> >>>>>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> >>>>>> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
> >>>>>> Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
> >>>>>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >>>>>> Tested-by: Michael Walle <mwalle@kernel.org> # on kontron-sbc-i120=
0
> >>>>>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delreg=
no@collabora.com>
> >>>>>> ---
> >>>>>>     .../display/mediatek/mediatek,aal.yaml        | 40 +++++++++++=
++++++++
> >>>>>>     .../display/mediatek/mediatek,ccorr.yaml      | 21 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,color.yaml      | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,dither.yaml     | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,dpi.yaml        | 25 +++++++++++=
-
> >>>>>>     .../display/mediatek/mediatek,dsc.yaml        | 24 +++++++++++
> >>>>>>     .../display/mediatek/mediatek,dsi.yaml        | 27 +++++++++++=
+-
> >>>>>>     .../display/mediatek/mediatek,ethdr.yaml      | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,gamma.yaml      | 19 +++++++++
> >>>>>>     .../display/mediatek/mediatek,merge.yaml      | 23 +++++++++++
> >>>>>>     .../display/mediatek/mediatek,od.yaml         | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,ovl-2l.yaml     | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,ovl.yaml        | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,postmask.yaml   | 21 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,rdma.yaml       | 22 ++++++++++
> >>>>>>     .../display/mediatek/mediatek,ufoe.yaml       | 21 ++++++++++
> >>>>>>     16 files changed, 372 insertions(+), 3 deletions(-)
> >>>>>>
> >>>>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/me=
diatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediat=
ek,aal.yaml
> >>>>>> index cf24434854ff..47ddba5c41af 100644
> >>>>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
aal.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,=
aal.yaml
> >>>>>> @@ -62,6 +62,27 @@ properties:
> >>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-array
> >>>>>>         maxItems: 1
> >>>>>>
> >>>>>> +  ports:
> >>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>> +    description:
> >>>>>> +      Input and output ports can have multiple endpoints, each of=
 those
> >>>>>> +      connects to either the primary, secondary, etc, display pip=
eline.
> >>>>>> +
> >>>>>> +    properties:
> >>>>>> +      port@0:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: AAL input port
> >>>>>> +
> >>>>>> +      port@1:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description:
> >>>>>> +          AAL output to the next component's input, for example c=
ould be one
> >>>>>> +          of many gamma, overdrive or other blocks.
> >>>>>> +
> >>>>>> +    required:
> >>>>>> +      - port@0
> >>>>>> +      - port@1
> >>>>>> +
> >>>>>>     required:
> >>>>>>       - compatible
> >>>>>>       - reg
> >>>>>> @@ -89,5 +110,24 @@ examples:
> >>>>>>                power-domains =3D <&scpsys MT8173_POWER_DOMAIN_MM>;
> >>>>>>                clocks =3D <&mmsys CLK_MM_DISP_AAL>;
> >>>>>>                mediatek,gce-client-reg =3D <&gce SUBSYS_1401XXXX 0=
x5000 0x1000>;
> >>>>>> +
> >>>>>> +           ports {
> >>>>>> +               #address-cells =3D <1>;
> >>>>>> +               #size-cells =3D <0>;
> >>>>>> +
> >>>>>> +               port@0 {
> >>>>>> +                   reg =3D <0>;
> >>>>>> +                   aal0_in: endpoint {
> >>>>>> +                       remote-endpoint =3D <&ccorr0_out>;
> >>>>>> +                   };
> >>>>>> +               };
> >>>>>> +
> >>>>>> +               port@1 {
> >>>>>> +                   reg =3D <1>;
> >>>>>> +                   aal0_out: endpoint {
> >>>>>> +                       remote-endpoint =3D <&gamma0_in>;
> >>>>>> +                   };
> >>>>>> +               };
> >>>>>> +           };
> >>>>>>            };
> >>>>>>         };
> >>>>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/me=
diatek,ccorr.yaml b/Documentation/devicetree/bindings/display/mediatek/medi=
atek,ccorr.yaml
> >>>>>> index 9f8366763831..fca8e7bb0cbc 100644
> >>>>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
ccorr.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,=
ccorr.yaml
> >>>>>> @@ -57,6 +57,27 @@ properties:
> >>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-array
> >>>>>>         maxItems: 1
> >>>>>>
> >>>>>> +  ports:
> >>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>> +    description:
> >>>>>> +      Input and output ports can have multiple endpoints, each of=
 those
> >>>>>> +      connects to either the primary, secondary, etc, display pip=
eline.
> >>>>>> +
> >>>>>> +    properties:
> >>>>>> +      port@0:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: CCORR input port
> >>>>>> +
> >>>>>> +      port@1:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description:
> >>>>>> +          CCORR output to the input of the next desired component=
 in the
> >>>>>> +          display pipeline, usually only one of the available AAL=
 blocks.
> >>>>>> +
> >>>>>> +    required:
> >>>>>> +      - port@0
> >>>>>> +      - port@1
> >>>>>> +
> >>>>>>     required:
> >>>>>>       - compatible
> >>>>>>       - reg
> >>>>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/me=
diatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/medi=
atek,color.yaml
> >>>>>> index 7df786bbad20..6160439ce4d7 100644
> >>>>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
color.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,=
color.yaml
> >>>>>> @@ -65,6 +65,28 @@ properties:
> >>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-array
> >>>>>>         maxItems: 1
> >>>>>>
> >>>>>> +  ports:
> >>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>> +    description:
> >>>>>> +      Input and output ports can have multiple endpoints, each of=
 those
> >>>>>> +      connects to either the primary, secondary, etc, display pip=
eline.
> >>>>>> +
> >>>>>> +    properties:
> >>>>>> +      port@0:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: COLOR input port
> >>>>>> +
> >>>>>> +      port@1:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description:
> >>>>>> +          COLOR output to the input of the next desired component=
 in the
> >>>>>> +          display pipeline, for example one of the available CCOR=
R or AAL
> >>>>>> +          blocks.
> >>>>>> +
> >>>>>> +    required:
> >>>>>> +      - port@0
> >>>>>> +      - port@1
> >>>>>> +
> >>>>>>     required:
> >>>>>>       - compatible
> >>>>>>       - reg
> >>>>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/me=
diatek,dither.yaml b/Documentation/devicetree/bindings/display/mediatek/med=
iatek,dither.yaml
> >>>>>> index 6fceb1f95d2a..abaf27916d13 100644
> >>>>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dither.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dither.yaml
> >>>>>> @@ -56,6 +56,28 @@ properties:
> >>>>>>         $ref: /schemas/types.yaml#/definitions/phandle-array
> >>>>>>         maxItems: 1
> >>>>>>
> >>>>>> +  ports:
> >>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>> +    description:
> >>>>>> +      Input and output ports can have multiple endpoints, each of=
 those
> >>>>>> +      connects to either the primary, secondary, etc, display pip=
eline.
> >>>>>> +
> >>>>>> +    properties:
> >>>>>> +      port@0:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: DITHER input, usually from a POSTMASK or GAM=
MA block.
> >>>>>> +
> >>>>>> +      port@1:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description:
> >>>>>> +          DITHER output to the input of the next desired componen=
t in the
> >>>>>> +          display pipeline, for example one of the available DSC =
compressors,
> >>>>>> +          DP_INTF, DSI, LVDS or others.
> >>>>>> +
> >>>>>> +    required:
> >>>>>> +      - port@0
> >>>>>> +      - port@1
> >>>>>> +
> >>>>>>     required:
> >>>>>>       - compatible
> >>>>>>       - reg
> >>>>>> diff --git a/Documentation/devicetree/bindings/display/mediatek/me=
diatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediat=
ek,dpi.yaml
> >>>>>> index 3a82aec9021c..b567e3d58aa1 100644
> >>>>>> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dpi.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,=
dpi.yaml
> >>>>>> @@ -71,13 +71,34 @@ properties:
> >>>>>>           Output port node. This port should be connected to the i=
nput port of an
> >>>>>>           attached HDMI, LVDS or DisplayPort encoder chip.
> >>>>>>
> >>>>>> +  ports:
> >>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
> >>>>>> +
> >>>>>> +    properties:
> >>>>>> +      port@0:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: DPI input port
> >>>>>> +
> >>>>>> +      port@1:
> >>>>>> +        $ref: /schemas/graph.yaml#/properties/port
> >>>>>> +        description: DPI output to an HDMI, LVDS or DisplayPort e=
ncoder input
> >>>>>
> >>>>> This is wrong. The existing 'port' is the output. 'port' and 'port@=
0'
> >>>>> are treated as the same thing. Since you are adding an input port, =
the
> >>>>> new port has to be 'port@1' (or any number but 0).
> >>>>>
> >>>>> I haven't looked at the driver code, but it should request port 0 a=
nd
> >>>>> always get the output port. And requesting port 1 will return an er=
ror
> >>>>> or the input port.
> >>>>
> >>>> Hello Rob,
> >>>>
> >>>> I want to remind you that in v2 of this series you said that it'd be=
 wrong for
> >>>> port@0 to be an output, I replied that you misread that as I had mod=
eled it indeed
> >>>> as an input, and then you gave me your Reviewed-by tag.
> >>>
> >>> I have not misread it. Then I guess I forgot about it and missed it t=
he
> >>> next time on v3.
> >>>
> >>
> >> Okay, that was some misunderstanding then - it's fine, no problem.
> >>
> >>>> Anyway - I get your concern about the previous behavior of `port`, b=
ut I chose to
> >>>> model this that way purely for consistency.
> >>>>
> >>>> First of all - the driver(s) will check if we're feeding a full grap=
h, as it will
> >>>> indeed first check if port@1 is present: if it is, then it follows t=
his scheme with
> >>>> port@0 as INPUT and port@1 as OUTPUT.
> >>>> If the component in port@0 is an OUTPUT, the bridge attach will fail=
.
> >>>>
> >>>> Getting to bindings themselves, then... it would be a mistake to mod=
el port@0 as an
> >>>> output and port@1 as an input, because that would be not only incons=
istent with the
> >>>> DRM Bridge bindings, but would be highly confusing when reading the =
devicetree.
> >>>
> >>> Somewhat confusing, yes. Highly, no. Put a comment in the DT.
> >>>
> >>
> >> "Somewhat or highly" boils down to personal opinion, so I still go for=
 "highly"
> >> but won't argue about that as wouldn't be productive and would bring u=
s nowhere
> >> anyway, so, whatever :-)
> >>
> >> Putting a comment in DT is an option, yes, but that comment would need=
 to be put
> >> on all of the MediaTek SoC device trees - current and future - and IMO=
 would scream
> >> "inconsistency warning" (in different words, of course) all over, whic=
h honestly
> >> doesn't really look clean... at least to my eyes...
> >
> > What I find more confusing is my updated DT doesn't work with my
> > existing kernel...
> >
> >>>> Please note that the bridge bindings are always declaring port@0 as =
an INPUT and
> >>>> other ports as OUTPUT(s).
> >>>
> >>> There is no guarantee on that. Port numbering is local to the bridge =
and
> >>> opaque to anything outside that bridge. That is why you have to docum=
ent
> >>> what each port represents.
> >>>
> >>
> >> I know and I agree that there's no guarantee on the numbering. I can s=
ee that in
> >> other non-drm-bridge bindings, and that's fine.
> >>
> >>> Would we have followed that convention if all the ports were defined
> >>> from the start? Certainly. But that didn't happen and you are stuck w=
ith
> >>> the existing binding and ABI.
> >>>
> >>
> >> I thought about adding a new compatible for the new port scheme, but t=
hat looked
> >> even worse to me as, after doing that (yeah, I actually went for it in=
 the first
> >> version that I have never sent upstream) during my own proof-read I st=
arted
> >> screaming "HACK! HACK! NOOO!" all over, and rewritten the entire thing=
.
> >>
> >>>> As an example, you can check display/bridge/analogix,anx7625.yaml or
> >>>> display/bridge/samsung,mipi-dsim.yaml (and others) for bridges, othe=
rwise
> >>>> display/st,stm32mp25-lvds.yaml or display/allwinner,sun4i-a10-displa=
y-frontend.yaml
> >>>> (and others) for display controllers, which do all conform to this l=
ogic, where
> >>>> the input is always @0, and the output is @1.
> >>>>
> >>>> Of course, doing this required me to do extra changes to the MTK DRM=
 drivers to
> >>>> actually be retro-compatible with the old devicetrees as I explained=
 before.
> >>>
> >>> You can't fix existing software...
> >>>
> >>
> >> That's true, but I don't see that as an "excuse" (grant me this term p=
lease) to
> >> "carelessly" keep it in a suboptimal state.
> >>
> >> This driver has been growing almost uncontrollably with (wrong, anyway=
!)
> >> board-specific component vectors - and writing a new one would just ad=
d up
> >> more code duplication to the mix and/or worsen the maintainability of =
older
> >> MediaTek SoCs (as the "old" driver will get forgotten and never update=
d anymore).
> >>
> >>> If you want to break the ABI, then that's ultimately up to you and
> >>> Mediatek maintainers to decide0. This case is easy to avoid, why woul=
d
> >>> you knowingly break the ABI here.
> >>
> >> Because if we don't do this, we condemn (forever) this driver, or part=
 of it
> >> to have an inverted port scheme compared to either:
> >>    A. The other drm/mediatek components; or
> >>    B. The other bridge drivers (of which, some are used with MTK as we=
ll)
> >>
> >> ...and we also condemn (forever, again) all MediaTek device trees to s=
cream
> >> "port inconsistency warning: A for drm/mediatek components, B for ever=
y other
> >> thing", which would scream "drm/mediatek is somewhat broken", which ca=
n be
> >> avoided.
> >
> > Sure. The cost is just an ABI break to do that.
> >
> >>> OTOH, this seems like a big enough
> >>> change I would imagine it is a matter of time before supporting a
> >>> missing OF graph for the components will be a problem.
> >>>
> >>
> >> Sorry I didn't understand this part, can you please-please-please rewo=
rd?
> >
> > I think keeping the kernel working with the old and new binding will
> > be a challenge. Partly because testing with the old binding won't
> > happen, but also if the binding and drivers continue to evolve. So
> > while maintaining old ABI might be possible with this change, it will
> > continue to be an issue with each change.
>
> That's... exactly my point, so I am happy that we agree on that.
>
> > BTW, did you actually test
> > backwards compatibility with this? I can see you fallback to the old
> > binding, but there's a lot of other changes in there I can't really
> > tell by looking at it.
>
>
> Short answer: Yes, largely
>
> Long answer:
>
> Yes, with this series applied, I have tested both *old* and *new* devicet=
rees on
> 7 boards with 4 different SoCs and different display pipelines (hence, gr=
aphs):
> one smartphone (MT6795), a "bunch of" Chromebooks (MT8173, MT8186, MT8195=
), and
> a SBC (MT8195).
>
> Of course those had DSI or eDP displays, with or without DisplayPort exte=
rnal
> display support.
>
> >
> > What I haven't heard from you is "yes, we need to maintain the ABI" or
> > "no, we can break it". Decide that, then the path here is simple.
>
> No, we have to break it.

Okay, then my reviewed-by stands. But please make it clear in the
binding and dts commit msgs that it is an ABI break.

Rob

