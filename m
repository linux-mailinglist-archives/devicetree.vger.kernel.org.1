Return-Path: <devicetree+bounces-296495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF1QKyqcA2qF8AEAu9opvQ
	(envelope-from <devicetree+bounces-296495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:31:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D7A52A4F0
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 23:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 761383006930
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 21:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C0C2DFA25;
	Tue, 12 May 2026 21:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMDHsuKi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7873EDE76
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 21:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778621477; cv=none; b=rhZfukSjVNKyH54r5IH8bQkOwY0XEyh1dLVAr6G7SFTUamkvGcS/gxapl8/rRE7xHFR2AuIg+AjNClSujG134eHz/OrhTXmtwjBKF8v97/RZmXnM2mAAxPgpfawdo4IoZLJDleYPbISLw4QYqJ3AYEg5mrJg69Pb5Y+ngNcPMEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778621477; c=relaxed/simple;
	bh=NWY7LKYDdrZC2kJTTjgYvbM4pbJomSofoyUMBSxX3dQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OHtPkPaW2UQ2KFFWZQtaVkbALafjvrORGzwmKRzTVTU88LlcqnQLo7/1BAF7yj7EgSBrRuEtRQGvn1zjT13fxxB9dx/TGkUQtA1TAOxqV2a5sI4hnNKj3/3jgdjWcXEbpR8dFgRE4DrlHxJxDVqsplNVsFnJP2swJaFgiMy0bc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMDHsuKi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7414FC2BCB0;
	Tue, 12 May 2026 21:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778621476;
	bh=NWY7LKYDdrZC2kJTTjgYvbM4pbJomSofoyUMBSxX3dQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=sMDHsuKim8HQQe/ahs4aWB2DjkABsaqJFxac6RErfZt6c23FGhf7jHVDDGSi60Zd3
	 oEdDFCj/rlyiU/gDGoIV23IrmkJPB7yIHL5q0VzDvL1XNYqOoBl6Aa+60cfNSHcGPo
	 jFhgMyDMO2e1qyyv41wh5aNocVscVtIMQlQH8sNdqvLdPB29y8cx5mRCQbbVlnn2ZR
	 Y0G/Kia/Pg9A+nAaoncEYNiN1gB3YR19nnSSNT7bpTsvuQP+V55t11jkhYYG9BdasG
	 DaOelwM+NWmVVBR6rRWvSZdsl2kjZTjwBwbI80sYc7dofhbcVrhh4uV5Lc33B/TOSc
	 kgKR/bmCxDHtw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v6 09/12] net: airoha: Do not stop GDM port if
 it is shared
Reply-To: sashiko@lists.linux.dev
To: "Lorenzo Bianconi" <lorenzo@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511-airoha-eth-multi-serdes-v6-9-c899462c4f75@kernel.org>
References: <20260511-airoha-eth-multi-serdes-v6-9-c899462c4f75@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 21:31:15 +0000
Message-Id: <20260512213116.7414FC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A6D7A52A4F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296495-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Stopping a net_device leaves its packets in the shared QDMA hardwa=
re TX ring, causing a BUG_ON kernel panic or Use-After-Free when the hardwa=
re later transmits them.
- [Medium] When decreasing the MTU on a shared GDM port with multiple activ=
e users, the hardware MTU is not reduced to match the new global maximum.
- [Low] The function parameter `netdev` is overwritten in a loop within `ai=
roha_dev_stop()`.
--

commit 30071ffd90f181adfa0fb1ab6717d5d5cfa7e0e8
Author: Lorenzo Bianconi <lorenzo@kernel.org>

net: airoha: Do not stop GDM port if it is shared

