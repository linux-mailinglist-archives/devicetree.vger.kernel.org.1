Return-Path: <devicetree+bounces-311163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U4Y+HrlvLGplQwQAu9opvQ
	(envelope-from <devicetree+bounces-311163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:44:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FD567C5FF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 22:44:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hzDnuddY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311163-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311163-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A52B9300532C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B6334D3B5;
	Fri, 12 Jun 2026 20:44:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F08D1DFFD;
	Fri, 12 Jun 2026 20:44:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781297076; cv=none; b=H7pqa6e/7pC4v3zP7Owxe94Mbi0sAiSslKy2DixCGnU/iYrrEhqKbdlAIywevF4xDV7jz5HUqyWVWCjJnNblmXEFj++RImadwRBlDO6AfVe+17Awi7b+ZnOjDugNCYQOgFohjJOpsug+jjN0lOh6+1rgzo/bpEbKzGzFXDgEa28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781297076; c=relaxed/simple;
	bh=goAxhR7qqdBE6S0+LOf4GqM+w16qCkFiYfwfPMsf6ms=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OfNzTnje9ArCfI2HR6VrdPE13BhaYCVsE3bCSVsOvWvh42IPprP6zG+yxESiVoyUat6C4c2rhO7/KjgBDLoSXw2j8zx6sW9rm0er50EyhSkc07pyKXwEGJsfuH/5RDd2onYI8k1q8hARIfGl3LU7vZtoUxUC1R662btnwSMFYoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzDnuddY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E891F000E9;
	Fri, 12 Jun 2026 20:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781297075;
	bh=ESlgcV+sSAXhJ8EWfwDbiW8pWPCgj7FlQDagWfEaYlI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hzDnuddYU/c6vTo7gtQtd79qMe8uR3/vMhY0/bnClpUChs8Qq8ZnrlOMlUnKModP9
	 gKhXjTgPzteOujFGsAwEIdiMQ/BSTc4HMQ8Yd54rmk7Kbuyw0kz+x6SP9M3XcOoGpQ
	 44YBl+als0rKHPCiqCUvbu1ZsNQQCL1nC94ewiIWwAmJUxDQBQTwO6S7eAei3urnyr
	 QjdAWkOo6KnlUq/fR3K1RL9fezSRd6F2y4bgIYKTutV622n1hioS5FB+H2RDePr+yA
	 dtTg5UDIzuVxaGOQb6iqqdqmUpl8KAPEhYDIbtAN3O4avgs3gt4zE4U9IbpNcBI8IW
	 jO/HsG02wm/xQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/7] mfd: mt6397: Add support for MT6392 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612200717.361018-5-l.scorcia@gmail.com>
References: <20260612200717.361018-5-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 20:44:34 +0000
Message-Id: <20260612204434.D1E891F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:linux-input@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:lscorcia@gmail.com,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311163-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74FD567C5FF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The PM notifier `chip->pm_nb` and the unmanaged `irq_domain` are l=
eaked on probe failure and driver unbind, leading to a Use-After-Free durin=
g system suspend/resume.
--

commit 7e58614b47c19c51b0d112cc3708ab6bf5ecdc5a
Author: Fabien Parent <parent.f@gmail.com>

mfd: mt6397: Add support for MT6392 PMIC

Align the MT6397 PMIC driver to other MFD drivers by passing only an
identifier through mt6397_of_match[*].data and add support for the MT6392
PMIC and its RTC, keys and pinctrl devices.

> diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
> index 5d2e5459f7444..80ea5b92d232f 100644
> --- a/drivers/mfd/mt6397-irq.c
> +++ b/drivers/mfd/mt6397-irq.c
> @@ -203,6 +205,12 @@ int mt6397_irq_init(struct mt6397_chip *chip)
>  		chip->int_status[0] =3D MT6397_INT_STATUS0;
>  		chip->int_status[1] =3D MT6397_INT_STATUS1;
>  		break;
> +	case MT6392_CHIP_ID:
> +		chip->int_con[0] =3D MT6392_INT_CON0;
> +		chip->int_con[1] =3D MT6392_INT_CON1;
> +		chip->int_status[0] =3D MT6392_INT_STATUS0;
> +		chip->int_status[1] =3D MT6392_INT_STATUS1;
> +		break;
> =20
>  	default:
>  		dev_err(chip->dev, "unsupported chip: 0x%x\n", chip->chip_id);

[Severity: High]
This is a pre-existing issue, but I noticed a potential memory safety
problem involving the initialization in mt6397_irq_init() and the probe
error path in mt6397_probe().

Later in mt6397_irq_init(), we call:

    register_pm_notifier(&chip->pm_nb);

However, there doesn't seem to be a corresponding unregister_pm_notifier()
anywhere in the driver, nor a .remove callback in mt6397_driver.

If devm_mfd_add_devices() fails in mt6397_probe(), the devres mechanism
will free the mt6397_chip structure (pmic). Since the pm_nb remains
linked in the global pm_chain_head list, wouldn't a subsequent
suspend/resume event dereference the freed memory and cause a
use-after-free panic?

Additionally, could this also leak the irq_domain (created with
irq_domain_create_linear) if the driver is unbound via sysfs?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612200717.3610=
18-1-l.scorcia@gmail.com?part=3D4

