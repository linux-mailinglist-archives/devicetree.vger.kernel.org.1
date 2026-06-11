Return-Path: <devicetree+bounces-310344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id srHlI0+PKmqTsQMAu9opvQ
	(envelope-from <devicetree+bounces-310344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:34:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 07963670E2A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:34:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="F5FTt/1G";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310344-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310344-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13F4C3025158
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 182B23CE0B7;
	Thu, 11 Jun 2026 10:34:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C083C0617
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 10:34:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174092; cv=none; b=ieIAvW3ghL7k/2N5JniI9o1h2qdgH/KZNnz/tIK6VUYIpXX7rHTHoHhNtVqjYYkZgQFvRs0GRbI79vsZlggvC5uwF7BP6NdTqOe/gweJD0tsZWmOnG+S1GR2CNhQ8hgBFU8fFGYFNsebxB2FIgxhtzZKn0D6CWYLVGtuGTe1MBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174092; c=relaxed/simple;
	bh=MXbwExFB1G9ZhXdlIXQoW4mkpuwTpm+e3H8zPqcs29k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YInjY524s8iqJEmS08Sq/wPg60Sy4XMOBNLEXL6mxwwwE6u95b8ZYw7Bgif95T036Selu2EyyP6q4SIIpmENw+XlmIIDEaB9IK5r8Pg58IOyLoDzrjXU5f+HGXORawEJuisAVFKMbbTtPl5h52U+DtBDM1c9UnRqnthSDd1kMF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5FTt/1G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 889D31F00893;
	Thu, 11 Jun 2026 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781174090;
	bh=67CE+Ta7TVvmqjrlLY6u3zasdIB5sGeCt0vkDrIO5Fs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F5FTt/1Gdd7Gof2E0IggniNqX1d0itIAKIwJ+zNwxn6SBZyEIkUopmA0hT4eoxhg/
	 I2yXI6lE4J3/N1njwKFvX0HwJtkb3Urzkj7w5msLmd2hYIHYgJ930JfWkltDEuglti
	 ebDVS8MAErGceHiZ4MltDrX03zsVVlZYzraIEXOFd1ONMKuqh+YIXaJqdWsyWO3IEn
	 J7Guz+PStLpubcucQpHQF3b8dK0VhhLJKTuJcQR6Axqk6rhnopFq+vP+X/rdH7vQzf
	 Ml0EZiGjVXPJ1MmCAe7GgE/SHYhwoIpexMTK1zSoNfieILSio2H4qGO78CddIxPe5b
	 bQU8yPS6UTYEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] nvmem: add mt6323 PMIC EFUSE driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611-mt6323-nvmem-v1-2-b5e1b9ce51f2@protonmail.com>
References: <20260611-mt6323-nvmem-v1-2-b5e1b9ce51f2@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 10:34:49 +0000
Message-Id: <20260611103449.889D31F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310344-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rva333.protonmail.com@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[config.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 07963670E2A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Blind dereference of `dev->parent->parent` can lead to a kernel pa=
nic if the device is not instantiated with the expected MFD hierarchy.
--

commit 227574270c722d2b535d72fadcf31ba55bc47f8e
Author: Roman Vivchar <rva333@protonmail.com>

nvmem: add mt6323 PMIC EFUSE driver

This commit adds support for the EFUSE controller found in the Mediatek
MT6323 PMIC. It introduces a new nvmem driver that reads 24 bytes of
hardware-related data using regmap over the PMIC wrapper.

> diff --git a/drivers/nvmem/mt6323-efuse.c b/drivers/nvmem/mt6323-efuse.c
> new file mode 100644
> index 0000000000000..c6fbfd96ac047
> --- /dev/null
> +++ b/drivers/nvmem/mt6323-efuse.c

[ ... ]

> +static int mt6323_efuse_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct nvmem_config config =3D {
> +		.name =3D "mt6323-efuse",
> +		.stride =3D 2,
> +		.word_size =3D 2,
> +		.size =3D MT6323_EFUSE_SIZE,
> +		.reg_read =3D mt6323_efuse_read,
> +	};
> +	struct nvmem_device *nvmem;
> +	struct regmap *regmap;
> +
> +	/* efuse -> mfd -> pwrap */
> +	regmap =3D dev_get_regmap(dev->parent->parent, NULL);

[Severity: High]
Is it possible for dev->parent to be NULL here?

Because the driver defines an of_match_table, it might be instantiated dire=
ctly
by the OF core or bound manually via sysfs, bypassing the MFD subsystem.

If dev->parent is NULL, evaluating dev->parent->parent will cause an immedi=
ate
NULL pointer dereference. Furthermore, if dev->parent is valid but has no
parent, dev->parent->parent evaluates to NULL. Passing a NULL device pointe=
r to
dev_get_regmap() causes a fatal NULL pointer dereference inside devres_find=
()
when it attempts to acquire the devres_lock.

Would it be safer to explicitly verify that both dev->parent and
dev->parent->parent are non-NULL before dereferencing them?

> +	if (!regmap)
> +		return dev_err_probe(dev, -ENODEV, "failed to get regmap\n");
> +
> +	config.dev =3D dev;
> +	config.priv =3D regmap;
> +
> +	nvmem =3D devm_nvmem_register(dev, &config);
> +	return PTR_ERR_OR_ZERO(nvmem);
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-mt6323-nvm=
em-v1-0-b5e1b9ce51f2@protonmail.com?part=3D2

