Return-Path: <devicetree+bounces-247986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72523CCD589
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 432D430111B8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C083320CCD;
	Thu, 18 Dec 2025 19:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XjleOM4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AF630B527
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084889; cv=none; b=B6W9q/D812eIgIXjnH2F3PHDCgytgnqeK27ZsHKZpupjyFzgVA0aDAif3vl/pmQDb2uWmM2KgZiHVE8ucm/YWFsQAb2W7tkqoteeNJM7Pkk9LHodbDfgfiKGx5pRUeetJq0N/A2h6B6Ljs+XFhZ2HKX0ISRVunUrKovdBUYZaRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084889; c=relaxed/simple;
	bh=IrPgklRGL2IRoMECvOwkqFaG3C+ScQfQVzGtrc8fmM0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=REWTY4qyl+j2+QxUTsJNRzw9hD4uumhUQjg6Rn5r0chjyABaTCWdpe4IshL4nt5NhEI/ilUDEX4jt2saF+erOpbPKRXP024Ysa2jmD4LqqY/LRnF2+SONkMNmpnYNwz6HDKXAsZSZtB6lH6FzaCYcjPztxfA4snj/igoFoqXifw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XjleOM4r; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5958931c9c7so1135918e87.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766084884; x=1766689684; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZ6EMtZaY8/x7+h2gpyLYnuALUZdOTDKUPE8xbGL5wY=;
        b=XjleOM4rUnzfy7Tt3cwbx4Y72znCmOfmSnv5jZbU7lT2c7/4fopHVQqkGZiTP7xtJV
         6NimnAr1jzSHf30t3wMj9Vxl8xLzFrC6YCs9B8rjc47vx3R6nAJYKDRCzOQlYBuGa9cq
         3MSBUyXdkCIf2zzRTe2l8CQjE65ybHIc4IyWZkN3iXv3ktYIBdtTIOGgLzrAV7HtbSiS
         NzcHvjyLDY+6L2lcSKubR4GgXyR6KQPk3ld62GXXectQxEx67TNceu5Fr+O/uj0VUI6t
         XKtIEY+C0L1QcHByygL3vkL6RaammF4t6FTTtDkK7823egb2vev5f9dbqmwyqlNZapSh
         CtbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084884; x=1766689684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bZ6EMtZaY8/x7+h2gpyLYnuALUZdOTDKUPE8xbGL5wY=;
        b=clLkzgKdTO1G0oUzrC9ctW2StZvSAld3MQ11banacHWq4gDLT7MOhIXa5h5rM3glXk
         8m2W7DDpXjehnbC2JPfHOzTCoMed7l7jKxXtquDIs0ek79u3R956zn7Z370t6xnEVQ3e
         h34g5J3BzkS2n1pVkI5b1A/CSuu1gQIrXiNk3pwMS0QmuwPdIYq/SqgIMp+pnezpAEzG
         rQJkKenjek2Yk6rCv8NcoFFrrBdQIvTpNVETdMExbpFDHbSDMigi9e1Maa7xtcALyUlr
         j+9hlxH1BBF/2O9rBXjTspxpOHC1+CDsDpSsl0RIo6/ipHRqXFixfmLtWcy9zXfrOMO4
         zqtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbPVoSOVILYlPjLAxEkDJRzWSEIiHJxGc2mAhVjAmdHbdYVRjuO4sb5FbnoWaIqwE/KGSnk2MA2pLR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8HQZZWo81kBCzR0g1ZWXzyNQiyyln0EaEuIGzARNf+OvOmKze
	ygl5VBTV7LozRQ165lPFj5a6pZsoG8Ocg2EYS64XAE+2Xjth6YZT07S6jFw4XINzECrV6ZwLAhM
	JJIQ5aHUjnJfNRTEj03f0v7TlDfwJiV0=
