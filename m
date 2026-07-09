Return-Path: <devicetree+bounces-323445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6LrhKCZeT2pAfQIAu9opvQ
	(envelope-from <devicetree+bounces-323445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:39:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E7372E614
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:39:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=lcD6HkqY;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323445-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323445-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D66B302E919
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBA93F0765;
	Thu,  9 Jul 2026 08:30:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997993F0777
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:30:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585825; cv=none; b=Tn2wo4nPAL6FYZXOMGYJHOtTZ9m1l8LVbegJzIxgQtrQn3rOZAQRHVdplpTOZ/s+A1R0fYwAFBkKaRJgiAkpm8aEH4sPeBLQ1aKz8sWic424y5s2nkU96bN3g+rqGcdT8+bFikTdeLhE36WBRGxBwhjoQ3cIBB3qvHAkL83z+AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585825; c=relaxed/simple;
	bh=0V+IOXvSzk1yZ9C4dkvJAwDWLi8ZJR4YqJNADjn7JOY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ch+7sDb6c9VBU25rXvW0l6c+yfQBgab+8MFA6iw+eR7IXNiMfREm9p33rXdbB52AW0js60Z6nVqzRB6kjU7de8TNmZs4PgymDSxdD2DvoCq9HVfTllTg6IMlU8w6DiF1FYdaSkz+xdKleMCuF8vVqhrFym2ZpMsIGjfpX6HCZKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcD6HkqY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 330381F000E9;
	Thu,  9 Jul 2026 08:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783585824;
	bh=BS+Mz4u7R5lM1yzMVry6qi0O+NFSeHzupxj5OiZFV+0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lcD6HkqYqASw0sdchvcoZ3lchI17dsqh7/mcbSILYmzVbmGXkXyJuXnrQSWVdtqo/
	 dQ6a1Ctawen7stJWSoASOIuTqHmNZrXLRgPGXqY1wMoVnQFY/xjzANDyvqgR8O+Rwq
	 4bDuOrZglzITQXfxqmdYgJ5YTVAwAOL0WqsMwVoZrE90JXXvAo+/y43tgCoGQ2En9V
	 LV+YOGL23QJKzc0v6PVc4sBcYCtwjS/vKNQGhb6SzB/TzrAwcI1M7HblYOBRasQ+2B
	 7BCXCHzXv96iK9UTOCjL3oXD4vJOEdgAr8WqPJFdF58h7lB/l/Y5YHN4EuRi74q6JD
	 j2koN9S6mMUQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: Add MT6319 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260709081928.612294-1-wenst@chromium.org>
References: <20260709081928.612294-1-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:30:23 +0000
Message-Id: <20260709083024.330381F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323445-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 07E7372E614

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The MT6319 PMIC fallback compatible triggers incorrect MT6315_PP m=
ode ganging in the regulator driver, causing silent cross-talk between the =
CPU and EMI VDDQ regulators.
- [Low] Grammatical error in the comment explaining the firmware workaround.
--

--- Patch [1]: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: Add MT6319 P=
MIC ---
commit 0ff94c6622559a57199ed1f2d1f4063c6c911df1
Author: Chen-Yu Tsai <wenst@chromium.org>

arm64: dts: mediatek: mt8188-geralt: Add MT6319 PMIC

The Geralt design uses a MT6319 PMIC to power the big cores and LPDDR4X
DRAM.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8188-geralt.dtsi
> index 8e423504ec052..af05315092f53 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
[ ... ]
> @@ -1225,6 +1235,70 @@ &spi2 {
>  	status =3D "okay";
>  };
> =20
> +&spmi {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spmi_pins>;
> +	#address-cells =3D <2>;
> +	#size-cells =3D <0>;
> +	status =3D "okay";
> +
> +	pmic@6 {
> +		compatible =3D "mediatek,mt6319-regulator", "mediatek,mt6315-regulator=
";
> +		reg =3D <0x6 SPMI_USID>;

[Severity: High]
Does this fallback compatible trigger incorrect mode ganging?

The mt6315-regulator driver maps USID 6 to the MT6315_PP variant, which
hardcodes mode ganging for vbuck1, vbuck2, and vbuck4. On the MT8188
Geralt's MT6319, vbuck4 is wired as an independent regulator for
pp0600_emi_vddq.

If a mode change happens on vbuck1 (which is allowed by the
regulator-allowed-modes property), the driver will apply the ganged
mask and silently overwrite vbuck4's mode bits in the PMIC, potentially
forcing the RAM supply into an unexpected mode.

Could this silent cross-talk between the CPU and EMI VDDQ regulators
lead to memory voltage instability?

> +		pvdd1-supply =3D <&pp4200_s5>;
> +		pvdd2-supply =3D <&pp4200_s5>;
> +		pvdd3-supply =3D <&pp4200_s5>;
> +		pvdd4-supply =3D <&pp4200_s5>;
> +
> +		regulators {
> +			/*
> +			 * vbuck1 is the cpu-supply for CPU6 and CPU7.
> +			 *
> +			 * However, this device originally shipped with a broken
> +			 * firmware that causes register reads over SPMI fail.
> +			 * This is fixed in firmware version 15842.175.0, which
> +			 * is included in ChromeOS releases R150-16700.22.0 or
> +			 * R151-16721.0.0 and later.
> +			 *
> +			 * Assigning the cpu-supply properties for CPU6 and CPU7
> +			 * without the fix will likely cause CPU DVFS to stop
> +			 * working. Hence the assignment is left out to avoid a
> +			 * regression of the function. If the user is confident
> +			 * that their system has the fix, they can added the

[Severity: Low]
This isn't a bug, but there is a typo in this comment. It should say
"they can add the property themselves".

> +			 * property themselves.
> +			 */

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709081928.6122=
94-1-wenst@chromium.org?part=3D1

