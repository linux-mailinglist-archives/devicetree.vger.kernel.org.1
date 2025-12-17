Return-Path: <devicetree+bounces-247618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1803CC9479
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 19:23:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F95430567AE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 18:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233D313DBA0;
	Wed, 17 Dec 2025 18:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UXIH1D0V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7402D061F
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 18:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765995623; cv=none; b=DFPEjifrzujadP6VE3wFbQDEgqI3MpWP3bxM8ExqFRnGVZqNd6C4DUzDZ5nefnNt0aOOV802v3/nVTq3XYk2B6NkghIehZjyAD2/fG0b70YtOObNLmeJfr0wgOUHCEPTLQcz7UF54hIr/vFgYJr4cdIb0Z9rqPAI1qy0XDksMzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765995623; c=relaxed/simple;
	bh=3i5LrHdv5w8wt1bfXt21odcnFBuGEOhdSHFmOl05JBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GoiZftCoh4X2EUSM4I0dB5RrBGaopdjHyWaTGYXdbTTms5RwlEKoX74ZWwob44Ot2lYOuv4AePOsN1VgTabxqvAuOEM+FsJWAFhzz63UIMRytkJ+4uiZjikImnumC0vpLdFbnm2RaWjDrUPg3g+8lHsTkH7JPBFAnWfPPjb9Vx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UXIH1D0V; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-597c83bb5c2so5422574e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765995616; x=1766600416; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qj+6M+1ES/JF5RhbI6fGNDzy/2yVj3GaySXFC05Hwtg=;
        b=UXIH1D0Vet0dPI3cov1Z+H4uli9pCzHKM2VTLiN6eqG3qhNmQMj4ye+v4Y/Th0k2yn
         QqADz2MqCmAQt4Vu7y5k1hpj0T+fqpp58IBRKs709xXz9sAHmlF0PBK4garwTUNyAk9A
         U3t7Eu06RQG3yiCtuAAfCvdENjpmDQAXGsQHsX4Y0Ho9PvR9mywV1FGybbDTDnjigbvx
         USCHgHpAVDKmCNtS1cxGdBOVK3ueaxUq05fSGHNO1nfzgnBLM27+M4bxY4Bqsf00aUd7
         4Nn1gDSuFDS5CwXyGaK/E6YAf6AoxsLCJLqdZ/Aj15lhO8gCW6F/ILQsEcfEmrNhx4kL
         abnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765995616; x=1766600416;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qj+6M+1ES/JF5RhbI6fGNDzy/2yVj3GaySXFC05Hwtg=;
        b=fw1qEvdYU0lJ+X2B7pJuX3SbTL6xx8usjiPiEevV6bnE97C8cjiKtVA342lXq+8B3m
         pg37FWO3AnjyFJp9o5yp9X1Srw8kYYEFSNwT35v6lopWFnfkZw/wnNTEDi4c9WcfWDjO
         iNpZb+IzbSgFca5UCHTJNXLev1U58WXPoRvdQWrbdvF4FbbOWiIx0Nd/pjQ0xGH2025h
         7/T29rUtYoEpChjOhvT6TqhD80Kx5cjpdeboScbHIqj5yH0A02ZSEKg/p1HplIGmHjb7
         bOX2lMr8nUZPC8ENDgXWXjXZADSnYjMDd+UkPn7rxPKrAv3VPOzKbj1tM+WvWVY1Jdra
         Uckw==
X-Forwarded-Encrypted: i=1; AJvYcCVfVtrOYX+EiSPeDQJu2Dtk73NjNBbs9zqEhrzzZ5wuguwOswoChXTNl87gpvgMZxOueLbOFzxBjRrc@vger.kernel.org
X-Gm-Message-State: AOJu0YxyIMNQ8PRGR0SfMDTmxgV2kJu6PDEWv83slptS9QvFPY1JX+4A
	tfU0DNrvuP4X24GtyqoizyPI5PRwMELDZPeblM1+PmCCr03SbwxXbkdwc1ej6ut1+B1kL+yxhrn
	saYODfJabcPsSZm6N+VQ0uf+eOAzxTz2KyAf5
X-Gm-Gg: AY/fxX5YfEpUfBQN0FMm6euXDGKK+DzRZlVYbQ4q11be5blXlBw8XWsLCPRUyNZuT4I
	/vrNlnl8TnHQw6Roo29mQnRw5TPs2ZgZkWf6Si4m6UDEx9PPKlqW7EI4MeqGsMjizxkqnGkq0hW
	IALLSSKsxukukVww1sQxfdneoD/apiHerpstfnTzB5o0yxiePh4Um62OyMCiGieQdhaK9z6O7Tb
	s86tdu3i5WPs95vqD7h377LW97Ztd7K9+96A8CkpBndBikrZ1cmAqvpSNdtnfCrDi5LrgY=
