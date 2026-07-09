Return-Path: <devicetree+bounces-323633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IrrWAJ6BT2pliQIAu9opvQ
	(envelope-from <devicetree+bounces-323633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:10:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DC87300F5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:10:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LFLO0qgS;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323633-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323633-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4E1F3347F7D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904FF41169B;
	Thu,  9 Jul 2026 10:55:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0F411661;
	Thu,  9 Jul 2026 10:55:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594537; cv=none; b=s5nA/33FmpgF6wa3lkvhauVTnNY6b/xmJfovf3G5Y+EQ1oer2ikZlzjCLj0ryTA2u5ewAkiOtW8NONMjfzN8kBR8bSTpiadVlIRftm/7tBFhQ9/ffDEPtQFGP3LqqgzUulILF2xEQZcQzq/IG5N9iJnZNW3zwmmbrD+WOGcdeSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594537; c=relaxed/simple;
	bh=SLymZiEiQm9QaHFJB8IlcZIe8rkfhM86ja8S8l2U/rY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=svL2K4bUIbMVkXQEuSuVMFfsVpT7dyjuf9SGN2VtBp0NFBnRjTdPLzCpvSEqV9T36oWKQd/pxknKXTdMrJQ36m3TTkikIIj6/kbuEdZJ0ZZQYElBkmGbeqpWk1SySJXGQ6sHZQDGd9iRLAVHahtjp06WXAnBTUHEWm8YSbyTSSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFLO0qgS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 793EF1F000E9;
	Thu,  9 Jul 2026 10:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783594535;
	bh=/8A32AjI5Xbe3pPyTELsHGt0r2NUPNOo73RwhCzoCa8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LFLO0qgSu5klvN0Z7hNeprf5uQk4iEsxu/bju87oNo2jLYIMY/7Fn6AGTQYxKhabu
	 qiE1bl6FTdbrhD2f9JqWPeV193G4jd/8Eu0MA/CPskzgqaiHII3zz1cLk8//h/qnS7
	 wc1bN32Lwp7udPHjWejFMHw9S8F5MQsfiq6zoAt1Z3KtRe52WxXn0209hZc0JVgDSJ
	 rhZXE3WQyPn0kLIc7vFQo+re7FPf2V2NLLjJhTR4mjo++ah0X2/S34fT84yDWKgvan
	 sP37owazgCSY6jsJwp4MlXzwnmG/AGC6uma11pX8VTwgro6RNPzpayUVj4h0cprP7a
	 FA4LHlu+RvI5w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V5 3/4] Bluetooth: btnxpuart: Add M.2 Bluetooth device
 support using pwrseq
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U2hlcnJ5IFN1biAoT1NTKQ==?= <sherry.sun@oss.nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709101555.3034853-4-sherry.sun@oss.nxp.com>
References: <20260709101555.3034853-1-sherry.sun@oss.nxp.com>
 <20260709101555.3034853-4-sherry.sun@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 10:55:35 +0000
Message-Id: <20260709105535.793EF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	TO_EXCESS_BASE64(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323633-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sherry.sun@oss.nxp.com,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52DC87300F5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Calling `devm_pwrseq_get(&serdev->ctrl->dev)` in the child device'=
s probe function binds the resource cleanup to the parent UART controller d=
evice, causing a permanent resource and memory leak on probe failures or dr=
iver unbind.
--

--- Patch [3]: [PATCH V5 3/4] Bluetooth: btnxpuart: Add M.2 Bluetooth devic=
e support using pwrseq ---
commit e33ed957970d3c81ac733b1991f81b42afce6a94
Author: Sherry Sun <sherry.sun@nxp.com>

Bluetooth: btnxpuart: Add M.2 Bluetooth device support using pwrseq
   =20
Power supply to the M.2 Bluetooth device attached to the host using M.2
connector is controlled using the 'uart' pwrseq device. So add support
for getting the pwrseq device if the OF graph link is present.

> diff --git a/drivers/bluetooth/btnxpuart.c b/drivers/bluetooth/btnxpuart.c
> index 0bb300eef157c..68f84c324113d 100644
> --- a/drivers/bluetooth/btnxpuart.c
> +++ b/drivers/bluetooth/btnxpuart.c

[ ... ]

> @@ -1872,11 +1875,26 @@ static int nxp_serdev_probe(struct serdev_device =
*serdev)
>  		return err;
>  	}
> =20
> +	if (of_graph_is_present(dev_of_node(&serdev->ctrl->dev))) {
> +		struct pwrseq_desc *pwrseq;
> +
> +		pwrseq =3D devm_pwrseq_get(&serdev->ctrl->dev, "uart");

[Severity: High]
The commit message notes that the devm cleanup is tied to the UART controll=
er
device and adds explicit pwrseq_power_off() calls to compensate, but does
this approach leak memory and pwrseq references during bind/unbind cycles?

Because devm_pwrseq_get() is called with the parent device
(&serdev->ctrl->dev), each time nxp_serdev_probe() is executed, a new devres
entry is allocated and attached to the parent's lifecycle.

If the probe fails later, or if the driver is unbound and re-bound, the
child device's devres list is cleaned up, but the parent's devres list
retains the accumulated allocations.

While pwrseq_power_off() balances the power state in the error and remove
paths, the pwrseq descriptor itself is never released. Could this prevent
the power sequencer provider module from ever being unloaded due to the
leaked references?

> +		if (IS_ERR(pwrseq))
> +			return dev_err_probe(&serdev->dev, PTR_ERR(pwrseq),
> +					     "failed to get pwrseq\n");
> +
> +		nxpdev->pwrseq =3D pwrseq;
> +		err =3D pwrseq_power_on(pwrseq);
> +		if (err)
> +			return err;
> +	}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709101555.3034=
853-1-sherry.sun@oss.nxp.com?part=3D3

