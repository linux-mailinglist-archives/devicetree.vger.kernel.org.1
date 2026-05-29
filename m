Return-Path: <devicetree+bounces-304225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPP4MgVuGWpzwggAu9opvQ
	(envelope-from <devicetree+bounces-304225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:44:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A64960104E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 67C5F318242E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C763C9886;
	Fri, 29 May 2026 10:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9qBnRU5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADCC73BCD21;
	Fri, 29 May 2026 10:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780050908; cv=none; b=PgaCz6IGap2yxlKN72ELZXP9XH+V/zkFwlFWhX/O1lM8t8kA91zRspFegJAHGOcpUcSrlkr8uIuLrnjeRzzoxRtChujavfwXfALJpM4n2+ZUGFb+p45FpDlxQaFczEN8RZMeKewh6SjShvv2jj1TVm49EwhQd18tqtaPO46XVTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780050908; c=relaxed/simple;
	bh=yrTaa0QVo4yeXWWbowoyH/TYNX0ykof8iVwPCcXBHcg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kCL7xk0iftDimtt0DSFKJy5zyg7Fq6esN/rkZyjwjkE1yRQ1pb4WJQyHWCBJxaI/xVmb8q57c20S+5d50WcP178JfuHNuCxlKBJD/RdWcdEB/WVQbgCiVS42/csAjX3MlmjEP0QIfkR7DUNTNdH4w/fTQDNyh/tB3t9ptjOKcpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9qBnRU5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13E551F00893;
	Fri, 29 May 2026 10:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780050907;
	bh=0Vg1mO88ZlNTgUSSDpUkuZSSdcJMS0lQ67ES3JiQT50=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k9qBnRU5qF81O3N94KAXEwwdvs0uN1eHPLjNa6dWMkES3aKfFEO8smFaHnoRY5pEf
	 DkaVmx6vnY3FBLjPP0KPbqMD1UfjxIJEYxRUUee3fOlBp74LCa6WkoDktJwIthDu/y
	 +S6Ex+r7z7U7H1UH+hNOMPYi+1APK6Lwfm70/FDNoBkOL0C9oKPg12yT5doDmslhl9
	 KLu/0bzoPyt51CsoECJ3GVSNGdAuhusOznX/DFElyeJzbumf26+9/JifGsQh8hwCwV
	 Cq0S0v5Gb6PcPm7xPBO8hqEyRT6CoLzPNMdKjwm28lV30LdSEefbNPPoO8grTGAEDP
	 y4rDnX6fA6R0w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/4] arm64: dts: imx93-var-som-symphony: add TPM
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <040ad9104a8a628e3b2c18cb296a0d63d31b533c.1780049085.git.stefano.r@variscite.com>
References: <040ad9104a8a628e3b2c18cb296a0d63d31b533c.1780049085.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 10:35:06 +0000
Message-Id: <20260529103507.13E551F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304225-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,0.0.0.21:email,2e:email,variscite.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 4A64960104E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Using a GPIO hog to enable the TPM device creates an unhandled dep=
endency, leading to potential probe and suspend/resume failures.
- [Low] The node name and label for the PCAL6408 GPIO expander contain a ty=
po, omitting the letter 'l'.
--

commit bcdb28f289b71a5c2629f6f0cbc1ebb8edd84640
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx93-var-som-symphony: add TPM support
   =20
This commit adds support for the ST33KTPM2XI2C TPM device on the Symphony
carrier board. It configures the TPM enable line as a GPIO hog on a
PCAL6408 expander located on the I2C bus.

> diff --git a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts b/a=
rch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
> index c0842fb3cfa33..ea996a36b0228 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-var-som-symphony.dts
> @@ -208,6 +208,26 @@ &lpi2c1 {
>  	sda-gpios =3D <&gpio1 1 GPIO_ACTIVE_HIGH>;
>  	status =3D "okay";
> =20
> +	pca6408: gpio@21 {

[Severity: Low]
This isn't a bug, but the node name and label appear to contain a typo.
The commit message and compatible string identify the part as a PCAL6408,
but the label and node name omit the letter l.

> +		compatible =3D "nxp,pcal6408";
> +		reg =3D <0x21>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +		status =3D "okay";
> +
> +		tpm-enable-hog {
> +			gpio-hog;
> +			gpios =3D <4 GPIO_ACTIVE_HIGH>;
> +			output-high;
> +			line-name =3D "tpm_en";
> +		};
> +	};

[Severity: High]
Does using a GPIO hog here create an unhandled probe dependency?

Because the device tree core ignores GPIO hog nodes when parsing
dependencies, it doesn't create an explicit supplier/consumer link via
fw_devlink. This means there is no guarantee the GPIO expander is probed
before the TPM device.

If the drivers are built as modules and loaded in parallel, and the TPM
driver happens to bind first, its probe function will attempt an I2C read.
Could that read fail because the TPM is still disabled, potentially
preventing the device from functioning?

> +	st33ktpm2xi2c: tpm@2e {
> +		compatible =3D "st,st33ktpm2xi2c", "tcg,tpm-tis-i2c";
> +		reg =3D <0x2e>;
> +	};
> +

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780049085.gi=
t.stefano.r@variscite.com?part=3D1

