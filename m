Return-Path: <devicetree+bounces-306065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EerqORPpH2oQsQAAu9opvQ
	(envelope-from <devicetree+bounces-306065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:42:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7107635CDD
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:42:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KWAsxKz9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306065-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306065-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 679EA3073A35
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 08:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3AC40B6CD;
	Wed,  3 Jun 2026 08:15:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F1F3EFD35;
	Wed,  3 Jun 2026 08:15:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780474523; cv=none; b=YDo5uGSVGCtsFlRbaMQIV5/4Os9mAW+aPMV0aqOlzmbX28iIfDuJV9dbgfD1hgH3jfX2bkn6hsMAtRCrXU0cX109+C0rEaCfAu+kOZwha26W22WeK/oQzWKmADSdTxmA2VNpQbRjoMMJDZiOqui6tTktAyZtUiM2enir4AtEhBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780474523; c=relaxed/simple;
	bh=wUZ+EqevtIFfrsDHCDNrLWre6bpJZx3lrx2zfRtA3LQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H03+pCLSRDlw4thhsh7s7+0pnYWRUjNfpXLEkO6TJp2gjIoA1Bv+GqMhfIDRxfXKjxqprZv8NC35CcXXEJHoa8F2/77IaL8P/yq5k2XZm3LjzumrHecJEOKUXiUwGGGNhRFJdTkyvDFTX9zE8Jd7OQBQ1h0CDUAUR5pqRaHEeko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWAsxKz9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EA0A1F00899;
	Wed,  3 Jun 2026 08:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780474519;
	bh=Sy0meL+dMBBaqvvMl3t/aYdndp6N/4lrLCKwnj5FLxs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KWAsxKz9VpXhv7mKTVR0jLNUZiR4+dJ31ChoQtPJxjBL6cUaEw9UTT1AxXhm9/d+c
	 erJE5DyVVOZFp9lWovEbzbC9oqFY1IBXXNwMW5GtercZM+zSMyBrKe54i9jjeh2KAo
	 eJA4Vj4vLyRsgwxBb8hXlm9DozmvGKXJItOnsnOEeQasIZjpkw7WJxej4jxj8z7Kzm
	 OBFx3j6VnRqYE1r2KewbAFRToLrRBZ9Yo5XbSJBgOIbKrOwisjU0F9kssUxdx8aNPH
	 9w6BjIF/ublGPUgfCBhN92xs9Y2N9r/4h7/4UOS8EwtD+IkjMv5KIFJmCXegCoeU7O
	 qvUPcoqbZfCZw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v4 5/8] can: flexcan: add FLEXCAN_QUIRK_IRQ_BERR
 quirk
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Costea" <ciprianmarian.costea@oss.nxp.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260603071342.641874-6-ciprianmarian.costea@oss.nxp.com>
References: <20260603071342.641874-6-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 08:15:19 +0000
Message-Id: <20260603081519.8EA0A1F00899@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306065-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:ciprianmarian.costea@oss.nxp.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E7107635CDD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent lockless modification of `skb_irq_queue` leading to lin=
ked list corruption.
--

commit 5585c21d3d6c362465f049b7368b7a16b3da034f
Author: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

can: flexcan: add FLEXCAN_QUIRK_IRQ_BERR quirk

This commit introduces FLEXCAN_QUIRK_IRQ_BERR to handle hardware with a
dedicated interrupt line for bus errors and device state changes. It adds
the flexcan_irq_esr() handler and enables/disables the new IRQ line as
needed.

> diff --git a/drivers/net/can/flexcan/flexcan-core.c b/drivers/net/can/fle=
xcan/flexcan-core.c
> index 32e4d4da00a1c..23ddf79106410 100644
> --- a/drivers/net/can/flexcan/flexcan-core.c
> +++ b/drivers/net/can/flexcan/flexcan-core.c
[ ... ]
> @@ -1912,6 +1929,13 @@ static int flexcan_open(struct net_device *dev)
>  			goto out_free_irq_boff;
>  	}
> =20
> +	if (priv->devtype_data.quirks & FLEXCAN_QUIRK_IRQ_BERR) {
> +		err =3D request_irq(priv->irq_err,
> +				  flexcan_irq_esr, IRQF_SHARED, dev->name, dev);

[Severity: High]
This is a pre-existing issue, but this quirk continues a pattern where
separate interrupt handlers are registered on distinct physical IRQ lines.
Is there anything preventing flexcan_irq_esr() from executing concurrently
with the mailbox interrupt handler (flexcan_irq_mb) on a different CPU?

If they run concurrently, can this lead to lockless doubly-linked list
corruption?

The CAN rx_offload framework expects SKB enqueuing functions to be
serialized. However, if flexcan_irq_esr() calls flexcan_do_state() or
flexcan_do_berr() which use can_rx_offload_queue_timestamp(), it will
insert SKBs into offload->skb_irq_queue locklessly via
__skb_queue_add_sort().

At the same time, flexcan_do_mb() running from flexcan_irq_mb() can call
can_rx_offload_irq_offload_timestamp() or
can_rx_offload_get_echo_skb_queue_timestamp(), which also locklessly modify
the same skb_irq_queue.

Could this concurrent access scramble the list's next/prev pointers, leading
to kernel panics or infinite loops during NAPI processing?

> +		if (err)
> +			goto out_free_irq_boff;
> +	}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603071342.6418=
74-1-ciprianmarian.costea@oss.nxp.com?part=3D5

