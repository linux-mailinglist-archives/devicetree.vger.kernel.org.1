Return-Path: <devicetree+bounces-91211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8A94886C
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 06:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07DDC283462
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 04:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C230D176242;
	Tue,  6 Aug 2024 04:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AofDpENf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFE2B663
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 04:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722919019; cv=none; b=GbSuKy/UVwDze8d0NP1DnJ2PH2vyToPJyLdjQDEaYZxsg5Nsf6WiitGT7ipW6ZPrJDOVQWeM4k0LKS6YfYpQzy0Y+ERgFo32/1Tuncgw4W70i3x3cO0CD1Vj+T47ky7Ga8yxWkVjfJI5TqcxUiqIC5fZWGTjIZZfRLBr6G56/gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722919019; c=relaxed/simple;
	bh=C0XbZuk8zqHuNcCHOb0mh6FpNfUNRP/FVzL26YJzAgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h0SSwV3BkCYURaHXP+NqQkK3MZt0axomynMD6GwZeA/10PG5Rqb142X85CrGDlD9pc1zBQDgVGNsQnYgtFavvTawWOVLY52vCBqYRDjzqEjPFRxE1so/rImBNOHWGtIU224QBr+9mhtWAcPEE6JXV+cXJZLJicBvlgPb4HlgDrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AofDpENf; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52efbb55d24so325475e87.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2024 21:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722919016; x=1723523816; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjQAjmGk1n7ajuQcs+KaJPCMDM2UdVWblEx6MXLoPhk=;
        b=AofDpENfUp4qBUa7CJCBRyBEEiy+nvUdns4YxLuAObZrq7Uf04SKIZfPhb09pIda1n
         WlOlEAUr7DymrFAlhzFGgBux+IX8alHXAqCCHQbddZVKymFRyaPdOepWjZYOGT3SxdzR
         ggmJEEsFnmaQ/uCpInQyQmPh0JFzqsvFpd7n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722919016; x=1723523816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjQAjmGk1n7ajuQcs+KaJPCMDM2UdVWblEx6MXLoPhk=;
        b=Vwr258qsJBDD3gUQM486l3gUJNECz9aeIGV3/+25AwxivoER2Dm+ohFWFVuhPnsyq2
         1FmPJDqe0PeDyR13HzxMhznU+ZJCSNkIZ+ZZGIRG+kSxYBBZA08SIthM22PmAzX9f2xs
         7R/YMxzOGJGUv9U/NzPWdXwnjijrrX1ZENkewnWBJDA+3wszxCk9gNHHvMpncbLRBGDQ
         oGw5pMu3R4FIArUVI45RmoOz2asuB/9XMefx2n/RZ5XtXLd2MrWkcMHeuD64yiDcqErw
         zbCMk0E09c3mJR0ow7J7nSevD97WdbUzckkdz3VHQ0cIjl3BWOovhaKMLXGOiEbqFGGI
         3u5g==
X-Forwarded-Encrypted: i=1; AJvYcCUwDUaePAfhAc1SoTbOif1BSJilTJxTI7Mlq6CVNRU4RmNjs/fawInXFE5fQpxeXO90KxvvG9g4chK7+lX8M8BFGHM5xTVC8cxnrw==
X-Gm-Message-State: AOJu0YyWiQniqSuv4JzMS2aDfUPRsSueZX7dxFC5tQ6yqlEcfEnXSp06
	FGSoXecVkpSrJkkgS8bU6DQxTeK0LMNNlKoer4r1fuFKs7lsjXOIL1RTmhfdqUUMro3LJkJmfmj
	oOg44UkktPhwktJOExxagrkFe5L4u7ytTkFcs
X-Google-Smtp-Source: AGHT+IH6osN8AiHIsz3iGxVmsYDHTrZXNZkckgohptXBOcaV4KXsXzyqgFu5HOFrpie8oXsv/eCahc96/S2ayEDpeWY=
X-Received: by 2002:a05:6512:2308:b0:52c:9ae0:beed with SMTP id
 2adb3069b0e04-530bb3bc202mr11441300e87.52.1722919015831; Mon, 05 Aug 2024
 21:36:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240805065051.3129354-1-treapking@chromium.org> <8e089dc0-9342-480f-ac8a-93b5bfe1241e@collabora.com>
