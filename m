Return-Path: <devicetree+bounces-56739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE0E89A5E3
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 23:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83D81B22875
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 21:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88829174ED4;
	Fri,  5 Apr 2024 21:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kxerj388"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BBC172BD0
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 21:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712351082; cv=none; b=K1Qsg/w/7DWflyLT1p73bo5EKObtRBnW8t6ec6/tq2P7/u9aRneTeXtqWV0xsbR/JLYURHdVnJw1FM+gWz5ixAKJ6lzbLSKRRIiV7JphT/jYpjHcz1QbzZaCV6Op4sl0/9VIhN8AzH7DsPwGOsH5WLKUQKET0yE+2nh5SLUzr18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712351082; c=relaxed/simple;
	bh=3JyIVammCnbfIWb3Q3iM3IcSim1epo/kRoDglyXoAkA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bgpQITAkaqDZqhRVxW6rAiUt7dQl1vesjPmb02plJZDJXgKCECnjBpovhDkPMQGxN901qQrinXlF7jgPvowKmfQSyB+tcfM4Cz0z+CW7Xuigbk34Chjo/6LHyqh+/jzyBfRGd+QNs2I8DWJATrFgTFOWUWqd/fpfZudI+TfcWNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kxerj388; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2a21af18037so1681913a91.3
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 14:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712351079; x=1712955879; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=htfOxZNyB1XgNQRSJgiv7F6TP98LyBs0gce5f7UfwWU=;
        b=Kxerj388go+vOcMS9V5guvRlghlFyJIcWE7sEOD/gfFAprLBfVkphibiybWOj39pGF
         sBP11fCT4OKFkPfgM/aBBMaLAq5MR9+up/tVU7K2yi6IrkoPVDhMPlEI55qnOlTwpWew
         OmbiDK5993cjovdXPoNH7dGDIWhD6F/5Bj5XITNBUybduO+X8PounEqu/yy8dVKLVjPn
         U8vePPmM+HiOLYdub06Et/DR+sIxgnVwbda/vTiHWihweDYWqWQC94hECBR4HbphPsaE
         +wYGdkkuXQxtnB3xmgmMDkkVbY5S65p/+znimXH4fz2l8pEl1waq4p75LogDXOHtbtOW
         yzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712351079; x=1712955879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=htfOxZNyB1XgNQRSJgiv7F6TP98LyBs0gce5f7UfwWU=;
        b=BJlYSFvVP5EH+yKFjaEplDWj01GN4xXw94LOykmm77AL+hOpLixWh9TZcMivWlmlby
         gXh33dgU4sVIPLidJCoZGBHlGKZe2/TTNSWOXC5JtCOJE1KnPIvmwGKH3j9/3IlFHxxd
         bwt4OTwtpPNRdUFA7TXo+eP6pfElHEJeevEYR6H2cxuM/1JRVE8kIpcX/ox3bT2frAWL
         fqNZgmdBdZ273cbcsqeuR7007tBUULa/WsfUhrh8JPnxHBi6ahs5ENqtKfe4yFC3Yy+A
         oaLz8p3Cv5JQ1aVaO0HIpPbRtMrutZl7zU/cTQFaZAsd9vf6kcU6IiZibG6bzyn+dehW
         W7eA==
X-Forwarded-Encrypted: i=1; AJvYcCWC6qXpqpm/oU5yJxRCS3WLM+UQybUs8TTTaljzDuiBHRHeGxhMmHUVcBXyG6wsWm/xK/FxPLg2ktYIcrrgKAbDwHgYFV9GL3WoSQ==
X-Gm-Message-State: AOJu0Yxbcz5TZ+Go3JwcjQfpevuwDHlO8E/MbILyh8Mi00FR+tIOT2A2
	XgZAQ+DGBf82Lyi1LzeqlKfXwrCOGMF02I9WjFY41w29dvOU/+asTswTaqckBxZjFKfvtNN6UDb
	lFJ89svIpKZuzbhJEr0hRClO3hP0=
X-Google-Smtp-Source: AGHT+IGcXJvM5s6CX0Tp+NFsXBZrQrzbHqMQXVGWOz5BElWGeWss6IdNa9HVaMuQeoCMNTkZQa649YSRuB+7xq6KMJg=
X-Received: by 2002:a17:90a:c291:b0:2a2:581f:c6de with SMTP id
 f17-20020a17090ac29100b002a2581fc6demr2625969pjt.3.1712351079187; Fri, 05 Apr
 2024 14:04:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240405202243.46278-1-marex@denx.de> <20240405204251.GE12507@pendragon.ideasonboard.com>
In-Reply-To: <20240405204251.GE12507@pendragon.ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 5 Apr 2024 16:04:27 -0500
Message-ID: <CAHCN7xKX7v4tmhjvoPLirEoUG91jpu-8R2DV9eE=mnWt=3FffA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Align both CSI2 pixel clock
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Elder <paul.elder@ideasonboard.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2024 at 3:43=E2=80=AFPM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Marek,
>
> (CC'ing Adam)
>
> Thank you for the patch.
>
> On Fri, Apr 05, 2024 at 10:22:26PM +0200, Marek Vasut wrote:
> > Configure both CSI2 assigned-clock-rates the same way.
> > There does not seem to be any reason for keeping the
> > two CSI2 pixel clock set to different frequencies.
>
> There's an issue when using two cameras concurrently. This has been
> discussed some time ago on the linux-media mailing list, see [1]. Adam
> knows more than I do on this topic.
>
> [1] https://lore.kernel.org/linux-media/CAHCN7x+kymRGO2kxvN2=3DzLiqRjfTc3=
hdf3VdNVkWjsW3La0bnA@mail.gmail.com/
>
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > ---
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Paul Elder <paul.elder@ideasonboard.com>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Cc: imx@lists.linux.dev
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boo=
t/dts/freescale/imx8mp.dtsi
> > index 1bb96e96639f2..2e9ce0c3a9815 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -1703,7 +1703,7 @@ mipi_csi_1: csi@32e50000 {
> >                                                 <&clk IMX8MP_CLK_MEDIA_=
MIPI_PHY1_REF>;
> >                               assigned-clock-parents =3D <&clk IMX8MP_S=
YS_PLL2_1000M>,
> >                                                        <&clk IMX8MP_CLK=
_24M>;
> > -                             assigned-clock-rates =3D <266000000>;
> > +                             assigned-clock-rates =3D <500000000>;

I am traveling, so I don't have the technical documents in front of
me, but I beleive this is an over-drive speed, and 400MHz would be the
single clock, standard rate.  I created an imx8mm-overdrive and
imx8mn-overdrive dtsi file to let users who operate in overdrive mode
to update their clocks in one place.

I also think this goes down if the user is running two cameras instead
of one.  I re-read the old thread, and it's coming back to me, but
until I can get settled into my hotel in Germany, I won't have time to
review.  I think the original idea was to use the lowest, conservative
value with the idea that people can tweak their clock settings if
they're only running one and if they are running in over-drive mode.

adam
> >                               power-domains =3D <&media_blk_ctrl IMX8MP=
_MEDIABLK_PD_MIPI_CSI2_2>;
> >                               status =3D "disabled";
> >
>
> --
> Regards,
>
> Laurent Pinchart

