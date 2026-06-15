Return-Path: <devicetree+bounces-312017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QYmjJAgOMGpcMgUAu9opvQ
	(envelope-from <devicetree+bounces-312017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:36:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB66873C9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:36:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="D/nm1f2M";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312017-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312017-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F6FC304227F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07E43FAE0D;
	Mon, 15 Jun 2026 14:34:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5523F8ED3;
	Mon, 15 Jun 2026 14:34:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781534078; cv=none; b=KA1g7Zk75ZkUiXksJVKrl/Y2XCJV0h0ZWZXN8s9MEFg/M+5gLyC34njK8x2XE+vp7w5LNTQKD0rxOvoMXKYWK6qKeAb/3SIlBD+3GIIqh8PCptI39z+BHrPopcEFPm2KkG1RvsZnFOhYq023f1GjArpwkNo/qWC6aHlxtIy+PBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781534078; c=relaxed/simple;
	bh=iWZWj7L37iSmshZoi0widnyc7RCga1hkn2LxcKT6Xrs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=d7V7gIpq9SF+s53QsYsb82N/TRJH8oQf87tMPjSk8+ePaN7JemqzNoCfJgbem9wpCc3etbV6okHwWhYXx5fKxl5tyODW3P4qcJkazKbxYCvsd49VXbRfDp8v9MEhS77ob0X02UqQsIU+sUoUNhkTBlXgQM5OlTV0dmgPRDrws38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/nm1f2M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183A71F000E9;
	Mon, 15 Jun 2026 14:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781534075;
	bh=5JvNdQbQCe0+C0G2rL7xFkELL7DEv2gcC/2GTnzxCI8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D/nm1f2M2iUZVlxx4Iu3OetJD4RVArhhICOnGE66NqCEuZlm/wb1q4tHvOlFMvByy
	 w1IP9Kd29ziJDRtFON2Oxot2dpcuPHHYcm6c1eEfOH/1m6YuZ//uV9z8oAPWsPBoiM
	 RiDxUZZ1GVOarnQfW8Fg1jSNgffwpfMasUniXOvHAOz3GLMCUUNdvYHbmm7SLa/sjn
	 bA13idBvt0u37jBp2647Vt0tPYhbZVIwrf+JP3akzOA7va2ikg7gZ62rWBEGpRtUgB
	 0lGNnz/wtnE2ya0QdfYr32aIeBRTRmDqB+Lq0DS4LBnjyd4aPAOAj3tLGWd1BYpzwR
	 SOOYIckYjuegQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 02/10] Input: cap11xx - remove unused register macros
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, linux-input@vger.kernel.org
In-Reply-To: <20260615142103.352163-3-jerrysteve1101@gmail.com>
References: <20260615142103.352163-3-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 14:34:34 +0000
Message-Id: <20260615143435.183A71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312017-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFAB66873C9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] Removing sensor delta registers from the volatile register list =
causes regmap to incorrectly cache their values, breaking debugfs observabi=
lity.

Pre-existing issues:
- [High] The driver requests its IRQ after registering the input device, cr=
eating a race condition where an unhandled interrupt can permanently disabl=
e the device.
--

commit 72bbdd7bb3155f054afabfd004f5e097d568001b
Author: Jun Yan <jerrysteve1101@gmail.com>

Input: cap11xx - remove unused register macros
   =20
Remove unused register address macros and unused definitions in
the cap11xx_reg_defaults array and cap11xx_volatile_reg. This cleanup
reduces code clutter and makes the driver easier to maintain.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 485d8ba977235..686174722204c 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c

[ ... ]

> @@ -149,12 +97,6 @@ static bool cap11xx_volatile_reg(struct device *dev, =
unsigned int reg)
>  	switch (reg) {
>  	case CAP11XX_REG_MAIN_CONTROL:
>  	case CAP11XX_REG_SENSOR_INPUT:
> -	case CAP11XX_REG_SENOR_DELTA(0):
> -	case CAP11XX_REG_SENOR_DELTA(1):
> -	case CAP11XX_REG_SENOR_DELTA(2):
> -	case CAP11XX_REG_SENOR_DELTA(3):
> -	case CAP11XX_REG_SENOR_DELTA(4):
> -	case CAP11XX_REG_SENOR_DELTA(5):

[Severity: Medium]
Does removing the sensor delta registers from the volatile list cause a
regression for observability via the regmap debugfs interface?

These registers contain real-time capacitance delta hardware values that are
continuously updated by the device. Treating them as non-volatile causes
regmap to cache them on the first read, resulting in stale values for any
subsequent reads by tuning tools or developers.

>  		return true;
>  	}
> =20

[Severity: High]
This isn't a bug introduced by this patch, but I noticed a pre-existing pro=
be
ordering flaw in cap11xx_i2c_probe():

	error =3D input_register_device(priv->idev);
	if (error)
		return error;

	error =3D devm_request_threaded_irq(dev, i2c_client->irq,
					  NULL, cap11xx_thread_func,
					  IRQF_ONESHOT, dev_name(dev), priv);

Could this sequence lead to the interrupt being permanently disabled?

Since input_register_device() exposes the device to userspace, a daemon
can immediately open the device, waking the sensor from deep sleep.

If the sensor generates a hardware interrupt before
devm_request_threaded_irq() completes, the generic IRQ core will receive an
interrupt with no registered handler.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615142103.3521=
63-1-jerrysteve1101@gmail.com?part=3D2

