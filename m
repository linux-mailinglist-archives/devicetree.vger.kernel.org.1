Return-Path: <devicetree+bounces-283303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OBqDEbEzGkWWgYAu9opvQ
	(envelope-from <devicetree+bounces-283303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 09:07:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA083758E3
	for <lists+devicetree@lfdr.de>; Wed, 01 Apr 2026 09:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 429BF309C4A7
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2026 07:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EB09365A17;
	Wed,  1 Apr 2026 07:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="NGh+18Lt"
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791DD35BDB7;
	Wed,  1 Apr 2026 07:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.40.3.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775027173; cv=none; b=DC4LWkdjj7sM5ih1rYMKVyX2Y42aK4uu9Q5d+k1K3HK3AEmtgzJ/d1jzcZLonySKWqEdQGkyf25hGUiLyeOrW4uBBZ31GQ4EAQ1hadypA4LswVWcQtPDbR7VzqXH3NGlZmJP8qH6KLUXp7v5ma8+GIB0yh6NT4Z3fbSLFIJkB8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775027173; c=relaxed/simple;
	bh=EgZG8vWpENL7/pRzsvmxV2C0P23JpF9gFWAvH3xpzUU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ykl7zo4BpG4Ep33xttcflEbOL7MVZV/qqEELvnqLecQ1gTc1jYNfJQeYBrP8rp382A3dnBaY9V7Ti/gJtksYG6ztpJY8jKD12SQ4Zg/3qWVRXcCGwN4zzCJyE9wkaWjMXcPD4/0LEmY7BDbsDXno7MreczvdO2oHsCMvJvAAMOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=NGh+18Lt; arc=none smtp.client-ip=188.40.3.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ICvoVCRHMIyKZPWatorRc2YdWoTDd421WMgvZUug3mk=; b=NGh+18LtKKrST7UgqOTIqoO8JO
	sFSWoy5Ww0/flE/HfXNntAFf9SmnQHjj0qD3AwlPPqZyb4KLg+bQNd+O/bcH1zLuU56a0bNdPVkJq
	8ukPn+Gs0jH3BZjWWU9KApbSLrvnJNwiaYjyJf4lrEBTz9jFXA1xfotzWktgTuY5SGAKVecrjLjyk
	K0bWatCW4fgRappkcuTcj54MH28kg7IAOHPrYITKTtK++Kh68ukq4h5IY+IYOnSQexCpjYQzP/95T
	ZBhBsC7OtOsqobRKvcsdZ8SQOWWHEGQtnEh1rs/JCiCryevuV1Lk7/aZIGdkJC5c5aVnzNrzVlJNG
	IR44r0aw==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w7peK-000Gx9-2y;
	Wed, 01 Apr 2026 09:06:00 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1w7peK-000IiZ-0M;
	Wed, 01 Apr 2026 09:06:00 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
 linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8x-colibri: Correct SODIMM PAD settings
Date: Wed, 01 Apr 2026 09:05:59 +0200
Message-ID: <4727738.LvFx2qVVIh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260401-imx8-fix-v1-1-cb27398a6aaf@nxp.com>
References: <20260401-imx8-fix-v1-1-cb27398a6aaf@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Virus-Scanned: Clear (ClamAV 1.4.3/27957/Tue Mar 31 08:24:30 2026)
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283303-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,toradex.com,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-0.946];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: 7FA083758E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Am Mittwoch, 1. April 2026, 08:40:56 CEST schrieb Peng Fan (OSS):
> From: Peng Fan <peng.fan@nxp.com>
>=20
> SION is BIT(30), not BIT(26). Correct it.
>=20
> Fixes: 7ece3cbc8b1ef ("arm64: dts: colibri-imx8x: Add atmel pinctrl group=
s")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi b/arch/arm6=
4/boot/dts/freescale/imx8x-colibri.dtsi
> index 47895ff8cb244e9bbebe228eb554c2b3f0dded1d..2415487d3a5dea92f9084cd1b=
312a07f6a09f3cf 100644
> --- a/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8x-colibri.dtsi
> @@ -631,12 +631,12 @@ pinctrl_adc0: adc0grp {
>  	 */
>  	pinctrl_atmel_adap: atmeladaptergrp {
>  		fsl,pins =3D <IMX8QXP_UART1_RX_LSIO_GPIO0_IO22			0x21>,		/* SODIMM  30=
 */
> -			   <IMX8QXP_UART1_TX_LSIO_GPIO0_IO21			0x4000021>;	/* SODIMM  28 */
> +			   <IMX8QXP_UART1_TX_LSIO_GPIO0_IO21			0x40000021>;	/* SODIMM  28 */
>  	};
> =20
>  	/* Atmel MXT touchsceen + boards with built-in Capacitive Touch Connect=
or */
>  	pinctrl_atmel_conn: atmelconnectorgrp {
> -		fsl,pins =3D <IMX8QXP_QSPI0B_DATA2_LSIO_GPIO3_IO20		0x4000021>,	/* SOD=
IMM 107 */
> +		fsl,pins =3D <IMX8QXP_QSPI0B_DATA2_LSIO_GPIO3_IO20		0x40000021>,	/* SO=
DIMM 107 */
>  			   <IMX8QXP_QSPI0B_SS1_B_LSIO_GPIO3_IO24		0x21>;		/* SODIMM 106 */
>  	};
> =20
>=20
> ---
> base-commit: 36ece9697e89016181e5ae87510e40fb31d86f2b
> change-id: 20260401-imx8-fix-10369e895b8a
>=20
> Best regards,
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



