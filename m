Return-Path: <devicetree+bounces-150254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B30EA418C4
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 10:23:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E2643B91B1
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 09:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A042505C8;
	Mon, 24 Feb 2025 09:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="ZCY8mIwq";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sY9nQ0Vw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A905D2505C2
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 09:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740388404; cv=none; b=pj2RbZicsU5QGG1+vWQms75+zY3vXv+m+jUxp+NuxZalbufSfbIDBw0fjzkrha6ge4NctUkAHoMNyHJnQhMsAEEMImS8J/Uqhm5oqQ4QLwm8fmSBGYGOFVLsub68MhDbBkMFn2DKFa/ZiwZj6YK4X+Go992nxLutgWTL8OMmGVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740388404; c=relaxed/simple;
	bh=60cIs+DIXYdchH9pACueuahPmqmy3pt+hqSU+4rhSgY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dJwpcPHj8785IxqpcSdf/BOfroyTuvMHNRsb8ucUvVBxEIy0teD9mQvAyhy7l/aWT5bO+jgYcxw/K9cEb/viNP8rO/CCgq+qjCo/pApSmLB3Ah3BagJPXyShA7CSSkzHlxZva3yjYVcnJx9yr+7oyXRgI8FmKkYrlSjVHFjZ32c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=ZCY8mIwq; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sY9nQ0Vw reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1740388400; x=1771924400;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AjylcePXrVUnF6ZSzcm/lAR7+n7JhJ5A0QnbNiuRMSg=;
  b=ZCY8mIwq4ejqj4sdi2mr/FDNaFRrQ2WNWYkhqmbeCrh/hx9sn1WPBqIw
   3JRNanlF0utU8bJKJkjOCTlbBhJrMxuhr92VdfnU88oJ7m6kHk8pustYY
   DavkMujrk52YCPIlIxO3kzMFbBE2/+9el7IjPcrsHDWhkF/i/wyXTPUcO
   05r4uQu1MDgcjS4Nrtp2mStR9quMrjaIfbN6rpXWhXAWetZ/9pdMzCICS
   KA9lcftuITSCPfDurYCymTg7VH9UNwui7OAZsFZaHA9HI1h8wxiyXgmAP
   6VDOK5+BXOnkRJrLcyOEIbj8asEaBcnUcnbqZ7QttByVsA/1LCVMTynEf
   g==;
X-CSE-ConnectionGUID: wmngbpdqQX6ZkS3h2ZUSfQ==
X-CSE-MsgGUID: zx5xB7opSoqf208iCoSzfw==
X-IronPort-AV: E=Sophos;i="6.13,309,1732575600"; 
   d="scan'208";a="42032430"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 24 Feb 2025 10:13:11 +0100
X-CheckPoint: {67BC3827-E-B8541F8F-E50F9B0E}
X-MAIL-CPID: 01CE408A85210DB28F086B4BC67B11FE_2
X-Control-Analysis: str=0001.0A002114.67BC3827.0039,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 69C04166011;
	Mon, 24 Feb 2025 10:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1740388387;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AjylcePXrVUnF6ZSzcm/lAR7+n7JhJ5A0QnbNiuRMSg=;
	b=sY9nQ0VwRxGqUaoFjGRj6FzsosJtQC16bPK16Ap9UL9cM8M8UnE8gZpdRZehylkaXF+Zmj
	Wi8jm8/SXD2CtEALuHfqxEAXxm2liYsbu92O8vzfEdDvUJQNQ4HMJeWnU/DQTCT/hp5tXu
	Gfe3/rD+RUur5byTub/NTrriVjI5OKwmMTFI4L0tsmMYiZGzdZ4hJiOqcaum4Su0L0Xvpm
	YAkQixnZQYO+6F0/iXHzhtpQn34GFHr+GN1KkNOiqlMDLQOy76taIvFT1emdkWMbJDieoE
	b+hFvSdyGmort3xMhaoAdna3igoWUohVTZXyNJHEthLwrtxA5whI8b2FmiWGAg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx53-mba53: Fix the PCA9554 compatible
Date: Mon, 24 Feb 2025 10:13:05 +0100
Message-ID: <12615755.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20250220133153.2380248-1-festevam@gmail.com>
References: <20250220133153.2380248-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Am Donnerstag, 20. Februar 2025, 14:31:53 CET schrieb Fabio Estevam:
> ********************
> Achtung externe E-Mail: =D6ffnen Sie Anh=E4nge und Links nur, wenn Sie wi=
ssen, dass diese aus einer sicheren Quelle stammen und sicher sind. Leiten =
Sie die E-Mail im Zweifelsfall zur Pr=FCfung an den IT-Helpdesk weiter.
> Attention external email: Open attachments and links only if you know tha=
t they are from a secure source and are safe. In doubt forward the email to=
 the IT-Helpdesk to check it.
> ********************
>=20
> From: Fabio Estevam <festevam@denx.de>
>=20
> gpio-pca95xx.yaml documents 'nxp,pca9554', so use this compatible
> to fix the following dt-schema warning:
>=20
> failed to match any schema with compatible: ['pca9554']
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm/boot/dts/nxp/imx/imx53-mba53.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts b/arch/arm/boot/dt=
s/nxp/imx/imx53-mba53.dts
> index c14eb7280f09..3cdb87ac1d7c 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx53-mba53.dts
> @@ -162,7 +162,7 @@ codec: sgtl5000@a {
>  	};
> =20
>  	expander: pca9554@20 {
> -		compatible =3D "pca9554";
> +		compatible =3D "nxp,pca9554";
>  		reg =3D <0x20>;
>  		interrupts =3D <109>;
>  		#gpio-cells =3D <2>;
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



