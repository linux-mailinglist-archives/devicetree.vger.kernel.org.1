Return-Path: <devicetree+bounces-316694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W4uQCt4WQmoI0AkAu9opvQ
	(envelope-from <devicetree+bounces-316694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:55:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA806D699E
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:55:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KvB2MVwU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316694-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316694-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA8BE3001CF4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AEF38D016;
	Mon, 29 Jun 2026 06:50:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B6E2E0914
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:50:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715856; cv=none; b=GdHCZK7gIgt+iEJQGzm/vJIIk10U9RSZ6rej3aEU6B1OeD82CcKbhIbuLtS8ROfpwz3LMpqjtkP80wbvOXAKY0eH8If4MwCuUEnlqUG5LzhSVAXQQlBeRJ4LE7pIGVyf0mH1PbUg/zxk+/W9wbXxI+1hAMNXpd5Kx2fSmunrMes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715856; c=relaxed/simple;
	bh=17NXH42t3AUzjYrzvRVJCEr//2Wmn/+jp2aJYlj1xbk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=okJ0+1PCwg1/bR6KM0i3yGtG13+UUZ5F3+8whqxYX98619Va/fqC1g0H5a5w9olR5seEFwdFnflvxN6Ma6y+t3MsdWOfLPMJdYfWqIJwcS8yQTOUuQhLPs+ZlaI/Jz7sYbfNeh3GQEIbdta0mXcURy/BzlHT0l7wkgpp6Gut0z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvB2MVwU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25A9B1F00A3A;
	Mon, 29 Jun 2026 06:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782715855;
	bh=3DyKUUQKx0PGUqHICimL4I0hv8JoAZyQ6gahw+9je98=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KvB2MVwUoNys6TLhOZSlgzTNLGPTW5G+hcebGxvIdFdQ7N94RROZhwUMQvoXCohZO
	 j2Ilymo/16qvMCj1etWu8/FCrKnRuararR5UDYReNFtrkOz7Y9DKjNfCsjzR9anILe
	 Cofka7d7MW7O21zaN/NfUMVl5F3zuy3gyawKHIkkIxE7URRMmxDJguNxlwGn1dTuJX
	 9xrQZqPzQdSIqhVuN305Z95/48U3fzdhuxCDue+YHO1mJdJFYttGej3dC97OIvHkfC
	 RCOyyerMQOAuE5TEFGT2MmT+3LuLCdo16omZeLSKnVcjJMswd/qpgDgsv3paF0nd4z
	 GWKLeVE5mRkXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] memory: ti-k3-fsas: Add TI FSS_FSAS driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629064228.860226-3-s-k6@ti.com>
References: <20260629064228.860226-1-s-k6@ti.com>
 <20260629064228.860226-3-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 06:50:51 +0000
Message-Id: <20260629065055.25A9B1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-316694-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,smtp.kernel.org:mid,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CA806D699E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect wrapper macro `pm_sleep_ptr()` used for the `dev_pm_ops` =
structure pointer.
--

commit be06c2a7e885af5ffba7e5ddc137bd7ba0758747
Author: Santhosh Kumar K <s-k6@ti.com>
memory: ti-k3-fsas: Add TI FSS_FSAS driver

This commit adds a new platform driver for the TI K3 Flash Subsystem
Application Subsystem (FSS_FSAS). It configures the SYSCONFIG register to
disable OSPI XIP prefetch, preventing DMA data corruption.

> diff --git a/drivers/memory/ti-k3-fsas.c b/drivers/memory/ti-k3-fsas.c
> new file mode 100644
> index 0000000000000..9ff109b8d96fd
> --- /dev/null
> +++ b/drivers/memory/ti-k3-fsas.c
[ ... ]
> +static DEFINE_SIMPLE_DEV_PM_OPS(k3_fsas_pm_ops, NULL, k3_fsas_resume);
> +
> +static const struct of_device_id k3_fsas_of_match[] =3D {
> +	{ .compatible =3D "ti,am62a-fsas" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, k3_fsas_of_match);
> +
> +static struct platform_driver k3_fsas_driver =3D {
> +	.probe =3D k3_fsas_probe,
> +	.driver =3D {
> +		.name		=3D "k3-fsas",
> +		.of_match_table	=3D k3_fsas_of_match,
> +		.pm		=3D pm_sleep_ptr(&k3_fsas_pm_ops),

[Severity: Low]
Should this use pm_ptr() instead of pm_sleep_ptr() for the dev_pm_ops
structure pointer?

The PM subsystem guidelines specify that pm_sleep_ptr() is intended for the
individual sleep callbacks, while pm_ptr() should be used for the dev_pm_ops
structure pointer itself. While this doesn't cause immediate issues since
the driver currently only uses sleep callbacks, using pm_ptr() here ensures
consistency with standard PM usage and prevents issues if runtime PM
callbacks are added later.

> +	},
> +};
> +module_platform_driver(k3_fsas_driver);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629064228.8602=
26-1-s-k6@ti.com?part=3D2

