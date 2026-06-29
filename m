Return-Path: <devicetree+bounces-316755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4Oq4B8khQmoO0wkAu9opvQ
	(envelope-from <devicetree+bounces-316755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:42:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7201D6D71C1
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:42:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gYJULm0Q;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316755-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316755-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04B0D302C5E3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF93C32D42B;
	Mon, 29 Jun 2026 07:32:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B8933A00C
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 07:32:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782718345; cv=none; b=V4f6GZCXGnkYDR1oLzMdI0mM4oYHKtVH0tHB91VCIFB03xQgmCk6uvQL1DqtWjxUOU7DNjnFZAgpVFe2pf2OWKcRqjcXKZM2pG2KJaEs/A2pNwlrvTHtrvAx+HCscN2aC6fi1Z3W5HBh/cMO8mJHAqwQD+eXEg0jD2CzQoeAHHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782718345; c=relaxed/simple;
	bh=24v1r1yg5d3POTn+sd/G9tlmtGCRQvJKDa689WYj7lM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=STObURYLQS9gaIRo7iBVuhavYEkXgvfP7EO66C6Rtv66VL4dP6Z2mRjmEp8ylJ9O0O7PdNKxQXcZYDt/y8Iow17Wh9eQi0Vij2QqKlosmQaaP2mNPtoNv7pU7uOQwjmyDLzWH8nuXfanOVXisdjdSB582MdK/9g8+h//evR6NE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYJULm0Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CDAE1F000E9;
	Mon, 29 Jun 2026 07:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782718343;
	bh=+hoeA9Zrlr12yvQ4U2ZIOmC92zMadi05/hLtac0OJUA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gYJULm0QGbCNVAU7iveF6pLMORrzyznnsuUsT+ZOP9AwI4mYVOB6THVQhAd5+oOMs
	 nFhqahYSih0dL3mMSXA0XWKsOzpLHxXfGxZLVMSpEYs/EIlH4tXL8HCZg/tKUypXFF
	 cqotjtFb/+LEOlmFKZZYaTHaXztO40SL8dCFobMVDNBknVBsC3wF1cYspeytgyjz/4
	 hcAFugqO6a3fOKdOFJo04VNQDF4lDCBtPelNMH0IGIuGaLGQwafLteCMXqLBQ/k5tl
	 u8vGYTZq9gl0yYGGasK24h3TyDGyXE+gjO0SP2Nb6VnZImv4gNbYfX0NoNnfqPbwUP
	 JATa+2yH0WGOw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] memory: ti-k3-fsas: Add TI FSS_FSAS driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629072055.896322-3-s-k6@ti.com>
References: <20260629072055.896322-1-s-k6@ti.com>
 <20260629072055.896322-3-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 07:32:22 +0000
Message-Id: <20260629073223.6CDAE1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316755-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,ti.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7201D6D71C1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] Missing PM Runtime integration causes bus faults and silent st=
ate loss.
- [Critical] Lack of probe ordering guarantees between the FSAS wrapper and=
 the OSPI driver risks DMA corruption.
--

commit d3b703966890d77f64fc1cc0139d8a00699e6a78
Author: Santhosh Kumar K <s-k6@ti.com>

memory: ti-k3-fsas: Add TI FSS_FSAS driver

This patch adds a platform driver for the TI Flash SubSystem Application
Subsystem in K3 SoCs. It configures the SYSCONFIG register to disable OSPI
XIP prefetch, preventing DMA data corruption.

> diff --git a/drivers/memory/ti-k3-fsas.c b/drivers/memory/ti-k3-fsas.c
> new file mode 100644
> index 0000000000000..a5f42afc694c5
> --- /dev/null
> +++ b/drivers/memory/ti-k3-fsas.c
[ ... ]
> +static int k3_fsas_probe(struct platform_device *pdev)
> +{
> +	struct k3_fsas *fsas;
> +
> +	fsas =3D devm_kzalloc(&pdev->dev, sizeof(*fsas), GFP_KERNEL);
> +	if (!fsas)
> +		return -ENOMEM;
> +
> +	fsas->base =3D devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(fsas->base))
> +		return PTR_ERR(fsas->base);
> +
> +	platform_set_drvdata(pdev, fsas);
> +
> +	k3_fsas_disable_xip_prefetch(fsas);

[Severity: Critical]
Is it possible for the device to be unpowered when accessing the registers
here?=20

Accessing fsas->base without first calling pm_runtime_enable() and
pm_runtime_get_sync() could cause a synchronous external abort on K3 SoCs.

[Severity: Critical]
Is there anything guaranteeing this probe finishes before the main OSPI
controller probes?

If the OSPI driver (cadence-quadspi) probes and initiates DMA transfers
before this independent platform driver runs, the transfers could occur with
XIP prefetch enabled, corrupting the data.

> +
> +	return 0;
> +}
> +
> +static int k3_fsas_resume(struct device *dev)
> +{
> +	k3_fsas_disable_xip_prefetch(dev_get_drvdata(dev));
> +	return 0;
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(k3_fsas_pm_ops, NULL, k3_fsas_resume);

[Severity: Critical]
Will the hardware state be lost during runtime suspend?

By using DEFINE_SIMPLE_DEV_PM_OPS without runtime PM callbacks, if the
domain goes into runtime suspend (e.g. when the OSPI controller is idle),
the hardware state could reset.=20

Because there are no runtime_resume callbacks, the FSAS_SYSCONFIG_DISXIP
bit will remain lost. The OSPI controller could then perform subsequent DMA
transfers with XIP prefetch enabled, causing silent data corruption.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629072055.8963=
22-1-s-k6@ti.com?part=3D2