X-Google-Smtp-Source: AGHT+IGd95SYTL+jrd3ffGIi6DjyL+BciXiJCn4mpk5c73UzUiKMcBz6VwrK8ePBHuhRnXZ9jOtU+EbB3lxCBOfHi5I=
X-Received: by 2002:a05:6512:23a2:b0:577:6e42:3718 with SMTP id
 2adb3069b0e04-598faa0176amr6781461e87.7.1765995615295; Wed, 17 Dec 2025
 10:20:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251217104744.184153-1-jonathanh@nvidia.com>
In-Reply-To: <20251217104744.184153-1-jonathanh@nvidia.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 17 Dec 2025 12:20:04 -0600
X-Gm-Features: AQt7F2qvwolHA_J0sTgNxQVP2Sf5gZuuram-Z5Ib21M7o22UxO2hU6A_r4ZKiUc
Message-ID: <CALHNRZ8syS6F9W1ovw2Y-jkspQafCnLy0ynocn0sMLurShHnbA@mail.gmail.com>
Subject: Re: [PATCH] Revert "arm64: tegra: Add interconnect properties for Tegra210"
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 4:48=E2=80=AFAM Jon Hunter <jonathanh@nvidia.com> w=
rote:
>
> Commit 59a42707a094 ("arm64: tegra: Add interconnect properties for
> Tegra210") populated interconnect properties for Tegra210 and this is
> preventing the Tegra DRM driver from probing successfully. The following
> error is observed on boot ...
>
>  drm drm: failed to initialize 54240000.dc: -517
>
> For now revert this change, until a fix is available.
>
> Fixes: 59a42707a094 ("arm64: tegra: Add interconnect properties for Tegra=
210")
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra210.dtsi | 24 ------------------------
>  1 file changed, 24 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra210.dtsi
> index 709da31d5785..137aa8375257 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
> @@ -202,19 +202,6 @@ dc@54200000 {
>
>                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
>                         nvidia,head =3D <0>;
> -
> -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0A &emc=
>,
> -                                       <&mc TEGRA210_MC_DISPLAY0B &emc>,
> -                                       <&mc TEGRA210_MC_DISPLAY0C &emc>,
> -                                       <&mc TEGRA210_MC_DISPLAYHC &emc>,
> -                                       <&mc TEGRA210_MC_DISPLAYD &emc>,
> -                                       <&mc TEGRA210_MC_DISPLAYT &emc>;
> -                       interconnect-names =3D "wina",
> -                                            "winb",
> -                                            "winc",
> -                                            "cursor",
> -                                            "wind",
> -                                            "wint";
>                 };
>
>                 dc@54240000 {
> @@ -230,15 +217,6 @@ dc@54240000 {
>
>                         nvidia,outputs =3D <&dsia &dsib &sor0 &sor1>;
>                         nvidia,head =3D <1>;
> -
> -                       interconnects =3D <&mc TEGRA210_MC_DISPLAY0AB &em=
c>,
> -                                       <&mc TEGRA210_MC_DISPLAY0BB &emc>=
,
> -                                       <&mc TEGRA210_MC_DISPLAY0CB &emc>=
,
> -                                       <&mc TEGRA210_MC_DISPLAYHCB &emc>=
;
> -                       interconnect-names =3D "wina",
> -                                            "winb",
> -                                            "winc",
> -                                            "cursor";
>                 };
>
>                 dsia: dsi@54300000 {
> @@ -1052,7 +1030,6 @@ mc: memory-controller@70019000 {
>
>                 #iommu-cells =3D <1>;
>                 #reset-cells =3D <1>;
> -               #interconnect-cells =3D <1>;
>         };
>
>         emc: external-memory-controller@7001b000 {
> @@ -1066,7 +1043,6 @@ emc: external-memory-controller@7001b000 {
>                 nvidia,memory-controller =3D <&mc>;
>                 operating-points-v2 =3D <&emc_icc_dvfs_opp_table>;
>
> -               #interconnect-cells =3D <0>;
>                 #cooling-cells =3D <2>;
>         };
>
> --
> 2.43.0
>

A little bit of documentation on this, should someone read the list to
see what happened. The original report of the failure is here [0] and
only occurred when the tegra210-emc driver fails to probe. After this
report, the related code change [1] to tegra210-emc which registers
the driver to icc was silently dropped from -next, but these dt
changes remained. So now these interconnect routes do cause tegra-drm
to universally fail on tegra210.

Aaron

[0] https://lore.kernel.org/all/56aed0ec-b104-4612-8901-3f6f95e0afab@nvidia=
.com/
[1] https://lore.kernel.org/all/20251027-t210-actmon-p2-v6-1-1c4bd227d676@g=
mail.com/

