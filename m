Return-Path: <devicetree+bounces-303887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L3PAvtUGGoQjQgAu9opvQ
	(envelope-from <devicetree+bounces-303887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:45:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1895F3E45
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:45:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0116030752F0
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A4B2E718B;
	Thu, 28 May 2026 14:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKHjx2WK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280CD23EAAD
	for <devicetree@vger.kernel.org>; Thu, 28 May 2026 14:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779978613; cv=none; b=uUbkG58SVR7B/YD8DmukZN3tjOaq45LITpM7Z/nulYpRDhgULeJv57Dttw/92jYJb/8QTfDQNDGYsqXQhdot7/B/ZXcXWzAA6i6949axMizfQtM8ITr1APn4Q2OuYQ02+lW0NnzC3E4ULEuO6DUPgHySkKqUsnh/2iJB6xZohj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779978613; c=relaxed/simple;
	bh=Lax4tc92b7BbAPBmuzZ9mPAC78HJ29QrpbaZAvoQ00g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZRqyKow6Lv7R1MgMVKnJiR+xfzmWEvSCn0zarvFy/shqWdlfpAasuw2o/TPRK/8WqVFNdpmcLJSJfQu5LTUzCRii5SYuZhhgd445sH5v5C40lIXd+z04bwAJPjByBvr+znzXKhRaF8gbFbBZ6gDC0HYUHvsTp2CteATIB5dbK4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKHjx2WK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A28C01F000E9;
	Thu, 28 May 2026 14:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779978611;
	bh=ga3eK959Eq57AJXeT5GijwuPOaF80UUYfCOKsV4XHvA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NKHjx2WKodQh8VVPil0BbITY9KgCdVNChdJFqj2fX4wwMuxAodMC/u2G+miR0bMG1
	 BfwkHtG78H1gGA4gV7Pwk4jz6n4Tn/MR8RaFRhHWXLI+TExB4v5Aw4Otnn2X5pLfuS
	 ZfZ61981zfwNALo6H3msDDehbGiivmFWl5lzKuXJU3rm/6d0f+fEw84DdkgAZ1W4ZQ
	 WWLxVcLHpfqCbqbBBsC0Vf02Q7hbiMemCrpojtIvXMhahtXxXC2t07FcJ5PmPkJhT7
	 liA+Ioa/EGgrIOeF9FGhB2FfTGpkjgoNp7d9oynqb1JMhzKPAEtjAvllIrx7ysPuns
	 hJjM5juH5cSGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] clk: qcom: Add support for Qualcomm GPU Clock
 Controller on Shikra
Reply-To: sashiko-reviews@lists.linux.dev
To: "Imran Shaik" <imran.shaik@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260528-shikra-dispcc-gpucc-v2-5-953f246a0fbb@oss.qualcomm.com>
References: <20260528-shikra-dispcc-gpucc-v2-5-953f246a0fbb@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 May 2026 14:30:11 +0000
Message-Id: <20260528143011.A28C01F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303887-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 0B1895F3E45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Critical] Device Tree ABI Regression / Broken Probe
- [High] Missing PM Runtime Support / Hardware Access Fault
- [Medium] Global State Mutation / State Pollution
--

commit 5b994f8a64d2619757c52d0d0d48b2155beacbbb
Author: Imran Shaik <imran.shaik@oss.qualcomm.com>

clk: qcom: Add support for Qualcomm GPU Clock Controller on Shikra

The Qualcomm Shikra GPU clock controller is similar to QCM2290 GPUCC
hardware block, with minor differences. Drop modelling of critical
clocks and keep them enabled at probe time, update the QCM2290 GPUCC
driver to align with the latest common qcom_cc_probe() model. Update the
GDSC *_wait_val and flags which are applicable for both QCM2290 and Shikra.

