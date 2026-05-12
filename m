Return-Path: <devicetree+bounces-296538-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCUXCiW8A2o69gEAu9opvQ
	(envelope-from <devicetree+bounces-296538-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:47:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA99C52B642
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 01:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AEC10302C309
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051EC34405B;
	Tue, 12 May 2026 23:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMTR1Hmq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61B05A79B
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 23:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778629665; cv=none; b=Hlv21JhBblPc8cOgs2Y5TlJ8EfglzubLWmPp/GdbSijoH9fuct8z94qiR3Qw2fhPcRfF9apWnTGV+pUg/DPpxwfA1ts0K/fh7NTlvg0JuIjrAWu1nrPm9BA2X79hZWUkVgm8ylAdZUMH44PsNR+gLehEtx34f0U/VPuQGQzjuiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778629665; c=relaxed/simple;
	bh=htjNJt+i0TDISB0smRcQTRHYVN075O1ltrQUHkr5j2E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=r4UEmv7lIyXBrcrbhXPx0HpUJ+9LW+uh4s+Onbu2eBXX2vmTvQMvTxk/Lwv/zTvfMCVP7o1tq61LeuhLRAADNbgr7FYEBfRyA5dE3MQQq5Cx1MLT0o8cf3E4ZXqeg5M9yNnc0lIlWhPHz9yoBkS0bJuSVF3d63gjwlH2VCLETao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMTR1Hmq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34227C2BCB0;
	Tue, 12 May 2026 23:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778629665;
	bh=htjNJt+i0TDISB0smRcQTRHYVN075O1ltrQUHkr5j2E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=NMTR1HmqG4cb6gvOcu9CNFVzB/DHvFTZRa1652wItZ5XvWwNEVzNLCS2A/xfeGrO1
	 V7Shhxtk04ykR3qhK74WTErma46QLpqB0zpVmxOpvfLvubiHBUONLdit/QbSYf8p8f
	 WDEO8hsxwwKdrP+TgMPSZUGFthGBte/euJ+IQ1Uv0oOQzakNk79B7Zc0go1fGBrJ1e
	 jChZINqZCWhmRv6pgqpHjFOImpmE52zBETLD+a3nedkauRaOkxLpgjip5VXVyN5xoz
	 3URgZrJex12pzmDsDaFP3iejJH9om8Yv2QjrRxOYX61h8X/YRatufjRXx5SnnVggtE
	 Dunnycmxklvlw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 11/12] net: airoha: Support multiple LAN/WAN
 interfaces for hw MAC address configuration
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lorenzo Bianconi" <lorenzo@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260511-airoha-eth-multi-serdes-v6-11-c899462c4f75@kernel.org>
References: <20260511-airoha-eth-multi-serdes-v6-11-c899462c4f75@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 23:47:44 +0000
Message-Id: <20260512234745.34227C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: BA99C52B642
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296538-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Strict OUI matching logic breaks random MAC initialization and cre=
ates a MAC configuration deadlock.
- [Medium] Unaligned stack array passed to Ethernet helper functions.
--

commit c741e4a94d25c6203f98c2a4392d2ea65e6c3156
Author: Lorenzo Bianconi <lorenzo@kernel.org>

net: airoha: Support multiple LAN/WAN interfaces for hw MAC address configu=
ration

This commit extends the hardware LAN/WAN MAC address configuration logic to
derive the correct minimum and maximum values when multiple interfaces are
configured as LAN or WAN. It assumes all interfaces configured in the same
group share a common upper MAC address.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c
> @@ -71,20 +71,67 @@ static void airoha_qdma_irq_disable(struct airoha_irq=
_bank *irq_bank,
>  	airoha_qdma_set_irqmask(irq_bank, index, mask, 0);
>  }
> =20
> -static void airoha_set_macaddr(struct airoha_gdm_dev *dev, const u8 *add=
r)
> +static int airoha_set_macaddr(struct airoha_gdm_dev *dev, const u8 *addr)
>  {
>  	struct airoha_eth *eth =3D dev->eth;
> -	u32 val, reg;
> +	u8 ref_addr[ETH_ALEN] =3D {};

Is this stack array missing a 16-bit alignment attribute?

ether_addr_copy() and is_zero_ether_addr() require their arguments to be
16-bit aligned. On systems lacking CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS,
passing an unaligned stack array cast to a u16 pointer will cause alignment
traps.

Could this be declared with __aligned(2) or as a u16 array?

[ ... ]
> +			if (netdev->reg_state !=3D NETREG_REGISTERED)
> +				continue;
> +
> +			ether_addr_copy(ref_addr, netdev->dev_addr);
[ ... ]
> +	if (!is_zero_ether_addr(ref_addr) && memcmp(ref_addr, addr, 3)) {
> +		/* According to the HW design, hw mac address MS bits
> +		 * must be the same for each net_device with the same
> +		 * LAN/WAN configuration.
> +		 */
> +		return -EINVAL;
> +	}

Can this strict OUI matching break device probe or create a configuration
deadlock?

If the device tree does not provide MAC addresses, the driver generates ran=
dom
MACs via eth_hw_addr_random(), which produces differing OUIs. When the seco=
nd
interface attempts to register during probe, this check will fail,
register_netdev() will return -EINVAL, and the entire driver probe will abo=
rt.

Additionally, can this prevent userspace from migrating the MAC addresses t=
o a
new OUI using "ip link set"?

The first interface update attempt would be rejected because its new OUI
would not match the OUI of the remaining unmodified interfaces.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-airoha-eth=
-multi-serdes-v6-0-c899462c4f75@kernel.org?part=3D11

