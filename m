Return-Path: <devicetree+bounces-325406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WkIUKEe+VGr9qQMAu9opvQ
	(envelope-from <devicetree+bounces-325406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:30:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F1914749D72
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:30:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=a8P4cwvD;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325406-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325406-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B0E0304B8BB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:27:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC913EAC80;
	Mon, 13 Jul 2026 10:26:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C0B3EA957
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:26:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938408; cv=none; b=A+ypbKX87/4JAiakVfVKP8m67Z+yysfBZ2UiTezdA10qjVZSzarV5MFbhdG0owBwn1d8pzsbqygh3J5XlpRqz/WXcgoEmi8Rwblbl5h29bUDCW71ofhA7nQlIMq307Tasby7x7uXgordyESIxFjLpyZM7e2gAHdWAdy/llec224=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938408; c=relaxed/simple;
	bh=L6W6cdlHAOrVi3YPff6YFRe5wqcHpjV09AmtPKVXMsk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R08biKaWMJU7HjUJ6jh3UD/VWJG1J3IFt0oPU/nVbPcYHFV+bvtyKJOGTaTmWQ3TnWqCS9IgahzB+nwtlAHT7gpmCR8brsTxiv3F0s2RxNls1C1PpAtgg9x5qXn8uHxMzZQ33nkMo9CjxX95ZPqBfq1CtzGWPPpURXxqEqWNOOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8P4cwvD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 385C31F000E9;
	Mon, 13 Jul 2026 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783938402;
	bh=8aFhG6KpRe0wyHDXywMD37d9u5HMW8dOJ8bgCt14hwQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a8P4cwvDjnfrAWODPtjZz5jVIkBlJLjac/wnRj8m/qu6jjgaeS8KnXplbNLQfnYE0
	 KVF7Yftny+MoKXkP3e+0nic1eeOyHOh/6dU0OqXbLBeWjljmDPesiQmpkBleQCMX8l
	 qns++jqlouoI+BQaf66j2gK15h+F477y4h4Jw6SlZ7FZPAS47L0fRYHLsN3alHfyhq
	 jmIpuKvUXfQNePyWZkdPjbdkC4RaSocBAcM4TCMlvw05DOYU5jpwS1ftYUUj0jnszl
	 tXJxUfL1EfTgunYAr+ChG1kWmh1VeRkjnhD1VDdKynBDulXQtH81BlhQ0ZPCifKpPp
	 tgH+yNFCdOMuQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] nvmem: add mt6323 PMIC EFUSE driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar" <rva333@protonmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713-mt6323-nvmem-v3-2-205c39267a24@protonmail.com>
References: <20260713-mt6323-nvmem-v3-0-205c39267a24@protonmail.com>
 <20260713-mt6323-nvmem-v3-2-205c39267a24@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:26:41 +0000
Message-Id: <20260713102642.385C31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325406-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,protonmail.com:email,config.dev:url,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1914749D72

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The driver blindly dereferences `dev->parent->parent` to retrieve =
the regmap, which causes a NULL pointer dereference kernel panic if instant=
iated outside the expected MFD hierarchy, and violates MFD subsystem guidel=
ines.
--

--- Patch [2]: [PATCH v3 2/3] nvmem: add mt6323 PMIC EFUSE driver ---
commit 25fbde0741e1e6a18bf5c1f7cc92f4eb70b9d17e
Author: Roman Vivchar <rva333@protonmail.com>

nvmem: add mt6323 PMIC EFUSE driver

This commit adds support for the EFUSE controller found in the Mediatek
MT6323 PMIC, which stores 24 bytes of hardware-related data.

> diff --git a/drivers/nvmem/mt6323-efuse.c b/drivers/nvmem/mt6323-efuse.c
> new file mode 100644
> index 0000000000000..41678915d5b62
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
Can this cause a NULL pointer dereference if the device is instantiated
outside the expected MFD hierarchy?

If the device is instantiated directly via a Device Tree root node overlay =
or
through sysfs, dev->parent could be the platform_bus. Because the
platform_bus has no parent, evaluating dev->parent->parent would result in
NULL.=20

Passing NULL to dev_get_regmap() leads to an immediate kernel panic when
devres_find() unconditionally locks the devres_lock.

Additionally, MFD subsystem guidelines recommend that child drivers retrieve
data using standard APIs without relying on hard-coded assumptions about
grandparent device topology.

> +	if (!regmap)
> +		return dev_err_probe(dev, -ENODEV, "failed to get regmap\n");
> +
> +	config.dev =3D dev;
> +	config.priv =3D regmap;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-mt6323-nvm=
em-v3-0-205c39267a24@protonmail.com?part=3D2

