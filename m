Return-Path: <devicetree+bounces-317524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zDH5M36LQ2rnawoAu9opvQ
	(envelope-from <devicetree+bounces-317524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:25:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 368176E21F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:25:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BjFtZ6lY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317524-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317524-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50D5D3075CBD
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB5838B7B0;
	Tue, 30 Jun 2026 09:18:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC8E35F5F8;
	Tue, 30 Jun 2026 09:18:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811123; cv=none; b=n7i9z8kFovpnyzF31v2vZ8qqDkFL5+WtA7wmljY0j1IlYu2LA7FYcxEvrjRLUcqz4pN9CVLsThiYgESt1c7TI+An85Ki3fxcnqXAb90jLl21Kl9X+qdCl0204bKfnEcDOERpX28gKi4f9KssJwFyzYpQRMd47R5s1kvgFSsjVbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811123; c=relaxed/simple;
	bh=X29VePm95MCgABr7iJfqKTBMBDQQyDsnnWLJgSZHTHU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fbFTAkiN6GdCsy4RuU5XKWUKB3xw0V0ZhlA9x2X+c5Ao/AmDLobGj7cbPEQFGjS3JDz20zDP7gFJZKL+ErG5kjstxgU2SAGTP5Pn+PdhNgtkB4t29H8Di53wuCRJDxXs+e+c56UwcMv/QDgljuqqHAtsqyMuEbmk7IfF2ysx5Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjFtZ6lY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFD6D1F00A3E;
	Tue, 30 Jun 2026 09:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811122;
	bh=EH5/L2M1XpJnyfHNsfPqgccrseXM6UKjnYvjmKgJ5Jc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BjFtZ6lYWu6gymDB6S0FINyVl8dWvlLSYBgSnNC4plnBdpg9Bf8IbCuB4qEfCdd3R
	 fiNK8D8w9m1rpA7c4hWxGwx5kQr1qF09kJfxTHufYclbQuvybA7gA4gQornzq8HTEX
	 atB9RL9bYSPmkJ22BjiLBwpK56fQ5YyqSNG5LpVDLlnTdRYRbQj6XiE+VnjLRY3BRL
	 heOu8U7xlr9si9xHfeyXSx4w/jUxL6u7tJXbHbZUXdMru/IAJvK27mCCeEQ68j5UOe
	 ddaNFJfVVW4SaeiobgLW81UpGdicHlRTkO8Ki5FdK8Kq50j09HSw3wXn40aZzsHvB0
	 IlvdoEFzOHISQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 17/19] usb: musb: use
 platform_device_set_of_node_from_dev()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, imx@lists.linux.dev
In-Reply-To: <20260629-pdev-fwnode-ref-v2-17-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-17-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:41 +0000
Message-Id: <20260630091841.CFD6D1F00A3E@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317524-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 368176E21F7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Incomplete migration to `platform_device_set_of_node_from_dev()` l=
eading to OF node reference leaks.
--

commit fb8a9bf1bacccb38cbdade8a447f9b482f1bd4a3
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

usb: musb: use platform_device_set_of_node_from_dev()

Ahead of reworking the reference counting logic for platform devices,
encapsulate the assignment of the OF node from another device for
dynamically allocated platform devices with the provided helper.

> diff --git a/drivers/usb/musb/jz4740.c b/drivers/usb/musb/jz4740.c
> index df56c972986f7..c770ba576f05b 100644
> --- a/drivers/usb/musb/jz4740.c
> +++ b/drivers/usb/musb/jz4740.c
> @@ -273,7 +273,7 @@ static int jz4740_probe(struct platform_device *pdev)
>  	musb->dev.parent		=3D dev;
>  	musb->dev.dma_mask		=3D &musb->dev.coherent_dma_mask;
>  	musb->dev.coherent_dma_mask	=3D DMA_BIT_MASK(32);
> -	device_set_of_node_from_dev(&musb->dev, dev);
> +	platform_device_set_of_node_from_dev(musb, dev);

[Severity: High]
Are there other MUSB drivers that need to be updated to prevent OF node
reference leaks?

When the dynamically allocated MUSB platform device is destroyed (e.g.,
during driver unbind or probe error), the reworked platform device reference
counting will drop references using fwnode_handle_put(pdev->dev.fwnode) rat=
her
than of_node_put(pdev->dev.of_node). Because device_set_of_node_from_dev()
doesn't set pdev->dev.fwnode, this leaves the fwnode pointer NULL and leaks
the OF node reference.

It looks like several other MUSB drivers still use
device_set_of_node_from_dev() for dynamically allocated platform devices:

- drivers/usb/musb/mpfs.c:mpfs_probe()
- drivers/usb/musb/musb_dsps.c:dsps_create_musb_pdev()
- drivers/usb/musb/omap2430.c:omap2430_probe()
- drivers/usb/musb/ux500.c:ux500_probe()

Will these also be updated to use platform_device_set_of_node_from_dev()?

> =20
>  	glue->pdev			=3D musb;
>  	glue->clk			=3D clk;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D17

