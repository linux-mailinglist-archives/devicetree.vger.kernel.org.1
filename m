Return-Path: <devicetree+bounces-247626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 517A0CC982D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 21:43:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50C5B301CE5B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 20:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF75230B533;
	Wed, 17 Dec 2025 20:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eBcRb+ln"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D238530AD1D
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 20:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766004193; cv=none; b=h0XNrLdc1Iv7W9J9/b0544by8NFeNQm8gaZZioowvxO1hQALGn7vZmLMeQJIo0P0xEIYkpVo8j+avkrOBKhkfeXzFZw7z/A5ZynFBcuS9zmQ0sKSik1FbetInnZnNu5ApOzelp4DqvlP498LsdV8TtJEPNLOus1CG+A0kwsRnHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766004193; c=relaxed/simple;
	bh=Z9IdB1u8PZBntSxpNzgqYyKOujyexq+XNlF6bns6O5c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=G+k7lhN9gSpBGclCOenvTbOtNY8MkzbtGeu0NtMbuKbe9gnHNsARzobWNLTrWQrGlrAMSo8uOPnA+H51LjFv5w4QI5IAC6nrMAoW4B4d1J7IAF4Cxwoc9pmn05a4uklohRrqdBftgi4kRfVZ1M6qRYpjJ2uBR8Jyxoum0MjjALI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eBcRb+ln; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-597d712c0a7so7175340e87.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766004190; x=1766608990; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9H0cg0KIoEtN0SL5lx2VgL8bqTA/+IdaFlnJLK6zvAU=;
        b=eBcRb+lnp/HhMHq1EvYFOatMzn3JcCTZTYAGM8YsPkv821V27LVAaJ7cW+w4UV6nQT
         J5z3/DunbBV4oFu+pvykRQ8JlWGgX9GRzc+oT+hzn4kO/FwKM1lIEQKMRSR9wwwEPsVP
         j4jnYGLy3ZaEecYLNBF+Mcgh5/BFvFlyC4T1xqphcEqUNhXeQfpghVfBsz8zsxJzHr28
         Xbeg7eCbkNFdW5mYJ6aTBU+IJcaR7ruH92GMr5Y1PrnnMFp3rlsx3dXVj95QC8izvoaH
         LjifUyq+LLDzQo3wDt/TH1JZo75hxsz5fAIRk6eLJT5QXtlOyUyvLcSLnxenoWieS0r2
         ZqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766004190; x=1766608990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9H0cg0KIoEtN0SL5lx2VgL8bqTA/+IdaFlnJLK6zvAU=;
        b=onYFzofUvR88HxGOl+Ix6NVKy+AhjRagJFQI4xOiO1zd0TP9c3hp4jAmjgFEwLPhNE
         NcQ5T3DXFqAfsMe8cXq6L5N52iAM+Rm83Yyihqxc2RZPiskWzgv9W0gzguDIxDVUI5Jm
         +VpPp56h7i7KfcG3zXuZdtz//onlfXY6tm+L7nMgHfG9FDpVw5KihWFutTqnAHpx/LsT
         MQ6/Vi+xWGZPE691f2YliBmPZTnIpOMwQT92FOKik4lf2A//SG0Z9aKdVYq826XbiTZf
         /b+VeSxzaoKm/rKJnXO7MLYBIFznkLCeju9pG38S7FE3j88+0rOkLsWdE/s3AV1N8Mle
         +a/A==
X-Forwarded-Encrypted: i=1; AJvYcCUlb0qEs+Fk1rXgurmi62r9JObwTOfNntu9cT7KRRvYDgyxaIRblZ1bGAnnsNcdhNF4ul8ZcPVgzhwQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yytf9eb1kbo8Xqz/WUQpO87CH1D2jWlXlU4SXr6O41Ex2DAg9uw
	INn4rgU33Vg+uxjR7kXM2kC5I2K/tsIV4WHcpu8saRnRbIHgKpV1/n+NFhTxD7RAvzj23+fIgbA
	Nze472S1Wu4Oxe8iqEUZp7AT4bj55nWDatA==
X-Gm-Gg: AY/fxX5bvjX+vXxbmk1Z590TaFIazBCSsHIaQYrg+Az9IGVXiBVBCJ8b4oT3tkogWPr
	fgDy5lV8xOABDXQ3nRiVb+R/ZRO4P8jzhRCmHPP7GQfV6lpzSos1iPEPZn8ch7eGxUrwUfPnm5q
	4EGnpWn9rZx9NhU+cu9ouCyR1w0fW12bSdfnn9usO6CJPm8jGpSlRi4T3WBs3eZLArQa8AajB0H
	CzFp4bf0DMOCU0Ta5TDqx9M1N43/R4KeRlO+5VlOte161peVn3JXqOC4xBnetJyrMqqmKg=
X-Google-Smtp-Source: AGHT+IG9yysa82uqqj5swEUDtGC6ZEIgwghpjHX8r8/iWO3DelPwl3bhrA8gmisvPgTCDfguYcNSYWH+rCmlr4FTJFI=
X-Received: by 2002:a05:6512:1443:20b0:599:105a:67e0 with SMTP id
 2adb3069b0e04-599105a69d7mr1822943e87.20.1766004189673; Wed, 17 Dec 2025
 12:43:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217104744.184153-1-jonathanh@nvidia.com> <CALHNRZ8syS6F9W1ovw2Y-jkspQafCnLy0ynocn0sMLurShHnbA@mail.gmail.com>
