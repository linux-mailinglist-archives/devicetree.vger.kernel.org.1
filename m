Return-Path: <devicetree+bounces-269764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCNLJD3lpGmquwUAu9opvQ
	(envelope-from <devicetree+bounces-269764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 02:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8161D2463
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 02:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EB6153009893
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 01:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43123175A79;
	Mon,  2 Mar 2026 01:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="coKBvBI7"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FBD4A23;
	Mon,  2 Mar 2026 01:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772414264; cv=none; b=WgpzMDr4oWEeljQgQLTxdX6ae2FkVYPvoK222vLwMD6xX4UklvwrHfDVbB0KzSuDOgSLEsHrmxkAf7OyIwLOBVrxjX6Wu+8BIbBRVRGPnvsIJLWoGoPqpDEmXgA9KlqNE9FSy99eHrEIg28CYuBs0KSg3xtszdh89KtId15VIcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772414264; c=relaxed/simple;
	bh=mhEx/uGMGy3F4K81r2hb17bRyJMart2JeBg3hDRQ3Ss=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dKx+dXvKu7gNTBGfsFAkQ+uFb3e6TafmAg50fwFwoR1rcTNgn5MQrmJGPQZqUTieYdbgFtov4afTiB6e13N7OohW2I7baVacR8rr41FcB1PSsyqXI0OwyUPK/S9KH5LGPxCysDWmWdlg2Wgzdv64fNAAUD551LXWQdP8ijMh3GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=coKBvBI7; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=ay
	eVUG3ZWz5GOZTLqm1j7zNmBbCHjxngWbSmWErbVTQ=; b=coKBvBI7U9XjbHiRqZ
	0Hh2D8X/0dma9ToRokUkxsK6o/BENsxE7P96dR2z6QV/IL6qLrWUGc1gxHNdapX+
	QmJcY1wsu0e4siGvsYQZ5PWf6v2Wz3NbfBg01LPLl+W5LAN1E5RqLgPJXZrakOJF
	wP+4iZI3vt261bgWsmv7Roym4=
Received: from haiyue-pc.localdomain (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDHyX4F5aRpmz8NOQ--.15911S2;
	Mon, 02 Mar 2026 09:16:54 +0800 (CST)
From: Haiyue Wang <haiyuewa@163.com>
To: devicetree@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org
Cc: Haiyue Wang <haiyuewa@163.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v3 1/2] dt-bindings: clock: ast2600: Add reset definition for video
Date: Mon,  2 Mar 2026 09:15:00 +0800
Message-ID: <20260302011651.94682-1-haiyuewa@163.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDHyX4F5aRpmz8NOQ--.15911S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr4rWr1kur17tr4kZF1DJrb_yoWkZFb_C3
	47Zw4kJr1fZrn5KFsYyF1DJw4rK34UAFyftryYvryakrWrAFn0gFs5Xr9Iy3W8GFs3AF1v
	ya45Ww1fZFs7KjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRuE_NPUUUUU==
X-CM-SenderInfo: 5kdl53xhzdqiywtou0bp/xtbC8Af9aWmk5Qe7pwAA3Q
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[163.com,baylibre.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269764-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[haiyuewa@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[163.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[checkpatch.pl:url]
X-Rspamd-Queue-Id: AF8161D2463
X-Rspamd-Action: no action

Add ASPEED_RESET_VIDEO reset definition to the ast2600-clock binding
header. It is required for proper reset control of the video on the
AST2600 SoC for aspeed-video driver.

Signed-off-by: Haiyue Wang <haiyuewa@163.com>
---
v3:
  - Drop 'Fixes:' tag in header file patch.
v2: https://lore.kernel.org/all/20260227151602.829-1-haiyuewa@163.com/
  - Fix checkpatch.pl warning, and send dt-bindings as single patch as
    the submitting-patches guide.
v1: https://lore.kernel.org/all/20260227123837.70079-1-haiyuewa@163.com/
---
 include/dt-bindings/clock/ast2600-clock.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
index f60fff261130..7b9b80c38a8b 100644
--- a/include/dt-bindings/clock/ast2600-clock.h
+++ b/include/dt-bindings/clock/ast2600-clock.h
@@ -124,6 +124,7 @@
 #define ASPEED_RESET_PCIE_RC_OEN	18
 #define ASPEED_RESET_MAC2		12
 #define ASPEED_RESET_MAC1		11
+#define ASPEED_RESET_VIDEO		6
 #define ASPEED_RESET_PCI_DP		5
 #define ASPEED_RESET_HACE		4
 #define ASPEED_RESET_AHB		1
-- 
2.53.0


