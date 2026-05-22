Return-Path: <devicetree+bounces-301595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFnCL3sFEGqLSQYAu9opvQ
	(envelope-from <devicetree+bounces-301595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 09:27:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14B5AFFC8
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 09:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B418B3004C92
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 07:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5FF34CFAE;
	Fri, 22 May 2026 07:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5p5ZvoI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A50AD38D414
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 07:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779434870; cv=none; b=qvGOMlmJPgerpQFOt0EnW9S47r/zImlHs1TZ4wHVccgSLiwKSi+V2ncE+hTJKKWMchituLUQEUDXATTgji3/Sm0IuV4JKPfNtad483pMJfdAPpYevtxMuhcKvYCIi06DC0mFskxO0I/zYprmiZUNFT6BNhaxGHeGrXWgT/0Lvzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779434870; c=relaxed/simple;
	bh=IOEcVH9o/jzW0RrXQjDu+kbWGF8ps9owvc64OXG5JYU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z9bdw/HdRmM5toGWt8sXQvLjNfPOfnYvGASY56AQhZd4F3pN66QMF/v4XLm1eWh41Tk/8dM/YN3IQsECZXgl+p6PeSjGEICP80vss9nY8XaZgCf2qbkAFZGcfYRFuD6uj8A8tZ6kL7fRrjvaTzzqgGp1ib6CPgi/boj7LKYViOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5p5ZvoI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CAFD1F000E9;
	Fri, 22 May 2026 07:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779434868;
	bh=eNOmLxHlbMYPb5ISSy8vaY3KNMEP6yp2fu8Gf5P+PSs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=J5p5ZvoI2MZbRfY1QeUN6bGDnvCjcFPuBnaldzw2SKEIBiSCX0bJ3J1pvgmJchLOt
	 XetWkt4zTISVEzMMZH4/pJD+GKhSN7mQoJAZO/KTUnuHcwFWaXiW419IoWOhFNp4co
	 x2pd8Hgv+Z+29Je6/6qEdBOaz+Mf+vmt6NP/LQaTBWklTPq7gwINFMrtb62dytEje7
	 QM7gKUnqVLOaB2hCdclPwnhQLpuXNRln1judpKvvCTTp0y8faDZkAKkyz3uSW+HW0Q
	 3IEWkratxdH2KnZQVWigRKu/iFylrtrpG0NXIVXR9AmeltuTcXDlo7VnAbMcAe+QXE
	 R8X78soLBQIlg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] arm64: dts: qcom: qcs6490-radxa-dragon-q6a: Add
 regulator supplies and disable EUD
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3JhaGFtIE8nQ29ubm9y?= <graham.oconnor@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260522060645.4399-5-graham.oconnor@gmail.com>
References: <20260522060645.4399-5-graham.oconnor@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 07:27:47 +0000
Message-Id: <20260522072748.9CAFD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301595-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: BF14B5AFFC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Adding the undocumented 'vdda-supply' property to the PCIe controll=
er nodes breaks Device Tree schema validation.
--

commit 6e4637b222af4746ef1edd2421be8601e301a29c
Author: Graham O'Connor <graham.oconnor@gmail.com>

arm64: dts: qcom: qcs6490-radxa-dragon-q6a: Add regulator supplies and disa=
ble EUD

This commit adds missing regulator supplies for the qfprom and PCIe
controllers on the Radxa Dragon Q6A board. It also disables the Embedded USB
Debugger (EUD) due to conflicts with normal USB operation.

> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts b/arch=
/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> index bb5a42b038f19..4003837ad5756 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dts

[ ... ]

> +&pcie0 {
> +	vdda-supply =3D <&vreg_l1c_1p8>;

[Severity: Low]
Does adding this property cause a dtbs_check schema validation error?

The device tree binding schema for this compatible (qcom,pcie-sc7280.yaml
and its included qcom,pcie-common.yaml) enforces unevaluatedProperties: fal=
se
and does not appear to define a vdda-supply property.

While the PCIe driver (pcie-qcom.c) attempts to request a vdda regulator,
adding undocumented properties directly to the device tree will cause
validation to fail.

> +	vddpe-3v3-supply =3D <&vreg_bob_3p296>;
> +};
> +
> +&pcie1 {
> +	vdda-supply =3D <&vreg_l1c_1p8>;

[Severity: Low]
This has the same schema validation issue as the pcie0 node above.

> +	vddpe-3v3-supply =3D <&vreg_bob_3p296>;
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522060645.4399=
-1-graham.oconnor@gmail.com?part=3D4

