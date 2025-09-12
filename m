Return-Path: <devicetree+bounces-216482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5CAB54EB2
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BDF2172501
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87691306480;
	Fri, 12 Sep 2025 12:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ZveLJ4RB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45253019BD
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757681949; cv=none; b=dgx/QuM7M6U1kXgATlC5ysuQaikNahmO5+ufDUINIgdrG8iBTVOuy3Ts0Izz8YzqN6O9VqdXEbkMFXxmIKR9pVoRIx+wLHxelXuk3Lp7Z69lSiWhVvpWH2PVT6U0zQ7478UK75f/gFIR88qR3o0Ma7yb4r9XBUcpSeQWhEoIYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757681949; c=relaxed/simple;
	bh=95wdMfSSKI6BJ1wqXZqHKTXbF3BOZq8S5e5dnGxML0U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dfWwU7/sodIL6LqA3XZ0QygELvYcrwJMI6soZbH6SM0wBcfzkfFrsJjcDlppc48yX7jL5tlcT+x7NkPSHsLc7McDyWWc+tmBOGM67LMSNZbLqQXJKAxYqQbmt9pakOqqy+8jZOyHVBNlqDJJDyvr/AGlBG5p5V+VgZycX1sUwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ZveLJ4RB; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2A296C8EC49;
	Fri, 12 Sep 2025 12:58:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2729660638;
	Fri, 12 Sep 2025 12:59:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 06B31102F2917;
	Fri, 12 Sep 2025 14:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757681945; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=uoHUgNG9WFK5tEtf5uuz+0UQZUlRc0I+gT4+ZBrhy8w=;
	b=ZveLJ4RBhUtqzF96HXkM+O5wLKip5ngyZJXe4iaQQFtCMo4FAQNjw5aow394Vvhu/SbKGN
	SmMVPBOReDj+IERGLmk8c8kd89JeA0rUa/ltr1nahdIQNWAWgymVCjCbu8Kb/3EwO8VsHw
	wbTGQwnODdz32i4oL7kMWw9mDZDYMtVgRcbUMdHrN+oZG2k8pLRobG3iD7d/P3c+RoT2ZO
	TF0gA1QNMNWYRlRMuvyraRp6U3vsuwhS0+I9pLqTxFS16j1FfhHwzXdhzvPhhwTYZ2runo
	ngQP8Q+ZJ96nOSTkxEII6XHRMQMPmbIKHM348gWGX193JH+poSCtgs4dbrJIZQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Frank Wunderlich <frank-w@public-files.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Josua Mayer <josua@solid-run.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: marvell: cn9130-sr-som: add missing
 properties to emmc
In-Reply-To: <20250911-cn913x-sr-fix-sata-v2-4-0d79319105f8@solid-run.com>
References: <20250911-cn913x-sr-fix-sata-v2-0-0d79319105f8@solid-run.com>
 <20250911-cn913x-sr-fix-sata-v2-4-0d79319105f8@solid-run.com>
Date: Fri, 12 Sep 2025 14:59:02 +0200
Message-ID: <87frcromi1.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Josua Mayer <josua@solid-run.com> writes:

> CN9130 System on Module connects an eMMC to ap_sdhci0, but the common
> properties indicating eMMC were not added to device-tree.
>
> Add no-sdio and non-removable as applicable to eMMC.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi b/arch/arm64/=
boot/dts/marvell/cn9130-sr-som.dtsi
> index a997bbabedd8a9679e9d209225666d7696dd7da2..f95202decfceb5cc9dc777ddd=
1870d5972a1bc54 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-sr-som.dtsi
> @@ -61,6 +61,8 @@ &ap_sdhci0 {
>  	pinctrl-0 =3D <&ap_mmc0_pins>;
>  	pinctrl-names =3D "default";
>  	vqmmc-supply =3D <&v_1_8>;
> +	no-sdio;
> +	non-removable;
>  	status =3D "okay";
>  };
>=20=20
>
> --=20
> 2.51.0
>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

