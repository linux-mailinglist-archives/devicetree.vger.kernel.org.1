Return-Path: <devicetree+bounces-73070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FCA8FDF13
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:47:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B582B28E289
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 06:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDE04DA04;
	Thu,  6 Jun 2024 06:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="i3wUwkdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCC44A2D
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 06:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717656427; cv=none; b=OgT3dkCg2v8mrj2ryIIdKxaojCFbpVxiu34TaRnkj2YLryFpbjQe2FLWcNFlY11BVIkOwBLf2ApgCaEVqdr9b7g5/tmYW8xUOjqI79fdKBUkr7SPgi4NRjYYRxtcSOSZk52y4bY80czuK3kUng9xPb6L1Il3295p/UMsY2rngbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717656427; c=relaxed/simple;
	bh=I225HpwCGaHXdQhB102rRz5DVwR3ebWC1Av3wFv6dVA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oWJkzE1LXAexgCP0jwFbMTPtipFgzOCenvajUhI2dlY3ShNSSygvkU58gKTQ/NF0uF9GgDDosLDhvfpIjC7PiMqtn8VCuOCtQTqfOBiySmtLvgxXp+riFJP3AjhZgSNReuuqe8Si/oFiTaeM4Q3tuc+taL3cUEBBr5YmGQlKtis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=i3wUwkdq; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-52b7e693b8aso1614551e87.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 23:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717656424; x=1718261224; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+rv1sDHR32RWCfZmFBg17q325stbG/XmstQRsoUj80I=;
        b=i3wUwkdqzf5H54tiYMeOYxt4gc6dgeuc8T00M97HJK9pRdxP59qDErSOIJJayFSkPk
         WJmefzlPW0qG3YA6evD79q2F/ROpk3+CdLoVhNELMAyQtxQ4GhDJD6P1HEznov9aaQXB
         paVsYcpbnU9EDzSntyeAsQe1/wUt2xq3xJlYU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717656424; x=1718261224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+rv1sDHR32RWCfZmFBg17q325stbG/XmstQRsoUj80I=;
        b=EU86XA5YWT3Rty7D6nBl8Zi7qj7sjX5nhQO6tAUN9hHkZOoy8oaXGJRfFWVx/wp62Q
         2ouLOd3SRWXy0WxKH5AuH5hbrJw0S5EdAKGu6Jf/LMxHQJtx3E4ybSuln3bO2fGUD2m9
         eLAUvzKQpa560LIiBPM6793pv6S1WHHbnRutLqIlRtfTODK6g32GrdzqN/P56e2CczlR
         gQvbGwIrErD4qzhUmLxoeXuxke5JhddfF6KxblOmEXwUJ21YB8BTBV/KXIeiHnpsXhlA
         Z4fGZN6f6KQ5oCwCzOQLcxVi3MomNTICQSdba2VjkeGbbIOMPiqxz8Tpn4wJhtm/Q1tU
         sPVg==
X-Forwarded-Encrypted: i=1; AJvYcCU9uIAVDYwXRSFXgGbR6jhtVUJlc3b07kxa7oG053CXuMuBDxvQPrc70M5+Yod0MHnCJJrRSHC/uu5CVwcEspI2LViHeG1Y+NyhcA==
X-Gm-Message-State: AOJu0YzMu3++KRL9QhaL8pV4jeF0O3i454A5T+wEWSxZtwKM+dn+obyr
	OYIqFeH8YP7j2IUmrkNe5OGy0MadlIQvj/5nDutikT2gczwP3rdLfoWK6utvKSgQV/VKlSNSEPL
	QGppZ/PUmLc3wA5eCeNaOQ4p9rn8Cq3B3qUjT
X-Google-Smtp-Source: AGHT+IGeuCm9PsqMZJSdhMHCIrhen6KLNJPY05qssC+yap37aeWf5ikwB9VlUACAq1ji5UH3ecZrST5zcf6cfOqLI4U=
X-Received: by 2002:a05:6512:2825:b0:52b:a50c:c23e with SMTP id
 2adb3069b0e04-52bb2195a3cmr495256e87.34.1717656423496; Wed, 05 Jun 2024
 23:47:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521075717.50330-1-angelogioacchino.delregno@collabora.com>
 <20240521075717.50330-3-angelogioacchino.delregno@collabora.com>
 <e7845300fa822413f6308cb6297222cde89c39e0.camel@mediatek.com> <0e0fe86c-92da-43f5-89d7-8084274a908a@collabora.com>
In-Reply-To: <0e0fe86c-92da-43f5-89d7-8084274a908a@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 6 Jun 2024 14:46:51 +0800
Message-ID: <CAGXv+5FgVk9z3DhAC5oYoGXSJ+wJf+sa6wFSyJ_Nhy3JrKkCng@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph
 support for board path
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: =?UTF-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	=?UTF-8?B?U2hhd24gU3VuZyAo5a6L5a2d6KyZKQ==?= <Shawn.Sung@mediatek.com>, 
	"mripard@kernel.org" <mripard@kernel.org>, =?UTF-8?B?Sml0YW8gU2hpICjnn7PorrDmtpsp?= <jitao.shi@mediatek.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "robh@kernel.org" <robh@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "airlied@gmail.com" <airlied@gmail.com>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"kernel@collabora.com" <kernel@collabora.com>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	=?UTF-8?B?WXUtY2hhbmcgTGVlICjmnY7nprnnkosp?= <Yu-chang.Lee@mediatek.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"amergnat@baylibre.com" <amergnat@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 5, 2024 at 7:15=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 05/06/24 03:38, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) ha scritto:
