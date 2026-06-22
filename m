Return-Path: <devicetree+bounces-314191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1LoFAFHGOGqbhwcAu9opvQ
	(envelope-from <devicetree+bounces-314191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:21:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4C26ACB82
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:21:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Vjf/vdlY";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314191-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314191-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 262503012CD9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 05:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3F43546E4;
	Mon, 22 Jun 2026 05:21:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B6635675B
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 05:21:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105676; cv=none; b=SeXq3I1OJ8Vx62PbSDuld6PU5qLRgD06Kz01foJzrrhm3Z4F9viBrkYTECG4vi3pGcD0Gu4vooFZNrEG4g8rg2lYw/RwIbSC3vMygUJWC+cg8A9KlwJ6gnwca9J2dyYBNSKaWqVF8qbF9UXmhQ79kN8uC7PoDsMpK4EA+CkCA6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105676; c=relaxed/simple;
	bh=6saYY5Z7gTm5aRN6mn4eynHIqJwL8LJs6yzeiP5T7Tc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o+M50kZjAMZnySpi1HRNJfz5aMctjsM6R1Nh2QIjdNplIg8MlRKbd8LM2uY6O+wEUwYA6/DwFNTuae9SzZ5lG+ALzJKhbB0uzUubWNcZ1yo6dY8qMO9PsWZcHq0AxyggxVw4907Mn1DwdLPS89TcKl612gsInh/Q8J4jm9uOkh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vjf/vdlY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6188C1F00A3A;
	Mon, 22 Jun 2026 05:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782105675;
	bh=NRI+EqcXU1Xl4S9iTG6hyWf92jEJSzhbCgXBPvpOilU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vjf/vdlYKujjenA11EUDruZeopIpPpC9LZaX6QraPL9D8xoAe3Gi+e0ZdLsVKeznX
	 Pbv90CEdxe6rQ73teBcNjCScY7McPR6aGwm0VYPU/8jl22kQ7u1hl2WiVl9hiTmhN+
	 9RI+UBy36KB7EHmBEMui+ZGTy/1zDhSQpQSDg3Q7KkfkPBNAawnz6w5dzQdQP7htjc
	 kpFNFYc4KCCo6efJgE85dJeGnNRml4aNyRx9QGuch6tzb8jXkR8WdkdfbgBs6tV4+U
	 xxoINdSwV2p+BMbyJqGZDdsM+hBVbC+NV7RaSiDyUpesN1Ya2WWLqxv0avkd/5FVY2
	 LP/Qk4OLiGjbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/8] arm64: dts: qcom: glymur: Add QREF regulator
 supplies to TCSR
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260621-tcsr_qref_0622-v6-6-c939c22ded0c@oss.qualcomm.com>
References: <20260621-tcsr_qref_0622-v6-0-c939c22ded0c@oss.qualcomm.com>
 <20260621-tcsr_qref_0622-v6-6-c939c22ded0c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 05:21:15 +0000
Message-Id: <20260622052115.6188C1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314191-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E4C26ACB82

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing regulator definitions for Mahua USB and EDP clock referenc=
es, leading to unpowered PHY components.
--

commit e43024044dc26df2e1498b871bce2a3a9aa15cab
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

arm64: dts: qcom: glymur: Add QREF regulator supplies to TCSR

The TCSR clkref_en clocks gate the QREF block which provides reference
clocks to the PCIe PHYs. Wire up the LDO supplies required by the QREF
and refgen blocks on the CRD board.

> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dt=
s/qcom/glymur-crd.dts
> index c98dfb3941fa3..92b929ee3448c 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
[ ... ]
> @@ -278,6 +278,26 @@ &smb2370_k_e2_eusb2_repeater {
>  	vdd3-supply =3D <&vreg_l7b_e0_2p79>;
>  };
> =20
> +&tcsr {
> +	vdda-qrefrpt0-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt1-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt2-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt3-0p9-supply =3D <&vreg_l2h_e0_0p72>;
> +	vdda-qrefrpt4-0p9-supply =3D <&vreg_l2h_e0_0p72>;
> +	vdda-qrefrx0-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrx1-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrx2-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrx4-0p9-supply =3D <&vreg_l2h_e0_0p72>;
> +	vdda-qrefrx5-0p9-supply =3D <&vreg_l3f_e0_0p72>;
> +	vdda-qreftx0-0p9-supply =3D <&vreg_l3f_e0_0p72>;
> +	vdda-qreftx0-1p2-supply =3D <&vreg_l4h_e0_1p2>;
> +	vdda-qreftx1-0p9-supply =3D <&vreg_l1f_e1_0p82>;
> +	vdda-refgen3-0p9-supply =3D <&vreg_l2f_e0_0p82>;
> +	vdda-refgen3-1p2-supply =3D <&vreg_l4h_e0_1p2>;
> +	vdda-refgen4-0p9-supply =3D <&vreg_l1f_e1_0p82>;
> +	vdda-refgen4-1p2-supply =3D <&vreg_l4f_e1_1p08>;
> +};

[Severity: High]
Does this setup overlook the regulator definitions for Mahua USB and EDP cl=
ock
references?

In drivers/clk/qcom/tcsrcc-glymur.c, the tcsr_cc_mahua_clk_descs array omits
.regulator_names and .num_regulators for all USB and EDP clocks:

drivers/clk/qcom/tcsrcc-glymur.c:tcsr_cc_mahua_clk_descs[] =3D {
	[TCSR_EDP_CLKREF_EN] =3D {
		.name =3D "tcsr_edp_clkref_en",
		.offset =3D 0x60,
	},
...

The qcom,mahua-tcsr DT binding and the Mahua CRD explicitly list and require
regulators for these blocks: vdda-qrefrpt3-0p9-supply,
vdda-qrefrpt4-0p9-supply, vdda-qrefrpt5-0p9-supply, and
vdda-qrefrx3-0p9-supply.

Because .num_regulators is 0 for these clocks, qcom_clk_ref_register() will
not call devm_regulator_bulk_get(), and qcom_clk_ref_prepare() will never
enable the regulators.

Can this cause a silent hardware failure where major peripherals like USB a=
nd
EDP PHYs are conceptually enabled but their corresponding TCSR QREF blocks
remain completely unpowered?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621-tcsr_qref_=
0622-v6-0-c939c22ded0c@oss.qualcomm.com?part=3D6

