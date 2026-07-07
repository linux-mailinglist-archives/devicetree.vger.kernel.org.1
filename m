Return-Path: <devicetree+bounces-322046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zY6qKnr/TGr1tAEAu9opvQ
	(envelope-from <devicetree+bounces-322046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:30:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D90171BEB7
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 15:30:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m6V9pTFE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322046-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322046-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7DAD630D2E96
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 13:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB094189B8;
	Tue,  7 Jul 2026 13:24:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F5641D4DE;
	Tue,  7 Jul 2026 13:24:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430699; cv=none; b=Y0Z4JHW1GGn8uwg8qaUt+CUxnuyZJ/bCmpo16Yev98EMI5lk5IPlxOPCeOWcUfkhlyIh0h0UUpVScHar3cJluKF0e1d57xVr8EYXCX4UYZOLUWgrsK5imaBailr+DI1vJYGYZUHI++ay3707LQVuR8CF4JySzTaw3v0nVBbpQvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430699; c=relaxed/simple;
	bh=iNWCRffadB+Kck3U1S6A6km6PWsdT3ya3GkDOyGRHlw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lyCLvuI/6Wbzdq45PtBH5YI/efZHWQy08W7qyIabv60yCUJnuxZynZ27sYfu3iFvfGrFiAqcq4NN1jzjP5nSyUKfILhnboud3ZnaNCDK37b8F0bmvZZVBt6+YD51Cg0cKqwR+vAjrIuesMc7YQYOrrxzE5JvlgUPRecOeoCB6tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6V9pTFE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B23C41F00A3A;
	Tue,  7 Jul 2026 13:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783430698;
	bh=F9wf81DUrFRYlTgbDUYEac7HMXcil+UOZENGoJcInJg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m6V9pTFEiov7ozZFACq6/OJ49HW+A0rUKcqJVq8EKHjrZRuHZAufmYtBK3RiApU9T
	 yiD+ybowTG+NbFpcCcPHFN5RrtA2GTHIBcoW4C05eygAY7mK1X1woN58Vm4xzH4igY
	 q7xafcgDoJgN1p7j5OzBRKMnualElX0vhPIAn/atcJJ85NQJApDj/6Wkf7LCEJg0e/
	 umoYOcldjA8ueepLrYwouegTHhB5D2JS00ecdrTpQf6jg4HqERGjfgHv/uwaAA/uhd
	 IYXhi/hj9alA3jQpnLlsc2y8iNBApxAeVp5Nc2g7QXUFv5PrOVY0y5VFI5WgqE575R
	 q0HMMOEWvGlhQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 10/20] net: bcmgenet: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, lee@kernel.org, Frank.Li@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260706-pdev-fwnode-ref-v3-10-1ff028e33779@oss.qualcomm.com>
References: <20260706-pdev-fwnode-ref-v3-0-1ff028e33779@oss.qualcomm.com>
 <20260706-pdev-fwnode-ref-v3-10-1ff028e33779@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 13:24:57 +0000
Message-Id: <20260707132457.B23C41F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322046-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:lee@kernel.org,m:Frank.Li@kernel.org,m:mfd@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D90171BEB7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] OF Node Reference Leak due to missing of_node_put() on the resul=
t of bcmgenet_mii_of_find_mdio()
--

commit 3b29ae0c601cb855b049f7da529812b74080533b
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

net: bcmgenet: use platform_device_set_of_node()

This commit encapsulates the assignment of the OF node for dynamically
allocated platform devices using platform_device_set_of_node().

> diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/e=
thernet/broadcom/genet/bcmmii.c
> index a4e0d5a682687..0f0dbabfaabbc 100644
> --- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
> +++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
[ ... ]
> @@ -490,8 +490,9 @@ static int bcmgenet_mii_register(struct bcmgenet_priv=
 *priv)
>  	/* Retain this platform_device pointer for later cleanup */
>  	priv->mii_pdev =3D ppdev;
>  	ppdev->dev.parent =3D &pdev->dev;
> +
>  	if (dn)
> -		ppdev->dev.of_node =3D bcmgenet_mii_of_find_mdio(priv);
> +		platform_device_set_of_node(ppdev, bcmgenet_mii_of_find_mdio(priv));

[Severity: Medium]
Does this leak the OF node reference? bcmgenet_mii_of_find_mdio() internally
calls of_get_compatible_child(), which returns a device node with an
incremented reference count.

Previously, direct assignment allowed the platform device to consume this
reference when it was eventually released. Now that
platform_device_set_of_node() is used, it acquires its own reference
internally.=20

Should there be an explicit of_node_put() to drop the initial reference
returned by bcmgenet_mii_of_find_mdio() so it isn't leaked?

>  	else
>  		ppd.phy_mask =3D ~0;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-pdev-fwnod=
e-ref-v3-0-1ff028e33779@oss.qualcomm.com?part=3D10

