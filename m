Return-Path: <devicetree+bounces-72618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D178FC662
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7140E285689
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2478018FDD0;
	Wed,  5 Jun 2024 08:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kr+LCE5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27311946A1
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575960; cv=none; b=T9uRPIldxS3S43XhDdkQpnvz1tZQ2TIxGdeVP+BLp7wnjpMiz7o+MzRodcui2nPUS+HPYZrOrQZeQJCo40XaRsBz4jiEB0HDxp/ka7SQAZhu58pebg2gA1D94GbWSW4FLSaKO5K8r1mgCufrlq6Sf9NY4BMGi+3242+XzJPhV1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575960; c=relaxed/simple;
	bh=ZGckZDXYZoBdYKxgR4JQZaNiWYJn8XxdnxbJ0v6qLEA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cMZ6L8V9ZCDzSU6XYhfZDp7J8+lLF0yqBTQolVfRUl66jukqBqe+ytZC7oPqgPW6cV6xLAGWwB7fBPrZAZkNjAQlxH4z6pzkvCcYXkIz6+ZC5t1LieT+ip/pPnYH7ccYJoBy1uNXnDIkW4T3ZrHSPAc4mPvjInaaiAIGKQDpKoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kr+LCE5W; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b8d483a08so5602764e87.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717575956; x=1718180756; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTYgiHqEKqI6DY4xUoSYEerbolGYT7sqcHeeQXdfKvE=;
        b=kr+LCE5W69vzIYoovALFjPU8M1t/n5j3jHw9QFGk/3yW0p4L1MyF2/+K6I8H2m+FkC
         8E4NLY9fx9gzwwIrfZ6/eBkGGbCLiPldR6BYqXeDpdMfID7VGjbWc8d23Gm6Sj3bio4U
         7XeORRdpkId5UFFNIwZSle5Rt9gbX5q8qeqsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575956; x=1718180756;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KTYgiHqEKqI6DY4xUoSYEerbolGYT7sqcHeeQXdfKvE=;
        b=VL0+gTovVQ9D+NS6NtaA7JZ2hMdgDS3B/4IVgXLaGTACOusGKWgb72YwDJHucM24TP
         WDfO7L7ipaYyZwiQDPBOVWq5NXu8dzgizr4TvFNC9V9yYoUqHTEp2ab+t/UGVZDSts+q
         jETo9p9fhJmK3oZElqXihSyXNdeXusYMElTaWxVcaM/VO3ibcuCaR9gLV8H6ANANxTiU
         4tku0V+71F61w3gpb6Eq9GILoPFcT/ToYXYYYil5mXEgR4UlIHxWAdWjJeHE44VIIL+q
         fouwvVkIDlte3MY903TDGH5mXkaHK7YQGZIfXvgEoWuXGFiVSFW/dSogvmwHlmACj0Oc
         f+wA==
X-Forwarded-Encrypted: i=1; AJvYcCX1Aj4U3CCrTULjsO1TlRgblv2z3wrE8bUM606KBv9wrfinZjf0MJ3QfDIdLiRgDTcOt4zK6yNEnKFcQA+OuVVxuUV3XlWz3Luc/w==
X-Gm-Message-State: AOJu0Yy6pGPrOo/e2FyFkeKouoiSa8I0+8rOfLj3d1BjlyGfaQO1JDC/
	lTTP8ZvtiT25viIWYU4bcC6xwAe6TsCDqu/xMYAVdqABqBJxozNgpsbPJsYUn7unupG6F8r1ktm
	Z7+IgQ/BRSLnCQ0Eg93KmdeD3JmwGSQ6olnhe