> diff --git a/drivers/clk/qcom/gpucc-qcm2290.c b/drivers/clk/qcom/gpucc-qc=
m2290.c
> index dc369dff882e6..296afcbfe0c9e 100644
> --- a/drivers/clk/qcom/gpucc-qcm2290.c
> +++ b/drivers/clk/qcom/gpucc-qcm2290.c
[ ... ]
>  static struct clk_regmap *gpu_cc_qcm2290_clocks[] =3D {
> -	[GPU_CC_AHB_CLK] =3D &gpu_cc_ahb_clk.clkr,
>  	[GPU_CC_CRC_AHB_CLK] =3D &gpu_cc_crc_ahb_clk.clkr,
>  	[GPU_CC_CX_GFX3D_CLK] =3D &gpu_cc_cx_gfx3d_clk.clkr,
>  	[GPU_CC_CX_GMU_CLK] =3D &gpu_cc_cx_gmu_clk.clkr,
>  	[GPU_CC_CX_SNOC_DVM_CLK] =3D &gpu_cc_cx_snoc_dvm_clk.clkr,
> -	[GPU_CC_CXO_AON_CLK] =3D &gpu_cc_cxo_aon_clk.clkr,
>  	[GPU_CC_CXO_CLK] =3D &gpu_cc_cxo_clk.clkr,
>  	[GPU_CC_GMU_CLK_SRC] =3D &gpu_cc_gmu_clk_src.clkr,
>  	[GPU_CC_GX_GFX3D_CLK] =3D &gpu_cc_gx_gfx3d_clk.clkr,

[Severity: Critical]
Does removing these clocks from the array break the established Device Tree=
 ABI
for qcom,qcm2290-gpucc?

Because their indices in the array are now uninitialized, the clock provide=
r's
qcom_cc_clk_hw_get() will return NULL, causing dependent drivers referencing
these clocks to fail to probe.

[ ... ]
> @@ -359,55 +366,22 @@ static const struct qcom_cc_desc gpu_cc_qcm2290_des=
c =3D {
>  	.config =3D &gpu_cc_qcm2290_regmap_config,
>  	.clks =3D gpu_cc_qcm2290_clocks,
>  	.num_clks =3D ARRAY_SIZE(gpu_cc_qcm2290_clocks),
>  	.resets =3D gpu_cc_qcm2290_resets,
>  	.num_resets =3D ARRAY_SIZE(gpu_cc_qcm2290_resets),
>  	.gdscs =3D gpu_cc_qcm2290_gdscs,
>  	.num_gdscs =3D ARRAY_SIZE(gpu_cc_qcm2290_gdscs),
> +	.driver_data =3D &gpu_cc_qcm2290_driver_data,
>  };

[Severity: High]
Does this description need to set .use_rpm =3D true?

Prior to this patch, the driver explicitly enabled PM runtime and called
pm_runtime_resume_and_get(). By omitting .use_rpm =3D true here,
qcom_cc_really_probe() will skip the PM runtime resume sequence.

Accessing unclocked or unpowered registers to configure PLLs and critical
CBCRs could trigger a synchronous external abort.

[ ... ]
>  static int gpu_cc_qcm2290_probe(struct platform_device *pdev)
>  {
> -	struct regmap *regmap;
> -	int ret;
[ ... ]
> -out_pm_runtime_put:
> -	pm_runtime_put_sync(&pdev->dev);
> +	if (device_is_compatible(&pdev->dev, "qcom,shikra-gpucc"))
> +		gpu_cc_gx_gfx3d_clk_src.freq_tbl =3D ftbl_gpu_cc_gx_gfx3d_clk_src_shik=
ra;
> =20
> -	return 0;
> +	return qcom_cc_probe(pdev, &gpu_cc_qcm2290_desc);
>  }

[Severity: Medium]
Does this code mutate static module data?

Because gpu_cc_gx_gfx3d_clk_src is a static global structure, dynamically
assigning a new frequency table here will permanently pollute the shared ta=
ble
for the entire driver module.

Could this cause issues during driver unbind/rebind cycles?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260528-shikra-dis=
pcc-gpucc-v2-0-953f246a0fbb@oss.qualcomm.com?part=3D5

