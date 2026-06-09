Return-Path: <devicetree+bounces-309127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OYTUGYMvKGoS/wIAu9opvQ
	(envelope-from <devicetree+bounces-309127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:21:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAEC661ACC
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:21:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jW6ty0VP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309127-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309127-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C6A703033514
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12FD835675A;
	Tue,  9 Jun 2026 15:12:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5702E43C048
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:12:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781017974; cv=none; b=lKFFd8ELjx+tgaowhY2Iusp71riDlz5IoiKOiF7DHKreJgO55zshVJBnjzT+xntc8PQEU1+EF75+z9snC0k5gqZk+ISYsdsjk7HjKB6HBKbyzkkGTiyPlFQ0mHBLoWZQP70x9o0gPRwooMjSvfNQS0aQ+uvzeg3tmv1P9qFSChI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781017974; c=relaxed/simple;
	bh=Q4D/ELA//28ZnHhs+8P3xPwuWhVcqMMHQy5SiP6TECs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZQnFYRZAHAXvwU3SWKIBNdI6UQa7+1xOeJgJncrpOIrUBOL3UaCCyugiOast05VsNWecigD4ZqI3q2SltZQbhr32lZeULLRMNGSH28GsudEMMRLjE21OrNjMH78YrBf+v9bVYQvGh6vQZtOxz7aviR9Vpd2zJvFBWsUjKGwqX2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jW6ty0VP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 649D41F00893;
	Tue,  9 Jun 2026 15:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781017970;
	bh=KSYdcHi9Jkffe+K/WX5NOwbu8BYXaRKVs5PJouW1meM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jW6ty0VPNHJ3tyQOHCgz/NQ9gwCAuCk0eZ0DobwK78Z+XRQjR6pJeE+gWF4MoCNL4
	 gC8O+F6SUGFR04Nnjs2lwIMXDheSPnpE2+4WOu8zVGXfQcre59NDrNEqEev+t/Tysj
	 OKFnGvZUYXU6alOO/0wp3cHQgmIIJ0FKv222cp6RyG55VSZ1nIlqZLQSQp/LMb/H4B
	 yBvX2tjcxnynvc9Jxq5jwvzLxUmbsglbqYw5XYowBc0G/8nQU7TrOUQLSnGkXueXFE
	 9R2eGaX/WDoephWOokOsvOKs3dxblk0KrXPGtLpXMm4PLPAJlhxhXLRXKXJIFyPjd2
	 cjQuBYLmK71Pw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/1] arm64: dts: qcom: Add Microsoft Surface Pro 12in
Reply-To: sashiko-reviews@lists.linux.dev
To: "Harrison Vanderbyl" <harrison.vanderbyl@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609145906.40854-2-harrison.vanderbyl@gmail.com>
References: <20260609145906.40854-2-harrison.vanderbyl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 15:12:49 +0000
Message-Id: <20260609151250.649D41F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309127-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:harrison.vanderbyl@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:harrisonvanderbyl@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BBAEC661ACC

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Numerous LDO regulators are missing their required parent supply p=
roperties (vdd-lX-supply) in the PMIC regulator nodes, breaking the Linux r=
egulator supply chain.
--

commit 6be7c2c68f42bc5f87da842354ed30a95efb06f4
Author: Harrison Vanderbyl <harrison.vanderbyl@gmail.com>

arm64: dts: qcom: Add Microsoft Surface Pro 12in

Initial device tree for Microsoft Surface Pro 12in

> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts b/arc=
h/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts
> new file mode 100644
> index 0000000000000..0314b2246cdb7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-microsoft-sp12in.dts

[ ... ]

> +	regulators-2 {
> +		compatible =3D "qcom,pmc8380-rpmh-regulators";
> +		qcom,pmic-id =3D "d";
> +
> +		vdd-l3-supply =3D <&vreg_s4c_1p8>;
> +		vdd-s1-supply =3D <&vph_pwr>;
> +

[Severity: High]
Does this node miss vdd-l1-supply and vdd-l2-supply?

It defines vreg_l1d_0p8 and vreg_l2d_0p9 below, but without their parent
supply properties, the Linux regulator framework cannot enable the parent
when these child LDOs are enabled.

If the parent SMPS is turned off, could it cause power loss to the devices
relying on these regulators?

> +		vreg_l1d_0p8: ldo1 {
> +			regulator-name =3D "vreg_l1d_0p8";
> +			regulator-min-microvolt =3D <880000>;
> +			regulator-max-microvolt =3D <920000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2d_0p9: ldo2 {
> +			regulator-name =3D "vreg_l2d_0p9";
> +			regulator-min-microvolt =3D <912000>;
> +			regulator-max-microvolt =3D <920000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +		};

[ ... ]

> +	regulators-6 {
> +		compatible =3D "qcom,pm8550ve-rpmh-regulators";
> +		qcom,pmic-id =3D "i";
> +
> +		vdd-l1-supply =3D <&vreg_s4c_1p8>;
> +		vdd-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-s1-supply =3D <&vph_pwr>;
> +		vdd-s2-supply =3D <&vph_pwr>;
> +

[Severity: High]
Does this also miss vdd-l3-supply for vreg_l3i_0p8 defined below?

This LDO is used by UFS and PCIe PHYs. If the parent isn't enabled, this
could result in system crashes or peripheral failures.

> +		vreg_s1i_0p9: smps1 {
> +			regulator-name =3D "vreg_s1i_0p9";

[ ... ]

> +		vreg_l3i_0p8: ldo3 {
> +			regulator-name =3D "vreg_l3i_0p8";
> +			regulator-min-microvolt =3D <880000>;
> +			regulator-max-microvolt =3D <880000>;
> +			regulator-initial-mode =3D <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes =3D <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +
> +	regulators-7 {
> +		compatible =3D "qcom,pm8550ve-rpmh-regulators";
> +		qcom,pmic-id =3D "j";
> +
> +		vdd-l2-supply =3D <&vreg_s5j_1p2>;
> +		vdd-s5-supply =3D <&vph_pwr>;
> +

[Severity: High]
Similarly, do we need vdd-l1-supply and vdd-l3-supply here?

This node defines vreg_l1j_0p8 and vreg_l3j_0p8 (used by UFS vdd-hba-supply
and USB PHYs) below.

Since the pmc8380_6 node was deleted at the top of the file, did these
supplies need to be re-routed instead of just being omitted?

> +		vreg_s5j_1p2: smps5 {
> +			regulator-name =3D "vreg_s5j_1p2";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609145906.4085=
4-2-harrison.vanderbyl@gmail.com?part=3D1

