Return-Path: <devicetree+bounces-313160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BY7VA9oBM2oa8gUAu9opvQ
	(envelope-from <devicetree+bounces-313160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:21:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FFB69C56B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:21:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FK3o3HoV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313160-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313160-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 33690304DE89
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 083C63B38BE;
	Wed, 17 Jun 2026 20:21:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED40E3AE6F4;
	Wed, 17 Jun 2026 20:21:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781727700; cv=none; b=kOWeiUvTmZ/Irggdpx+MK6rOUlZ9+uIS2c3x29pvUIsZwZHmgHDKB7pVIhA3PjEZKmJ037nods6yAWutYm9/dVyDf15MxmMIWdEcSN0PUfJXmLBuls3GB6tToH6C9WZSgtkccvmNGd8rArhr/Y/R/G1jWTf8SuAfElU5sVX08VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781727700; c=relaxed/simple;
	bh=9jXZzji4p747qNqua8ZEgKozSC60WMJi7ckFAP39OxA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jTzZV8habWbwLSnomDMPI4KQZcc1n6p9Tb0IATforDXEEVO5uixairs3oN3o0BwNyaRMVUoqIGR08r0D22sV8T2P6JS0+1JFLRtKz4Bnb97MbfaXFUZd9YV+j2XgSwMQBxxX+Bs5sRGjxxdqMjTFoHuyEO2H7DKBuihEBI8352g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FK3o3HoV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3D631F000E9;
	Wed, 17 Jun 2026 20:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781727699;
	bh=HyOGNh2EpkL9tH+RmqnXOoINHIh4UoDYizOhddPG8gE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FK3o3HoVNcrSrkrCq7TApll8xgwj8KmemuHeWvHIEqOUYH1Qdw2S7nSG0yMutiwHl
	 Z7uB4SToPpkrzF8y+IJxodqZmAEqPnRjUQydOy2ltIMPipEnaKGLzL1R0Ne1Gj9hC8
	 E077w4pjp6CJ/rP8lYSXQ9+orC+DTMZGQGmVYFZbssH+FaTPHq1YL8xqB0QaW+/aXT
	 +tl7zucaPNgsssg4UPOdzwbN4Yb+wWQv53oKvnpLWR9PCBqqUO+GgOGYIH9wGOecJ0
	 ArrROLwULWhW0RBjWjMJtDBBec14DsIL7W18y1vER9K0MHwGy+mpZ+3TexlWf13FCD
	 Vru03LJLu5ONg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 02/10] Input: cap11xx - remove unused register macros
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: linux-input@vger.kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617150318.753148-3-jerrysteve1101@gmail.com>
References: <20260617150318.753148-1-jerrysteve1101@gmail.com>
 <20260617150318.753148-3-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:21:38 +0000
Message-Id: <20260617202138.A3D631F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:linux-input@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313160-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74FFB69C56B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] The patch fails to remove unused definitions in `cap11xx_volatil=
e_reg` despite the commit message claiming otherwise.

Pre-existing issues:
- [High] The threaded interrupt handler unconditionally returns IRQ_HANDLED=
 even when I2C operations fail to clear the hardware interrupt source, risk=
ing an IRQ storm.
--

commit 8aa29f5d8b4eefa859454cdb0496fecf07ff5aa8
Author: Jun Yan <jerrysteve1101@gmail.com>

Remove unused register address macros and unused definitions in
the cap11xx_reg_defaults array and cap11xx_volatile_reg.

This cleanup reduces code clutter and makes the driver easier to
maintain without affecting functionality.

> Remove unused register address macros and unused definitions in
> the cap11xx_reg_defaults array and cap11xx_volatile_reg.

[Severity: Medium]
Will this patch actually remove the unused definitions in
cap11xx_volatile_reg?

The commit message states they are removed, but the patch doesn't modify
that function.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 485d8ba97723..fae26f035186 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c
> @@ -20,53 +20,24 @@
>  #define CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT	(6)
>  #define CAP11XX_REG_MAIN_CONTROL_GAIN_MASK	(0xc0)
>  #define CAP11XX_REG_MAIN_CONTROL_DLSEEP		BIT(4)
> -#define CAP11XX_REG_GENERAL_STATUS	0x02
>  #define CAP11XX_REG_SENSOR_INPUT	0x03
> -#define CAP11XX_REG_NOISE_FLAG_STATUS	0x0a
>  #define CAP11XX_REG_SENOR_DELTA(X)	(0x10 + (X))

[Severity: Medium]
Should this macro also have been removed?

Because cap11xx_volatile_reg() was not updated, this macro and its
corresponding case entries:

	case CAP11XX_REG_SENOR_DELTA(0):
	case CAP11XX_REG_SENOR_DELTA(1):

were left in the file.

[ ... ]

>  static bool cap11xx_volatile_reg(struct device *dev, unsigned int reg)

[Severity: High]
This isn't a bug introduced by this patch, but could the error handling
in cap11xx_thread_func() risk an IRQ storm?

If an I2C communication error occurs during the interrupt handler:

cap11xx_thread_func() {
	...
	if (ret < 0)
		goto out;
	...
out:
	return IRQ_HANDLED;
}

Because this uses IRQF_ONESHOT, returning IRQ_HANDLED instructs the IRQ
subsystem to unmask the interrupt. Since the device's interrupt status
was never cleared due to the I2C failure, the interrupt line will remain
asserted.

Will this cause the interrupt to immediately fire again when unmasked,
creating an infinite loop?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617150318.7531=
48-1-jerrysteve1101@gmail.com?part=3D2