In-Reply-To: <CALHNRZ8syS6F9W1ovw2Y-jkspQafCnLy0ynocn0sMLurShHnbA@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 17 Dec 2025 14:42:58 -0600
X-Gm-Features: AQt7F2rK21aygGIAL23whTZr3cC8UgkDV-Vx3CDMwDAsJDzHVI4whhst3QUKEkk
Message-ID: <CALHNRZ_vkw6Ns=PMa+x0SY64+Ov0FeA5tMKJr+-tY9_OasKUog@mail.gmail.com>
Subject: Re: [PATCH] Revert "arm64: tegra: Add interconnect properties for Tegra210"
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 12:20=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com=
> wrote:
>
> On Wed, Dec 17, 2025 at 4:48=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com>=
 wrote:
> >
> > Commit 59a42707a094 ("arm64: tegra: Add interconnect properties for
> > Tegra210") populated interconnect properties for Tegra210 and this is
> > preventing the Tegra DRM driver from probing successfully. The followin=
g
> > error is observed on boot ...
> >
> >  drm drm: failed to initialize 54240000.dc: -517
> >
> > For now revert this change, until a fix is available.
> >
> > Fixes: 59a42707a094 ("arm64: tegra: Add interconnect properties for Teg=
ra210")
> > Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> > ---
> >  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 24 ------------------------
> >  1 file changed, 24 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot=
/dts/nvidia/tegra210.dtsi
> > index 709da31d5785..137aa8375257 100644
> > --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > @@ -202,19 +202,6 @@ dc@54200000 {
> >
> >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> >                         nvidia,head =3D <0>;
> > -
> > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0A &e=
mc>,
> > -                                       <&mc TEGRA210_MC_DISPLAY0B &emc=
>,
> > -                                       <&mc TEGRA210_MC_DISPLAY0C &emc=
>,
> > -                                       <&mc TEGRA210_MC_DISPLAYHC &emc=
>,
> > -                                       <&mc TEGRA210_MC_DISPLAYD &emc>=
,
> > -                                       <&mc TEGRA210_MC_DISPLAYT &emc>=
;
> > -                       interconnect-names =3D "wina",
> > -                                            "winb",
> > -                                            "winc",
> > -                                            "cursor",
> > -                                            "wind",
> > -                                            "wint";
> >                 };
> >
> >                 dc@54240000 {
> > @@ -230,15 +217,6 @@ dc@54240000 {
> >
> >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> >                         nvidia,head =3D <1>;
> > -
> > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0AB &=
emc>,
> > -                                       <&mc TEGRA210_MC_DISPLAY0BB &em=
c>,
> > -                                       <&mc TEGRA210_MC_DISPLAY0CB &em=
c>,
> > -                                       <&mc TEGRA210_MC_DISPLAYHCB &em=
c>;
> > -                       interconnect-names =3D "wina",
> > -                                            "winb",
> > -                                            "winc",
> > -                                            "cursor";
> >                 };
> >
> >                 dsia: dsi@54300000 {
> > @@ -1052,7 +1030,6 @@ mc: memory-controller@70019000 {
> >
> >                 #iommu-cells =3D <1>;
> >                 #reset-cells =3D <1>;
> > -               #interconnect-cells =3D <1>;
> >         };
> >
> >         emc: external-memory-controller@7001b000 {
> > @@ -1066,7 +1043,6 @@ emc: external-memory-controller@7001b000 {
> >                 nvidia,memory-controller =3D <&mc>;
> >                 operating-points-v2 =3D <&emc_icc_dvfs_opp_table>;
> >
> > -               #interconnect-cells =3D <0>;
> >                 #cooling-cells =3D <2>;
> >         };
> >
> > --
> > 2.43.0
> >
>
> A little bit of documentation on this, should someone read the list to
> see what happened. The original report of the failure is here [0] and
> only occurred when the tegra210-emc driver fails to probe. After this
> report, the related code change [1] to tegra210-emc which registers
> the driver to icc was silently dropped from -next, but these dt
> changes remained. So now these interconnect routes do cause tegra-drm
> to universally fail on tegra210.
>
> Aaron
>
> [0] https://lore.kernel.org/all/56aed0ec-b104-4612-8901-3f6f95e0afab@nvid=
ia.com/
> [1] https://lore.kernel.org/all/20251027-t210-actmon-p2-v6-1-1c4bd227d676=
@gmail.com/

There may be another option here. I'm beginning to think there will
not be any way to set the icc routes for the dc's while the emc driver
can fail to probe. The next best thing looks to be just dropping the
interconnect nodes from the dc nodes and leaving the rest of the
original commit in place. Then reland the tegra210-emc driver change.
This should put the no-emc case back to where it was, while allowing
actmon to do its scaling when emc is available. And I will move to the
dc icc routes to downstream dt's, where I tightly control that emc is
available.

Does this sound reasonable? If so, I will go stage the changes and
verify that it works as intended.

Aaron

