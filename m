Return-Path: <devicetree+bounces-310473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lbBKLuC5KmpEvwMAu9opvQ
	(envelope-from <devicetree+bounces-310473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:36:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4426725EF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:36:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=hugovil.com header.s=default header.b=nuKzse3C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310473-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=hugovil.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5EC830A0E9F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C793537C8;
	Thu, 11 Jun 2026 13:36:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41A2351C06;
	Thu, 11 Jun 2026 13:36:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781184987; cv=none; b=IgZpZsSU4svq8bKOYWsQoNoE3UNUeJsnWa1R6dW8l2GYhJHqg5z87Rj87gWQWqCxtlCCc7NGr3ZY6MDcunIN+4hw2uHjDwPZbKdc7x3v68xFJiyJ6xZUP3mb49x7QCgBrwgNLrUIrGrQnntYgiKzNgM+YTjxKJ8bTaiXgeplpNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781184987; c=relaxed/simple;
	bh=jL4RVWOMKfmO7To2mIRY2VeXK5iqly0JFuNFa8wsmIs=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=btdaiIhb6B3DXAKCnofOXN12hCI2V609c7oC+Iwfw3sTFss3lTj3jioRY/OunytHVfiZm39GIuptq0vLxcQAgawWHo2TXv5wGeaQHlb9xd65Evi0S7TDW/7xXKGjeVwzhHyEGzWSJlZxwi8x2aA+XgN/7kRb2DgZeI5H3bp7/Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=nuKzse3C; arc=none smtp.client-ip=162.243.120.170
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:Mime-Version:Message-Id:Subject:Cc:
	To:From:Date:subject:date:message-id:reply-to;
	bh=fxfUrM2C5cSU/ZQ2peV7mA0YDwTurUP7o3lWO7jM/k4=; b=nuKzse3C6h8sLjkBdRJ2jY5Kyl
	5FSAvCnDp6hhjOsiYNBDoT+KHNLAl8ju6okPofvst2NtyiQu/eosRRMoKvywhWvV6JIJtin+kmbkQ
	b1Xl/BXvFUHdnwlm0ohbsEHGp18+37omxU/rGL9QWTPZhvnQ49ekfSmgHQxffgBw5pHw=;
Received: from modemcable061.19-161-184.mc.videotron.ca ([184.161.19.61] helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1wXfZl-000000006dp-3Owy;
	Thu, 11 Jun 2026 09:36:06 -0400
Date: Thu, 11 Jun 2026 09:36:03 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
 simona@ffwll.ch, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, shawnguo@kernel.org,
 laurent.pinchart+renesas@ideasonboard.com, antonin.godard@bootlin.com,
 Frank Li <Frank.Li@nxp.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>
Subject: Re: (subset) [PATCH v2 00/15] var-som-6ul: improve support for
 variants
Message-Id: <20260611093603.898cab77746853acac1e740c@hugovil.com>
In-Reply-To: <178111898079.1109057.8610962818602994576.b4-ty@b4>
References: <20260305180651.1827087-1-hugo@hugovil.com>
	<178111898079.1109057.8610962818602994576.b4-ty@b4>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam_score: -2.0
X-Spam_bar: --
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[hugovil.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[hugovil.com:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310473-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:laurent.pinchart+renesas@ideasonboard.com,m:antonin.godard@bootlin.com,m:Frank.Li@nxp.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:hvilleneuve@dimonoff.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:laurent.pinchart@ideasonboard.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,pengutronix.de,bootlin.com,nxp.com,vger.kernel.org,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,dimonoff.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[hugovil.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,dimonoff.com:email,hugovil.com:dkim,hugovil.com:mid,hugovil.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF4426725EF

On Wed, 10 Jun 2026 15:18:16 -0400
Frank.Li@oss.nxp.com wrote:

> From: Frank Li <Frank.Li@nxp.com>
> 
> 
> On Thu, 05 Mar 2026 13:06:15 -0500, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> >
> > Hello,
> > this patch series improves support for Variscite VAR-SOM-6UL based boards.
> >
> > The first two patches fix DT/dmesg warnings.
> >
> > [...]
> 
> Applied, thanks!
> 
> [14/15] dt-bindings: display/lvds-codec: add ti,sn65lvds93
>         commit: bd584193a91ef2e190a2cf19f9320387fda1a21d
> 
> Other dts part already picked by me. This binding have not picked by
> subsystem mainatiner by twice ping. I picked it to avoid CHECK_DTB warnings.

Thank you for that.
Hugo.

> 
> 
> Best regards,
> --
> Frank Li <Frank.Li@nxp.com>

