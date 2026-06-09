Return-Path: <devicetree+bounces-309102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZAMXJRcsKGoJ/gIAu9opvQ
	(envelope-from <devicetree+bounces-309102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:07:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B719661862
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:07:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G2+UKtds;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309102-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-309102-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D14853102AB8
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 14:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B85F24219FF;
	Tue,  9 Jun 2026 14:47:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F104927467F;
	Tue,  9 Jun 2026 14:47:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781016442; cv=none; b=jReNQfy/QVakdxW/XRzClGZUWPr9l1Ulm2MMkQruRnkubfC7a7h1v6zwAeZ2yLtWGfWIfNwdzLMP8k0vdMU4tYtG9+Qy7SLkNL6a08AVuev/B/ZSL2TXr3zs7bai36iEUhU6RZ/LNJiAnwbqJbOt2LwNc8PKo5D7YDpaEZymK28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781016442; c=relaxed/simple;
	bh=t1vpnAbSGLp820XpKVohutFbqnCjXOM6fCkXXfUgU5M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UD6fIQUlxZweHjXWqUqokFxHtmPS9ub0uoaF5BkeAuvPBx7SziTvHdECFxEaOvm++YZhHAEojWA7OLrlqBu+wKfiyC5+EFPccWS7hXYLCYKDgMNUFOLP8JGwTYRVsNy0ZfYdz81SL8L5Zf8Su46XaJZfBLdC3E+5SIEDrF9jYM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2+UKtds; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A2A1F00893;
	Tue,  9 Jun 2026 14:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781016439;
	bh=f2ElMdd3tG0ARH5AemkW3ZjBi3gTUARKJouTd4J8JJg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G2+UKtdsI6LTxIPdmiZT/Dh3tw+ekvHpsJcFIbXo89lnk8ygQfDzvSWsGO8o4Hxne
	 XJhYTPgeSWduG5BuuI4ZPxdoEIgTvSnscUd52T4nxWf+UA0rGksQjbFRjnTkA4Y7RG
	 aZpMFfCqeJ+Tod3Xq6NlLLhcvFhACNlMmSpmv3RiRo52zk04dQEXIGcc2Ku1BUE5Hc
	 tGWoMgbwgTjTNOTtk26JqAECPAlJ5xY5br9VSMghnDlnOqJSd4wb2GQ8UNuqzxR7Ga
	 HXsDhKWy1EVI4xKH5yRe/Fd049LPyMkvNP1wSIQIQSTwXz5dBBibzFoc7sxWUzlaq/
	 TpHJU6Vw+FzBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/8] can: flexcan: use dedicated IRQ handlers for
 multi-IRQ platforms
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Costea" <ciprianmarian.costea@oss.nxp.com>
Cc: imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609142954.1807421-2-ciprianmarian.costea@oss.nxp.com>
References: <20260609142954.1807421-2-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 14:47:18 +0000
Message-Id: <20260609144719.12A2A1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309102-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:ciprianmarian.costea@oss.nxp.com,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B719661862

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Splitting the IRQ handlers breaks `FLEXCAN_QUIRK_BROKEN_PERR_STATE=
` polling and strands state change SKBs.

Pre-existing issues:
- [Critical] Concurrent execution of split IRQ handlers corrupts the lockle=
ss CAN `rx_offload` queue.
--

commit bffb52105dbcdcc01b5331e294239af017d43aeb
Author: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

can: flexcan: use dedicated IRQ handlers for multi-IRQ platforms

This patch splits the monolithic flexcan IRQ handler into focused parts
and introduces dedicated IRQ handlers for multi-IRQ platforms to prevent
duplicate frame processing.

> diff --git a/drivers/net/can/flexcan/flexcan-core.c b/drivers/net/can/fle=
xcan/flexcan-core.c
> index f5d22c61503fa..f73ff442d5304 100644
> --- a/drivers/net/can/flexcan/flexcan-core.c
> +++ b/drivers/net/can/flexcan/flexcan-core.c
> @@ -1188,6 +1218,65 @@ static irqreturn_t flexcan_irq(int irq, void *dev_=
id)
[ ... ]
> +/* Mailbox IRQ handler for multi-IRQ platforms */
> +static irqreturn_t flexcan_irq_mb(int irq, void *dev_id)
> +{
> +	struct net_device *dev =3D dev_id;
> +	struct flexcan_priv *priv =3D netdev_priv(dev);
> +	irqreturn_t handled;
> +
> +	handled =3D flexcan_do_mb(dev);

[Severity: High]
By splitting the handler, does this break the FLEXCAN_QUIRK_BROKEN_PERR_STA=
TE
polling mechanism? Before this patch, the monolithic flexcan_irq() naturally
polled flexcan_do_state() during mailbox interrupts. Now that flexcan_irq_m=
b()
bypasses flexcan_do_state(), it seems state transitions might no longer be
polled during active CAN traffic.

> +
> +	if (handled)
> +		can_rx_offload_irq_finish(&priv->offload);
> +
> +	return handled;
> +}
> +
> +/* Bus error IRQ handler for multi-IRQ platforms */
> +static irqreturn_t flexcan_irq_berr(int irq, void *dev_id)
> +{
> +	struct net_device *dev =3D dev_id;
> +	struct flexcan_priv *priv =3D netdev_priv(dev);
> +	irqreturn_t handled;
> +
> +	handled =3D flexcan_do_berr(dev);

[Severity: Critical]
This is a pre-existing issue, but does assigning dedicated handlers to
different IRQ lines lead to concurrent modifications of the lockless
rx_offload queue?

Since flexcan_irq_mb() and flexcan_irq_berr() can run concurrently on
different CPUs, flexcan_do_mb() and flexcan_do_berr() might concurrently
call can_rx_offload_queue_timestamp().

That function uses __skb_queue_add_sort(), which is a lockless primitive
that assumes strictly serialized execution. Could this lead to doubly-linked
list corruption and kernel panics, further exacerbated by concurrent unlock=
ed
splices in can_rx_offload_irq_finish()?

> +
> +	if (handled)
> +		can_rx_offload_irq_finish(&priv->offload);
> +
> +	return handled;
> +}
> +
> +/* Device state change IRQ handler for multi-IRQ platforms */
> +static irqreturn_t flexcan_irq_boff(int irq, void *dev_id)
> +{
> +	struct net_device *dev =3D dev_id;
> +	struct flexcan_priv *priv =3D netdev_priv(dev);
> +	irqreturn_t handled;
> +
> +	handled =3D flexcan_do_state(dev);
> +
> +	if (handled)
> +		can_rx_offload_irq_finish(&priv->offload);

[Severity: High]
If flexcan_do_state() queues an SKB but returns IRQ_NONE (e.g., if no ESR
bits are set), will this skip the can_rx_offload_irq_finish() call and
strand the state change SKB in the lockless queue?

> +
> +	return handled;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609142954.1807=
421-1-ciprianmarian.costea@oss.nxp.com?part=3D1