Theoretically, in the current codebase, two independent net_devices can
be connected to the same GDM port so we need to check the GDM port is not
used by any other running net_device before setting the forward
configuration to FE_PSE_PORT_DROP.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> index 4efd36779453e..aed182c7a5e17 100644
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c
[ ... ]
> @@ -1759,6 +1769,7 @@ static int airoha_dev_stop(struct net_device *netde=
v)
>  	struct airoha_gdm_dev *dev =3D netdev_priv(netdev);
>  	struct airoha_gdm_port *port =3D dev->port;
>  	struct airoha_qdma *qdma =3D dev->qdma;
> +	u32 len =3D 0;
>  	int i;
> =20
>  	netif_tx_disable(netdev);
> @@ -1766,8 +1777,23 @@ static int airoha_dev_stop(struct net_device *netd=
ev)
>  	for (i =3D 0; i < netdev->num_tx_queues; i++)
>  		netdev_tx_reset_subqueue(netdev, i);

If another device is still using the QDMA (qdma->users > 1), the hardware TX
ring is not cleaned up. NAPI polling is bound to a dummy device and continu=
es
running.

When NAPI later processes the stopped device's pending TX completions, it
unconditionally calls netdev_tx_completed_queue() which invokes
dql_completed().

Since BQL was reset here, will this trigger a BUG_ON in
lib/dynamic_queue_limits.c? Furthermore, if the device was unregistered,
would the skb->dev access in the completion handler result in a
use-after-free?

> =20
> -	airoha_set_gdm_port_fwd_cfg(qdma->eth, REG_GDM_FWD_CFG(port->id),
> -				    FE_PSE_PORT_DROP);
> +	for (i =3D 0; i < ARRAY_SIZE(port->devs); i++) {
> +		if (!port->devs[i])
> +			continue;
> +
> +		netdev =3D port->devs[i]->dev;

This isn't a bug, but this loop reassigns the local parameter netdev. While
it might be functionally harmless right now because netdev isn't dereferenc=
ed
later in this function, could this create issues for future modifications
expecting netdev to still point to the device being stopped?

> +		if (netif_running(netdev))
> +			len =3D max_t(u32, len, netdev->mtu);
> +	}
> +	len +=3D ETH_HLEN + ETH_FCS_LEN;
> +	airoha_fe_rmw(qdma->eth, REG_GDM_LEN_CFG(port->id),
> +		      GDM_LONG_LEN_MASK,
> +		      FIELD_PREP(GDM_LONG_LEN_MASK, len));
> +
[ ... ]
> @@ -1919,13 +1945,18 @@ static void airoha_dev_get_stats64(struct net_dev=
ice *netdev,
>  static int airoha_dev_change_mtu(struct net_device *netdev, int mtu)
>  {
>  	struct airoha_gdm_dev *dev =3D netdev_priv(netdev);
> +	u32 cur_len, len =3D ETH_HLEN + mtu + ETH_FCS_LEN;
>  	struct airoha_gdm_port *port =3D dev->port;
> -	u32 len =3D ETH_HLEN + mtu + ETH_FCS_LEN;
>  	struct airoha_eth *eth =3D dev->eth;
> =20
> -	airoha_fe_rmw(eth, REG_GDM_LEN_CFG(port->id),
> -		      GDM_LONG_LEN_MASK,
> -		      FIELD_PREP(GDM_LONG_LEN_MASK, len));
> +	cur_len =3D airoha_fe_get(eth, REG_GDM_LEN_CFG(port->id),
> +				GDM_LONG_LEN_MASK);
> +	if (len > cur_len || !port->users ||
> +	    (port->users =3D=3D 1 && netif_running(netdev)))
> +		airoha_fe_rmw(eth, REG_GDM_LEN_CFG(port->id),
> +			      GDM_LONG_LEN_MASK,
> +			      FIELD_PREP(GDM_LONG_LEN_MASK, len));

If there are multiple running devices on the shared port and they all lower
their MTU, this condition prevents the hardware MTU from being updated to
match the new global maximum. Should this iterate over port->devs to compute
the actual maximum MTU of all running devices, similar to how it is handled
in airoha_dev_stop()?

> +
>  	WRITE_ONCE(netdev->mtu, mtu);
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-airoha-eth=
-multi-serdes-v6-0-c899462c4f75@kernel.org?part=3D9

