Return-Path: <devicetree+bounces-325124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8n+lCWj6U2oiggMAu9opvQ
	(envelope-from <devicetree+bounces-325124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C3D745D78
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 22:34:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=QbMPaVBb;
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325124-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325124-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B3E03001CD1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 20:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52BB63B47CA;
	Sun, 12 Jul 2026 20:34:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D85D3B442F
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 20:34:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783888481; cv=none; b=N7elGjmnK0AP8lEZjur67SWofVpac0Yrj9u79hS+2gdGhe3gwNetPqVpexGwF/eY34P1nCfxx9fzTYvomoRVjZW3LNiL555GFtl8yGxx6myL4ctt/akFuICOtItprhJSvPQwrDKF7Mcgt/otp794YXKbfNBFryuthml5bld/l7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783888481; c=relaxed/simple;
	bh=0lCx3uJLC0QvZdkTZxjYJ06ZDgtS9hT75ZAPb0+6KQw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UilMU6uQrhY0ICeU0EMWfndAZuHF9Ib2OD5hysPP/MMK8xOkFdLen1mbaveMlzGIGZrnz03geqxzRas0zRbGyRhcU0iLic5UTh79k+P1LkS1deTVMD2OTOeKod47Mi4jKCsm3oCQUboH4K6WkaOJf28OJzxYvCEp5sUaDpAU67E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=QbMPaVBb; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2westCkTI2EE14pA7ejSU5HuW2PbVOQcSsUv15jFNlU=; b=QbMPaVBbJIp3LKUESMjaC/cW//
	/OJ685b/a2KsTfx4nHDV2MeAJigZo58qN+uPcfT5m1IuTLy85jEFyyGTzicIXDnUmFyS5K+oa5FA+
	wER4jJEciXfTJa1KxbFEeK34wMnFJYUTteUHevdvqrSzWZs+oUhzNriLtzGZBSdjsEQ+Eaf/8f2cb
	6XnOLByglEm67O5Q1EfpOTzXjPXZzpFRddqV5a4pWio/MLWYmvjqLYufIhGcgWhZeQquj5PXJJKOV
	WJVm95S5n8gON8UTLasdz/G7l+YPNWP6CrTNhX/wZN6fo0rZ0TYavtsW/PrP602qsHxIcEqx40Xps
	sdbpYtpg==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Marius Dinu <m95d+git@psihoexpert.ro>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] arm: dts: rk3288-tinker: add eeprom node
Date: Sun, 12 Jul 2026 22:33:59 +0200
Message-ID: <178388833985.1396294.12062484754801637689.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
References: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325124-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:m95d+git@psihoexpert.ro,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:m95d@psihoexpert.ro,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,git,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:from_mime,sntech.de:email,sntech.de:mid,sntech.de:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24C3D745D78


On Fri, 03 Jul 2026 11:44:53 +0300, Marius Dinu wrote:
> This board contains an EEPROM that holds the CPU serial number and ethernet
> MAC. It is used by U-boot when configured to use upstream device tree from
> Linux kernel.
> 
> 

Applied, thanks!

[1/1] arm: dts: rk3288-tinker: add eeprom node
      commit: bd504200195c0bcb26706f363814d3426ef3baa7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

