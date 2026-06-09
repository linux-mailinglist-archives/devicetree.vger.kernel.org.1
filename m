Return-Path: <devicetree+bounces-308601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TlkKHBaBJ2pDyQIAu9opvQ
	(envelope-from <devicetree+bounces-308601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:57:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D9F65BEBF
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 04:57:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308601-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308601-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30FB230134BA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 02:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C67635F8B9;
	Tue,  9 Jun 2026 02:56:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp153-176.sina.com.cn (smtp153-176.sina.com.cn [61.135.153.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D9228686
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 02:56:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780973781; cv=none; b=paglDlOEgGvxW0ZZkT68hVJh/Hppuuc4hkoZ+RgUhN5Lbcvci0P4MuIrIHPohdtyHgMLkrcJzH2L/r2AZbBhZ3uT/cMelizeOdkarc0R1yCg1nvYRRkMmWqWF9au3sJTt6w1XbemJynRarTPxFhVTzFXm1toaFLSZJ0HOAK3W7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780973781; c=relaxed/simple;
	bh=HePgEuoo3ziU5SWC6GbQ92/7PTjIDWDACcIxTAdc8Fo=;
	h=From:To:Cc:Subject:Date:Message-Id; b=rVtqQX5Vv0sCVZizoDKpI9jnIjEnSygQ37fDngOQoIN+avs5DDfoI/r/TAnYwfZZWXklPRD6n+OqFTRG3yGXKChGgGLeW7d7I7mNKJMWMBfrXfiJFq2zMllc30eBet/sztbgK7/gXcUzJeq034zpYj/JmwvZ2WLvkMts1KwxOu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=61.135.153.176
Received: from unknown (HELO zy-virtual-machine.localdomain)([58.38.107.94])
	by sina.net (10.54.253.38) with ESMTP
	id 6A2780C700004488; Tue, 9 Jun 2026 10:56:08 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
X-SMAIL-MID: 3884F6CF9B7A4E66AA28A205CEDBF88A
X-SMAIL-UIID: 3884F6CF9B7A4E66AA28A205CEDBF88A-20260609-105608
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 0/7] ASoC: codecs: ES8389: Modify the ES8389 driver
Date: Tue,  9 Jun 2026 10:55:58 +0800
Message-Id: <20260609025605.16945-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308601-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[everest-semi.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alsa-devel@alsa-project.org,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:tiwai@suse.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:zhangyi@everest-semi.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhangyi@everest-semi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[everest-semi.com:mid,everest-semi.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5D9F65BEBF

v0:
  - Modify volatile_register
  - Add MCLK_MASK to resolve the issue related to mclk_src
  - Modify configuration about clock
  - Add private members about HPF at driver and devicetree
  - Add INPUT MUX at route

Zhang Yi (7):
  ASoC: codecs: ES8389: Modify volatile_register
  ASoC: codecs: ES8389: Fix the issue about mclk_src
  ASoC: codecs: ES8389: Modify the clock table
  ASoC: codecs: ES8389: Modify the initial configuration
  ASoC: codecs: ES8389: Add private members related to HPF
  ASoC: codecs: ES8389: Add INPUTL MUX and INPUTR MUX
  ASoC: dt-bindings: ES8389: Add members about HPF

 .../bindings/sound/everest,es8389.yaml        |  23 +++
 sound/soc/codecs/es8389.c                     | 136 +++++++++++++-----
 sound/soc/codecs/es8389.h                     |   6 +-
 3 files changed, 125 insertions(+), 40 deletions(-)

-- 
2.17.1


