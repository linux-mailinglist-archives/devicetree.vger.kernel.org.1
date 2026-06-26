Return-Path: <devicetree+bounces-316072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6PUXMJJlPmopFQkAu9opvQ
	(envelope-from <devicetree+bounces-316072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 13:42:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8B6CC952
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 13:42:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UeErF7kk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316072-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316072-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 69119300493C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B7536C9F4;
	Fri, 26 Jun 2026 11:42:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2BB380FF8
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 11:42:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782474128; cv=none; b=oMm4rUJXv9aGg0kB4ubJi8nyjQZ49P8Ic1K73hsCJIUXycYA6UiRdgNOPO+n16BAwi5B4irJuPSvguhdC0HUTCnmP9N1iu5YvfVALWi8wQpE4FAvxLfyOioS6JNpqmMf3uJiQnlVs1fZdGrXhkw8UfRdxJxQK306oCest6MAkoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782474128; c=relaxed/simple;
	bh=wER8DbTmXlUIcZ6LsN6ezWVJ8DrITHLwmV/Jyler4hw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aUU1hx50UsfcwhaoDWAScdXmgFMRQVM5UPjTocCECPmYI/3SwAwHjkJZptCj/NTA/N/9+xSIJwd1idJhGMb2dlsdepC63tBAvVRq0FHbQf5vUajG7BI+3ZvVKUGpEzC3pYmLR1ky1+pg0ShqUt4fLNYd2Tocx9hGoeaen14SL00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeErF7kk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81E5F1F00A3D;
	Fri, 26 Jun 2026 11:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782474126;
	bh=IQNBozqfCIJqY/l8pA8JU2D9p+iNdeAw0KHzbVgD4E0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UeErF7kko9pu9uoW8v+/l/2nFy9sWZVwkNbzQA/Wjf+x9zE6ZxoPvUbV4pA01Yx56
	 7jm/zSqQHylRx1MqeYi3H+Gb7FDRWAnhGoTrssOvLYEOJuRatavxgR4O14Bzb2OHpV
	 27oZUrHV//h2Y6bMpLRyzOTzf1MaODjm5UrcKeCvOAxMxZ7Zhz+Bvn40r3n5tx3Gmk
	 Y1KeG3nJBoEceqPuOqb4m2oVRC8jBN41NLP6G9rFNbK30NFwpkUNQkzZ0ZswSppH93
	 7wNaVyGLk8esF+O9eBmYDPP7m3DZUkeHrvKZxxzZ8RiKzKZTCkWxPt6msZzcAAyccu
	 uC0w8V3Tdbn1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: monaco: Add monaco-ac EVK
 board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Umang Chheda" <umang.chheda@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626111301.3479559-3-umang.chheda@oss.qualcomm.com>
References: <20260626111301.3479559-1-umang.chheda@oss.qualcomm.com>
 <20260626111301.3479559-3-umang.chheda@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 11:42:06 +0000
Message-Id: <20260626114206.81E5F1F00A3D@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316072-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:umang.chheda@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53D8B6CC952

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Massive contradiction in I2C GPIO expander configuration (1x TCA=
9534 vs 7x TCA9538)
- [Low] Missing pinctrl configuration for the Ethernet PHY reset GPIO
--

commit 060d5e44d123b8d9a920b4fe86d7d2ff2f7d1da6
Author: Umang Chheda <umang.chheda@oss.qualcomm.com>

arm64: dts: qcom: monaco: Add monaco-ac EVK board

Add initial device tree support for monaco-ac EVK board, based on Qualcomm's
monaco-ac (QCS8300-AC) variant SoC.

> diff --git a/arch/arm64/boot/dts/qcom/monaco-ac-evk.dts b/arch/arm64/boot=
/dts/qcom/monaco-ac-evk.dts
> new file mode 100644
> index 0000000000000..6f3c3ffefe340
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/monaco-ac-evk.dts
[ ... ]
> +&i2c15 {
> +	pinctrl-0 =3D <&qup_i2c15_default>;
> +	pinctrl-names =3D "default";
> +
> +	status =3D "okay";
> +
> +	expander0: gpio@38 {
> +		compatible =3D "ti,tca9538";
> +		reg =3D <0x38>;
[ ... ]
> +	expander6: gpio@3e {
> +		compatible =3D "ti,tca9538";
> +		reg =3D <0x3e>;

[Severity: Medium]
Is the commit message description accurate? The commit message mentions a
single TCA9534 expander providing 8 GPIO lines, but the device tree adds
seven TCA9538 expanders here.

If the hardware actually only has one expander, won't I2C transfers to the
others time out and fail, potentially breaking peripherals like USB and
DisplayPort which route their pins through these extra expanders?

[ ... ]
> +&ethernet0 {
> +	phy-mode =3D "2500base-x";
> +	phy-handle =3D <&hsgmii_phy0>;
[ ... ]
> +	mdio {
> +		compatible =3D "snps,dwmac-mdio";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		hsgmii_phy0: ethernet-phy@1c {
> +			compatible =3D "ethernet-phy-id004d.d101";
> +			reg =3D <0x1c>;
> +			reset-gpios =3D <&tlmm 31 GPIO_ACTIVE_LOW>;

[Severity: Low]
Does this reset-gpios property need a corresponding pinctrl state to mux the
pin? If the bootloader leaves tlmm pin 31 in an undefined or alternate
state, could the Ethernet PHY fail to reset during network initialization?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626111301.3479=
559-1-umang.chheda@oss.qualcomm.com?part=3D2

