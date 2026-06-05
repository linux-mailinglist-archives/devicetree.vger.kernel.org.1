Return-Path: <devicetree+bounces-307492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5MmOIFP8ImprgAEAu9opvQ
	(envelope-from <devicetree+bounces-307492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:41:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E93F3649DCE
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 18:41:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Lrkh1WzJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307492-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307492-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5A2430AC0B2
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 16:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4315416CF9;
	Fri,  5 Jun 2026 16:33:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8DC416D08
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 16:33:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780677198; cv=none; b=Rhmx0ySHHEP6OtaXYyYMYCZ/eXnYDG3obygwsXiUF7P3nt6E8+J4mcCiuRS2APLZ+sX8StMtqbAchffjmYC0LqI2/R/6SaBNQoU5jQMI5JdMIoefztdX6UTT9wSCSpABOyHZSLQQVlgRmT5gw3DQ9qKdAUoHGqBtPyY9aao2cu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780677198; c=relaxed/simple;
	bh=aoPWNGLdpwFyJuFfCWWVkIyc2C9ALZZAq5POdTQpOLQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=drEhPhWrgIafJarSDmyIVUZCfNaawZ7LK7KJY3Zr+xIxdGsBdlSJlj4iAJYrPzB1XvIZciKxBj5rz2mZI+dDMOtCeAPG5djJB7XT+NnKF32yxp2PMlAOelNopMbjdL2ko4B/fE55phmlmyAm4wLt3KHUE4v22EDZvb7BYibTgyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrkh1WzJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BA371F00898;
	Fri,  5 Jun 2026 16:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780677192;
	bh=vRMeu8S+bQZWreXxViXtnjoYG1qvT63TV9jzO6Hess8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lrkh1WzJqvAXFM8KzLLA3hRDjGKYyrBYvlK74JYGlLno3gw3e5zBIJEImetWbI0Ef
	 jl8D2K03WiJ/BwZH1YxZOrRIza/E85HJxt0H74cIPabvPtYANvQ+8QkCAhFQC9IrE0
	 6wDBOm6Sa662yf5RE56VHSW0Q6BjOt+T7hipL6etZ90o4nST1OLmfrsrMzPyua/g6t
	 zKp4CP57OfZzdiLS02im4aLAKiOVC0I3E4m9XDs52MCaUpImjYD73NCJPfJKLnVj2l
	 9oaOAdjWufedLbnDuclQoYzQGUCy2nY28rjTuBNFYlrO4rCjvIzcZriSSi9716mbNW
	 ZPOVwl8mncxSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v3 03/13] net: ethernet: oa_tc6: add
 OA_TC6_BROKEN_PHY quirk flag
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ciprian Regus via B4 Relay" <devnull+ciprian.regus.analog.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260604-adin1140-driver-v3-3-5debdb3173c4@analog.com>
References: <20260604-adin1140-driver-v3-3-5debdb3173c4@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 16:33:11 +0000
Message-Id: <20260605163312.2BA371F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-307492-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+ciprian.regus.analog.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,ciprian.regus.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E93F3649DCE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] TOCTOU race in TX path can lead to a permanently stopped network q=
ueue.
--

commit 3d52460cfb1b1b89ef4ee5edf6fd1d68050769d6
Author: Ciprian Regus <ciprian.regus@analog.com>

net: ethernet: oa_tc6: add OA_TC6_BROKEN_PHY quirk flag

This commit adds the OA_TC6_BROKEN_PHY quirk flag to skip internal PHY
initialization and management for MAC-PHY devices with hardware issues.
Drivers can use this flag to manage the PHY themselves instead of relying
on the framework.

> diff --git a/drivers/net/ethernet/oa_tc6.c b/drivers/net/ethernet/oa_tc6.c
> index baba5aad84dfa..2a72f0c4b0095 100644
> --- a/drivers/net/ethernet/oa_tc6.c
> +++ b/drivers/net/ethernet/oa_tc6.c
> @@ -134,6 +134,7 @@ struct oa_tc6 {
>  	bool rx_buf_overflow;
>  	bool int_flag;
>  	bool prot_ctrl;
> +	enum oa_tc6_quirk_flag quirk_flags;
>  };
> =20
>  enum oa_tc6_header_type {

[Severity: High]
This is a pre-existing issue and was not introduced by the patch under
review, but is there a TOCTOU race in the TX path that could lead to a
permanently stopped network queue?

If CPU1 runs oa_tc6_start_xmit() and sees tc6->waiting_tx_skb:

drivers/net/ethernet/oa_tc6.c:oa_tc6_start_xmit() {
	if (tc6->waiting_tx_skb) {
		netif_stop_queue(tc6->netdev);
		return NETDEV_TX_BUSY;
	}
}

And CPU2 concurrently runs the SPI kthread which clears the SKB and tries
to wake the queue:

drivers/net/ethernet/oa_tc6.c:oa_tc6_try_spi_transfer() {
		if (!tc6->waiting_tx_skb && netif_queue_stopped(tc6->netdev))
			netif_wake_queue(tc6->netdev);
}

Could the following sequence occur?

1. CPU1 checks tc6->waiting_tx_skb and evaluates to true.
2. CPU2 processes the skb and sets tc6->waiting_tx_skb to NULL.
3. CPU2 checks netif_queue_stopped(), which is false because CPU1 hasn't
   stopped it yet, so it skips waking the queue.
4. CPU1 calls netif_stop_queue() and returns NETDEV_TX_BUSY.

The SPI thread would then go to sleep and the network queue would remain
permanently stopped until an asynchronous event awakens the SPI thread.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604-adin1140-d=
river-v3-0-5debdb3173c4@analog.com?part=3D3

