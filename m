Return-Path: <devicetree+bounces-298827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOzaLftYCWp7WAQAu9opvQ
	(envelope-from <devicetree+bounces-298827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 07:58:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB3055F5E0
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 07:58:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3EFA030157E7
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 05:58:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AEC2317173;
	Sun, 17 May 2026 05:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaskQcmI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC86314A98
	for <devicetree@vger.kernel.org>; Sun, 17 May 2026 05:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778997493; cv=none; b=Y2GkfHvHtsxmqbQGc5xiikpQ7EicoBiZ2sjNSrrCbuJdt7ursQBDVYL78wTOK5sJtnYHpq+ixvT1gBJpHfO6D/5xhYFn6IAtqJa1W5gJPKsZUyvlsXSiy7p6kDlSlwBS3Klxp/CMxsFWegoH8WMhNxnlaWUtR16NQPi8sRAKB3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778997493; c=relaxed/simple;
	bh=8HIzCy+GjSHUVdOl9uNLNZYoA6dtKo3bSRDMqPIT+Ko=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DMan0YtV3qiE1ULxtPYBp6Xx9qn0Y7Ii5s3jUnjZokDIEWof/op2HM/j8Vha0sEk0hqzzIZ7dzvJsde05XP0sp7RRUYQZ8n1s7G8mrbTpBmazruVjB17h25ldQ5j/GjJmwGtPmZz+E4+y32M4lG3aLMpqu9r9glmXeQofNWdMh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaskQcmI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DF3AC2BCF5;
	Sun, 17 May 2026 05:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778997493;
	bh=8HIzCy+GjSHUVdOl9uNLNZYoA6dtKo3bSRDMqPIT+Ko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=MaskQcmIWY4UZ9o/G8Fq9GK/slX6DJ8ihKzx5Fu8XqS9efEbzk+in7ViH9SdpkCOY
	 7+Lb2Oa7ecrmogX3Jbu8w57XJFWGapOe+jrCYcTSRq0fptiofXhtZZpfQqBOkuCZcW
	 4lFN5INjAOf84ponqp3ShN0LCS1R54zYlITtSEWySJUtiI0rNZq4V1NDG2Dc4fi+j4
	 ByFGQW2uWfQm8m/EDr8F1XwiYOQBVqEVHFrQQILuMMXKvQtWvkjykz0vsZ/JehQq+G
	 YO7ZiwafSHElcs/xk97yMz9hfw39PUTgCexb+lJ8XmorAEdK+R+sQQmLwDt86tgDE5
	 6I+urueYGanWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 07/10] net: airoha: Support multiple
 net_devices for a single FE GDM port
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lorenzo Bianconi" <lorenzo@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260516-airoha-eth-multi-serdes-v7-7-99e0093303e2@kernel.org>
References: <20260516-airoha-eth-multi-serdes-v7-7-99e0093303e2@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 05:58:13 +0000
Message-Id: <20260517055813.7DF3AC2BCF5@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3DB3055F5E0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298827-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Hardware state corruption for shared GDM ports
--

commit 68e8fa8fe02248409d0048f81217cd5cf7eda775
Author: Lorenzo Bianconi <lorenzo@kernel.org>

net: airoha: Support multiple net_devices for a single FE GDM port

This commit introduces support for multiple net_devices connected to the sa=
me
Frame Engine GDM port via an external hardware arbiter. Note that issues wi=
th
shared hardware state introduced here appear to be addressed in later commi=
ts
such as 28e02ac461157 ("net: airoha: Do not stop GDM port if it is shared")
and 01081daf7ce24 ("net: airoha: Introduce WAN device flag"), which add port
user reference counting, aggregate the maximum MTU, and restrict WAN loopba=
ck
configuration.

> diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ether=
net/airoha/airoha_eth.c
> --- a/drivers/net/ethernet/airoha/airoha_eth.c
> +++ b/drivers/net/ethernet/airoha/airoha_eth.c
> @@ -3035,11 +3043,25 @@ static int airoha_alloc_gdm_device(struct airoha_=
eth *eth,
>  			 netdev->dev_addr);
>  	}
> =20
> +	/* Allowed nbq for EN7581 on GDM3 port are 4 and 5 for PCIE0
> +	 * and PCIE1 respectively.
> +	 */
> +	index =3D nbq;
> +	if (index && airoha_is_7581(eth) && port->id =3D=3D AIROHA_GDM3_IDX)
> +		index -=3D 4;
> +
> +	if (index >=3D ARRAY_SIZE(port->devs) || port->devs[index]) {
> +		dev_err(eth->dev, "invalid nbq id: %d\n", nbq);
> +		return -EINVAL;
> +	}
> +
> +	netdev->dev.of_node =3D of_node_get(np);
>  	dev =3D netdev_priv(netdev);
>  	dev->dev =3D netdev;
>  	dev->port =3D port;
> -	port->dev =3D dev;
>  	dev->eth =3D eth;
> +	dev->nbq =3D nbq;
> +	port->devs[index] =3D dev;

With multiple net_devices now sharing a single GDM port, could this cause
hardware state corruption when configuring shared hardware registers?

For example, in airoha_dev_init(), airoha_set_gdm2_loopback() overwrites
the global REG_FE_WAN_PORT register entirely, which might wipe out the
configuration of previously initialized devices on the same port:

	airoha_fe_rmw(eth, REG_FE_WAN_PORT,
		      WAN1_EN_MASK | WAN1_MASK | WAN0_MASK,
		      FIELD_PREP(WAN0_MASK, src_port));

Additionally, in airoha_dev_stop(), unconditionally writing FE_PSE_PORT_DROP
to REG_GDM_FWD_CFG(port->id) appears to drop all traffic for the entire
GDM port, breaking other active devices sharing it.

Similarly, in airoha_dev_change_mtu(), overwriting REG_GDM_LEN_CFG(port->id)
with a lower MTU could restrict the hardware limit for the entire port, cau=
sing
packet drops for other devices that require a higher MTU.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260516-airoha-eth=
-multi-serdes-v7-0-99e0093303e2@kernel.org?part=3D7

