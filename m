Return-Path: <devicetree+bounces-309100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id San/G2ouKGrQ/gIAu9opvQ
	(envelope-from <devicetree+bounces-309100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:16:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB93661A0D
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:16:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=c1x5uz+R;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309100-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309100-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E724C313D851
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 14:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3643135E1CD;
	Tue,  9 Jun 2026 14:43:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F17434B68C;
	Tue,  9 Jun 2026 14:43:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781016216; cv=none; b=fnZHv2fI3ohyKVt/r9u9P3620w+lq9Dyuvw7Z0tTxHjuBit3CAYx3LQ6l6RC6rJgP85o14I9PxPm8qtVqcC/8T6cae0lH33Az5pOBUV4mwRbWu0Fj55iW/4KNimAfbaEQizdYKNaOjZ+yq+ulUyPCO/5apOI02GO4uluZufva/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781016216; c=relaxed/simple;
	bh=MB9vLt9Ju+1MG6C8wzCNz2Q6+AcfMYL2Sm3Ypo2ainA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A0IJxx7REUqz/+HqfmhjikSdv1n/m63MxrO0Z9GdIf4CSSNUf3NEcK3mMxbGgmdaYR9SAW03STksVlo6bi2ZWM2XixdKm91u938KB7J+hh1wyJkUJGLPoIQ4unVoFVQZdoGqDNPDWTjmdxZe3RzJCZlSRQNM6E8InsVdH2yuGiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1x5uz+R; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AB901F00893;
	Tue,  9 Jun 2026 14:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781016214;
	bh=TA8b+CpUBZytOdWZK5Wd86oUit2bC0O5v6SgrqO6Pcg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c1x5uz+RcJbTfd/HneALEjvToUvV/V6hVAr4DwU8fhRNeVbKq+VT8J7MyOTMjlgFa
	 +V1LskOaa4EpsdX1MY+6B230ACcimbDs80ec+Zh0H+SWm69P4uVVC8GOwbqzYF+zrG
	 r8wiI+y3zob8xXLtpjbF9jauyTvAL5rt+KGBwv8FF/4Cke9zC7bCcrkUaGZ3pmIDZ5
	 JyhCWn6vdUrwAlDPUhX3s3c7C49ecIR4cqGWDYHB0TR4gxGJzzulEvbmXdswBiDMDm
	 8q10S+5mMLfZqNu5NUxTAPMDNPEjTZ27vMgul8h2gdBrXcbzo9iz1v6OZ/vOdbJScd
	 iWXf+P+NyXjoQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/8] can: flexcan: split rx/tx masks per mailbox IRQ
 line
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Costea" <ciprianmarian.costea@oss.nxp.com>
Cc: robh@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609142954.1807421-4-ciprianmarian.costea@oss.nxp.com>
References: <20260609142954.1807421-4-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 14:43:34 +0000
Message-Id: <20260609144334.6AB901F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309100-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email];
	FORGED_RECIPIENTS(0.00)[m:ciprianmarian.costea@oss.nxp.com,m:robh@kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 5DB93661A0D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Concurrent execution of split IRQ handlers corrupts the lockle=
ss `skb_irq_queue`.
--

commit aded1fca2efad9bc2736fa7932119f27a1b0a87c
Author: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

can: flexcan: split rx/tx masks per mailbox IRQ line

This patch splits the mailbox IRQ handling into separate lines for MB0 and
MB1 on S32G2 platforms. It passes a mailbox mask into flexcan_do_mb() to
ensure each IRQ handler only processes the rx and tx flags for its designat=
ed
mailboxes.

> diff --git a/drivers/net/can/flexcan/flexcan-core.c b/drivers/net/can/fle=
xcan/flexcan-core.c
> index 7dde2e623defe..0ed838f0719aa 100644
> --- a/drivers/net/can/flexcan/flexcan-core.c
> +++ b/drivers/net/can/flexcan/flexcan-core.c
[ ... ]
> @@ -1244,8 +1255,14 @@ static irqreturn_t flexcan_irq_mb(int irq, void *d=
ev_id)
>  	struct net_device *dev =3D dev_id;
>  	struct flexcan_priv *priv =3D netdev_priv(dev);
>  	irqreturn_t handled;
> +	u64 mb_mask =3D ~0ULL;
> +
> +	if (priv->devtype_data.quirks & FLEXCAN_QUIRK_SECONDARY_MB_IRQ)
> +		mb_mask =3D (irq =3D=3D priv->irq_secondary_mb) ?
> +			  FLEXCAN_SECONDARY_MB_IRQ_MB1_MASK :
> +			  FLEXCAN_SECONDARY_MB_IRQ_MB0_MASK;
> =20
> -	handled =3D flexcan_do_mb(dev);
> +	handled =3D flexcan_do_mb(dev, mb_mask);

[Severity: Critical]
This is a pre-existing issue, but since there are two separate IRQ lines=20
assigned to flexcan_irq_mb(), could they fire concurrently on different CPUs
and corrupt the rx-offload queues?

Both handlers call flexcan_do_mb() which then calls=20
can_rx_offload_irq_offload_timestamp():

drivers/net/can/dev/rx-offload.c:can_rx_offload_irq_offload_timestamp() {
    ...
    __skb_queue_add_sort(&offload->skb_irq_queue, skb, can_rx_offload_compa=
re);
    ...
}

Because __skb_queue_add_sort() modifies the list locklessly, it assumes a
strict single-IRQ serialization model. If the primary and secondary MB IRQ
handlers execute at the same time, this will lead to concurrent insertions
corrupting the doubly-linked list. Is there any mechanism restricting the C=
PU
affinity or preventing concurrent execution of these IRQs?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609142954.1807=
421-1-ciprianmarian.costea@oss.nxp.com?part=3D3

