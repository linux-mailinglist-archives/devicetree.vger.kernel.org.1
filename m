Return-Path: <devicetree+bounces-313043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MaCUOiirMmrR3QUAu9opvQ
	(envelope-from <devicetree+bounces-313043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:11:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9FE69A709
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:11:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eirwE3Vi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313043-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313043-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A88EF307CD78
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214342F7F06;
	Wed, 17 Jun 2026 14:10:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDCA23AB460;
	Wed, 17 Jun 2026 14:10:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781705459; cv=none; b=Up6oRw/S16LvPTutH0dCEQqthmmh1Ubvu1OKwl6NASBzYKUI9IXQH4Fyzu7ncihkIA9eurHEp+jw4hFlCq0OF1WxV2xpcpRKBltAZJY9aggEFXhdGPcwQkQREzJpUYcNhwNTcqdha70CrQIVPhTyU1ZruBLZx64l6lwqjigaatQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781705459; c=relaxed/simple;
	bh=tzs0QnWcRKujWGxzUNNfuq3zOMNv4/IKWRBoX6CFwXc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lGApK2+vSUeNWqc9IHZp0Q6AnWT6MIYMAkI2mGt6aMqqx/pWPZH7fuLyVik+zZVIuqhMQLLKc3t8sDTyXNHhlSMX/JNH6d69tk7NB/i81UWTHPffXxHefThYOyCe4P37OWvrrWNIlffJFvBDr+oAaJA5Mnad/+K4yHMRB5ZeInI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eirwE3Vi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75CAF1F000E9;
	Wed, 17 Jun 2026 14:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781705457;
	bh=7JVuUmQYzVTqj6TbcDcOl4vf5etSCNQftFAAWwJC/L4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eirwE3ViBtj9p4lN4KNGUonYxrzN2NQIvaruFYaqO6bugiF/t1roaZ4ncKdW1SEnv
	 Xg2IOXopWEppnZDRUA00WtP6KEfkHf4u3iMfxeaJ5NmeS3VOuHhtgKPweUfPGQsPqE
	 4ooxZwQ0OyKq8MLPbQ1tGUtZ07tYWSjGcUaUfdvnsLZc/xLx0+ZID75FCMbPNRcZZQ
	 EdkXItB88iR3zuoJWhEpiMrSCBoJJCqIqO6TVdt9lMAJ2VF9vBYPeg/73i2AcjCp4W
	 rB1sRH+qU3B49/+Ymc0rjVpjmX8ApqufrJbUF7Q2qgLFZxlgSxDQpsLHUgs1YunLr2
	 0zL7mIhCZtTIg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 10/10] RAS: add firmware-first CPER provider
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-cxl@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-10-91f725174aa0@arm.com>
References: <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com>
 <20260617-topics-ahmtib01-ras_ffh_arm_internal_review-v6-10-91f725174aa0@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 14:10:56 +0000
Message-Id: <20260617141057.75CAF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,arm.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ahmed.tiba@arm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-cxl@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D9FE69A709

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

New issues:
- [High] Unbounded memory leak of the global GHES estatus pool backing memo=
ry on probe failure or repeated module bind/unbind.
- [High] Unnecessary `spinlock_irqsave` entirely defeats the threaded IRQ h=
andler and causes high interrupt latency.
- [High] The threaded IRQ handler unconditionally returns `IRQ_HANDLED` eve=
n when no error block is present, bypassing the kernel's spurious interrupt=
 detector.
- [Medium] Missing Kconfig dependency on `OF_RESERVED_MEM` causes guarantee=
d probe failure.

Pre-existing issues:
- [Critical] Integer overflow in `data_length` validation allows massive ou=
t-of-bounds kernel memory read when `raw_data_length` is non-zero.
--

commit d0750a54f0673f163ace66f8e9921ee0f1ba6bd4
Author: Ahmed Tiba <ahmed.tiba@arm.com>

RAS: add firmware-first CPER provider

Add a firmware-first CPER provider that reuses the shared GHES helpers,
wire it into the RAS Kconfig/Makefile and document it in the admin guide.

> diff --git a/drivers/ras/Kconfig b/drivers/ras/Kconfig
> index fc4f4bb94a4c6..3c1c63b2fefc3 100644
> --- a/drivers/ras/Kconfig
> +++ b/drivers/ras/Kconfig
> @@ -34,6 +34,17 @@ if RAS
>  source "arch/x86/ras/Kconfig"
>  source "drivers/ras/amd/atl/Kconfig"
> =20
> +config RAS_CPER_ESOURCE
> +	bool "Firmware-first CPER error source block provider"
> +	select GHES_CPER_HELPERS

[Severity: Medium]
Will this fail to probe on configurations without OF_RESERVED_MEM?