In-Reply-To: <8e089dc0-9342-480f-ac8a-93b5bfe1241e@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 6 Aug 2024 12:36:44 +0800
Message-ID: <CAGXv+5GnkhyT+nKq7j50G+Lpm720wLX3Jqfa5QWP6p29yUKq7Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: Remove clock from mfg_async
 power domain
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Pin-yen Lin <treapking@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Rob Herring <robh@kernel.org>, Kiwi Liu <kiwi.liu@mediatek.corp-partner.google.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Enric Balletbo i Serra <eballetbo@kernel.org>, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Hsin-Te Yuan <yuanhsinte@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 5, 2024 at 7:46=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 05/08/24 08:50, Pin-yen Lin ha scritto:
> > This clock dependency introduced a mutual dependency between mfg_async
> > power domain and mt8183-mfgcfg clock, and Mediatek has confirmed that
> > this dependency is not needed. Remove this to avoid potential deadlock.
> >
>
> Uhm, have you tested this upstream with Panfrost, or only downstream with=
 the
> proprietary Mali stack?

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

With glmark2-es2-drm on linux-next-20240805:

# glmark2-es2-drm
Warning: DRM_CAP_ASYNC_PAGE_FLIP not supported, falling back to
'mailbox' mode for SwapInterval(0).
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
    glmark2 2023.01
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
    OpenGL Information
    GL_VENDOR:      Panfrost
    GL_RENDERER:    Mali-G72 (Panfrost)
    GL_VERSION:     OpenGL ES 3.1 Mesa 22.3.6
    Surface Config: buf=3D32 r=3D8 g=3D8 b=3D8 a=3D8 depth=3D24 stencil=3D0=
 samples=3D0
    Surface Size:   1366x768 fullscreen
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
[build] use-vbo=3Dfalse: FPS: 134 FrameTime: 7.485 ms
[build] use-vbo=3Dtrue: FPS: 391 FrameTime: 2.559 ms
[texture] texture-filter=3Dnearest: FPS: 378 FrameTime: 2.652 ms
[texture] texture-filter=3Dlinear: FPS: 329 FrameTime: 3.046 ms
[texture] texture-filter=3Dmipmap: FPS: 369 FrameTime: 2.717 ms
[shading] shading=3Dgouraud: FPS: 367 FrameTime: 2.731 ms
[shading] shading=3Dblinn-phong-inf: FPS: 372 FrameTime: 2.690 ms
[shading] shading=3Dphong: FPS: 342 FrameTime: 2.930 ms
[shading] shading=3Dcel: FPS: 338 FrameTime: 2.964 ms
[bump] bump-render=3Dhigh-poly: FPS: 336 FrameTime: 2.978 ms
[bump] bump-render=3Dnormals: FPS: 376 FrameTime: 2.663 ms
[bump] bump-render=3Dheight: FPS: 328 FrameTime: 3.052 ms
[effect2d] kernel=3D0,1,0;1,-4,1;0,1,0;: FPS: 316 FrameTime: 3.169 ms
[effect2d] kernel=3D1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 118 FrameTime: 8.5=
11 ms
[pulsar] light=3Dfalse:quads=3D5:texture=3Dfalse: FPS: 372 FrameTime: 2.692=
 ms
[desktop] blur-radius=3D5:effect=3Dblur:passes=3D1:separable=3Dtrue:windows=
=3D4:
FPS: 51 FrameTime: 19.764 ms
[desktop] effect=3Dshadow:windows=3D4: FPS: 191 FrameTime: 5.254 ms
[buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9:update-fr=
action=3D0.5:update-method=3Dmap:
FPS: 49 FrameTime: 20.746 ms
[buffer] columns=3D200:interleave=3Dfalse:update-dispersion=3D0.9:update-fr=
action=3D0.5:update-method=3Dsubdata:
FPS: 49 FrameTime: 20.437 ms
[buffer] columns=3D200:interleave=3Dtrue:update-dispersion=3D0.9:update-fra=
ction=3D0.5:update-method=3Dmap:
FPS: 53 FrameTime: 18.997 ms
[ideas] speed=3Dduration: FPS: 117 FrameTime: 8.554 ms
[jellyfish] <default>: FPS: 282 FrameTime: 3.559 ms
...


Thanks
ChenYu

> Regards,
> Angelo
>
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> > Fixes: 37fb78b9aeb7 ("arm64: dts: mediatek: Add mt8183 power domains co=
ntroller")
> >
> > ---
> >
> >   arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 --
> >   1 file changed, 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot=
/dts/mediatek/mt8183.dtsi
> > index fbf145639b8c..267378fa46c0 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -872,8 +872,6 @@ power-domain@MT8183_POWER_DOMAIN_CONN {
> >
> >                               mfg_async: power-domain@MT8183_POWER_DOMA=
IN_MFG_ASYNC {
> >                                       reg =3D <MT8183_POWER_DOMAIN_MFG_=
ASYNC>;
> > -                                     clocks =3D <&topckgen CLK_TOP_MUX=
_MFG>;
> > -                                     clock-names =3D "mfg";
> >                                       #address-cells =3D <1>;
> >                                       #size-cells =3D <0>;
> >                                       #power-domain-cells =3D <1>;
>
>

