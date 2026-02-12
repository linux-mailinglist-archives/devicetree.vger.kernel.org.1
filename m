Return-Path: <devicetree+bounces-265150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DFZFVUEjmlf+gAAu9opvQ
	(envelope-from <devicetree+bounces-265150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:48:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7587F12F983
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D9563038BBC
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F42329C48;
	Thu, 12 Feb 2026 16:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="nsimCLxx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9F0188596;
	Thu, 12 Feb 2026 16:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914863; cv=none; b=B0OUWrXgiA4IZ+nzBOWFjEFJFVcww/P6kNy6r1+zKrHum6D+dPJNSMFXnEm4Ek/svSe+YEcIB/XpOp1GhbXUClKtke4FXb8XepMt1IiVB7P0G51IRuznuyKpM6bGSqcljWUvq9KsFUV0JaVpeHs3ip4Lvxx+fuYPh7fg5D982As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914863; c=relaxed/simple;
	bh=HfWxHbBePZ0g/Qa3pRU+GP1yuv4vTXBDajaYFDPmVMA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pJwpzs+2GkIRugQcY1+HuVulwH91MNFcTd26lWY9VZKNLiOgUTFtdgEqxP8vVFrZwB6rXj9ZfeDyKf2nEmt/Jnf6JgSeQWQ3mKy0xTF5UeIaZzJQ6kmoLTwz/RoQSZ720fTN961k+r9hHmlt22V86+WEvfBUvcKOmRO96VnVzVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=nsimCLxx; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=545wPjcAu5b4eUfWWgzfH5f+xPToJque93C0kExRh8c=; b=nsimCLxxy2uNPv3OPg/1vANP2M
	PaJ/pIr9duqcN8UIiRhhMa/QdD4Tkva+uTFZRxeX2GVWACowhYeQrpN2PsuLn9lm4tEfO2eFb2LXE
	sRrsl+JNgYuKHEr3eakfCQY0YoTHeIPByhltH5nu/C3JNLZhQXQGe9upoFwy2xzP5/kfSVdtLAb0j
	6SVgGhzg3a53cKEinPRllo8rHFiiWdos1AOMu8JUMV8Dj+R1bjwZ6yL/ICVoAWayUy1MgQp9wuVf4
	l7dXxyzzQrnWk5pbGCQHFdoV+Vn67IjpOAV7GoPrVmqWTXHrFijY70+XQrcRCossrzUk8ct7fEyl9
	Gozkp9NA==;
Date: Thu, 12 Feb 2026 17:47:18 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: "Kory Maincent (TI)" <kory.maincent@bootlin.com>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Bajjuri Praneeth <praneeth@ti.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Louis
 Chauvet <louis.chauvet@bootlin.com>
Subject: Re: [PATCH 1/5] ARM: dts: ti: Enable overlays for all DTB files
Message-ID: <20260212174718.7daccb70@kemnade.info>
In-Reply-To: <B3366A17-641F-4E02-A5D4-978F525E0A96@goldelico.com>
References: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
	<20260212-feature_bbge-v1-1-29014a212f35@bootlin.com>
	<B3366A17-641F-4E02-A5D4-978F525E0A96@goldelico.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265150-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 7587F12F983
X-Rspamd-Action: no action

On Thu, 12 Feb 2026 16:49:43 +0100
"H. Nikolaus Schaller" <hns@goldelico.com> wrote:

> > Am 12.02.2026 um 16:26 schrieb Kory Maincent (TI) <kory.maincent@bootlin.com>:
> > 
> > Allow overlays to be applied to any DTB. This adds around ~40% to the
> > total size of the DTB files on average.  
> 
> Is this unconditionally enabled or can it be turned off by some CONFIG? We have
> our own defconfig so I would not worry if if is enabled in omap2plus_defconfig
> and disabled in ours.
> 
> We have several devices where the boot loader can't handle overlays (never touch
> a working boot-loader :) So this seems to only contribute to build and load time
> without benefit.
> 
As long as you do not add overlays, the bootloader does not care. I would
like to simply carry around the 1-bit mmc overlay for one broken board.
That would help me. So I think there is a benefit but nobody forces
you to use it.

Regards,
Andreas

