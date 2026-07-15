Return-Path: <devicetree+bounces-327051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LJfFCoKNV2oqWwAAu9opvQ
	(envelope-from <devicetree+bounces-327051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:39:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A0875EC55
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:39:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=A2JW5Zma;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327051-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-327051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2CFCE3005989
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4923D2DB7AE;
	Wed, 15 Jul 2026 13:39:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C342EEE86
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:39:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784122752; cv=none; b=hwuSHof+CJhkl0K2MRrk7stk4wubvOJkqvP7jXE2vmmtsumDTugQvRj97oNnwkCBXRk0QQgBQgtmewmspJHOxWq8Z4jOgfQy0qFwJgMwRpwXzHSLsCSbD0r4Kph0BwBcqCAwECtJUWLzyEZwVQJ2YRkWs8/f/vSxaAaWftUcI9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784122752; c=relaxed/simple;
	bh=9ba5e1MuIOx4e5RahcoScdIGTgWhCS5b+ht2xnAuBGE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H1fp35MvLaHX99f+tdcYXsgLtG8iwT/QzsxqSGGB+cyPUbFnTzUtwbMN5KhszW2PMaPUSCBXFvlmeB4UpPfPC5ki0dcwQSeEAfYR+nZRb8dmJSbNGYcnk21bwYrhWqWYqklKbnlvi63A/jxo99n0GVi3PXgEMLZcaoW8ce1Glfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2JW5Zma; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 837691F00A3A;
	Wed, 15 Jul 2026 13:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784122750;
	bh=kKHzq7jqIvuLZFtzcynVCL/7UVoPn2q4QIrrPKSi96c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A2JW5ZmanPAyw9DE7Mxm99DDFZvfYFhPxy5JOAIAkPoLvrL1P8f7iPSeqLW1XTuiB
	 BNOAzXtLQBvp4A012TDXYfG+GaBRh0apWu539aFT80sB26MpuHQ7p8TwTJBYprNECm
	 H5vBurk8rKirPpku0BJiV+/EaMGdVk/TsRsBrK2GPZUDX84WHlc89G1JhvcOyJ5sKe
	 KVyxEIZNhcxbopRdQjjZ9xfxlNcmoqjgXuaQn87hLuVpsTQjRFCUf2mFWMblB1kKMy
	 OraXwyabppYLdtoek+yGVMRXpeoK5Vc/FpXHjccbZWKBVERV0oxu5MsWZvgU0zwbhi
	 /IswIlBz3/wFw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: purwa: Drop the Hamoa
 workaround for PDC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Maulik Shah" <maulik.shah@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-purwa-pdc-v3-2-be08934dc916@oss.qualcomm.com>
References: <20260715-purwa-pdc-v3-0-be08934dc916@oss.qualcomm.com>
 <20260715-purwa-pdc-v3-2-be08934dc916@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 13:39:10 +0000
Message-Id: <20260715133910.837691F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327051-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:maulik.shah@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5A0875EC55
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removing the `qcom,x1e80100-pdc` compatible string to bypass the=
 hardware register bug inadvertently also bypasses the firmware SCM call us=
ed to configure the PDC pass-through mode.
--

--- Patch [2]: [PATCH v3 2/3] arm64: dts: qcom: purwa: Drop the Hamoa worka=
round for PDC ---
commit e773040084ef92725984012956d31476c93e6557
Author: Maulik Shah <maulik.shah@oss.qualcomm.com>

arm64: dts: qcom: purwa: Drop the Hamoa workaround for PDC

This commit drops the "qcom,x1e80100-pdc" compatible string for the X1P42100
PDC node to remove a hardware register workaround. It replaces it with a
device-specific string and the generic "qcom,pdc" fallback.

> diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qc=
om/purwa.dtsi
> --- a/arch/arm64/boot/dts/qcom/purwa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
> @@ -174,6 +174,11 @@ &pcie6a_phy {
>  	compatible =3D "qcom,x1p42100-qmp-gen4x4-pcie-phy";
>  };
> =20
> +/* X1P42100 PDC is same as X1E80100, but without hardware register bug */
> +&pdc {
> +	compatible =3D "qcom,x1p42100-pdc", "qcom,pdc";
> +};
> +

[Severity: Medium]
Does dropping the "qcom,x1e80100-pdc" compatible string also unintentionally
bypass the firmware SCM call needed to configure the PDC pass-through mode?

Looking at qcom_pdc_probe() in drivers/irqchip/qcom-pdc.c, the SCM call is
coupled directly to this compatible string:

drivers/irqchip/qcom-pdc.c:qcom_pdc_probe() {
    if (of_device_is_compatible(node, "qcom,x1e80100-pdc")) {
        pdc->prev_base =3D devm_ioremap(dev, res.start - PDC_DRV_SIZE,...);
        ...
        pdc->x1e_quirk =3D true;

        if (!qcom_scm_is_available())
            return -EPROBE_DEFER;

        ret =3D qcom_scm_io_writel(PDC_GPIO_INT_CTL_ENABLE, PDC_PASS_THROUG=
H_MODE);
        ...
    }
}

If the X1P firmware boots in secondary mode (similar to X1E firmware on CRD
boards), skipping this SCM call might cause the kernel to assume pass-throu=
gh
mode while the hardware remains in secondary mode.

Could this lead to an interrupt storm and system lockup due to omitted
Ack/Clear operations for latched GPIO interrupts?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-purwa-pdc-=
v3-0-be08934dc916@oss.qualcomm.com?part=3D2

