Return-Path: <devicetree+bounces-317782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E+NJHS6/Q2qOgQoAu9opvQ
	(envelope-from <devicetree+bounces-317782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:05:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 115E56E49BF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:05:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="E/kQUNJa";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317782-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317782-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 689B131AD512
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CB62421A0A;
	Tue, 30 Jun 2026 12:54:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E4C413244;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824087; cv=none; b=oLl34OEz8H1Kai3R76iVZnLsJDDQmDgmtc8j0xaw3NfZraIKCrI/AothtSMGdR2fyU7YHe29aD2xC5nOBLQJYKTicoSS6K6upjKD8bGqmMojcpiisStHVQGDWsHx0X8a/3TAnB/lqD1pJjUNQmUi4qrjdUYPEJPM1G5Dvst/vDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824087; c=relaxed/simple;
	bh=r8e0kM4W/D8E2ftGWx1AFFn/6IYvXpTFrouoTgjxWWI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jRiMdL6FgEBZdFHSwX8uW6e7Y7o4/qfEhHZzYv2JwsmNrsHjfzn8tfoQthHjLGCRvaAmlWdFcVCBi/xF6AXfK5v/G9BW+QIZv2/fNyUJcg1akpZT1biWraEw4lgXpiVAp/9p99SBefOuNnuhZ96O21e5rEW3gdBBRL2V0Z5kINg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/kQUNJa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A55C2BCFC;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782824086;
	bh=r8e0kM4W/D8E2ftGWx1AFFn/6IYvXpTFrouoTgjxWWI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=E/kQUNJaYwMDQOkR1M88RDTVQkENI4Gd/iq3UXVRP1QfLEtIFrzIO1V/OVSwafdFs
	 udev73apm9HJ/W5UZWlCqnz5XTPNT5E4+515Mwv5DjVS+XXRQPd4pHsKVze0rm9jHV
	 cS/x5VwZN4+QV5QQAfWNq4iO3i0sR+zH3soFZLAeZK36kXj5HAZh4Fi39bwPLnsxR4
	 SPqEZD8XizYBdKNVdMSdjIivA2wtYiL1xG0Ag8/fXbjorC0Dg3AgwNQUEyz3g6ZjHd
	 ufhURfKwmRu1LkEA5FrVk3qWcO2j0ikjdMeRWTzv3nB+sq8Dn6fOQ/Av1jn3UeeNC6
	 MqooNPl24l+BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0FC43327;
	Tue, 30 Jun 2026 12:54:46 +0000 (UTC)
From: Michael Reeves via B4 Relay <devnull+michael.reeves077.gmail.com@kernel.org>
Date: Tue, 30 Jun 2026 22:54:34 +1000
Subject: [PATCH 06/10] soc: apple: rtkit: Add tracekit endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-apple-mtp-keyboard-final-v1-6-506d936a1707@gmail.com>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hector Martin <marcan@marcan.st>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jiri Kosina <jikos@kernel.org>, 
 Benjamin Tissoires <bentiss@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 iommu@lists.linux.dev, linux-input@vger.kernel.org, 
 Michael Reeves <michael.reeves077@gmail.com>, 
 Sasha Finkelstein <k@chaosmail.tech>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782824083; l=1200;
 i=michael.reeves077@gmail.com; s=20260105; h=from:subject:message-id;
 bh=bN3yrDjkl9WQzPd0+ZiDDC8qRhUGrJL3vDZwtuyk+uk=;
 b=F3wNRoPaHLqPq5JGrX+geJ3sKRfXD9DJ8lDUdwzhplhgjDkgIcIt++FspWm54ohsMSn1wl/UQ
 eKgGQdqmxbPAWuKcXcWdhf5U03IZaH2GKPNEUje0wgj8gVOheUYmvhX
X-Developer-Key: i=michael.reeves077@gmail.com; a=ed25519;
 pk=QIrgWBGCm3LG0YYc6MLCDkwuVXLTGGooVBdWX/KhSiU=
X-Endpoint-Received: by B4 Relay for michael.reeves077@gmail.com/20260105
 with auth_id=591
X-Original-From: Michael Reeves <michael.reeves077@gmail.com>
Reply-To: michael.reeves077@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317782-lists,devicetree=lfdr.de,michael.reeves077.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:michael.reeves077@gmail.com,m:k@chaosmail.tech,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,m:michaelreeves077@gmail.com,s:lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.reeves077@gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,chaosmail.tech];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 115E56E49BF

From: Sasha Finkelstein <fnkl.kernel@gmail.com>

The TraceKit endpoint is a system endpoint used by MTP, AOP, and
potentially other Apple RTKit coprocessors.

Start it automatically when it appears in the endpoint map, like the
other known system endpoints, to avoid warnings about an unknown
endpoint.

Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
---
 drivers/soc/apple/rtkit.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/apple/rtkit.c b/drivers/soc/apple/rtkit.c
index a3fdac8f6f06..1059b4bd8732 100644
--- a/drivers/soc/apple/rtkit.c
+++ b/drivers/soc/apple/rtkit.c
@@ -22,6 +22,7 @@ enum {
 	APPLE_RTKIT_EP_DEBUG = 3,
 	APPLE_RTKIT_EP_IOREPORT = 4,
 	APPLE_RTKIT_EP_OSLOG = 8,
+	APPLE_RTKIT_EP_TRACEKIT = 0xa,
 };
 
 #define APPLE_RTKIT_MGMT_TYPE GENMASK_ULL(59, 52)
@@ -191,6 +192,7 @@ static void apple_rtkit_management_rx_epmap(struct apple_rtkit *rtk, u64 msg)
 		case APPLE_RTKIT_EP_DEBUG:
 		case APPLE_RTKIT_EP_IOREPORT:
 		case APPLE_RTKIT_EP_OSLOG:
+		case APPLE_RTKIT_EP_TRACEKIT:
 			dev_dbg(rtk->dev,
 				"RTKit: Starting system endpoint 0x%02x\n", ep);
 			apple_rtkit_start_ep(rtk, ep);

-- 
2.51.2



