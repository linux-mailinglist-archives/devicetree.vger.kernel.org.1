Return-Path: <devicetree+bounces-241249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 01023C7B85C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 20:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D70564E47A0
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 19:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D132FFFAF;
	Fri, 21 Nov 2025 19:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jo2UGlXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE10E3002A6
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 19:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753537; cv=none; b=Rgye3uxxp8ZMpcDNp95aJOhZ7YdLsR2GZX2ZJ5cEZIXC2aMsDt2SfnytzNg+cWWb/F2D43om6hJZJD08UbU5JD+8EeyLe/FTVqESkgJpu4lyTVwonqamAoXnY2OdNi8ErbSOCO8mjxnV7gQ5cv1vqhkobkXdtHVfFFjN6uLDjQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753537; c=relaxed/simple;
	bh=TyJZhZkzFkz4ji/Ckoc811B9aWkl0eSzR8xvVKTd01M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=up2mDBbIyynxIQLujZNVeN4m+hEy09KSPg+4Ztqy3P/KFOzQXmfp79SvCo+gh/VrDrcrkJyG9BLAHM74EC77OZax1cOtFG/iyY5tui7sa3f8g3ZyAm2XGzyO/R8JDWpS3g6RYG2i3ztr+mB1pglNfAOYiYJQgwEuX2FkxMKCCHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jo2UGlXs; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-594330147efso2540979e87.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763753534; x=1764358334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQQkgZdyyxCS6gJ5PW70XCzN6wIijcc0Oben6ZHbGUY=;
        b=jo2UGlXsvjrf9n+5EgWx1qgC4Q+nqdAvfGcmbwOlGnLCQXf5wnCGAK1IDGzMNtD23u
         NbfCplyuxYLD7ZEZu8Mik1wnPwX73zGHeAN7AvhkR+3O7N8vF0sSQkJ36tHUWQj1+INC
         UGEVZEQXWpONQ1du0LY63+VUo2Sv5uPKuVAcHuW16hHvyPHksMYOFb9apTt2pVbzL76L
         Ia8Erh1ymUKNLakoNo4rTuzYP83I260rvAklgrIRWDxA1WlVtnVn4/b8LJZTo6gn65lv
         paCxhm4I/0qGyE6jxoyhilWw9KqWhWnONR8ugxlXs1+m8d4OwZeS3Be++Zcj1lJivZdm
         8P/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763753534; x=1764358334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aQQkgZdyyxCS6gJ5PW70XCzN6wIijcc0Oben6ZHbGUY=;
        b=kP+3/qzybK9hV10fZ/Jam650UjwxJGw17fNUDxUyUuSn/iOhs2Bs3tB45e0bioiWQq
         QOB3X3UBXIslnIjaezRy2iooKOftfAKm4v9TFKmMC3e1gAfNpjhjrv3mRpV+1tgdgL5S
         vh5xB300yGKFxCLCwlSKlGrLplreTUMeJjKAkwkIZy/+vzybE/D71CjVVBI32kJ/UM3D
         7+grn4U9MySdlzhyihCnJXnVhtGW+wMgp5Em2jY5MP4GOzhM7hBBG5KqKI3kqP1CEmCE
         wGIbI2wQ8fulaUbWxWEGCmhf5cSFQhh/e6ZwZN0h/sTC39xBeD/VMqejsf91rlV0SQuF
         QU+w==
X-Forwarded-Encrypted: i=1; AJvYcCXSHaWXvLax7C9noLoPPbuVA9m6+MnlhA9HW6EP1PF9zR1YVNmbQTs41dX1Xw/+SMgB1Wv7ocaF13di@vger.kernel.org
X-Gm-Message-State: AOJu0YyF1YvlNy3lQ/400JHjl9ONd7yf5f2nwKu8frwySwznHHGWS8lU
	qewExI5o6gPigqg/o2zP+Ow2Qc5vaTM/hjF/wjSAJLLSz+DY40WpwH5OwNSl0ksjkNsxWDIwaO9
	Fl36OrkFCzn8PrcosukijrxFFwdqfH64=
X-Gm-Gg: ASbGncs9COzVsyCbAfQdC+G24vXjTDA/7+KzuThCaZcIZa+v4AoQwWCvfubeybpnXhG
	cbFhOoPpjAQfy9au068yG6g3eX8VWp+d6iXOhWln9sD4duv1mQBnZ8uDVt7sy6o7sdvwgFVXOxw
	6HwkD0nH1smQnh8KFg931ghJauLKh0EWYrtnWVz1Ax4tEMmi1EdERzMQGyaJpk+Uk7shtFovFbH
	/8kZNsSv37lhYZ+LcTOrCOV7kOkysSuqQPejFX7pRBduAkE1dhJXHV9x02bDOw+G6Ux45w=
X-Google-Smtp-Source: AGHT+IHzMeMRLx+qNbKNP4tO+td0fjgmUeolZXMPswV6zfAtRsDlZcOqTWPYIFhq6t3VYkJwJzmnVFwBb0BgIBovNlQ=
X-Received: by 2002:a05:6512:3f1d:b0:594:3004:ce37 with SMTP id
 2adb3069b0e04-596a3ef00bbmr1211551e87.44.1763753533445; Fri, 21 Nov 2025
 11:32:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021-t210-actmon-p4-v5-0-4a4dbc49fbc8@gmail.com>
 <20251021-t210-actmon-p4-v5-2-4a4dbc49fbc8@gmail.com> <56aed0ec-b104-4612-8901-3f6f95e0afab@nvidia.com>
