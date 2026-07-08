Return-Path: <devicetree+bounces-322500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YNuzDxzkTWoM/wEAu9opvQ
	(envelope-from <devicetree+bounces-322500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:46:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B9E722047
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 07:46:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322500-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322500-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FAD93013470
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 05:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88CD3BED37;
	Wed,  8 Jul 2026 05:45:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D91725B663
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 05:45:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783489557; cv=none; b=gljTNiEdhGLA+1U5Doj7OB40aN6OxAUZ9rKu47qJWPGvic9ehZHZdJQEN7xqfBOFl/OB/hPD/N/CwrlsTnx/f7/8Zf80PDVsOrLZIgNCOP7TfIp/yVDKKLFE1YbOVWXk7EgFUo7N0HS7mWGIAK1Ae5b+DfCdf1aa4KBNKP3ltuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783489557; c=relaxed/simple;
	bh=/A7XikACXkUANpzgW9qCIpivmXAOutxxtRJHVZyMris=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lWOV9Jz31cYDE9RkY+gCj3daa0fqqOuri0NebpQgTUasduL9PMijKWAYQ05MxtuCz3SM9k1WpaZi0vELPKSkRr2zb9zpJG/2BsMQ0dIcAuqODlNcrfJvs+PYrdbg8WLRYF3SmoYuyhR1QOtfu/wTioZsbPysP4YwY3ywAASbxrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1whL6M-0003gK-H7; Wed, 08 Jul 2026 07:45:42 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Shawn Guo
 <shawnguo@kernel.org>,  Frank Li <Frank.Li@nxp.com>,  Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  imx@lists.linux.dev,  linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 3/3] arm64: dts: imx8mp-skov: support new 7inch panel
 board
In-Reply-To: <akupDXc1QA4uKfR6@shlinux89> (Peng Fan's message of "Mon, 6 Jul
	2026 21:09:33 +0800")
References: <20260706-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v4-0-dfc0c8827c02@pengutronix.de>
	<20260706-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v4-3-dfc0c8827c02@pengutronix.de>
	<akupDXc1QA4uKfR6@shlinux89>
User-Agent: mu4e 1.14.2; emacs 30.2
Date: Wed, 08 Jul 2026 07:45:41 +0200
Message-ID: <87se5ukpa2.fsf@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[bounces-322500-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:peng.fan@oss.nxp.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:shawnguo@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,pengutronix.de:from_mime,pengutronix.de:url,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C7B9E722047


Hi,

On 2026-07-06 at 21:09 +08, Peng Fan <peng.fan@oss.nxp.com> wrote:

> On Mon, Jul 06, 2026 at 09:17:57AM +0200, Steffen Trumtrar wrote:
> >This board is similar to the already upstream
> >imx8mp-skov-revc-tian-g07017.dts but uses a different 7" panel with a
> >different touch controller.
> >
> >Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> >---
> > arch/arm64/boot/dts/freescale/Makefile             |  1 +
> > .../imx8mp-skov-revc-jutouch-jt070tm041.dts        | 79 ++++++++++++++++++++++
> 
> Sorry to jump in at v4.
> 
> Compared with imx8mp-skov-revc-tian-g07017.dts, the differences are mainly
> in panel and touch.
> 
> Have ever considered using overlay?
>

no, I actually didn't. This way it is easier to decide in the bootloader which board I'm on. I could definitely do it, if this is the way to go, but would add some overhead on my side. I don't see that many overlays in arm/dts/nxp/imx. 


Best regards,
Steffen

-- 
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

