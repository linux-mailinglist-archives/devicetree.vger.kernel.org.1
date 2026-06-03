Return-Path: <devicetree+bounces-306058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LyPvIK/fH2pQrgAAu9opvQ
	(envelope-from <devicetree+bounces-306058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:02:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A36B635796
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:02:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UxNeeFaF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306058-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306058-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7B4423006806
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 08:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652673955EA;
	Wed,  3 Jun 2026 08:02:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549032D1911;
	Wed,  3 Jun 2026 08:02:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473726; cv=none; b=HS2xkvwaXtlmpePaqUyk/egVwxttALmr1fFxHP1SeXTRmPzu9a4cWkIUNlTmVGi4AJ7AKF5qNIIJcq0L8zc6nqwwLgTCr+qFeume1LKZnH4E9ZnhgDNiESW7tBpY7fa4z/eExYbffWED5455KtbP5jxOSRcZqhbToXBAaDUOasM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473726; c=relaxed/simple;
	bh=NOZFpu3nLdRcLnC7S4Qp+4saKzUpXtWHo716rz9R6nk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gWT8F5x4+vR1aTcRAM+vwBR+a/EIwnruQRMzt5EA+dpdpHA0BGlw5NgusN2UkZFckXzS0PIjymwJW9BKas4fY+JVJ7PkyrzyGi84YQRmFtR4ObRs7tQz+Hm6WDLQuMX2X5QZFWKyVxeGxiGtR2USOslE8HtBqjnGQrvcgIHWPOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxNeeFaF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E2481F00893;
	Wed,  3 Jun 2026 08:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780473725;
	bh=1SgAuiHTq+gaVC0enPP1oUiuz66/OMy2UaQ5VvbiniU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UxNeeFaF2eaMUS2SmTjWtaJBK5eVH6iwJ0BoIzWeN2lsS5CPH2e/cJVV05K17h/JD
	 95iD8AS7Ycm5CzIRjR9QQ3jXN3YWTMcIK38YxgELlmVZlm+YrE0o70eSzgS5V9SwHt
	 oy9PW+ZrfiV03xHntTY71dSZIECGpWAphJRW5+x/HV+AcYmR4XuxD7zvVe0LXK5Pe8
	 SR5bgrTSWAiibbQ/uzs3jgYnK3QKbFG+K4pogV0TOSXHh1z9WDE/TrFtaV5t7lbMV1
	 fPVq+Bh9pC6kCY5vN4mWCpEoGz7llGBEet8qPizVtWgHwQanPP6mLEGBcWMoLNxU99
	 pCoawcWbKbaVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v4 4/8] dt-bindings: can: fsl,flexcan: add NXP
 S32N79 SoC support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Costea" <ciprianmarian.costea@oss.nxp.com>
Cc: conor+dt@kernel.org, robh@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260603071342.641874-5-ciprianmarian.costea@oss.nxp.com>
References: <20260603071342.641874-5-ciprianmarian.costea@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 08:02:04 +0000
Message-Id: <20260603080204.9E2481F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306058-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:ciprianmarian.costea@oss.nxp.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A36B635796

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Concurrent execution of separate IRQ handlers silently corrupts th=
e lockless skb_irq_queue in the RX offload core.
--

commit 1b40c6c47df0cbe3a237b4923882ceb85a965615
Author: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

dt-bindings: can: fsl,flexcan: add NXP S32N79 SoC support

Add NXP S32N79 SoC compatible string and interrupt properties.
On S32N79, FlexCAN IP is integrated with two interrupt lines:
one for the mailbox interrupts (0-127) and one for signaling
bus errors and device state changes.

> diff --git a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml b=
/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> index f81d56f7c12a5..d098a44c2b9c2 100644
> --- a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> +++ b/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml

[ ... ]

> @@ -173,11 +174,38 @@ allOf:
>              - const: mb-1
>        required:
>          - interrupt-names
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: nxp,s32n79-flexcan
> +    then:
> +      properties:
> +        interrupts:
> +          items:
> +            - description: Message Buffer interrupt for mailboxes 0-127
> +            - description: Bus Error and Device state change interrupt

[Severity: High]
This is a pre-existing issue, but can the concurrent execution of these sep=
arate
IRQ handlers silently corrupt the lockless skb_irq_queue in the RX offload =
core?

Since multi-IRQ platforms (like the newly added S32N79) map different FlexC=
AN
events to distinct hardware IRQ lines, the interrupt handlers can be dispat=
ched
concurrently on different CPUs.

For example, CPU1 could be executing flexcan_irq_mb() while CPU2 is executi=
ng
flexcan_irq_boff():

CPU1:
drivers/net/can/flexcan/flexcan-core.c:flexcan_irq_mb() {
    ...
    handled =3D flexcan_do_mb(dev, mb_irq);
    ...
}

CPU2:
drivers/net/can/flexcan/flexcan-core.c:flexcan_irq_boff() {
    ...
    handled =3D flexcan_do_state(dev);
    ...
}

Both of these paths eventually call into the RX offload core to enqueue
packets:

drivers/net/can/dev/rx-offload.c:can_rx_offload_queue_timestamp() {
    ...
    __skb_queue_add_sort(&offload->skb_irq_queue, skb, can_rx_offload_compa=
re);
    ...
}

Because __skb_queue_add_sort() and __skb_queue_tail() are lockless queue
operations, won't concurrent insertions from multiple CPUs corrupt the
doubly-linked list pointers and lead to a kernel panic on subsequent access=
es?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603071342.6418=
74-1-ciprianmarian.costea@oss.nxp.com?part=3D4

