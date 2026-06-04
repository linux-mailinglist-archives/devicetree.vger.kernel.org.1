Return-Path: <devicetree+bounces-307053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mXwnO2fhIWqmQAEAu9opvQ
	(envelope-from <devicetree+bounces-307053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:34:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C988E643640
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:34:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CNs7nGVe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307053-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307053-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 20D5130046BC
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 375DF35B650;
	Thu,  4 Jun 2026 20:30:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D9B1A6800
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 20:30:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780605055; cv=none; b=oV7UAcLDt5f4HgECa/UqnQFGU0agxjFVzTQFkUpNLcXbpH177i/3IsC9xL+GAOyyTk5aCyemwLYA3neFiD5BPmgg7M9xxxlxHQQlAKTCDNWNauTt6C8hRYMslL44sbAmea2t27oFsO4UdFQ9QdJqKnExLH7VnHsO5PfBiWZYT7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780605055; c=relaxed/simple;
	bh=tBrEaiWKFaYMJT1d8Hc7LrFnEaE28GkXLO3tnS7fca8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SJtsL40YqkqRSc4B2YngEK4YC0oCWsQ2ASFmH+I1dBCWuUIAdw6N9LnJToOTXL9a78IN/7aWXzGBsyrpQ6xodOMrI/c4cR16t7R2i8aGLwsTSRihQJ2VdqPoyQAz32+7JqrYLBlIoDnzXxJ2DU/assFkGsB5jqyQesa50nCDZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNs7nGVe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8ED4B1F00893;
	Thu,  4 Jun 2026 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780605053;
	bh=KkJGfuhiSJ5B53mNHgtwzsHHAF7qVFocM8B16/P4J9o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CNs7nGVea9rS0/sfu0qBKRqBIiAHRy7rTJPnwnTRH4WrLHqQPZcPdktG1By1O/FyH
	 OYToCguAONGMr0uyr46E1OtbfF545ZM/NWxF+xxaFFlgDqBXAtjyZ8hEISDa1NZb+e
	 MCTLNFm0h+jiSqw3MrbQ/UQlphDj3Vo+U917b5G8uW6wy5FLybvj10CVH5EMnRZAsA
	 4UzKWxhuQhCxeOWoi4U19X4GEJrwR2corUuDbTIhZCcM/p0vObT2wnXWlYWkNSzvSx
	 qPvBrqSMiukXmxj69PEt4muJRMIW7P/IPUTVNEsZMpHddFg22TVkwvONmtp3NOcIKZ
	 tFtMaUrBar7dQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle:
 add initial device tree
Reply-To: sashiko-reviews@lists.linux.dev
To: "Erikas Bitovtas" <xerikasxx@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260604-yukon-eagle-v3-2-9e3b57d306a8@gmail.com>
References: <20260604-yukon-eagle-v3-2-9e3b57d306a8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 20:30:53 +0000
Message-Id: <20260604203053.8ED4B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307053-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xerikasxx@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C988E643640

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] [Valid Concern] Missing pinctrl configurations for board-specifi=
c GPIO and interrupt pins.
--

commit 0d3ad64620f5f2b167411a5e45e162a58e8c3259
Author: Erikas Bitovtas <xerikasxx@gmail.com>

ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle: add initial device tree

This commit introduces the initial device tree for the Sony Xperia M2
(sony-eagle) smartphone based on the Qualcomm MSM8926 SoC. It enables
initial support for features such as the framebuffer, storage, sensors,
and GPIO buttons.

> diff --git a/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts b=
/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts
> new file mode 100644
> index 0000000000000..2c1e5755a50af
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts

[ ... ]

> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		button-camera-focus {
> +			label =3D "Camera Focus";
> +			gpios =3D <&tlmm 108 GPIO_ACTIVE_LOW>;

[Severity: Medium]
Are the pinctrl configurations missing for this GPIO and other external
interrupt lines in this device tree?

Nodes such as this gpio-keys button, accelerometer@f, light-sensor@48,
nfc@28, and sdhc_2 utilize GPIOs and external interrupts but lack explicit
pinctrl-names and pinctrl-0 properties.

Without explicitly defined pinctrl hardware states, the pinmux and bias
states remain strictly dependent on bootloader defaults. Could this lead to
undefined peripheral states or spurious interrupts across suspend/resume
cycles or with different bootloader versions?

> +			linux,code =3D <KEY_CAMERA_FOCUS>;
> +			debounce-interval =3D <15>;
> +		};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-yukon-eagl=
e-v3-0-9e3b57d306a8@gmail.com?part=3D2

