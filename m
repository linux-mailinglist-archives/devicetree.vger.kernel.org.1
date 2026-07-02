Return-Path: <devicetree+bounces-319419-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u0qnGlRtRmoHUgsAu9opvQ
	(envelope-from <devicetree+bounces-319419-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:53:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0FB6F8919
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 15:53:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kemnade.info header.s=20220719 header.b=a5Eu+OCs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319419-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319419-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=kemnade.info;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CE907302BBEA
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A6C74ADDA5;
	Thu,  2 Jul 2026 13:53:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9387F4ADD9D;
	Thu,  2 Jul 2026 13:53:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783000400; cv=none; b=fklqVPGEgTEPs/vilhgExqedkXev4/3y+7TBYGztYXjch6mR3q1Lf37j/e+y9eww6dKiHEOCj3pHzdet/G3b6QxsAtiyhAIjLDJ9tQrZXurVMcWvjTwh0aewDCTMnJvFseGX6YN4FvOtHirAoEpUjHThcTeBG4ryW/OVVy0ad20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783000400; c=relaxed/simple;
	bh=SsHv7eglcq/3f807scK8C7Ri2u8BTa5D48XTbqPe5So=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JMBFmWuq+bUL/UZw1P6CJxgEUVtDmby9sdUIQu35H/msJKi9ECrwE4NlGF1AqzgQTz0UTtiBw5qMHQdFSEX3Nw+vh8d92gx3pilXMYkmI3X8636VmJ8Id3NTkUDqvVww/zt2H5EB+hd9ITa+UvhHSJ3CpKemHRQflAbCL5NwwMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=a5Eu+OCs; arc=none smtp.client-ip=178.238.236.174
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VCUIIUrab/Ij6Ur23OzvtXOHDAu9y4qtidV7a5tuD+Q=; t=1783000397; x=1784209997; 
	b=a5Eu+OCsdUXnRnVMxsxqiJ9PZEMhELMMmc0o03tPFqHtEK8FSBGbTQFQ7iNpdFaoro2cU1QUv7d
	QyyD/xjmdHBhZ7p6qQlCYaak4Zerh1D48mW+9Zq0XBqdbYoEx9lYrY/+Do7DGYbz1bSiLq7r30Y8c
	9bpbrFmcyFQGeDMCcSQdfl5RKdDS8WdMCDVxQCpdRqccK0ByyGupwhIkwnUfFwvyjv+DRcM6Jq3xo
	J/dF16JSiz/u7IJSn6kHipblSfUmONSqIc2LlTx7sk4t7L9Pu1myyBOEjJVqHmgr+3HlIHsfk79KZ
	Mnvxxhhnduj8jn2Y8iyWmaoNTxYookvqj/sQ==;
From: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH 0/2] ARM: dts: ti/omap: embt2ws: define RGB LED
Date: Thu, 02 Jul 2026 15:52:42 +0200
Message-Id: <20260702-b200multiled-v1-0-c1799ad45c96@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACptRmoC/yXMQQqDMBBG4avIrA1MR6rgVcSFiX90RG1JVATx7
 k3b5bd476KIoIhUZxcFHBr1tSY88ozc2K0DjPbJJCwlVyzGCvOyz5vO6I2DVCh80T19SSl5B3g
 9f7um/TvudoLbvg+67w8Z3pWPcAAAAA==
X-Change-ID: 20260702-b200multiled-ce27e3f3a5f6
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Andreas Kemnade <andreas@kemnade.info>, Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=682; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=SsHv7eglcq/3f807scK8C7Ri2u8BTa5D48XTbqPe5So=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDFluuZaXel0ebnDnbNh3ylGcbR1zj2jmYq5dZ3tnXpLYM
 nOBmZxNRykLgxgXg6yYIssvawW3TyrPcoOnRtjDzGFlAhnCwMUpABOp2sbwP297SPHZ5+ytwSX9
 xXbt+3YzGTWv9Ly7ePOKPxOOCncrZDEyPOo+OUO4Rp3DVv9X/vfJawS3Tl+itOrB1X+btDaZzCr
 8xQcA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319419-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:aaro.koskinen@iki.fi,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux@armlinux.org.uk,m:linux-omap@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:andreas@kemnade.info,m:pavel@ucw.cz,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA0FB6F8919

Combine the LED definitions into an RGB LED and add the drivers into
defconfig.
This has already been suggested a long time ago.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Andreas Kemnade (2):
      ARM: dts: ti/omap: embt2ws: use mulit-led for RGB LED
      arm: omap2plus_defconfig: Enable multi-LED

 arch/arm/boot/dts/ti/omap/omap4-epson-embt2ws.dts | 13 ++++++++++---
 arch/arm/configs/omap2plus_defconfig              |  2 ++
 2 files changed, 12 insertions(+), 3 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260702-b200multiled-ce27e3f3a5f6

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>


