Return-Path: <devicetree+bounces-312177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zicOFt9fMGoLSQUAu9opvQ
	(envelope-from <devicetree+bounces-312177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 22:26:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D04C3689D1F
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 22:26:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QvzoHkjc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312177-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-312177-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D6B2300FA80
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 20:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B8C3ADB99;
	Mon, 15 Jun 2026 20:26:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAC93B6343
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 20:26:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781555165; cv=none; b=RtJqJK3VA81DUaRSglTDzUAsTtZkB1GFeQ6w0FhG8uQAEuUD9fBKeUvntMBKnhIqr85pIjPQWMLV8yofJb5PQaulBByfbu5+hlGV8tdezljKBR60468uNFzI50kXcSBpO54gxnTLfI9OWgzChbWOAV1EMcI5At6ARLad7Rh2Nw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781555165; c=relaxed/simple;
	bh=t8a0kKk7HK8wFqHgn8NeY8MOG5mZ9lIHWiHOSp5t1Tk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DcMSY+cCe6Y4yKA2UCpyjswG9wLAaAyVR6GWSlX79MkDzqy2QmNMhwr9Ahb0zwXT7PwSAclhJRiMQ8i0vJNXALcynEeh5fuQGs6zsB0VLTXo75CYehI8GT5ce14LqeOjShAWGWS5i85l3/eAFIu5DXrLe1w0u8n7LWiHpq2DqtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvzoHkjc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AF491F000E9;
	Mon, 15 Jun 2026 20:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781555162;
	bh=hfRCyNeJHziZ7xWFG8jy/JwFJ0SllV+hNx62dt3eS2Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QvzoHkjcSbZkVL0oJe9gg1ln4z3q7BS4JURBOCuH27sO5i4uzLzmawIgsfaNmxl+h
	 0HMlE7MdKhGv0vN9TWFGOouubtsPce9/m8J6ZLcz1eskP2akJlQp+mlBorfPYt/NjI
	 VkXjyDGDWywnuEpUKGfmtDZCM8chITYc3umv0IpA8RW+mmOCHUa+iIIDKGdAiHA+CN
	 f2g4W66/ahVN7Lm9VTBgHjZ+0cMTvehmkCW13EZRaPxoacBBffGD6H+9BEQUq6jdBE
	 fg+JmjCxN0wtdFuKF7jId6KSvrnt/s6p0p8riz6BUN+SHsZe+g2yAQiZsJrLJKRUIH
	 2PU8mwuBSkBvw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] hw_random: timeriomem-rng: add configurable read
 width and data mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615201339.1264676-1-inasj268@gmail.com>
References: <20260615201339.1264676-1-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 20:26:01 +0000
Message-Id: <20260615202602.2AF491F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312177-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D04C3689D1F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] This problem wasn't introduced by this patch, but an improper tear=
down sequence allows a concurrent reader to restart the timer after it was =
cancelled, leading to a Use-After-Free and potential Deadlock.
--

commit f3fa66cce2c0ad3af71293c86473cf060b400645
Author: Jad Keskes <inasj268@gmail.com>

hw_random: timeriomem-rng: add configurable read width and data mask

This commit adds support for reading 8, 16, or 32 bits from the hardware
random number generator. It applies an optional mask to the data and
configures these properties via device tree or platform data.

> diff --git a/drivers/char/hw_random/timeriomem-rng.c b/drivers/char/hw_ra=
ndom/timeriomem-rng.c
> index e61f063932090..4557326618c90 100644
> --- a/drivers/char/hw_random/timeriomem-rng.c
> +++ b/drivers/char/hw_random/timeriomem-rng.c

[ ... ]

> @@ -71,11 +76,28 @@ static int timeriomem_rng_read(struct hwrng *hwrng, v=
oid *data,
>  			usleep_range(period_us,
>  					period_us + max(1, period_us / 100));
> =20
> -		*(u32 *)data =3D readl(priv->io_base);
> -		retval +=3D sizeof(u32);
> -		data +=3D sizeof(u32);
> -		max -=3D sizeof(u32);
> -	} while (wait && max > sizeof(u32));
> +		switch (priv->width) {
> +		case 8: {
> +			u8 val =3D readb(priv->io_base) & priv->mask;
> +			*(u8 *)data =3D val;
> +			break;
> +		}

[ ... ]

> +		}
> +
> +		retval +=3D chunk;
> +		data +=3D chunk;
> +		max -=3D chunk;
> +	} while (wait && max > chunk);

[Severity: High]
This isn't a bug introduced by this patch, but does the current driver
teardown sequence allow a concurrent reader to cause a use-after-free
or deadlock?

Because the driver uses devm_hwrng_register(), the hwrng is unregistered by
devres after timeriomem_rng_remove() completes.

If timeriomem_rng_remove() calls hrtimer_cancel(&priv->timer) while a reader
is inside timeriomem_rng_read() (for example, sleeping between reads), the
devres cleanup will subsequently call hwrng_unregister() which blocks
waiting for the active reader to finish.

However, the reader will eventually finish its loop and unconditionally run
the following at the end of timeriomem_rng_read():

	hrtimer_forward_now(&priv->timer, priv->period);
	hrtimer_restart(&priv->timer);

Can this sequence restart the timer after it was cancelled by the remove
function, allowing the timer to eventually fire and dereference the freed
priv pointer?

Additionally, if a reader is waiting in wait_for_completion(&priv->completi=
on)
when the timer is cancelled, could this prevent the timer from firing,
leaving the reader hanging in TASK_UNINTERRUPTIBLE and causing the
subsequent hwrng_unregister() to deadlock?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615201339.1264=
676-1-inasj268@gmail.com?part=3D1

