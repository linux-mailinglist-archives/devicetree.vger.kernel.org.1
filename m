Return-Path: <devicetree+bounces-284605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KcEhNHuH0GmY8gYAu9opvQ
	(envelope-from <devicetree+bounces-284605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:37:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DCA399C23
	for <lists+devicetree@lfdr.de>; Sat, 04 Apr 2026 05:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2B9A303853E
	for <lists+devicetree@lfdr.de>; Sat,  4 Apr 2026 03:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72D1A23EA8B;
	Sat,  4 Apr 2026 03:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="jCgXOhBN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D59C7081A;
	Sat,  4 Apr 2026 03:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775273847; cv=none; b=RS+3eE6rHYOVmPGMVd6iv00H37oBbe8QdLpe9JctI5kc20zliPpVT+DV2ojoTFza1jGG7gijnC0eNjekClkseuCZ6OyTtTznnq+YIRX+7RtyHYKtSnzUKbboAkwEZyHmrDKzLopoPchEpA2X6IP5AX3XkjKneNkLQ4tvppZ7MZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775273847; c=relaxed/simple;
	bh=1tvXRwS09ZzJjjEs9WtCpWXms+pEPfd/SuI9LiFjs+I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ohsuh4TvRtub3bD/MpnrhWdRKI4Ur/6CEqH2doytoNfx1dWfe9IJywJ4j7CussEkpVK6s6gBwGK8+bp+hVRHc61nlHBnLfjPl9P4aUCnpcORe5Tt3QUz5jvuRhtwZe1xm1At6H5OHEz7pVOl4HSgzCP9Ijg+6PqECfLSsCVBJ30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=jCgXOhBN; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D46E011311A;
	Sat,  4 Apr 2026 05:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1775273836; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=hiJCmR5ixpPNTGgaozyisC5HNhSbpDiqeh2G6vMXj7A=;
	b=jCgXOhBNYiH4/nUDxj4fzSnRZ17ACaH7FlNyXluP/eQPdh1lqqeEAIUS+Q6fov64YuKkAD
	7aDBkOFrytRfUHZBwy+V4TjlhBrgntusfXSfQ9pnnk89aKHuAfnq0XQZRTIFEcyONglTVs
	U+1HT0P0sqrrCcKqHlQA1OlPsHA8mTfyZj2jBtRxM85eFlXDg+eo3FdXUhgSYW+KHVBfDf
	0X1QpDxJEnLDOKvBD2ibzJhjelNEl7q9Lo3FykcEHg4y6BzTS2jol9umdRY4a0Xb0/ULQO
	g4c1u3HPeNMvRBu176t/ZiewmDWPPByvOmX4G7YlS2gHQIde+k+6WIF7yCpWhA==
From: Marek Vasut <marex@nabladev.com>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Baojun Xu <baojun.xu@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Lu <kevin-lu@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Shenghao Ding <shenghao-ding@ti.com>,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: ti,tas2552: Add sound-dai-cells
Date: Sat,  4 Apr 2026 05:36:56 +0200
Message-ID: <20260404033709.340026-1-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-284605-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nabladev.com,ti.com,kernel.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,nabladev.com:dkim,nabladev.com:email,nabladev.com:mid,0.0.0.41:email]
X-Rspamd-Queue-Id: E7DCA399C23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add missing sound-sai-cells for this codec into schema.
At the same time, drop trailing spaces from description.

Fixes: 506e0825a4c9 ("ASoC: dt-bindings: Convert ti,tas2552 to DT schema")
Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Baojun Xu <baojun.xu@ti.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Kevin Lu <kevin-lu@ti.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Shenghao Ding <shenghao-ding@ti.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-sound@vger.kernel.org
---
 Documentation/devicetree/bindings/sound/ti,tas2552.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/ti,tas2552.yaml b/Documentation/devicetree/bindings/sound/ti,tas2552.yaml
index 10369aa5f0a86..7c7a9e624b898 100644
--- a/Documentation/devicetree/bindings/sound/ti,tas2552.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,tas2552.yaml
@@ -12,8 +12,8 @@ maintainers:
   - Baojun Xu <baojun.xu@ti.com>
 
 description: >
-  The TAS2552 can receive its reference clock via MCLK, BCLK, IVCLKIN pin or 
-  use the internal 1.8MHz. This CLKIN is used by the PLL. In addition to PLL, 
+  The TAS2552 can receive its reference clock via MCLK, BCLK, IVCLKIN pin or
+  use the internal 1.8MHz. This CLKIN is used by the PLL. In addition to PLL,
   the PDM reference clock is also selectable: PLL, IVCLKIN, BCLK or MCLK.
 
   For system integration the dt-bindings/sound/tas2552.h header file provides
@@ -34,6 +34,9 @@ properties:
     maxItems: 1
     description: gpio pin to enable/disable the device
 
+  '#sound-dai-cells':
+    const: 0
+
 required:
   - compatible
   - reg
@@ -54,6 +57,7 @@ examples:
         audio-codec@41 {
             compatible = "ti,tas2552";
             reg = <0x41>;
+            #sound-dai-cells = <0>;
             vbat-supply = <&reg_vbat>;
             iovdd-supply = <&reg_iovdd>;
             avdd-supply = <&reg_avdd>;
-- 
2.53.0


