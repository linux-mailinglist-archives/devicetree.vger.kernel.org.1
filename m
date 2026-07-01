Return-Path: <devicetree+bounces-318332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xjffOt/tRGqC3QoAu9opvQ
	(envelope-from <devicetree+bounces-318332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:37:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF256EC362
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 12:37:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KbU5hZoh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318332-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318332-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D777430AA3F6
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 10:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3020C426D12;
	Wed,  1 Jul 2026 10:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7E34266A8
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 10:34:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782902103; cv=none; b=dkR2u3mdLzx0RfbzDfMBvCdGewoLZ1XlSoYtG21VkqXqRH35yjoZU2Z5gFueZKprq5/6WRHGXFTB6UhPZddHmzJNPIiPtiAls7kSTztu8AqIyBzA5axV2eRiVxzQcVEI4xalV/aTg9p+cQcaAqr5UnFDpcoXnkXl3sleqiqhS/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782902103; c=relaxed/simple;
	bh=1z181wGR0YqHimYhnF9OxPy2tHo4rchlXcL22DhcB54=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ow7R18jBJX8j7EC3WKG7Kp91RQmKT+tDTgTMyDQlLykPtEkIMpm3fOhGckL2sTrH7IASOjh2P7BcScgu15eV90JtAbhVkxn2f/V5D6xIg/1WXSqEL0PTB/PuBouzpcVzNHyQY7KoA7fJW6hZxRmUab3N7CanWywngbnib3OiZPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbU5hZoh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73E251F00A3A;
	Wed,  1 Jul 2026 10:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782902097;
	bh=+d6J1bVkRyvRyGhMYoEhJiY5ZpOqOtuZgp3U4UhuZw0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KbU5hZoho4ltYnrOTrkY6OKCeYRe84Kh12KBOBhdzAdIHYD3Km794yTY8h+rmj943
	 kU5gwefrw5iGv+mFE/grDyix0V5ekaCvGYN+uuSsf+tRDXxtbqPRp8DSEwnbmzs+dG
	 89bkYFRnuWDlvJexy54UgFKr8njGSU4ENt8MDyb0DY5hsyIw1NlWpmMEGtEGhnRZs1
	 NxwO6X/WT1DF97FZY4+CbLuPTS1mxhqGilWAcWSTe4OdTxKmCyWVqZN775EoEQx84Z
	 gpQZO/OYy91GtW5/gT6BUV16wsgxnwKgFQkMbi7PIgIF6TX5NeeBtPVU6NOxF6WHwh
	 RjC8kAaBcCDWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: Fix pm4125 vbus regulator
 compatible and constraints
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rakesh Kota" <rakesh.kota@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-add_pm4125-vbus-reg-v2-3-6bac2bac7131@oss.qualcomm.com>
References: <20260701-add_pm4125-vbus-reg-v2-0-6bac2bac7131@oss.qualcomm.com>
 <20260701-add_pm4125-vbus-reg-v2-3-6bac2bac7131@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 10:34:56 +0000
Message-Id: <20260701103457.73E251F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318332-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rakesh.kota@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4DF256EC362

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `PM4125_VBOOST_CFG` macro is defined twice in the driver with =
different values, causing the voltage selector address to be shadowed by th=
e OTG configuration address. This leads to register corruption when applyin=
g the new device tree constraints.
--

commit ee5aeefd579f49a0fd9de6178216fb53f958a898
Author: Rakesh Kota <rakesh.kota@oss.qualcomm.com>

arm64: dts: qcom: Fix pm4125 vbus regulator compatible and constraints
   =20
Remove pm8150b fallback compatible from pm4125_vbus and fix regulator
constraints in qrb2210 DTS files to use microvolt instead of
microamp.

> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/ar=
m64/boot/dts/qcom/qrb2210-arduino-imola.dts
> --- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
[ ... ]
> @@ -235,8 +235,8 @@ &mdss_dsi0_phy {
>  };
> =20
>  &pm4125_vbus {
> -	regulator-min-microamp =3D <500000>;
> -	regulator-max-microamp =3D <500000>;
> +	regulator-min-microvolt =3D <4250000>;
> +	regulator-max-microvolt =3D <5000000>;

[Severity: High]
This is a pre-existing issue, but does adding these voltage constraints now
trigger a hardware register corruption in the regulator driver?

Looking at the driver in drivers/regulator/qcom_usb_vbus-regulator.c,
PM4125_VBOOST_CFG is defined twice with different values:

drivers/regulator/qcom_usb_vbus-regulator.c:
    #define PM4125_VBOOST_CFG		0x52
    #define PM4125_VBOOST_CFG_MASK		GENMASK(1, 0)
    #define PM4125_VBOOST_CFG		0x56

Because of this shadowing, the pm4125_data struct initializes both .otg_cfg
and .vsel_reg to 0x56:

drivers/regulator/qcom_usb_vbus-regulator.c:
    .otg_cfg =3D PM4125_VBOOST_CFG,
    .otg_en_src_cfg =3D PM4125_OTG_EN_SRC_CFG,
    .vsel_reg =3D PM4125_VBOOST_CFG,

With the new regulator-min-microvolt constraints added by this device tree
change, the regulator core will now call .set_voltage_sel on this regulator.

Will this cause the driver to incorrectly write the voltage selector mask
to the OTG config register at 0x56 instead of the intended voltage selector
register at 0x52, thereby overwriting OTG configuration bits?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-add_pm4125=
-vbus-reg-v2-0-6bac2bac7131@oss.qualcomm.com?part=3D3

