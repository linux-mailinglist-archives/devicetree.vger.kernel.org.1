Return-Path: <devicetree+bounces-310017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aCmiDC/AKWrncgMAu9opvQ
	(envelope-from <devicetree+bounces-310017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:51:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A8B66C975
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:51:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k24c8PCY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310017-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310017-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65FCB304CF6A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 19:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B3335839E;
	Wed, 10 Jun 2026 19:50:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D50369D53
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 19:50:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781121053; cv=none; b=iB86tYLfIdIwHhvZGuBJuksUJqspOaEvT2zF6FJAYo7h6kiK26rE30zdMA1m7b4UOfg1fWz8riaF7gYX5vDC0ZgUndT+qTJ79dmJZlruyFO7hytnuAU/jR9EWrj+yt6N7U3zaBpmvLImaW2jwV+w3T3sSjPFafcPTRA0mBDMLpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781121053; c=relaxed/simple;
	bh=IRY8ns0g9Y1v+CfRHM2Skn9S5KReNOJ9GOnpzFyfkmQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cqK1xrbDD6umY1Qq1p7txHU7zVVtMkIneOgGzcs9vAQovRBVW8obmMyCaiApXctcu1pQGZaChH1hgzX0t5ajqb3m+g+L/2I6gOIHkGDTIgRq6nPY/SoR82vfvzj0UP8e8Th0YEIwnVPPozXH6gIBQp/xmqiIOyhjk6o9AY+mSog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k24c8PCY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 745441F00899;
	Wed, 10 Jun 2026 19:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781121051;
	bh=gD6H/T4JAoK48N6iQhAkED2aUkmantWNjbjjo5BeXP8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k24c8PCYS2P4PTZ7myK6atOdc2tmhB9iHvhlEEC2YCQC+/poUX2SSXSAO3YbJw8Pi
	 EcfRk2Fk5Ewl37bZ1x/tTGl1APnmW9dwfuDUuSW78f4WEWO9CfVi8QXhoEDCmetlm8
	 iITO1xI8Qi7nCbtwieEza5RErl4YoxIq5u80cXS9Y7bQnpykvf17VHNKO7gn1ZOcYd
	 vnI3FWYxZvHshBlSaIVhbKnIEFnyiNx4VctOPIY71E8v3ssb0c4eQcu6gCFk5Llt5S
	 VnE8v+yVDAN8txhiWYX4NYuTmW9ad8HukWcTJWxZ0uHpR28V6YwMk0K3DeFRvKez8O
	 GPhv8/dlma/pw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net v4 3/4] net: ethernet: oa_tc6: mdiobus->parent
 initialized with NULL
Reply-To: sashiko-reviews@lists.linux.dev
To: "Selvamani Rajagopal via B4 Relay" <devnull+Selvamani.Rajagopal.onsemi.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609-level-trigger-v4-3-6f389abdd192@onsemi.com>
References: <20260609-level-trigger-v4-3-6f389abdd192@onsemi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 19:50:51 +0000
Message-Id: <20260610195051.745441F00899@smtp.kernel.org>
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
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310017-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+Selvamani.Rajagopal.onsemi.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,Selvamani.Rajagopal.onsemi.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,onsemi.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 97A8B66C975

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free during driver removal due to missing devm teardown =
synchronization.
- [High] Hardware-induced kernel panic (DoS) due to unchecked `skb_put()` e=
xtending beyond allocated buffer bounds.
- [High] Race condition freezing the TX queue due to lockless `waiting_tx_s=
kb` check.
--

commit 2c34943e07dcd7c39f87708d303b4633c83360bd
Author: Selvamani Rajagopal <Selvamani.Rajagopal@onsemi.com>

net: ethernet: oa_tc6: mdiobus->parent initialized with NULL
   =20
As "dev" pointer in oa_tc6 structure is never initialized,
mbiosub->parent was initialized with NULL.  This change
fixes the issue.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index 20c9e98d1d607..0710a5a8dcdec 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
> @@ -108,7 +108,6 @@
> =20
>  /* Internal structure for MAC-PHY drivers */
>  struct oa_tc6 {
> -	struct device *dev;
>  	struct net_device *netdev;
>  	struct phy_device *phydev;
>  	struct mii_bus *mdiobus;

[ ... ]

[Severity: High]
This is a pre-existing issue, but could this teardown sequence result in a
use-after-free crash?

In drivers/net/ethernet/microchip/lan865x/lan865x.c:lan865x_remove():

    unregister_netdev(priv->netdev);
    oa_tc6_exit(priv->tc6);
    free_netdev(priv->netdev);

The driver registers a threaded IRQ using devres. This means the IRQ is fre=
ed
after the remove() function completes.

Could the IRQ thread run concurrently with or after oa_tc6_exit() and
free_netdev(), accessing the freed SKBs and netdev structure since the acti=
ve
background thread is not canceled before freeing its resources?

[Severity: High]
This isn't a bug introduced by this patch, but does this code properly
validate the buffer boundaries before appending data?

In drivers/net/ethernet/oa_tc6.c:oa_tc6_prcs_ongoing_rx_frame():

    oa_tc6_update_rx_skb(tc6, payload, OA_TC6_CHUNK_PAYLOAD_SIZE);

Which appends data unconditionally in oa_tc6_update_rx_skb():

    memcpy(skb_put(tc6->rx_skb, length), payload, length);

If a faulty or malicious MAC-PHY continuously sends data chunks without
asserting the end_valid flag, wouldn't skb_put() hit the end of the buffer
and trigger skb_over_panic() since there is no check against skb_tailroom()?

[Severity: High]
This is a pre-existing issue, but could this lockless check cause the TX
queue to freeze permanently?

In drivers/net/ethernet/oa_tc6.c:oa_tc6_start_xmit():

    if (tc6->waiting_tx_skb) {
        netif_stop_queue(tc6->netdev);
        return NETDEV_TX_BUSY;
    }

And in oa_tc6_try_spi_transfer() on the worker thread:

    if (!tc6->waiting_tx_skb && netif_queue_stopped(tc6->netdev))
        netif_wake_queue(tc6->netdev);

If the worker thread takes the lock, clears waiting_tx_skb, and evaluates
netif_queue_stopped() before start_xmit() actually stops the queue, the
worker thread skips waking the queue.

When start_xmit() resumes, it stops the queue and returns NETDEV_TX_BUSY.
Since waiting_tx_skb is now NULL and the worker missed the wake-up, is there
anything left to wake the queue?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-level-trig=
ger-v4-0-6f389abdd192@onsemi.com?part=3D3

