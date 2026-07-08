Return-Path: <devicetree+bounces-322443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tmk+JbGfTWqa3AEAu9opvQ
	(envelope-from <devicetree+bounces-322443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 02:54:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE32F720BBA
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 02:54:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XH4bdPfW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322443-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322443-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6C8C30078D9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 00:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12A22EF64F;
	Wed,  8 Jul 2026 00:54:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF67D13B7A3
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 00:54:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783472046; cv=none; b=I9nJXbHMbQdFoItu/KjCDlDjJZEC74qmEuYLvVX3qxNbc7JlyhynyA59ws2VgfK641AS21bsgoZsLkcJcBXKEKjp296q+ipI8feFxHBIq2TxEDfNJTazndWVniKyThaPMTs8qXja24KV+6AUbWZcnGEp92dpryL00G9ewZ0Iu04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783472046; c=relaxed/simple;
	bh=PLdzjuExrl6xGu+/nWsq1vld4NojAN6ZDV6qtmCGBCI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QZn6/GMWdULyg5SQ4uL/xuUDHxkFb6tVRmWTH9IQXEmoQi3Cd0BMYipZyVIs1pjzxIvpIpYC7dpBMHWMKk8YrZweZoEpFHQRKQ9iqbIxIKMKMPJOAbPmOZCMyFdMf3IkA5H5g+TJcrOeYC3kQhjx3hB5hyi8Hyy4Lr7RpS7hXS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH4bdPfW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03D941F00A3A;
	Wed,  8 Jul 2026 00:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783472045;
	bh=R6PVu+9RE0D4pjpNcGqjAiVMgc5FQ9xA5+tAZGtOe5s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XH4bdPfW/BoyDEQJ9AsUeSpmM/71u6oBUESJ/pYJV5Pe8QMaRxlHJNx76x/k/qP8r
	 25hGNgc93/VFBnQ540BGXns41nfTyxBBzBQysHUnBFrMAsdGE+cHJoqw6PjhuMoiBk
	 HCsb+vCoLqH7B4k8MTPbs9YkReUqnVVc/HbxU5Ko4NBbCXo/zlPK2r4GRgFGJ2lvEK
	 1OQSgYPAApWxooD5SsnKLA3GFL6hZJHad9kNjcaXCVotqG5eecSmwV+vn2gGpqUB8R
	 hS1uQtTQIkqypOoRz5CqK6X72HEr8pCtjDOHWFG2bgaHCfs9o/Qvtb+1sjX+XVDs2O
	 0bgX/1PEQMLMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 08/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add pm8010 camera PMIC with voltage levels for IR and RGB camera
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-x1e-camss-csi2-phy-dtsi-v4-8-572348ad1b2a@linaro.org>
References: <20260708-x1e-camss-csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org>
 <20260708-x1e-camss-csi2-phy-dtsi-v4-8-572348ad1b2a@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 00:54:04 +0000
Message-Id: <20260708005405.03D941F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322443-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bryan.odonoghue@linaro.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE32F720BBA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree node for PM8010 regulators (`regulators-8`) defi=
nes `vreg_l5m_2p8` (LDO5) but is missing its required parent supply `vdd-l5=
-supply`.
--

--- Patch [8]: [PATCH v4 08/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim=
7x: Add pm8010 camera PMIC with voltage levels for IR and RGB camera ---
commit 95ca7f61e80f17280293495eaba4ba301dc9a920
Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add pm8010 camera PMIC with =
voltage levels for IR and RGB camera

Add voltage regulators-8 for Camera on slim7x including vreg_l1m_1p2 and
vreg_l3m_1p8.

> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/a=
rch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index beb1475d7fa0c..0a8275d501f85 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
[ ... ]
> +	regulators-8 {
> +		compatible =3D "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id =3D "m";
> +
> +		vdd-l1-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply =3D <&vreg_s4c_1p8>;
> +		vdd-l7-supply =3D <&vreg_bob1>;

[Severity: Medium]
Is vdd-l5-supply missing from this list of parent supplies?

Later in this node, vreg_l5m_2p8 is defined as ldo5, but its parent supply
dependency is not modeled here. Because vdd-l5-supply is omitted, the
regulator core will use a dummy regulator for ldo5.

If the unmodeled parent supply (which might be vreg_bob1 given the 2.8V
output) enters a low power state or is turned off by other consumers, could
ldo5 silently lose power and cause the dependent camera hardware to fail?

> +
[ ... ]
> +		vreg_l5m_2p8: ldo5 {
> +			regulator-name =3D "vreg_l5m_2p8";
> +			regulator-min-microvolt =3D <2800000>;
> +			regulator-max-microvolt =3D <3072000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-x1e-camss-=
csi2-phy-dtsi-v4-0-572348ad1b2a@linaro.org?part=3D8

