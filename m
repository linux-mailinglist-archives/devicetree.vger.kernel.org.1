Return-Path: <devicetree+bounces-314589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R+DvGWrhOWodygcAu9opvQ
	(envelope-from <devicetree+bounces-314589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:29:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C446B32DB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:29:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b4mCbfuX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314589-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314589-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 023D6303F4E1
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 01:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC2B384CEC;
	Tue, 23 Jun 2026 01:28:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452DC36167F
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 01:28:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782178130; cv=none; b=MBuUzhLDfDuH7U1Uv3p3akYAhQExPO1rNzAlMHAjU0jIE1yraNca+3F5aHhC/Qfu4C7EJOURi8r3oq2xBk/7qMzi1Do+EjyEreA1nDEMB6l3S6wAx3tYBlF4tLzLS9cShqsnMNXopJvwUjlykgehHr+kdNoenHDf+6hgnJL7zq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782178130; c=relaxed/simple;
	bh=G34xkw6YkBQnMObMW0iguU0UCmLOLrcH8bahurzkB2U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RSVTZj9b+sme6YwDBTP39dezrs74mSBaLnJ+LBzLwpvMFWhVobobw6VEaEQcO3kXSLxJz9aM0QZftylJE7cS+phFZUAsc0PIMzzaGwqiyy5RfsgPPBnKSqIfGO9tfdwiCMm/ljEgTT6cKebtnT+YdqE8Ts/hhf7Vqe8O4382kiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4mCbfuX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BA8D1F000E9;
	Tue, 23 Jun 2026 01:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782178128;
	bh=w0GBiJEPA78gXqw4SRu2i2+EUd0e7Fk6ub42Fa+KXiM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b4mCbfuX4+yXzrOEToRoWDKrJn5RLkVK7+cC+mL8fJlNSlOO21g6mQ+HaumNFmDzl
	 SjMEIwJhHaV/strCumFWgczSmDWQODKw/MFGGL+W9E7zmkxuNVXJxkh23fnYp2sig3
	 bJx+LGTVCU1tC5wWSQnpK3g2GAYyUPIwq2SjJXPiWDdC3alFOGRYGFJweJXj17Rixx
	 EoDeK4wWDEBQ8M397aPuZ2JdUNhFb9NrNRe/TVs9U1hmcMftMPBBun21LOnUHJ6UKT
	 /9BTt/P5MbMsl7IqC7xIZRNqK5nvkVJ75IYw9dmC1+nGkxNW+rq8tV0K8jJHgi78Kz
	 /9XLBGr5X0orQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v33 4/5] i2c: ast2600: Add controller driver for AST2600
 new register set
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ryan Chen" <ryan_chen@aspeedtech.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260623-upstream_i2c-v33-4-6d5338fc56ed@aspeedtech.com>
References: <20260623-upstream_i2c-v33-0-6d5338fc56ed@aspeedtech.com>
 <20260623-upstream_i2c-v33-4-6d5338fc56ed@aspeedtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 01:28:48 +0000
Message-Id: <20260623012848.6BA8D1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314589-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ryan_chen@aspeedtech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2C446B32DB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The AST2600_I2CM_BUS_RECOVER_FAIL interrupt is handled in the IS=
R but never enabled in the Interrupt Enable Register (IER), causing bus rec=
overy failures to time out.
--

commit d7e183b301ba820c2bd844ca60f5af7e37834e10
Author: Ryan Chen <ryan_chen@aspeedtech.com>

i2c: ast2600: Add controller driver for AST2600 new register set

This commit adds a new I2C controller driver for the ASPEED AST2600,
supporting its new register layout. The new capabilities include packet-bas=
ed
transfers, dual pool buffer mode, and hardware-assisted bus recovery.

> diff --git a/drivers/i2c/busses/i2c-ast2600.c b/drivers/i2c/busses/i2c-as=
t2600.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-ast2600.c

[ ... ]