X-Google-Smtp-Source: AGHT+IEz6cLO0SYpIuAYgl0GIp5y8JoS82uXIYv/gjnD7flwuduPkyTGJYNwDh582C9DE0cOUwen7uBXY5qAmo/W3wY=
X-Received: by 2002:a05:6512:3082:b0:52b:423b:ade2 with SMTP id
 2adb3069b0e04-52bab4b85b8mr1349765e87.3.1717575955882; Wed, 05 Jun 2024
 01:25:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240530083513.4135052-1-wenst@chromium.org> <20240530083513.4135052-6-wenst@chromium.org>
 <4f20f130-c9ab-43ea-a758-e29d7be10db0@collabora.com>
In-Reply-To: <4f20f130-c9ab-43ea-a758-e29d7be10db0@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 5 Jun 2024 16:25:44 +0800
Message-ID: <CAGXv+5GuGz-KahcbKtuyUA1-59sMWSL0QucOdp8FPoQWrc9YUQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: mediatek: mt8173: Fix MFG_ASYNC power
 domain clock
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 6:03=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 30/05/24 10:35, Chen-Yu Tsai ha scritto:
> > The MFG_ASYNC domain, which is likely associated to the whole MFG block=
,
> > currently specifies clk26m as its domain clock. This is bogus, since th=
e
> > clock is an external crystal with no controls. Also, the MFG block has
> > a independent CLK_TOP_AXI_MFG_IN_SEL clock, which according to the bloc=
k
> > diagram, gates access to the hardware registers. Having this one as the
> > domain clock makes much more sense. This also fixes access to the MFGTO=
P
> > registers.
> >
> > Change the MFG_ASYNC domain clock to CLK_TOP_AXI_MFG_IN_SEL.
> >
> > Fixes: 8b6562644df9 ("arm64: dts: mediatek: Add mt8173 power domain con=
troller")
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> Just one question... what happens if there's no GPU support at all and th=
is
> power domain gets powered off?
>
> I expect the answer to be "nothing", so I'm preventively giving you my

Well it's powered off by default. Just double checked, and without the fina=
l
patch:

# cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
domain                          status          children
            performance
    /device                                             runtime status
---------------------------------------------------------------------------=
-------------------
mfg                             off-0
            0
mfg_2d                          off-0
            0
                                                mfg
mfg_async                       off-0
            0
                                                mfg_2d

And with the last patch but with the powervr removed:

# cat /sys/kernel/debug/pm_genpd/pm_genpd_summary
domain                          status          children
            performance
    /device                                             runtime status
---------------------------------------------------------------------------=
-------------------
mfg_apm                         off-0
            0
mfg                             off-0
            0
                                                mfg_apm
    /devices/platform/soc/13fff000.clock-controller     suspended
            0
mfg_2d                          off-0
            0
                                                mfg
mfg_async                       off-0
            0
                                                mfg_2d

Things seem to work OK. I can SSH in, and the framebuffer console on the sc=
reen
works fine.


Note that accessing the regmap through debugfs doesn't do much good. regmap
doesn't handle runtime PM. And the syscon regmap isn't even tied to a
struct device. Dumping the regmap through debugfs while the power domain
is off gives all zeroes, likely due to bus isolation.

> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Thanks!

ChenYu

> ....but if I'm wrong and the answer isn't exactly "nothing", then I still=
 agree
> with this commit, but only after removing the Fixes tag.
>
> Cheers,
> Angelo
>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8173.dtsi | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot=
/dts/mediatek/mt8173.dtsi
> > index 3458be7f7f61..136b28f80cc2 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > @@ -497,7 +497,7 @@ power-domain@MT8173_POWER_DOMAIN_USB {
> >                               };
> >                               mfg_async: power-domain@MT8173_POWER_DOMA=
IN_MFG_ASYNC {
> >                                       reg =3D <MT8173_POWER_DOMAIN_MFG_=
ASYNC>;
> > -                                     clocks =3D <&clk26m>;
> > +                                     clocks =3D <&topckgen CLK_TOP_AXI=
_MFG_IN_SEL>;
> >                                       clock-names =3D "mfg";
> >                                       #address-cells =3D <1>;
> >                                       #size-cells =3D <0>;
>
>

