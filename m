Return-Path: <devicetree+bounces-303357-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNXAEGDCFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303357-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:07:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1155E2624
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:07:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D729300362C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE6293ED128;
	Wed, 27 May 2026 10:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhDrmS9X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EC83EB811
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876444; cv=none; b=XQnI6ROkt1FSpol8wzUW8opU5M2lpsRzwfP2Kpzz6OQ4st8/uP6OVSEjzsRSdJtFbzb2IfyRxTInLdwErgkUcfMArhsWeG/Au2hjyIqDOuo+XlzSx0UNJWLNTfo8+pRdOmbAb+5RysTScMxGS6auWOVqbhsm9VLG4yM+IHKKi/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876444; c=relaxed/simple;
	bh=aIa910b9XKL1C5OVxXEmK48KUJIyW6kgD0oE2LSxW0Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LXiLoHDkaXZszDReYlydyFVubj+mJgHKuRPIc5OpcfiShm8gDnT8li40bu49u+w7GwRRUMwG8NwoYBf3tkhFTvEGyz879sEEfS1MhwS2WSzSWd7Uf6im2DzdBVNbm8VXgz991WintWBmkCVuv6i7w+xQ2KRedqT3ToAT8eYTr7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhDrmS9X; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 487BD1F00A3A;
	Wed, 27 May 2026 10:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876443;
	bh=aLxR2PIkeubvklv2a7G+owFjTcCvRLn9T+qIqFNhG/E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FhDrmS9XVP1sm/soHt/I2d6K45480gLOsxg0wrcKflR6sucQK2I85NyzQ8FZoYfZ+
	 fhBOMBDgmO/XWG136khRKTRbid744h/shKcDuinXAxn5JUo2kxQ+YBqvLtBCUefiEt
	 WUQZvm4HmBhj3kvBmlNMGm9Bz+cZWjHWal2oY+gAARxKUeeenUTHZb9pTdScijaZqB
	 BdlcJzTQC4w396OtDI4saS+nbxAkTNmT6D52gATHYnXXLU0QlmEsRUFb9CeduYFScd
	 NIthScyiuBlyI5ZHlzFW5DutVdGfgRRQE8BTkcCChafwc4wLJWxbxMDu+l52g3FUh2
	 eWawDrw4D3GyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 05/24] arm64: dts: qcom: sc7280: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260527094333.2311731-6-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-6-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:07:22 +0000
Message-Id: <20260527100723.487BD1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303357-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: DB1155E2624
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the DT `reg` size to 0x10000 triggers an unconditional =
boot warning in the driver and fails to actually reduce the mapped memory s=
ize.
--

commit ca8b3ceb39b1e7babb13309a5b7e9f3fdc180c22
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: sc7280: Reduce OS PDC DRV span to 0x10000

This commit reduces the OS PDC DRV register window on the sc7280 platform
from 0x30000 to 0x10000 bytes in the device tree.

> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/q=
com/kodiak.dtsi
> index 988ca5f7c8a0e..c94375a35473e 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -5736,7 +5736,7 @@ opp-810000000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,sc7280-pdc", "qcom,pdc";
> -			reg =3D <0 0x0b220000 0 0x30000>;
> +			reg =3D <0 0x0b220000 0 0x10000>;

[Severity: Medium]
Will this change trigger a boot warning and fail to actually reduce the
mapped memory size?

Looking at the qcom-pdc driver in drivers/irqchip/qcom-pdc.c, the driver
enforces a minimum mapping size via QCOM_PDC_SIZE (0x30000). In
qcom_pdc_probe(), it executes:

	res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
	if (res_size > resource_size(&res))
		pr_warn("%pOF: invalid reg size, please fix DT\n", node);

By reducing the device tree reg size to 0x10000 without a simultaneous
driver update, the driver overrides the mapping size back to 0x30000 and
unconditionally emits the "invalid reg size, please fix DT" warning on
every boot.

Does the driver need an update alongside this change to avoid overriding
the size and emitting the spurious warning?

>  			qcom,pdc-ranges =3D <0 480 40>, <40 140 14>, <54 263 1>,
>  					  <55 306 4>, <59 312 3>, <62 374 2>,
>  					  <64 434 2>, <66 438 3>, <69 86 1>,

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D5

