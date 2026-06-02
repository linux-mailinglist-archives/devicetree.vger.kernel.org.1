Return-Path: <devicetree+bounces-305442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHnyDwVgHmo/iwkAu9opvQ
	(envelope-from <devicetree+bounces-305442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 06:45:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7AC6282D4
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 06:45:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DA3C30087F1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 04:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D94322BDC05;
	Tue,  2 Jun 2026 04:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8mKF0NI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB5E223DEA
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 04:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780375552; cv=none; b=IcP+QL+vMpJSvsD1fjQ+1ULHYn6HTMEinVsR+BDxWmUkJpWQZqyfVQecdPZBRikcZJv7uECsAGuuQXUFe2uWqPHEsGGzx9rFLbBkJ3ztpOA7+CMfUBwrKTfNu5gJ2VuZPVWrYePBHU5bP9UM1cfRy+hy05XTXOqO3/WrMBPsWaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780375552; c=relaxed/simple;
	bh=f41RFI+99iM+6JqS3IqWKwirkuDj/LxERNSmmDMfF6s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nr/HB5xWtK5ivAaa/kHSUypDnV0ZWWbN9pc26Kj2lZzxCDJfQrfc4FdaT36lb1/URhFqLMStZdgvdQi3+KJNlqtdP3Uqc+Yttu7Rm/1uHbXchnIObJTBURFl/0f6YjOr6EG3Xc5l5OmmhiRjXuVayIp8yXLxoKWUo1KHeI6x85Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8mKF0NI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E4D41F00893;
	Tue,  2 Jun 2026 04:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780375551;
	bh=ZQBls5XmcKbNFB4Rbr0xGtLRx0ycLwq7LTRJ3+XadqU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C8mKF0NIthgwgM+W46iULJbjTW+4rsYkRsiS0Zvxks4FT3xaLJsVpuT7xBuhwIPGT
	 JbCRAUrKYBbREsBxjdfucOd1jRFFPYu2VyEdKV9J1YQ+fle6xmuVP6XovUzsoY3kYy
	 wJWu3Gy8Wv0hOWqcq/5EG2Sa2i1uoEHavBRNqFp2ITnpjTthXwEVbpe8Twrr99VMX5
	 A3dfXp5qCHlAkWyzYTRwxw/WaXWHn7qm+xGG7tduxQ3oqMWxxA8jFHo0LS/d1uXmtV
	 fLviegSHUNFbiAk4jHq98KpJWOV94aDpHkNeme0AtVraawzouINDLc0lZQZ9LOQ4nT
	 JUD+QEt8s2AWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: clock: qcom: add mmcc-msm8660 clock
 IDs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260602043623.285901-2-github.com@herrie.org>
References: <20260602043623.285901-2-github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 04:45:51 +0000
Message-Id: <20260602044551.6E4D41F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305442-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,herrie.org:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: CA7AC6282D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Silent failure to unhalt MMSS fabric if qcom_rpm is not bound yet.
--

commit 7a52c01ee4faffcac27f221b8547899fcd741b7b
Author: Herman van Hazendonk <github.com@herrie.org>

clk: qcom: add MSM8x60 MMCC driver

Add a clock driver for the Multimedia Clock Controller (MMCC) on the
MSM8x60 family (MSM8260/MSM8660/APQ8060) - the Scorpion-class
generation that preceded MSM8960's Krait CPUs.

> diff --git a/drivers/clk/qcom/mmcc-msm8660.c b/drivers/clk/qcom/mmcc-msm8=
660.c
> new file mode 100644
> index 0000000000000..50781a63e65fe
> --- /dev/null
> +++ b/drivers/clk/qcom/mmcc-msm8660.c
[ ... ]
> +static void mmcc_msm8660_unhalt_fabric_ports(struct device *dev)
> +{
> +	struct device_node *rpm_node;
> +	struct platform_device *rpm_pdev;
> +	struct device_link *link;
> +	struct qcom_rpm *rpm;
> +	/* halt_data[0]=3D0 =3D CLK_UNHALT for all bits; halt_data[1] =3D port =
mask */
> +	u32 mmss_halt[2] =3D {0, GENMASK(13, 0)};
> +	int rc;
[ ... ]
> +	rpm =3D dev_get_drvdata(&rpm_pdev->dev);
> +	if (!rpm) {
> +		/*
> +		 * Supplier exists but has not bound yet -- skip the
> +		 * unhalt rather than blocking mmcc probe; downstream
> +		 * MMSS clients will be enabled on demand.
> +		 */
> +		put_device(&rpm_pdev->dev);
> +		return;
> +	}

[Severity: High]
Does this code silently fail to unhalt the MMSS fabric if the qcom_rpm driv=
er
has not yet probed?

If dev_get_drvdata() returns NULL because the RPM driver hasn't bound yet,
this function returns without an error. Since mmcc_msm8660_probe() calls th=
is
and ignores any failure, it will complete probe successfully but leave the
MMSS fabric permanently halted.

The comment here states "downstream MMSS clients will be enabled on demand",
but this contradicts the block comment above indicating that mainline GDSC
does not implement on-demand unhalting. When multimedia hardware later powe=
rs
on and attempts DMA, the hardware queues will freeze and stall the system.

Should mmcc_msm8660_unhalt_fabric_ports() return an int so we can pass
-EPROBE_DEFER back to the probe function to wait for the RPM driver?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602043623.2859=
01-1-github.com@herrie.org?part=3D1

