Return-Path: <devicetree+bounces-322444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +ML2HsKfTWqc3AEAu9opvQ
	(envelope-from <devicetree+bounces-322444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 02:54:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D755F720BC3
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 02:54:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JgZUiKA3;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322444-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322444-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C2DF3301E74A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 00:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E48AE2773CA;
	Wed,  8 Jul 2026 00:54:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68422744F
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 00:54:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783472063; cv=none; b=Xr6YtA1vo2Vlfoh5L0fHP1sylWrlw7RnCc4Q4QWqc0Zyrpcg69/zEv7Zn4c1iW0HoDUVoY3Aw/UBgZxIBq5v8S0TNaUflBqm8TZabPK9zgoPzfQ5etRxmGEhmSuNceEMfhO/deDWVhXCwinnw9dzrlFu7ccJc1u4y6OODJk55jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783472063; c=relaxed/simple;
	bh=GJiZGjCJtcvBSo+dPZI6EQ0SJ4w+ZX2nuX2zT8POgWs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AJIY4VaXpXv+PspcrDv/SUZyH8+uBpWW9kbCiQEw3/K98V/qcsc4CCfg6vDXZhyVlly5N0r126yd378i+vbWxPH0k/IJhCHgg5D5mVM3rBvyEZiHKinU57DJkz7fRZV2WovlQ9riadNAyaeKx3U76+yG6o0cNEfovDzkEQQ7+Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgZUiKA3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E581F00A3A;
	Wed,  8 Jul 2026 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783472062;
	bh=N6MMgXGwoul6RUzx+NGN2p9RxeYgYRYVQ2dvVvUgPE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JgZUiKA3mExrTiKeGjB48xnkmvSqrdq+CYLiUIV1pXXm00ATMjEb34IYgO35NeFLY
	 Olim6mngZM/dkY2KtFfdXpJN5V5AdL+p136PvOzPuARPggIE6MTL3iytZNvpTsnGnk
	 v4RAU4SsSQzUe97/o7argAIo1yvgamDU8LfacRFw23Ie9KekUMowwihjRPLXMgKf0B
	 21cESjXvEES1dHHGSnOuysDxc1VNwZbpsdX911AQLMnWXjQoDDvmEx+5pRA1BCX+k3
	 HNOQ1nheUplfcQftV8n6Tj7MenFpox0SXHHa+MF31jMMQ1P7MxWggwwZB7wt3ixQp4
	 NgMZCrCV86xgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/11] arm64: dts: qcom: x1e80100-t14s: Add pm8010
 camera PMIC with voltage levels for IR and RGB camera
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260708-x1e-camss-csi2-phy-dtsi-v4-6-572348ad1b2a@linaro.org>
References: <20260708-x1e-camss-csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org>
 <20260708-x1e-camss-csi2-phy-dtsi-v4-6-572348ad1b2a@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 00:54:21 +0000
Message-Id: <20260708005422.19E581F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322444-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bryan.odonoghue@linaro.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linaro.org:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D755F720BC3

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing `vdd-l5-supply` property for `vreg_l5m_2p8` (`ldo5`) in th=
e PM8010 PMIC node.
- [Medium] Undocumented addition of `vreg_l7b_2p8` (`ldo7`) to the PM8550 P=
MIC block.
- [Low] Regulator names in the commit message do not match the implemented =
names in the device tree.
--

--- Patch [6]: [PATCH v4 06/11] arm64: dts: qcom: x1e80100-t14s: Add pm8010=
 camera PMIC with voltage levels for IR and RGB camera ---
commit 40ce9f41fc6767cc89c087d96f0381849341a04a
Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

arm64: dts: qcom: x1e80100-t14s: Add pm8010 camera PMIC with voltage levels=
 for IR and RGB camera

This commit adds the PM8010 PMIC node and its associated regulator voltage
rails for the IR and RGB sensors on the ThinkPad T14s.

> arm64: dts: qcom: x1e80100-t14s: Add pm8010 camera PMIC with voltage leve=
ls for IR and RGB camera
>=20
> Add the PM8010 PMIC providing the following voltage rails:
>=20
> vreg_l1m_r @ 1v2 IR sensor
> vreg_l2m_r @ 1v2 RGB sensor
> vreg_l3m_r @ 1v8 IR sensor
> vreg_l4m_r @ 1v8 RGB sensor
> vreg_l5m_r @ 2v8 IR sensor
> vreg_l7m_r @ 2v8 RGB sensor

[Severity: Low]
This isn't a bug, but the regulator names listed in the commit message use a
_r suffix (e.g., vreg_l1m_r), whereas the actual implemented names in the
device tree use voltage-based suffixes (e.g., vreg_l1m_1p2).

Should the commit message be updated to match the device tree names?

> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi =
b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -562,6 +562,13 @@ vreg_l6b_1p8: ldo6 {
>  			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
>  		};
> =20
> +		vreg_l7b_2p8: ldo7 {
> +			regulator-name =3D "vreg_l7b_2p8";
> +			regulator-min-microvolt =3D <2800000>;
> +			regulator-max-microvolt =3D <2800000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +

[Severity: Medium]
Is this addition intentional for this patch?

The commit message only mentions adding the PM8010 camera PMIC voltage rail=
s,
but this block adds a regulator to the entirely different PM8550 PMIC block.
Could the commit message be updated to document this, or does this belong in
a separate patch?

[ ... ]

> +	regulators-8 {
> +		compatible =3D "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id =3D "m";
> +
> +		vdd-l1-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply =3D <&vreg_s4c_1p8>;
> +		vdd-l7-supply =3D <&vreg_bob1>;

[Severity: High]
Is the vdd-l5-supply property missing from this list?

Looking at vreg_l5m_2p8 (ldo5) introduced below, it lacks a parent supply
linkage. If the parent supply is turned off by other consumers, will
vreg_l5m_2p8 silently lose power and cause the connected IR sensor to fail?

> +
> +		vreg_l1m_1p2: ldo1 {
> +			regulator-name =3D "vreg_l1m_1p2";
> +			regulator-min-microvolt =3D <1200000>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-x1e-camss-=
csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org?part=3D6

