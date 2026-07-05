Return-Path: <devicetree+bounces-320691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EZGLH66oSmp4FgEAu9opvQ
	(envelope-from <devicetree+bounces-320691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 20:55:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC3E70AD3B
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 20:55:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=tillo.ch header.s=mail202603 header.b=NLMUdShJ;
	dmarc=pass (policy=quarantine) header.from=tillo.ch;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320691-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320691-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C71E83003EAA
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 18:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B932F7EED;
	Sun,  5 Jul 2026 18:55:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mdapi.ch (mail.mdapi.ch [31.3.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0982D2848A1;
	Sun,  5 Jul 2026 18:55:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783277736; cv=none; b=XTYZBE4qyz5E7gKk5gC1iwMeDPw8uLbakfqnNhjsNiDvjNIirHrTmMp88BzgNB9xinkAgy1fI36V+mOiPIzXCGP70+JmIChbjaj5WD93TVKRwTLRKvAFMULGoqUk919dCU7w7fBr4dSmoRJWuRy8GOEanE7gPa7PyyorKnnEm3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783277736; c=relaxed/simple;
	bh=X3s+/ParZGutlIjQLSuAI0IrbHulKPYjszcMT2PF/co=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=twSLEqpPzv5hstRNGGTvcrQCW2CgLb5wYV0zOdVD9pV5mVPkIX9quSSLEUqycTbqZ3na/dNE5Stn0xPX7cOVnKTET3oKbifDm4UIG4cNUki4cehZgrYJlBRugo3svWUNH6+sjLgzqHD+4LOuPEBszlAR3MRVxk9MuFCP7piVWLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tillo.ch; spf=pass smtp.mailfrom=tillo.ch; dkim=pass (2048-bit key) header.d=tillo.ch header.i=@tillo.ch header.b=NLMUdShJ; arc=none smtp.client-ip=31.3.128.54
From: Martino Dell'Ambrogio <tillo@tillo.ch>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tillo.ch; s=mail202603;
	t=1783277730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X3s+/ParZGutlIjQLSuAI0IrbHulKPYjszcMT2PF/co=;
	b=NLMUdShJ9c1NiBRPaRo29NTdt5nNsMPDmvNm11/HwY+IG8GqYFGfwmn344/jnfdUqR73XK
	jLBGPmQKEGxQugLMvrwXUuw6l5fSwvNJyDl+mPif8clzU2Qg3xlZIt/nd0nmlyhbatfeWH
	5WKigcKslzMfGuelVuc32QlUvRBEDalCJpBcj3nB7nEyAyyoYO9f0YSPZ2fNEV2TM56V9K
	SG22gcmqLv0Kh0gN8um8xj4tZ0ywhmWDb6baPlFndLrp5z4pL7KZGCSUEYpWEy2C0SM31P
	sihCXpmvzTn04S/6de8+XgeJrFNRCOiYh2n/p7uwAa9mkrjqPAAPJpPRc+3hvA==
To: matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com
Cc: kees@kernel.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Martino Dell'Ambrogio <tillo@tillo.ch>
Subject: Re: [PATCH v2] arm64: dts: mediatek: mt7988a-bananapi-bpi-r4: add ramoops region
Date: Sun,  5 Jul 2026 20:55:13 +0200
Message-ID: <20260705185513.138353-1-tillo@tillo.ch>
In-Reply-To: <20260528123645.2650085-1-tillo@tillo.ch>
References: <20260528123645.2650085-1-tillo@tillo.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[tillo.ch,quarantine];
	R_DKIM_ALLOW(-0.20)[tillo.ch:s=mail202603];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-320691-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tillo@tillo.ch,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:kees@kernel.org,m:tony.luck@intel.com,m:gpiccoli@igalia.com,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tillo@tillo.ch,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tillo@tillo.ch,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[tillo.ch:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EC3E70AD3B

Gentle ping - is there anything I should improve on this one?

The matching BPI-R3 (mt7986a) patch is at:
https://lore.kernel.org/all/20260528123655.2650868-1-tillo@tillo.ch/

Thanks!
Martino