> > Hi, Angelo:
> >
> > On Tue, 2024-05-21 at 09:57 +0200, AngeloGioacchino Del Regno wrote:
> >> Document OF graph on MMSYS/VDOSYS: this supports up to three DDP paths
> >> per HW instance (so potentially up to six displays for multi-vdo SoCs)=
.
> >>
> >> The MMSYS or VDOSYS is always the first component in the DDP pipeline,
> >> so it only supports an output port with multiple endpoints - where eac=
h
> >> endpoint defines the starting point for one of the (currently three)
> >> possible hardware paths.
> >>
> >> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> >> Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
> >> Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
> >> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@c=
ollabora.com>
> >> ---
> >>   .../bindings/arm/mediatek/mediatek,mmsys.yaml | 28 +++++++++++++++++=
++
> >>   1 file changed, 28 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,m=
msys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.y=
aml
> >> index b3c6888c1457..0ef67ca4122b 100644
> >> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.ya=
ml
> >> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.ya=
ml
> >> @@ -93,6 +93,34 @@ properties:
> >>     '#reset-cells':
> >>       const: 1
> >>
> >> +  port:
> >> +    $ref: /schemas/graph.yaml#/properties/port
> >> +    description:
> >> +      Output port node. This port connects the MMSYS/VDOSYS output to
> >> +      the first component of one display pipeline, for example one of
> >> +      the available OVL or RDMA blocks.
> >> +      Some MediaTek SoCs support multiple display outputs per MMSYS.
> >
> > This patch looks good to me. Just want to share another information for=
 you.
> > Here is an example that mmsys/vdosys could point to the display interfa=
ce node.
> >
> > vdosys0: syscon@1c01a000 {
> >            mmsys-display-interface =3D <&dsi0>, <&dsi1>, <&dp_intf0>;
> > };
> >
> > vdosys1: syscon@1c100000 {
> >            mmsys-display-interface =3D <&dp_intf1>;
> > };
> >
> > There is no conflict that mmsys/vdosys point to first component of one =
display pipeline or point to display interface.
> > Both could co-exist.
> >
>
> Hey CK,
>
> yes, this could be an alternative to the OF graphs, and I'm sure that it'=
d work,
> even though this kind of solution would still require partial hardcoding =
of the
> display paths up until mmsys-display-interface (so, up until DSI0, or DSI=
1, etc).

I think you might be misunderstanding CK's proposal? He's simply saying tha=
t
instead of pointing to the start of the pipeline, point to the end instead.
You can still use the OF graph and work backwards from the output.

> The problem with a solution like this is that, well, even though it would=
 work,
> even if we ignore the suboptimal partial hardcoding, OF graphs are someth=
ing
> generic, while the mmsys-display-interface would be a MediaTek specific/c=
ustom
> property.
>
> In the end, reusing generic kernel apis/interfaces/etc is always preferre=
d
> compared to custom solutions, especially in this case, in which the gener=
ic
> stuff is on-par (or actually, depending purely on personal opinions, supe=
rior).

Here you are mixing hardware descriptions and kernel implementation details=
.

I think this goes back to whether the mmsys/vdosys is actually part of the
graph or not. It certainly controls the muxes within the graph. But that
doesn't mean it has to be within the graph itself. It can just have pointer=
s
to entry points of the graph (for which you would have a couple lines of
custom code [1]). If the data doesn't flow through the mmsys/vdosys, then
I would argue that it is not part of the graph.

I would also argue that the data path should be fully described in the
device tree, not hardcoding paths based on board usage. The latter is
a policy / design decision, not a hardware capability.


ChenYu

> As for the two to co-exist, I'm not sure that this is actually needed, as=
 the
> OF graphs are already (at the end of the graph) pointing to the display i=
nterface.
>
> In any case, just as a reminder: if there will be any need to add any cus=
tom
> MediaTek specific properties later, it's ok and we can do that at any tim=
e.
>
> Cheers!
> Angelo
>
> > Regards,
> > CK
> >
> >> +    properties:
> >> +      endpoint@0:
> >> +        $ref: /schemas/graph.yaml#/properties/endpoint
> >> +        description: Output to the primary display pipeline
> >> +
> >> +      endpoint@1:
> >> +        $ref: /schemas/graph.yaml#/properties/endpoint
> >> +        description: Output to the secondary display pipeline
> >> +
> >> +      endpoint@2:
> >> +        $ref: /schemas/graph.yaml#/properties/endpoint
> >> +        description: Output to the tertiary display pipeline
> >> +
> >> +    anyOf:
> >> +      - required:
> >> +          - endpoint@0
> >> +      - required:
> >> +          - endpoint@1
> >> +      - required:
> >> +          - endpoint@2
> >> +
> >>   required:
> >>     - compatible
> >>     - reg
>
>

