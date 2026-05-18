Return-Path: <devicetree+bounces-299403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMisDGEKC2o0/gQAu9opvQ
	(envelope-from <devicetree+bounces-299403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:47:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5B956CF67
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:47:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 051A33035F13
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DFCE413239;
	Mon, 18 May 2026 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T16v5jja"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B05C345CBD;
	Mon, 18 May 2026 12:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779107843; cv=none; b=SsRd/1KHhkRoiRqBLG+vscWOPpVD1ayTUgYoHuzgmQKAoRwkrtkq9Kjize1va4mZ9ldC93s8mQjkLubewxwI2cVPbauIRpUvBK5cYhohU230HsEQp/gfR1Q2P3ctUeJjhqMqJo2a97a81oxkDfbI4gnYl14wSrV+JZgP9Xw4ZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779107843; c=relaxed/simple;
	bh=Z0pHL6qJOkf4aoVQyjJTchWaMIxuKP3dIZYqMivqQN0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XEUktav+oa8nHjIANaYhuBZEnMOX965GDageEL3oeoirWTwZjYoE3xXzSndlesORwDYqEd4capyfvMRiS8D95VREO0iwQOt0juNp0v2DQTmlQ9m5a4ZCITkiFSN5+ZVTbNxzaFtZkpZQmOPmcmxZBM/Ne1FRPoi01OaZmi2RCdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T16v5jja; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE442C2BCB7;
	Mon, 18 May 2026 12:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779107843;
	bh=Z0pHL6qJOkf4aoVQyjJTchWaMIxuKP3dIZYqMivqQN0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=T16v5jjaaJLBkDVt+D3rWcuhobJ51sjboo3hiHiSwLtBBt1XqTNpuH9eBv4cS+fl2
	 HgF+Npaar7hjJfadbaqbqmtPhmF1jkpwFkrMCQNTwU+RM1c0TVc8GbgCP/EhUjaitm
	 aylVaEAWFcIYxsMNIUVwixUSoafdJHfPDByGycqbDG5/YBe9y4OD6LD7RNn2boNeBr
	 YW5jazp2QDH1Z8O4HIqRN0MZ3/xPSdSA1pmyGXvLCaND/mVgTTWP+5Iiw8K6qosJeg
	 mgs4bbqJJXksMpYAkMZmyusDZtfIL/ObCjVAhU+EaeqN5h1xY0AQ8+i/S6BKO+7FWZ
	 4tfdFUOCMXjFA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 6/7] power: supply: Add driver for ASUS Transformer
 battery
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518095907.36158-7-clamor95@gmail.com>
References: <20260518095907.36158-7-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 12:37:22 +0000
Message-Id: <20260518123722.EE442C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 9F5B956CF67
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299403-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The driver lacks a MODULE_ALIAS declaration, which breaks module=
 autoloading.
- [Low] Missing NULL check for the devm_kasprintf allocation of the power s=
upply name.
--

commit ccc69cbdb16bd3e704318f7d07abbad8dc370844
Author: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>

power: supply: Add driver for ASUS Transformer battery

This commit introduces a new power supply driver for the ASUS Transformer
battery. It communicates with the embedded controller via I2C to read batte=
ry
status for both the tablet and mobile dock.

> diff --git a/drivers/power/supply/asus-transformer-ec-battery.c b/drivers=
/power/supply/asus-transformer-ec-battery.c
> new file mode 100644
> index 0000000000000..d08d155f72a3d
> --- /dev/null
> +++ b/drivers/power/supply/asus-transformer-ec-battery.c
[ ... ]
> +static int asus_ec_battery_probe(struct platform_device *pdev)
> +{
[ ... ]
> +	cfg.fwnode =3D dev_fwnode(dev->parent);
> +	cfg.drv_data =3D priv;
> +
> +	memcpy(&priv->psy_desc, &asus_ec_battery_desc, sizeof(priv->psy_desc));
> +	priv->psy_desc.name =3D devm_kasprintf(dev, GFP_KERNEL, "%s-battery",
> +					     priv->ec->name);
> +
> +	priv->battery =3D devm_power_supply_register(dev, &priv->psy_desc, &cfg=
);
> +	if (IS_ERR(priv->battery))
> +		return dev_err_probe(dev, PTR_ERR(priv->battery),
> +				     "Failed to register power supply\n");

Is it possible for devm_kasprintf() to fail and return NULL under memory
pressure?

If so, priv->psy_desc.name would become NULL, and devm_power_supply_registe=
r()
would return ERR_PTR(-EINVAL) because it checks for !desc->name. This relies
on downstream validation and results in an incorrect error code being
propagated for a memory allocation failure instead of -ENOMEM.

Should there be an explicit NULL check here?

[ ... ]
> +static struct platform_driver asus_ec_battery_driver =3D {
> +	.driver =3D {
> +		.name =3D "asus-transformer-ec-battery",
> +		.pm =3D &asus_ec_battery_pm_ops,
> +	},
> +	.probe =3D asus_ec_battery_probe,
> +};
> +module_platform_driver(asus_ec_battery_driver);
> +
> +MODULE_AUTHOR("Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>");
> +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> +MODULE_DESCRIPTION("ASUS Transformer's battery driver");
> +MODULE_LICENSE("GPL");

Since this platform driver matches devices purely by name
("asus-transformer-ec-battery") and lacks an id_table or of_match_table,
will userspace tools like udev be able to automatically load this driver
when it is compiled as a module?

Should a MODULE_ALIAS("platform:asus-transformer-ec-battery"); declaration
be added to ensure module autoloading works correctly?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518095907.3615=
8-1-clamor95@gmail.com?part=3D6

