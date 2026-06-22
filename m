Return-Path: <devicetree+bounces-314192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5H0qKNDGOGrHhwcAu9opvQ
	(envelope-from <devicetree+bounces-314192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:23:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7B96ACBC0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 07:23:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SP2POHFc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314192-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314192-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99A93035268
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 05:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4263F357CE5;
	Mon, 22 Jun 2026 05:22:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B96357CE0
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 05:22:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782105738; cv=none; b=u6gpvxujpFbdaQl6h/pQv7uzeZ3XZcCUExa4f6g+iDIu+//hZ8P+aam27SekzBxQCEKU7vWbW7HJJc6MuxXGlDinBpNsTOxYFYfN4EtPFc80ty1cJxBr3c/veu9+yhLKZNnfPLR/+rfLn+eHj5EeQAqxuxplNOqK7sHosvECwLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782105738; c=relaxed/simple;
	bh=A+zYnyr7/ej3amFx34CbwtE9mwyGXndrDcwX8O6GEFo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IPgflisHg+2MQOtl61k1Iy5k4tYtHKNAOFdOwaaqkr+NBholqfUjvJAgjtAapdmrjNlEduYazYawC3mNPPMNDH5Po0KGBP6g2+7PXOL2y2vLfDfpHTQoxaJEPJmaqRfnqUHKyI5c4Vntsx0icjB26vLUlfLNSJWaGrjfMAcComQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP2POHFc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 774641F000E9;
	Mon, 22 Jun 2026 05:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782105736;
	bh=itbPwxSCnmiuH/PzaYrBaL0iwLWgVp9T/qeIXW9SYn0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SP2POHFcuiNl1bHLoKHTqY7EBedq8FvKJqXHcZifd3q2n11Gfb+xEq2o5Hw2Yplf6
	 9pxh+p3nIpdejJX1pADVYk0YpUULMUDbZj+ZID1XMz1xTxahQpW/xpdDSNhH3uPJCu
	 16p6n+TOQhU6DqOx13Y45axOhAGs2n3zxKeNLmNhOEasZTKXjX9bVnwcc7iyW33gwK
	 KDcuW/3ftrOQcz3MrrsdHBCpz65osAjC3zeKIh0nqz9RNiMn3P+NVGE+GKLGe2UArD
	 3AMKhAjhI+BLlD9Celw+Gks5VoYeoS7sXT5BP228XsubcjXRDUaSBu/Dnk63eW4Flm
	 g3UH2+FcJ3Ykg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 7/8] arm64: dts: qcom: mahua: Add QREF regulator
 supplies to TCSR
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260621-tcsr_qref_0622-v6-7-c939c22ded0c@oss.qualcomm.com>
References: <20260621-tcsr_qref_0622-v6-0-c939c22ded0c@oss.qualcomm.com>
 <20260621-tcsr_qref_0622-v6-7-c939c22ded0c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 05:22:16 +0000
Message-Id: <20260622052216.774641F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314192-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE7B96ACBC0

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The device tree patch wires up `vdda-qrefrpt3-0p9-supply`, `vdda-q=
refrpt4-0p9-supply`, `vdda-qrefrpt5-0p9-supply`, and `vdda-qrefrx3-0p9-supp=
ly` for the Mahua TCSR node, and the DT binding explicitly lists them as re=
quired properties for `qcom,mahua-tcsr`. However, the driver implementation=
 (`tcsrcc-glymur.c`) defines Mahua's regulator arrays (`mahua_tcsr_tx1_rpt0=
1_rx1_regulators` and `mahua_tcsr_tx1_rpt012_rx2_regulators`) without inclu=
ding these supplies. As a result, no clock descriptors in `tcsr_cc_mahua_cl=
k_descs` consume these regulators, and they will never be requested or enab=
led by the clock driver.
--

commit 9b4597bbc60b4b7a8b61f25b5d65fb4f6eb028c9
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

arm64: dts: qcom: mahua: Add QREF regulator supplies to TCSR

This commit wires up the required LDO supplies for the PCIe clkref paths
on the Mahua CRD board by overriding the TCSR compatible and adding the
regulators to the tcsr node.

> diff --git a/arch/arm64/boot/dts/qcom/mahua-crd.dts b/arch/arm64/boot/dts=
/qcom/mahua-crd.dts
> --- a/arch/arm64/boot/dts/qcom/mahua-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/mahua-crd.dts
[ ... ]
> @@ -19,3 +19,18 @@ / {
>  	model =3D "Qualcomm Technologies, Inc. Mahua CRD";
>  	compatible =3D "qcom,mahua-crd", "qcom,mahua";
>  };
> +
> +&tcsr {
> +	vdda-qrefrpt0-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt1-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt2-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrpt3-0p9-supply =3D <&vreg_l1f_e1_0p82>;
> +	vdda-qrefrpt4-0p9-supply =3D <&vreg_l2h_e0_0p72>;
> +	vdda-qrefrpt5-0p9-supply =3D <&vreg_l2h_e0_0p72>;
> +	vdda-qrefrx1-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrx2-0p9-supply =3D <&vreg_l2f_e1_0p83>;
> +	vdda-qrefrx3-0p9-supply =3D <&vreg_l2h_e0_0p72>;

[Severity: High]
Will these supplies actually be enabled by the clock driver?

While they are properly wired up here in the device tree, looking at the
underlying driver implementation in drivers/clk/qcom/tcsrcc-glymur.c, the
regulator arrays for Mahua seem to omit several of these supplies:

drivers/clk/qcom/tcsrcc-glymur.c:mahua_tcsr_tx1_rpt01_rx1_regulators[] =3D {
        "vdda-refgen3-0p9",
        "vdda-refgen3-1p2",
        "vdda-qreftx1-0p9",
        "vdda-qrefrpt0-0p9",
        "vdda-qrefrpt1-0p9",
        "vdda-qrefrx1-0p9",
};

Because vdda-qrefrpt3-0p9, vdda-qrefrpt4-0p9, vdda-qrefrpt5-0p9, and
vdda-qrefrx3-0p9 aren't included in the driver's regulator lists or
clock descriptors (tcsr_cc_mahua_clk_descs), it appears the driver will
never request or enable them.

Could this prevent the reference clock from reaching the PHY and cause
initialization failures for the dependent hardware block?

> +	vdda-qreftx1-0p9-supply =3D <&vreg_l1f_e1_0p82>;
> +	vdda-refgen3-0p9-supply =3D <&vreg_l1f_e1_0p82>;
> +	vdda-refgen3-1p2-supply =3D <&vreg_l4f_e1_1p08>;
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260621-tcsr_qref_=
0622-v6-0-c939c22ded0c@oss.qualcomm.com?part=3D7