In-Reply-To: <56aed0ec-b104-4612-8901-3f6f95e0afab@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Fri, 21 Nov 2025 13:32:02 -0600
X-Gm-Features: AWmQ_bk5MRf-_DTPSdXZzW6hKcukUSEpofw-tme48-1wKUDFb-YLYStIglwKPTA
Message-ID: <CALHNRZ8Hc+kqWVCjTZvtJ+hBrsgpjO9EySOQFfLaLHvt9P_reg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: tegra: Add interconnect properties to
 Tegra210 device-tree
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 21, 2025 at 5:24=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
>
> On 22/10/2025 04:13, Aaron Kling via B4 Relay wrote:
> > From: Aaron Kling <webgeek1234@gmail.com>
> >
> > Add interconnect properties to the Memory Controller, External Memory
> > Controller and the Display Controller nodes in order to describe hardwa=
re
> > interconnection.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >   arch/arm64/boot/dts/nvidia/tegra210.dtsi | 24 +++++++++++++++++++++++=
+
> >   1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot=
/dts/nvidia/tegra210.dtsi
> > index 6da10db893add44a98fde1666c382511212fd43c..2fcc7a28690f7100d49e8b9=
3c4fb77de7947b002 100644
> > --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> > @@ -202,6 +202,19 @@ dc@54200000 {
> >
> >                       nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> >                       nvidia,head =3D <0>;
> > +
> > +                     interconnects =3D <&mc TEGRA210_MC_DISPLAY0A &emc=
>,
> > +                                     <&mc TEGRA210_MC_DISPLAY0B &emc>,
> > +                                     <&mc TEGRA210_MC_DISPLAY0C &emc>,
> > +                                     <&mc TEGRA210_MC_DISPLAYHC &emc>,
> > +                                     <&mc TEGRA210_MC_DISPLAYD &emc>,
> > +                                     <&mc TEGRA210_MC_DISPLAYT &emc>;
> > +                     interconnect-names =3D "wina",
> > +                                          "winb",
> > +                                          "winc",
> > +                                          "cursor",
> > +                                          "wind",
> > +                                          "wint";
> >               };
> >
> >               dc@54240000 {
> > @@ -217,6 +230,15 @@ dc@54240000 {
> >
> >                       nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
> >                       nvidia,head =3D <1>;
> > +
> > +                     interconnects =3D <&mc TEGRA210_MC_DISPLAY0AB &em=
c>,
> > +                                     <&mc TEGRA210_MC_DISPLAY0BB &emc>=
,
> > +                                     <&mc TEGRA210_MC_DISPLAY0CB &emc>=
,
> > +                                     <&mc TEGRA210_MC_DISPLAYHCB &emc>=
;
> > +                     interconnect-names =3D "wina",
> > +                                          "winb",
> > +                                          "winc",
> > +                                          "cursor";
> >               };
> >
> >               dsia: dsi@54300000 {
> > @@ -990,6 +1012,7 @@ mc: memory-controller@70019000 {
> >
> >               #iommu-cells =3D <1>;
> >               #reset-cells =3D <1>;
> > +             #interconnect-cells =3D <1>;
> >       };
> >
> >       emc: external-memory-controller@7001b000 {
> > @@ -1001,6 +1024,7 @@ emc: external-memory-controller@7001b000 {
> >               clock-names =3D "emc";
> >               interrupts =3D <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> >               nvidia,memory-controller =3D <&mc>;
> > +             #interconnect-cells =3D <0>;
> >               #cooling-cells =3D <2>;
> >       };
>
>
> I am seeing another failure on -next for Tegra210 and bisect is point to
> this commit ...
>
> # first bad commit: [3cad4369399a31277e9e20de723c665b30cba574] arm64:
> tegra: Add interconnect properties for Tegra210
>
> The tegra-tests [0] devices test is failing and after this commit the
> DRM device is no longer bound to the driver.

Upon research, this one appears to be a bit more complicated. The dc
code in tegra-drm sets up an icc connection per plane to emc, I
presume in order to prevent underruns. If the icc path exists in the
dt, but the emc driver has not added itself to icc, then dc will
infinitely defer [0]. And per earlier statements on this list, the
regression test setup for Tegra210 does not pass emc training data
from the bootloader to the kernel, meaning the emc driver fails to
probe.

I am not sure how to handle this. As far as I know, the previous archs
that the dc icc code was originally written for wouldn't ever have the
emc driver fail, because the untrained tables are in the kernel dt,
meaning that the driver could at least load that. On Tegra210 since
the dt tables were rejected, there's nothing for the driver to fall
back on, so it is possible to have a hard failure.

Does anyone have ideas on how to handle this? To allow dc to report
icc bw on Tegra210, but not fail probe if the emc is missing? Making
the icc path lookup non-fatal isn't really an option.

Aaron

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/gpu/drm/tegra/plane.c?h=3Dv6.18-rc6#n778

