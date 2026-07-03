Return-Path: <devicetree+bounces-320131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5YGjMXi1R2p0dwAAu9opvQ
	(envelope-from <devicetree+bounces-320131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:13:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7F1702B92
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 15:13:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BJF0kLxu;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320131-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320131-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2D7B310243D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 12:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 937CA32AAA0;
	Fri,  3 Jul 2026 12:54:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F223C7E18
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 12:54:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783083281; cv=none; b=doge6GEMg66EbQrJChDsBFllfJhoGlCfEcPrTIXFWQXGpbLI34GycSpiA3DQU4w2/wTJt9vAo03k3c6eVhgCUttzAkuASI8Tgj3QWgArxGSi8lOJnRxU72RWTEeaC4ZesNaAJdKBD1wCLltar5vWrpEmXJPPhWIjmEnvKI0JelY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783083281; c=relaxed/simple;
	bh=6oCddQAQI0ax/3OcxjKL7y767M1/uEiZoKy4qIi/y6g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PrWkyFcLbAgH/DHxF30FxaIato5uBuDzQofJJFfLscLgiapjFFTJ+yO+PKD2TVtEB8QAkmyzX1Q1v+soKy26auOdwilBE1cprJRZrUh+UY59a68NQHW7aKNNwFljTLiJtqYhT3rrHqJQeu7Nyg4SoIP1E+exmYv6yehoEFrJ9xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJF0kLxu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A54551F000E9;
	Fri,  3 Jul 2026 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783083279;
	bh=idJL+L2C3hlAwcm0H8/dNqp0Xitxg+xj5t0GwYl0ag4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BJF0kLxu+eBTfwZHIUa9i/QqUfJqkYJaJtmDRZp3ismNXvnphyZwmSNcc3oNnyCaN
	 IhHNzsjGnZAUnmttNV3obPnNvT02A/RkqvnHy28ChHM+N4T2oeGzVAZOr3yBk0GD0S
	 htzBZciML6CliKTuxfG63Pq8cPBTU5Rrr/Nmaau/GNG59R2QSpFxm7foyFIC/cna1/
	 cYR0kZcm15xonn2BfD7BWw0rkypYZ2DQqn1lT6ZqcT8YB9CLNJgJcy+qj08sKR1C4V
	 MDT/PPr7AKwEppofykQeNnMyAyQEExm/0MaouoKqCoIHbAUVrPe6Cvm+73HxRwjeVR
	 eEPr7uu8pxKPg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] soc: apple: Add driver for Apple PMGR misc
 controls
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sasha Finkelstein" <k@chaosmail.tech>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260703-pmgr-misc-v2-2-4b26ba10c5a4@chaosmail.tech>
References: <20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech>
 <20260703-pmgr-misc-v2-2-4b26ba10c5a4@chaosmail.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 12:54:39 +0000
Message-Id: <20260703125439.A54551F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-320131-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:k@chaosmail.tech,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,marcan.st:email,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D7F1702B92

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The driver silently masks initialization errors (-ENOMEM) and impr=
operly treats required resources as optional.
- [High] Missing register readback after modifying power states allows the =
CPU to resume and access unpowered fabric or memory controller domains.
- [High] Asymmetrical suspend and resume sequence for interdependent SoC co=
mponents breaks dependency chains.
--

commit b1459d0f98e7c6089c43b0f7e6af7581425b2f1e
Author: Hector Martin <marcan@marcan.st>

soc: apple: Add driver for Apple PMGR misc controls
   =20
Adds a driver for miscellaneous PMGR controls on Apple SoCs to manage
fabric and memory controller power state switching on system standby.

> diff --git a/drivers/soc/apple/apple-pmgr-misc.c b/drivers/soc/apple/appl=
e-pmgr-misc.c
> new file mode 100644
> index 0000000000000..ae8b34f298e8c
> --- /dev/null
> +++ b/drivers/soc/apple/apple-pmgr-misc.c

[ ... ]

