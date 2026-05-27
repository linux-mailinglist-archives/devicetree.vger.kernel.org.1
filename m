Return-Path: <devicetree+bounces-303355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ66Fj3CFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:06:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4410F5E25F0
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 441C03003BEF
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F1F53EB80E;
	Wed, 27 May 2026 10:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wnn4J9FZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB54B3EDAB2
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876407; cv=none; b=AaMEWH6z/dWSlF0BDdSoenLb9dd/OMXd+mNAKf954ae7GZuqF5oF+IFxeq0DSrVWg3y7/pROvAoNdIaFOelRe1WPh+RHRbYVDy9UXVWTFwsLxnRmbabmTsGfrOayurIzkh53IW/GxwDjQsFaPl5lVz0oQ/XnfXwN0JHkGpH/mio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876407; c=relaxed/simple;
	bh=StoSnzW1E/oVC7NGu1get2qpnNBKXxXqCbB/dJquqdI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WqYa+dxf9CzpR8uCCmjsIoxgOmVCWBMw/4ChwwkmzuspcjvkJrk3WHBDUcXiHmWFTUxFJk+sXDH/76sZ+zavKlA5NLzA2RPMqcOtRykha4715XVJPDLQFs+pU60/MPrCtDzavq6o0lVOkzs0hqdbBsjyKJdKe0ljXxrhIw4ztZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wnn4J9FZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 393141F00A3A;
	Wed, 27 May 2026 10:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876404;
	bh=1x+2whWLumyFzb6kpyJoNmq9DRhvmvuOIAeIXJvyDKw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wnn4J9FZiIiUI7a8XEqR+qf+IRyKJlysn8JGYsyyEC+cL2zzidUZnz8kaoX32VtJX
	 SzS942LzaqMVNQXGDdDJ2iruYwx8Cso2soNpjwRzmGx4ZtjAkK+5Hf7XSYuizA9AiB
	 sO2pXEBAWaUIwiiolapz3vrpVfX1s4cFkWMl22oOckpxrhaoQbaAiAivw3gNbaa+1I
	 qfGXEvg2sTGfk4swmgZpqGsX7lb4V+Nxd4sKJil/q3vsxsf0jnBNQnOMNMZjNa1p2N
	 AYLHldfsAblYJOYkPQQir7urMARJorbTDYNkw0wnXPR6CBelOuR6WjbnuU37kul7q9
	 pHs7kLrBZemdA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/24] arm64: dts: qcom: sc7180: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260527094333.2311731-5-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-5-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:06:43 +0000
Message-Id: <20260527100644.393141F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303355-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[b220000:email,af00000:email,sashiko.dev:url,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 4410F5E25F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the PDC `reg` size to 0x10000 in the device tree trigge=
rs a kernel boot warning in the `qcom-pdc` driver and fails to reduce the a=
ctually mapped memory region.
--

commit 81fc1fb188abb3ae08146cf2e02b2febea3e2f77
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: sc7180: Reduce OS PDC DRV span to 0x10000

The OS PDC DRV register window on sc7180 spans 0x10000 bytes. Reduce
the size of the first reg entry from 0x30000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/q=
com/sc7180.dtsi
> index a4b17564469ee..3961948c7ee81 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3507,7 +3507,7 @@ dispcc: clock-controller@af00000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,sc7180-pdc", "qcom,pdc";
> -			reg =3D <0 0x0b220000 0 0x30000>;
> +			reg =3D <0 0x0b220000 0 0x10000>;

[Severity: Medium]
Will this change trigger a new boot warning?

The qcom-pdc driver enforces a minimum region size of 0x30000 via
QCOM_PDC_SIZE:

drivers/irqchip/qcom-pdc.c:qcom_pdc_probe() {
	...
	res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
	if (res_size > resource_size(&res))
		pr_warn("%pOF: invalid reg size, please fix DT\n", node);
	...
}

Because QCOM_PDC_SIZE is 0x30000, setting the device tree reg size to 0x100=
00
will cause the driver to expand the size back to 0x30000 during mapping and
print the "invalid reg size" warning.

Are there corresponding driver updates planned to handle the reduced size?

>  			qcom,pdc-ranges =3D <0 480 94>, <94 609 31>, <125 63 1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D4

