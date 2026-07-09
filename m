Return-Path: <devicetree+bounces-323663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /2A+Dh2IT2qxiwIAu9opvQ
	(envelope-from <devicetree+bounces-323663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:38:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C07873075E
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:38:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kF9ZUlG2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323663-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323663-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6365D305882A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A623BCD04;
	Thu,  9 Jul 2026 11:25:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20373AF665
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:25:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596306; cv=none; b=BxllxLya+OPr2Y0o9HaYZAz9JkOSkAbSEGrrvwuL03koxRfeFAjck8djmTK1PR0eS96jzTAJzEtK2fWPSusq8t8MlTSmlKPCQnAfejli3j1hbpS6CzhSYfPsMfLlJoIMucRbPQAUVDm1rCrLb4ITrQB0CGEYpwBF9FdSxEqH1Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596306; c=relaxed/simple;
	bh=KxphI9QdHGKCAwg6GCLZkXR1AX591BapGbUfthMzqy4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eOIcE8zHZqsVFVHHdOEXMeTOa8omlsBseqBaCj+084WkdwKlfPYgMCDBa6xeQCfVqxj/JS7b5BnyBPxL533eSAw1Zck0cRcwt2UbJkzwAiIRsg900okFM8PdR2W7tFkhtbyA6cy7R1PGfm2w1tMTRt5NDJUV2TWOyiy/OE659bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kF9ZUlG2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C9F1F000E9;
	Thu,  9 Jul 2026 11:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783596305;
	bh=c6Qiu2fHltthm0R3Ov6SaocfILZnGRrbtjK6cCs2I2M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kF9ZUlG2lPIUlfr9drbGF0XwGMdeseEJ/FlbAa6POFmm1BbomxIrpb5EKCtOpVV00
	 Yxhx11/y7vbVP+cwSY+MUdhVHVMkd7CmAjNm0iEMl/JaQGzY/0N8KQM32+rwu5j6hj
	 7Do8bAJ7nZ4fKtt052oJ1wQhy0IsGZU0dz0BSd/TjaEWdQOvSEtUHV8M8ElvqNrn1e
	 07mGIL62Q+s9gbXx3/kNOv2DsSiCuDqhXIrJ3P2LOhlJv1XF4ALkzFLIGz5dhhQdrH
	 mQvbxPRgzcEluK76KIHXraFXZIhXQQAJTIlNw7cqVB+63kDkO0XB5OgQUqtFLKSwhZ
	 DKQP0AOg8qzxA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/8] clk: clocking-wizard: Move clk_in1 acquisition
 before static-config check
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shubhrajyoti Datta" <shubhrajyoti.datta@amd.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709111403.1579159-4-shubhrajyoti.datta@amd.com>
References: <20260709111403.1579159-1-shubhrajyoti.datta@amd.com>
 <20260709111403.1579159-4-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:25:04 +0000
Message-Id: <20260709112505.05C9F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323663-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shubhrajyoti.datta@amd.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C07873075E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unmet dependency on `s_axi_aclk` in static-config mode causes prob=
e failure.
--

--- Patch [3]: [PATCH v2 3/8] clk: clocking-wizard: Move clk_in1 acquisitio=
n before static-config check ---
commit 2d23efc5eb24a84c2dc3c21068e9e68c699593d8
Author: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

clk: clocking-wizard: Move clk_in1 acquisition before static-config check

The clk_in1 is the input clock for both the dynamic reconfig and the
static-config paths. Acquire clk_in1 for static-config as well. Output
clocks are registered as fixed-factor children of clk_in1.

> diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xil=
inx/clk-xlnx-clock-wizard.c
> index e082051221bef..ffc78c90bee6f 100644
> --- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
> @@ -1178,6 +1178,11 @@ static int clk_wzrd_probe(struct platform_device *=
pdev)
>  		return -EINVAL;
>  	}
> =20
> +	clk_wzrd->clk_in1 =3D devm_clk_get(&pdev->dev, "clk_in1");
> +	if (IS_ERR(clk_wzrd->clk_in1))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->clk_in1),
> +				     "failed to get clk_in1\n");
> +

[Severity: High]
Does this probe sequence correctly handle devices using xlnx,static-config
without an s_axi_aclk?

Earlier in clk_wzrd_probe(), the driver unconditionally acquires s_axi_aclk:

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_probe() {
    ...
    clk_wzrd->axi_clk =3D devm_clk_get_enabled(&pdev->dev, "s_axi_aclk");
    if (IS_ERR(clk_wzrd->axi_clk))
        return dev_err_probe(&pdev->dev, PTR_ERR(clk_wzrd->axi_clk),
                             "s_axi_aclk not found\n");
    ...
}

If a device tree specifies xlnx,static-config and omits the s_axi_aclk cloc=
k,
wouldn't this unconditional acquisition return -ENOENT and cause the probe =
to
fail before it even reaches this new clk_in1 acquisition?

>  	if (!of_property_present(np, "xlnx,static-config")) {
>  		clk_wzrd->base =3D devm_platform_ioremap_resource(pdev, 0);
>  		if (IS_ERR(clk_wzrd->base))

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709111403.1579=
159-1-shubhrajyoti.datta@amd.com?part=3D3