X-Gm-Gg: AY/fxX7/YBciIOzL/uPKsBpGITKrC6OQ6Yp7Ox1L5qd2m6cnOlJWF6sWyCt9hdGbFYr
	W2CIzFStIWMO2/c0v171H/CP//9DxDD+KpfuxBszVh2NuPMSgDaVIyCij8Av+6DbeoQx+rpCjaf
	KXGUcpNES3FxWuNZ53EHTNBrUA5MYxEKFRsnWWf9F+VL6z2gBzG0aMPuDZpkNIydzsQo+/b9zvx
	e74pqbpdt5bzH1ZU7T2763hh73Rh84rSQEl1u26C3UnWvnBfZVOq9Zb7z+1Cux0R9dlyCE=
X-Google-Smtp-Source: AGHT+IFmaVqU6xZDCbAEgfw++4K0heVS5xvvcusXRu6LwjW7KJkGjeP/JAbdmiH60qGFAMGnyPP46AalH/wiQ40XrOY=
X-Received: by 2002:a05:6512:e88:b0:598:fb09:5360 with SMTP id
 2adb3069b0e04-59a17df5ec2mr165727e87.53.1766084883768; Thu, 18 Dec 2025
 11:08:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217104744.184153-1-jonathanh@nvidia.com> <CALHNRZ8syS6F9W1ovw2Y-jkspQafCnLy0ynocn0sMLurShHnbA@mail.gmail.com>
 <CALHNRZ_vkw6Ns=PMa+x0SY64+Ov0FeA5tMKJr+-tY9_OasKUog@mail.gmail.com> <aUPsDeFmxAJ09Tk7@orome>
