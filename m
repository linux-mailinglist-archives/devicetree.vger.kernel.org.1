Return-Path: <devicetree+bounces-303378-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEa3IPnGFmpVrwcAu9opvQ
	(envelope-from <devicetree+bounces-303378-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:27:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E42CF5E2AD6
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:27:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF9713010B9B
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40A3F37AA72;
	Wed, 27 May 2026 10:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fz1+/04M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1DA385D9A
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779877352; cv=none; b=dP9L2Ads3ARDsHIIs/y/hD92i2oPApdY9rexJ4cL1agww3972waq6FA6VyvmyJkEzVKtUXtESLtRBZybrAnig52KHHq6WH4qOu1jpxbKWFqYBPslIxv4IF28IKA7Qt5AVKWVPI+TxDSLrwa0OfQC8FUeO0cUXBj8gN2Ctu0ZTf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779877352; c=relaxed/simple;
	bh=CUSBCVI6DsNdtqtq6ZP5Z8Y+bzDuIj/WX+U6Ljthkj0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SoktN6JFXdia646RH9kvkLRMmAgoP6ADVuk+yMwasJmnhGoQe1W7izt45bpb1eYqZxPIcgf/VfSuHldhtPQzlzf6mzkLMnIqvg480OPKpZl15GirZJ6e+6J155FeAuhJnk3PbaQpVG2tj/rv1WwC8ctyEEi78xqhMnFKnjcLcqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fz1+/04M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF2871F000E9;
	Wed, 27 May 2026 10:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779877351;
	bh=UEsdTD91ISmtBtzGdNPoKjHFm1RRCASj5DTy/w3Mquk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Fz1+/04Mlw5WJpRFY9Ngnm3ZehH9kfANFZpGrtMbJ6br/+bAucoYdhi+UkRPAZMMa
	 GMTFCDtTwFKfHRHnxLUAygHPYWjqfwMik37DQLwdM6qky9e0KTBPKxAGy4WVTFRQXv
	 ntK0TFw2ld06vlely0yulPZjjpkNgduY54TzahZfOSTPuFQJmkuZzM626HPwcwsnWr
	 sbRTskk8TcHS7tDVDss2hEmqTgBHaEqg9PSpmjWfUCvvk4CRJFhBvFqL588piFq/bH
	 pdeZojBWiK1qOtZqrPbTUglaUutQOhfHpIFYojYH8mpbUL3Om+Rs28x362P7iH7kPG
	 vqwuaZ283blqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: qdu1000: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260527094333.2311731-24-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-24-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:22:30 +0000
Message-Id: <20260527102230.BF2871F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303378-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,b220000:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E42CF5E2AD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the `reg` property size to 0x10000 in the Device Tree w=
ithout corresponding driver updates triggers a spurious boot warning and fa=
ils to actually reduce the mapped memory region.
--

commit 274d7b2d940f67e9aa192b8dc62aee5356984aee
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: qdu1000: Reduce OS PDC DRV span to 0x10000

This commit reduces the size of the first reg entry for the OS PDC DRV
register window on qdu1000 from 0x30000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/=
qcom/qdu1000.dtsi
> index 952d4270d1181..26cc86d12f725 100644
> --- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
> @@ -1054,7 +1054,7 @@ usb_1_dwc3_ss: endpoint {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,qdu1000-pdc", "qcom,pdc";
> -			reg =3D <0x0 0xb220000 0x0 0x30000>, <0x0 0x174000f0 0x0 0x64>;
> +			reg =3D <0x0 0xb220000 0x0 0x10000>, <0x0 0x174000f0 0x0 0x64>;

[Severity: Medium]
Could this introduce a regression where a spurious boot warning is
triggered, while failing to actually reduce the mapped memory region?

Looking at the qcom-pdc driver in drivers/irqchip/qcom-pdc.c, it defines a
minimum size QCOM_PDC_SIZE of 0x30000. During probe, it evaluates:

drivers/irqchip/qcom-pdc.c:qcom_pdc_probe() {
    ...
    res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
    if (res_size > resource_size(&res))
        pr_warn("%pOF: invalid reg size, please fix DT\n", np);
    ...
}

Since the new device tree size (0x10000) is smaller than QCOM_PDC_SIZE
(0x30000), the max_t() operation forces the driver to still unconditionally
map 0x30000 bytes, ignoring the intended reduction.

Furthermore, because the evaluated size is now strictly greater than the
provided size, does this mean the driver will print the "invalid reg size,
please fix DT" warning on every boot?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D23