The driver calls of_reserved_mem_region_to_resource() unconditionally, but
if CONFIG_OF_RESERVED_MEM is disabled, that function is an inline stub that
always returns -ENOSYS. Should there be a "depends on OF_RESERVED_MEM" here
so it doesn't build broken configurations?

> +	help
> +	  Enable support for firmware-first Common Platform Error Record

[ ... ]

> diff --git a/drivers/ras/cper-esource.c b/drivers/ras/cper-esource.c
> new file mode 100644
> index 0000000000000..cc9f5f522400d
> --- /dev/null
> +++ b/drivers/ras/cper-esource.c

[ ... ]

> +static int cper_esource_validate_status(struct cper_esource *ctx)
> +{
> +	size_t estatus_len;
> +
> +	if (!ctx->estatus->block_status)
> +		return -ENOENT;
> +
> +	if (cper_estatus_check_header(ctx->estatus))
> +		return -EINVAL;
> +
> +	if (ctx->estatus->raw_data_length &&
> +	    (ctx->estatus->raw_data_offset > ctx->status_len ||
> +	     ctx->estatus->raw_data_length >
> +	     ctx->status_len - ctx->estatus->raw_data_offset))
> +		return -EINVAL;

[Severity: Critical]
This isn't a bug introduced by this patch, but does the validation logic
have an integer overflow vulnerability?

When raw_data_length is non-zero, this function relies on
cper_estatus_check_header() to validate data_length.

In drivers/firmware/efi/cper.c:cper_estatus_check_header():
        if (estatus->raw_data_length &&
            estatus->raw_data_offset < sizeof(*estatus) + estatus->data_len=
gth)
                return -EINVAL;

If firmware provides a massive data_length (e.g., 0xFFFFFFF0), the addition
wraps around to a very small integer, bypassing the check. The subsequent
cper_estatus_check() will then iterate over this unvalidated length, allowi=
ng
a massive out-of-bounds kernel memory read past the ctx->estatus buffer.

Should this driver independently verify that
sizeof(*estatus) + data_length <=3D ctx->status_len to protect against this?

> +
> +	estatus_len =3D cper_esource_estatus_len(ctx->estatus);

[ ... ]

> +static void cper_esource_process(struct cper_esource *ctx)
> +{
> +	int rc;
> +	int sev;
> +
> +	guard(spinlock_irqsave)(&ctx->lock);

[Severity: High]
Does this unnecessarily disable local interrupts?

The cper_esource_irq() handler is requested as a threaded IRQ with
IRQF_ONESHOT, which naturally serializes execution. Disabling interrupts
across this entire function defeats the purpose of delegating work to a
threaded context and introduces high interrupt latency, especially since it
contains memory copies and potentially blocking reporting helpers.

> +
> +	memcpy(ctx->estatus, ctx->status, ctx->status_len);

[ ... ]

> +static irqreturn_t cper_esource_irq(int irq, void *data)
> +{
> +	struct cper_esource *ctx =3D data;
> +
> +	cper_esource_process(ctx);
> +
> +	return IRQ_HANDLED;
> +}

[Severity: High]
If cper_esource_process() returns early without doing any work, shouldn't
this propagate an IRQ_NONE return?

If the firmware hasn't set block_status, cper_esource_process() bails out
early without clearing device state or acknowledging the interrupt. By
always returning IRQ_HANDLED here, the spurious interrupt detector is
bypassed. If this is a level-triggered interrupt, won't this result in an
infinite loop of executing the threaded handler and cause a hard CPU lockup?

> +
> +static int cper_esource_init_ack(struct cper_esource *ctx)

[ ... ]

> +static int cper_esource_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct cper_esource *ctx;
> +	size_t size;
> +	int source_id;
> +	int rc;

[ ... ]

> +	rc =3D cper_esource_init_ack(ctx);
> +	if (rc)
> +		return rc;
> +
> +	rc =3D cper_esource_init_pool();
> +	if (rc)
> +		return rc;

[Severity: High]
Does this cause an unbounded memory leak if the probe sequence fails or
the module is repeatedly bound/unbound?

cper_esource_init_pool() calls ghes_estatus_pool_init(1).

In drivers/acpi/apei/ghes_cper.c:ghes_estatus_pool_init():
        addr =3D (unsigned long)vmalloc(len);
        ...
        rc =3D gen_pool_add(ghes_estatus_pool, addr, len, -1);

This dynamically allocates and adds memory to the global pool on every call,
even if the pool already exists. If the driver is unbound and rebound, or if
platform_get_irq() later returns -EPROBE_DEFER, the allocated memory is
permanently leaked.

> +
> +	ctx->estatus =3D devm_kzalloc(dev, ctx->status_len, GFP_KERNEL);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-topics-ahm=
tib01-ras_ffh_arm_internal_review-v6-0-91f725174aa0@arm.com?part=3D10