> +static void apple_pmgr_sys_dev_set_pstate(struct apple_pmgr_misc *misc,
> +					  enum sys_device dev, bool active)
> +{

[ ... ]

> +	val =3D readl_relaxed(misc->devices[dev].base + APPLE_CLKGEN_PSTATE);
> +	val &=3D ~APPLE_CLKGEN_PSTATE_DESIRED;
> +	val |=3D FIELD_PREP(APPLE_CLKGEN_PSTATE_DESIRED, pstate);
> +	writel_relaxed(val, misc->devices[dev].base + APPLE_CLKGEN_PSTATE);

[Severity: High]
Because writel_relaxed() is weakly ordered on ARM64, could this write remain
in the CPU store buffer?

If we do not perform a readback to flush the write, could dependent devices
attempt to access unpowered fabric or memory controller domains when the PM
core resumes them, potentially leading to a system crash?

> +}
> +
> +static int __maybe_unused apple_pmgr_misc_suspend_noirq(struct device *d=
ev)
> +{
> +	struct apple_pmgr_misc *misc =3D dev_get_drvdata(dev);
> +	int i;
> +
> +	for (i =3D 0; i < DEV_MAX; i++)
> +		apple_pmgr_sys_dev_set_pstate(misc, i, false);
> +
> +	return 0;
> +}
> +
> +static int __maybe_unused apple_pmgr_misc_resume_noirq(struct device *de=
v)
> +{
> +	struct apple_pmgr_misc *misc =3D dev_get_drvdata(dev);
> +	int i;
> +
> +	for (i =3D 0; i < DEV_MAX; i++)
> +		apple_pmgr_sys_dev_set_pstate(misc, i, true);

[Severity: High]
Should this loop iterate in reverse order?

The apple_pmgr_misc_suspend_noirq() function suspends components starting
from index 0, and this function resumes them in the exact same forward orde=
r.
Does this break strict reverse-order bringup dependencies for these
interdependent components?

> +
> +	return 0;
> +}
> +
> +static bool apple_pmgr_init_device(struct apple_pmgr_misc *misc,
> +				   const struct apple_pmgr_misc_hw *hw,
> +				   enum sys_device dev,
> +				   const char *device_name)
> +{
> +	void __iomem *base;
> +	char name[32];
> +	u32 val;
> +
> +	snprintf(name, sizeof(name), "%s-ps", device_name);
> +
> +	base =3D devm_platform_ioremap_resource_byname(
> +		to_platform_device(misc->dev), name);
> +	if (IS_ERR(base))
> +		return false;

[Severity: High]
Does this drop the error code returned by
devm_platform_ioremap_resource_byname()?=20

If memory allocation fails with -ENOMEM or the property is missing,
converting the result to a boolean false masks the error pointer.

> +
> +	val =3D readl_relaxed(base + APPLE_CLKGEN_PSTATE);
> +
> +	misc->devices[dev].base =3D base;
> +	misc->devices[dev].active_state =3D
> +		FIELD_GET(APPLE_CLKGEN_PSTATE_DESIRED, val);
> +	misc->devices[dev].suspend_state =3D hw->dev_min_ps[dev];
> +
> +	return true;
> +}
> +
> +static int apple_pmgr_misc_probe(struct platform_device *pdev)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	const struct apple_pmgr_misc_hw *hw;
> +	struct apple_pmgr_misc *misc;
> +	int ret =3D -ENODEV;
> +
> +	misc =3D devm_kzalloc(dev, sizeof(*misc), GFP_KERNEL);
> +	if (!misc)
> +		return -ENOMEM;
> +
> +	misc->dev =3D dev;
> +	hw =3D of_device_get_match_data(dev);
> +	if (!hw)
> +		return -EINVAL;
> +
> +	if (apple_pmgr_init_device(misc, hw, DEV_FABRIC, "fabric"))
> +		ret =3D 0;
> +
> +	if (apple_pmgr_init_device(misc, hw, DEV_DCS, "dcs"))
> +		ret =3D 0;

[Severity: High]
If one of these initializations fails, does this logic improperly treat
required resources as optional?

The probe function will succeed and return 0 as long as at least one
device maps successfully. Does this silently leave critical SoC components
unmanaged if another initialization fails?

> +
> +	platform_set_drvdata(pdev, misc);
> +
> +	return ret;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-pmgr-misc-=
v2-0-4b26ba10c5a4@chaosmail.tech?part=3D2