> +static int ast2600_i2c_controller_irq(struct ast2600_i2c_bus *i2c_bus)
> +{
> +	u32 sts =3D readl(i2c_bus->reg_base + AST2600_I2CM_ISR);
> +	u32 ctrl;
> +
> +	sts &=3D ~AST2600_I2CM_SMBUS_ALERT;
> +
> +	if (sts & AST2600_I2CM_BUS_RECOVER_FAIL) {
> +		writel(AST2600_I2CM_BUS_RECOVER_FAIL, i2c_bus->reg_base + AST2600_I2CM=
_ISR);
> +		ctrl =3D readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> +		writel(0, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> +		writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> +		WRITE_ONCE(i2c_bus->msgs, NULL);
> +		i2c_bus->cmd_err =3D -EPROTO;
> +		complete(&i2c_bus->cmd_complete);
> +		return 1;
> +	}

[Severity: Medium]
Since the AST2600_I2CM_BUS_RECOVER_FAIL bit is never enabled in the
Interrupt Enable Register (IER), will this error handling block ever execut=
e?

[ ... ]

> +static int ast2600_i2c_controller_xfer(struct i2c_adapter *adap, struct =
i2c_msg *msgs, int num)
> +{

[ ... ]

> +	timeout =3D wait_for_completion_timeout(&i2c_bus->cmd_complete, i2c_bus=
->adap.timeout);
> +	if (timeout =3D=3D 0) {
> +		u32 ctrl =3D readl(i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> +
> +		dev_dbg(i2c_bus->dev, "timeout isr[%x], sts[%x]\n",
> +			readl(i2c_bus->reg_base + AST2600_I2CM_ISR),
> +			readl(i2c_bus->reg_base + AST2600_I2CC_STS_AND_BUFF));
> +
> +		writel(0, i2c_bus->reg_base + AST2600_I2CM_IER);
> +		synchronize_irq(i2c_bus->irq);
> +		writel(readl(i2c_bus->reg_base + AST2600_I2CM_ISR),
> +		       i2c_bus->reg_base + AST2600_I2CM_ISR);
> +
> +		writel(ctrl & ~AST2600_I2CC_MASTER_EN, i2c_bus->reg_base + AST2600_I2C=
C_FUN_CTRL);
> +		writel(ctrl, i2c_bus->reg_base + AST2600_I2CC_FUN_CTRL);
> +
> +		WRITE_ONCE(i2c_bus->msgs, NULL);
> +		writel(AST2600_I2CM_PKT_DONE | AST2600_I2CM_BUS_RECOVER,
> +		       i2c_bus->reg_base + AST2600_I2CM_IER);

[Severity: Medium]
Should this mask include AST2600_I2CM_BUS_RECOVER_FAIL?

If hardware attempts bus recovery and fails, it sets the BUS_RECOVER_FAIL
bit in the ISR. However, because it isn't enabled in the IER, the CPU won't
get the interrupt and will instead wait out the full completion timeout
in ast2600_i2c_recover_bus() rather than failing immediately.

[ ... ]

> +static int ast2600_i2c_probe(struct platform_device *pdev)
> +{

[ ... ]

> +	ret =3D devm_request_irq(dev, i2c_bus->irq, ast2600_i2c_bus_irq, 0,
> +			       dev_name(dev), i2c_bus);
> +	if (ret < 0) {
> +		ret =3D dev_err_probe(dev, ret, "Unable to request irq %d\n",
> +				    i2c_bus->irq);
> +		goto err;
> +	}
> +
> +	writel(AST2600_I2CM_PKT_DONE | AST2600_I2CM_BUS_RECOVER,
> +	       i2c_bus->reg_base + AST2600_I2CM_IER);

[Severity: Medium]
Similarly here in ast2600_i2c_probe(), does the initial IER configuration
need to enable AST2600_I2CM_BUS_RECOVER_FAIL to ensure instant recovery
failures?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-upstream_i=
2c-v33-0-6d5338fc56ed@aspeedtech.com?part=3D4

