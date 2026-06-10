Return-Path: <devicetree+bounces-309912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G/hCGFWEKWrVYQMAu9opvQ
	(envelope-from <devicetree+bounces-309912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:35:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FFE66ADB6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 17:35:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NGKoNT0I;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309912-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309912-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6943F308E7BF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 15:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 561A13FF8BA;
	Wed, 10 Jun 2026 15:28:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172DB33122D
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 15:28:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105304; cv=none; b=gav94Aw7BCv537uIrczZTsoe2+2nSKPmugPvfiXSewr588ZiPfSz2hzbrCkQeadyy4mQ0VdAWc0ol0vp5IF1jDkCsvcD/pwpVYANcfZq4g1Qo6m1Avk0yFiXcljEmPGjEFEH0i0ZpeSodKZcy2zJWF449Y/JAjAsi2+bNvYsYUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105304; c=relaxed/simple;
	bh=KphDJEljzz1B0L/rkxUZfXlBPc6kjk2dUSXUNm+P/Ms=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UnP42F4wFHRucEo1LQCQL828gxlfTez7kYR4IH1KksyUuq4AE5pXBpLEOtZfhrFYd4ZAFD0Rosn2zK27fCehKU/jtRdlEpc/HKfqi16Ndm7nC8C2i/JpTWfRZG4jFRJQv1ZQyPd8DaAGwb/rXTnall6KsWbq5Gw4MWwTdBW1GZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGKoNT0I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27D341F00893;
	Wed, 10 Jun 2026 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781105302;
	bh=f6veyJn+caHLGc0rk/Y13OyXICSeN8sVehwN/gzubws=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NGKoNT0IzL3vjnpuh+GskjuWOX/VZ7vBa55r+SX0rzIogUABkbj75iYbl/aeP4Jgk
	 NA1QCNwuPbf6NpfZvc49G34avJD9+27LaVdCLAlQDGvrTjLwZyeads7itqZFjfLEgO
	 b47vgX0VzLIev9GsnyiSvgkclB1np025n0F6vV1shPOydqxvZxWa0yK3ZnTbKvo39E
	 KamVYubwc3SSWbwhh7QLOUCRepHOWHLMuoRfsKmHrKXDXEarMuzoiSJguxKq7tDiZu
	 OtHt7Ip5jGVLNsZxBZic8zijIu7XQivXU9+DyOnK/xSEK7n6N+dCUFM5ENKUn7kS5f
	 fPN05uGBY7/ng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v4 04/13] net: ethernet: oa_tc6: Export the C45
 access functions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609-adin1140-driver-v4-4-0753e28ee004@analog.com>
References: <20260609-adin1140-driver-v4-4-0753e28ee004@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 15:28:21 +0000
Message-Id: <20260610152822.27D341F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309912-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+ciprian.regus.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,analog.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,lunn.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05FFE66ADB6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Low] Missing forward declaration of `struct mii_bus` in `include/linux/o=
a_tc6.h`.

Pre-existing issues:
- [High] A Time-Of-Check to Time-Of-Use race in `oa_tc6_start_xmit` can res=
ult in a permanently stopped TX queue.
--

commit 8341f219f15c736a6e2b1b018d43e766db074905
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: Export the C45 access functions
   =20
The C45 access functions can still be used by some Ethernet drivers
which set the OA_TC6_BROKEN_PHY flag. Export them.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Ciprian Regus <ciprian.regus@analog.com>

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 2a72f0c4b0095..b37e398e30e37 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c

[ ... ]

[Severity: High]
This is a pre-existing issue, but is there a race condition in
oa_tc6_start_xmit() that can result in a permanently stopped TX queue?

In drivers/net/ethernet/oa_tc6.c:oa_tc6_start_xmit(), tc6->waiting_tx_skb
is checked without holding tx_skb_lock:

    if (tc6->waiting_tx_skb) {
        netif_stop_queue(tc6->netdev);
        return NETDEV_TX_BUSY;
    }

Concurrently, the SPI thread can acquire the lock, move waiting_tx_skb
to ongoing_tx_skb, and set waiting_tx_skb to NULL.

After processing, the SPI thread checks if the queue is stopped to wake
it up in oa_tc6_try_spi_transfer():

    if (!tc6->waiting_tx_skb && netif_queue_stopped(tc6->netdev))
        netif_wake_queue(tc6->netdev);

If the SPI thread evaluates netif_queue_stopped() before oa_tc6_start_xmit()
executes netif_stop_queue(), it won't wake it. oa_tc6_start_xmit() will
then stop the queue and return NETDEV_TX_BUSY.=20

With waiting_tx_skb being NULL and the queue stopped, will the SPI thread
fail to wake up to process new TX frames, stalling the interface?

> diff --git a/include/linux/oa_tc6.h b/include/linux/oa_tc6.h
> index 62e3d89f80ed0..2660eefa35043 100644
> --- a/include/linux/oa_tc6.h
> +++ b/include/linux/oa_tc6.h
> @@ -31,3 +31,7 @@ int oa_tc6_read_registers(struct oa_tc6 *tc6, u32 addre=
ss, u32 value[],
>  			  u8 length);
>  netdev_tx_t oa_tc6_start_xmit(struct oa_tc6 *tc6, struct sk_buff *skb);
>  int oa_tc6_zero_align_receive_frame_enable(struct oa_tc6 *tc6);
> +int oa_tc6_mdiobus_read_c45(struct mii_bus *bus, int addr, int devnum,
> +			    int regnum);
> +int oa_tc6_mdiobus_write_c45(struct mii_bus *bus, int addr, int devnum,
> +			     int regnum, u16 val);

[Severity: Low]
Could this cause a compiler warning due to a missing forward declaration
of struct mii_bus?

Including this header without prior MDIO/PHY declarations being in scope
will generate a warning about the struct being declared inside a parameter
list.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-adin1140-d=
river-v4-0-0753e28ee004@analog.com?part=3D4

