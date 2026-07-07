Return-Path: <devicetree+bounces-322050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xFlfDrf/TGoItQEAu9opvQ
	(envelope-from <devicetree+bounces-322050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:31:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 916FC71BEF3
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:31:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gsgRWu2n;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322050-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322050-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 180573164257
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4EE41A780;
	Tue,  7 Jul 2026 13:25:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249A6414DC1;
	Tue,  7 Jul 2026 13:25:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430704; cv=none; b=aqM8ZjBdicqKdCqYEfCnxgQdo9kTNi5OELz70qhD4oUCrmkHVeBHlU4XDh8EKWxp+AJAfwF3VQYe1SGMqzYNAJkh0tpmS5sHuApufXXS6PQZFlUV/0OxOKv/4pNRc2q/S2+tE5hFNT74q2DXGRN99G5JfVJU2gmwiUrszVVhgDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430704; c=relaxed/simple;
	bh=IvnauMqRe353Ev9Rm51MWDfDX/TetM2rWDjKus+EmEY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H63KvqFFtrVjfP1hTW9dVUFuP0b0mevvZvn2Hbl/9VZ6zUiRZFwjoYO5919ZHwW7Lg+J5/uvS5SVcFkkuKt5bClNYo7aWU/TNMcuqynwgQZQWJGIg1w7H15Luw3TzpHGv3RSBNHxuzx+dh02EUbVKwOilSrITlOyzJj/Dt3uiYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsgRWu2n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42CEE1F000E9;
	Tue,  7 Jul 2026 13:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430702;
	bh=M9tvm8sIPcCxRMUXUlzw57GONPoFPcsd8Vr4faaoYa0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gsgRWu2nDDm5TA1Jc7MVq1xdvwNeQR21TfG27zw+KwE7V7vBdxbViZFihKQ9rSOsD
	 vf/pW06XjQYjLyXsfcQOtn9zHzDulI41pxZE9m2990L6TUlHV2c3fYlp3TM23y77ay
	 V3nvvmkDUsc74DZNfyKAgKaq/Fvq11LUY4nS1fNfjEooH73QXVUmo2mg5z8Yf2LwGA
	 iiZUNLSzAEBAXnqn+ilkD/xbY4c/5tklr7ZzYzZJMQvnLbuMeXR86S2kijOl5XN7oD
	 alPEpfiRO6qaWRkcgJdRNAcD3r0L8xp/5tcwSH08Fmuk0hgkePzTNRoXB07ZPtIW5Q
	 /s2htwetmYMDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 14/20] net: mv643xx: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, lee@kernel.org, dri-devel@lists.freedesktop.org, imx@lists.linux.dev, mfd@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260706-pdev-fwnode-ref-v3-14-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
 <20260706-pdev-fwnode-ref-v3-14-1ff028e33779@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:25:01 +0000
Message-Id: <20260707132502.42CEE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322050-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:lee@kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:mfd@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 916FC71BEF3

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Dynamically allocated platform devices are leaked during driver re=
moval due to missing `platform_device_put()`.
- [High] The static global `port_platdev` array is accessed without synchro=
nization, leading to probe races and cross-device teardown corruption.
- [High] Missing `phy_disconnect()` on the error path of `mv643xx_eth_probe=
()`, leading to a use-after-free of the `net_device`.
--

commit 286e3bdd9b38ee5d56ee5ff7b8525f2effcb4c53
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

net: mv643xx: use platform_device_set_of_node()
   =20
Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node for dynamically allocated
platform devices with the provided helper.

> diff --git a/drivers/net/ethernet/marvell/mv643xx_eth.c b/drivers/net/eth=
ernet/marvell/mv643xx_eth.c
> index 1881583be5ce2..9caa1e47c174c 100644
> --- a/drivers/net/ethernet/marvell/mv643xx_eth.c
> +++ b/drivers/net/ethernet/marvell/mv643xx_eth.c

[ ... ]

> @@ -2780,7 +2780,7 @@ static int mv643xx_eth_shared_of_add_port(struct pl=
atform_device *pdev,
>  		goto put_err;
>  	}
>  	ppdev->dev.coherent_dma_mask =3D DMA_BIT_MASK(32);
> -	ppdev->dev.of_node =3D of_node_get(pnp);
> +	platform_device_set_of_node(ppdev, pnp);

[Severity: High]
This isn't a bug introduced by this patch, but does this dynamically alloca=
ted
platform device leak during driver removal?

Earlier in mv643xx_eth_shared_of_add_port(), platform_device_alloc() sets t=
he
initial reference count to 1. During removal, mv643xx_eth_shared_of_remove()
calls platform_device_del(), which removes the device from the hierarchy but
fails to drop the reference count.=20

Without a matching platform_device_put(), the device and its associated data
leak on unbind or probe failure.

[Severity: High]
This is also a pre-existing issue, but could this global port array logic
cause cross-device teardown corruption?

This function searches for a free slot in the global port_platdev array
without synchronization:

mv643xx_eth_shared_of_add_port() {
    ...
    while (dev_num < 3 && port_platdev[dev_num])
        dev_num++;
    ...
}

If controllers probe concurrently, they could race on this global state.
Additionally, if one controller is unbound via sysfs,
mv643xx_eth_shared_of_remove() unconditionally iterates over the global
array and deletes all ports:

mv643xx_eth_shared_of_remove() {
    ...
    for (n =3D 0; n < 3; n++) {
        if (!port_platdev[n])
            continue;
        platform_device_del(port_platdev[n]);
        port_platdev[n] =3D NULL;
    }
}

Wouldn't this destroy active network ports belonging to completely independ=
ent
controllers sharing the driver?

[Severity: High]
This is another pre-existing issue, but does the probe error path leave a
dangling pointer in the PHY subsystem?

In mv643xx_eth_probe(), the driver connects the PHY (which attaches it and
stores a pointer to the net_device in phydev->attached_dev). If a subsequent
operation in the probe fails, the error path frees the net_device but never
disconnects the PHY:

mv643xx_eth_probe() {
    ...
out:
    if (!IS_ERR(mp->clk))
        clk_disable_unprepare(mp->clk);
    free_netdev(dev);
   =20
    return err;
}

Can this lead to a use-after-free if the PHY device remains active and
is later accessed via sysfs or core PHY polling routines?

> =20
>  	ret =3D platform_device_add_resources(ppdev, &res, 1);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-pdev-fwnod=
e-ref-v3-0-1ff028e33779@oss.qualcomm.com?part=3D14

