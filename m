Return-Path: <devicetree+bounces-305726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xCXpGIQBH2picwAAu9opvQ
	(envelope-from <devicetree+bounces-305726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:15:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA4B6301EA
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:14:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=F8yHWlJn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305726-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305726-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63BA9300B9D7
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D9F3F164C;
	Tue,  2 Jun 2026 16:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DAD7262A
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 16:07:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780416463; cv=none; b=Kf+CK8rGTScxTwXxUTqwEQBhxysyUvN6i5NW60CcfQefotaUBE7ObsTYTjukphrsc9GXluSJZKsggV5snAVpbG1CpfzYKAKDtOyu6f00VTVdkrWeho0ZbYmkhsRfQdlVCbc3Up030vX+UdHzDFJ3j7zEj5P0BjtchnVrBJdLZf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780416463; c=relaxed/simple;
	bh=c2+2qpYzMoaetgdE5Wz8W+f8ivw2kVpsVRQwFHLOIog=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WVO6taz34FJlg4+/wKUKmO5IlnCkMTi0icJBHjk1YbBfFREdbp1n5LAGJg14u/tKXphMTfmwvVItrfyX7EWEhsiF+V3JoVOT8TsDRZwdwU50sXpAQ2A8DaaBBfmO9yD8lCiQvTJG1CXrUeWpNjT6DqP2CBP5pI/jnUs5J/NbSZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8yHWlJn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7104F1F00898;
	Tue,  2 Jun 2026 16:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780416462;
	bh=ZmeV7RWPbNec7/O6deSn9JKTc859oOQ6ASyRTmiaMJo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=F8yHWlJnzjAqfRh2i3iYdKtNLRvugWHFDzmTR6Rz6WqKU+V0FffOLeHv3Lub23wLd
	 frEH+IaTorsKpm0ZRUJWdQMeNix+reIo8wLDWnHo6qMR9gqscEj08CHq2hSC6nUJGi
	 31d9YRhQqnfIE5YGc+0Ymmpa9Oc6xRXd4Q65fPC54oX3hJA3DOe+4ekk6r8I4C3XYq
	 cTKXIm9inpzO7AJBtd/aKVSbQO5NRmvafcGi+72AJceRjEhuwA7E/G2YuaM5E2fjtn
	 22HvKeeLRB9E1XlzWGh7Amk8zKjyEzKpHO/YxbT8vm9BFYyxxOApNZ8p+AdWTYFowl
	 TPP13ySk9yUcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net v3 2/2] dt-bindings: net: updated interrupt type to
 be active low, level triggered
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260601-level-trigger-v3-2-da73e7010532@onsemi.com>
References: <20260601-level-trigger-v3-2-da73e7010532@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 16:07:42 +0000
Message-Id: <20260602160742.7104F1F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305726-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,onsemi.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECA4B6301EA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The driver incorrectly handles a level-triggered interrupt without=
 using threaded IRQs or masking the interrupt, which will cause an infinite=
 interrupt storm.
- [High] The custom SPI kthread is stopped before the interrupt handler is =
disabled, leading to a guaranteed interrupt storm if an interrupt is assert=
ed during module removal.
--

commit 7ca880f8acfa2e8b17a55026e4eceb0ac7d436f9
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

dt-bindings: net: updated interrupt type to be active low, level triggered

This commit updates the lan8650 device tree binding interrupt type to
active low, level triggered, to match the TC6 specification.

> diff --git a/Documentation/devicetree/bindings/net/microchip,lan8650.yaml=
 b/Documentation/devicetree/bindings/net/microchip,lan8650.yaml
> index 61e11d4a07c40..766ff58147ae3 100644
> --- a/Documentation/devicetree/bindings/net/microchip,lan8650.yaml
> +++ b/Documentation/devicetree/bindings/net/microchip,lan8650.yaml
> @@ -67,7 +67,7 @@ examples:
>          pinctrl-names =3D "default";
>          pinctrl-0 =3D <&eth0_pins>;
>          interrupt-parent =3D <&gpio>;
> -        interrupts =3D <6 IRQ_TYPE_EDGE_FALLING>;
> +        interrupts =3D <6 IRQ_TYPE_LEVEL_LOW>;

[Severity: High]
This is a pre-existing issue, but updating the device tree to use a
level-triggered interrupt exposes a problem in the oa_tc6 driver's interrupt
handling.

The driver explicitly requests a hard-IRQ for a level-triggered interrupt
without IRQF_ONESHOT:

drivers/net/ethernet/oa_tc6.c:oa_tc6_init() {
    ...
    ret =3D devm_request_irq(&tc6->spi->dev, tc6->spi->irq, oa_tc6_macphy_i=
sr,
                           IRQF_TRIGGER_LOW, dev_name(&tc6->spi->dev),
                           tc6);
    ...
}

The hard-IRQ handler returns IRQ_HANDLED without masking the interrupt or
clearing the hardware state:

drivers/net/ethernet/oa_tc6.c:oa_tc6_macphy_isr() {
    ...
    tc6->int_flag =3D true;
    /* Wake spi kthread to perform spi transfer */
    wake_up_interruptible(&tc6->spi_wq);

    return IRQ_HANDLED;
}

Since the interrupt is active-low and level-triggered, won't returning
IRQ_HANDLED without masking it or clearing it over SPI immediately trigger
an interrupt storm? Does the driver need to use request_threaded_irq() with
IRQF_ONESHOT to keep the interrupt masked until the thread can clear it?

[Severity: High]
This is also a pre-existing issue, but relying on a level-triggered
interrupt exposes a teardown race condition during module removal.

The driver delegates kthread shutdown to oa_tc6_exit(), stopping the SPI
kthread without explicitly disabling the devm-managed interrupt first:

drivers/net/ethernet/microchip/lan865x/lan865x.c:lan865x_remove() {
    ...
    oa_tc6_exit(priv->tc6);
    free_netdev(priv->netdev);
}

drivers/net/ethernet/oa_tc6.c:oa_tc6_exit() {
    ...
    oa_tc6_phy_exit(tc6);
    kthread_stop(tc6->spi_thread);
}

If the MAC-PHY asserts a level-triggered interrupt after the kthread is
stopped, the hard-IRQ handler will run, call wake_up_interruptible() on the
dead kthread's waitqueue, and return IRQ_HANDLED.

Because the kthread is dead and cannot clear the interrupt, and the ISR does
not mask it, could this result in an unrecoverable system lockup during
driver removal?

>          local-mac-address =3D [04 05 06 01 02 03];
>          spi-max-frequency =3D <15000000>;
>        };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-level-trig=
ger-v3-0-da73e7010532@onsemi.com?part=3D2