In-Reply-To: <aUPsDeFmxAJ09Tk7@orome>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 18 Dec 2025 13:07:52 -0600
X-Gm-Features: AQt7F2rZaDEJQjyHAZZ0JkWaV3knLbFsUugTOOxQYIF1v4JX1I2zY4UaQHv-uF0
Message-ID: <CALHNRZ_vjSy+A8ZW7E1A4B5yQJ=GgvbNmafU7gjtGv-xjdfhPg@mail.gmail.com>
Subject: Re: [PATCH] Revert "arm64: tegra: Add interconnect properties for Tegra210"
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 18, 2025 at 6:00=E2=80=AFAM Thierry Reding <thierry.reding@gmai=
l.com> wrote:
>
> On Wed, Dec 17, 2025 at 02:42:58PM -0600, Aaron Kling wrote:
> > On Wed, Dec 17, 2025 at 12:20=E2=80=AFPM Aaron Kling <webgeek1234@gmail=
.com> wrote:
> > >
> > > On Wed, Dec 17, 2025 at 4:48=E2=80=AFAM Jon Hunter <jonathanh@nvidia.=
com> wrote:
> > > >
> > > > Commit 59a42707a094 ("arm64: tegra: Add interconnect properties for
> > > > Tegra210") populated interconnect properties for Tegra210 and this =
is
> > > > preventing the Tegra DRM driver from probing successfully. The foll=
owing
> > > > error is observed on boot ...
> > > >
> > > >  drm drm: failed to initialize 54240000.dc: -517
> > > >
> > > > For now revert this change, until a fix is available.
> > > >
> > > > Fixes: 59a42707a094 ("arm64: tegra: Add interconnect properties for=
 Tegra210")
> > > > Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> > > > ---
> > > >  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 24 --------------------=
----
> > > >  1 file changed, 24 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra210.dtsi
> > > > index 709da31d5785..137aa8375257 100644
> > > > --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > > > +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > > > @@ -202,19 +202,6 @@ dc@54200000 {
> > > >
> > > >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1=
>;
> > > >                         nvidia,head =3D <0>;
> > > > -
> > > > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0=
A &emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAY0B =
&emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAY0C =
&emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAYHC =
&emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAYD &=
emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAYT &=
emc>;
> > > > -                       interconnect-names =3D "wina",
> > > > -                                            "winb",
> > > > -                                            "winc",
> > > > -                                            "cursor",
> > > > -                                            "wind",
> > > > -                                            "wint";
> > > >                 };
> > > >
> > > >                 dc@54240000 {
> > > > @@ -230,15 +217,6 @@ dc@54240000 {
> > > >
> > > >                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1=
>;
> > > >                         nvidia,head =3D <1>;
> > > > -
> > > > -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0=
AB &emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAY0BB=
 &emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAY0CB=
 &emc>,
> > > > -                                       <&mc TEGRA210_MC_DISPLAYHCB=
 &emc>;
> > > > -                       interconnect-names =3D "wina",
> > > > -                                            "winb",
> > > > -                                            "winc",
> > > > -                                            "cursor";
> > > >                 };
> > > >
> > > >                 dsia: dsi@54300000 {
> > > > @@ -1052,7 +1030,6 @@ mc: memory-controller@70019000 {
> > > >
> > > >                 #iommu-cells =3D <1>;
> > > >                 #reset-cells =3D <1>;
> > > > -               #interconnect-cells =3D <1>;
> > > >         };
> > > >
> > > >         emc: external-memory-controller@7001b000 {
> > > > @@ -1066,7 +1043,6 @@ emc: external-memory-controller@7001b000 {
> > > >                 nvidia,memory-controller =3D <&mc>;
> > > >                 operating-points-v2 =3D <&emc_icc_dvfs_opp_table>;
> > > >
> > > > -               #interconnect-cells =3D <0>;
> > > >                 #cooling-cells =3D <2>;
> > > >         };
> > > >
> > > > --
> > > > 2.43.0
> > > >
> > >
> > > A little bit of documentation on this, should someone read the list t=
o
> > > see what happened. The original report of the failure is here [0] and
> > > only occurred when the tegra210-emc driver fails to probe. After this
> > > report, the related code change [1] to tegra210-emc which registers
> > > the driver to icc was silently dropped from -next, but these dt
> > > changes remained. So now these interconnect routes do cause tegra-drm
> > > to universally fail on tegra210.
> > >
> > > Aaron
> > >
> > > [0] https://lore.kernel.org/all/56aed0ec-b104-4612-8901-3f6f95e0afab@=
nvidia.com/
> > > [1] https://lore.kernel.org/all/20251027-t210-actmon-p2-v6-1-1c4bd227=
d676@gmail.com/
> >
> > There may be another option here. I'm beginning to think there will
> > not be any way to set the icc routes for the dc's while the emc driver
> > can fail to probe. The next best thing looks to be just dropping the
> > interconnect nodes from the dc nodes and leaving the rest of the
> > original commit in place. Then reland the tegra210-emc driver change.
> > This should put the no-emc case back to where it was, while allowing
> > actmon to do its scaling when emc is available. And I will move to the
> > dc icc routes to downstream dt's, where I tightly control that emc is
> > available.
> >
> > Does this sound reasonable? If so, I will go stage the changes and
> > verify that it works as intended.
>
> Let's go with the revert for now, since that clearly documents where
> things go wrong and it can be easily reapplied once the root cause has
> been resolved.
>
> It's a bit unfortunate that we don't have a way of making these
> interconnect properties optional. If EMC fails to probe for whatever
> reason, I think the assumption should be that it doesn't do any dynamic
> scaling of the EMC frequency and hence the entire ICC stuff isn't needed
> and should just be no-ops.
>
> On the other hand, other than the patches getting reverted, there's
> really no good reason for the EMC driver to fail to provide them, hence
> I think once that's been restored we can apply this again and then that
> should be the end of it.

Except that the tegra210-emc driver fails to probe at all if the
bootloader does not copy reserved-memory table node? Which per Jon,
the Nvidia regression bench does not do. And neither will a normal L4T
install using a mainline kernel and dt via extlinux or u-boot. I have
to put the mainline kernel on DTB and use a kernel in an android boot
image, which causes nvtboot-cpu to set the dt table reserved memory
node directly. Which is perfectly fine for my android use case, but
not so much for anyone just trying to boot a Linux distro.

I have wondered how the reserved memory dt tables were verified when
that support was initially added. And if the regression bench can be
set up like that. Because right now, emc fails to probe there, meaning
there's no test coverage for the driver.

Aaron

