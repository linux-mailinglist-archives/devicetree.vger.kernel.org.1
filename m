Return-Path: <devicetree+bounces-263191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDKML7Q+hWme+gMAu9opvQ
	(envelope-from <devicetree+bounces-263191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:07:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 400C6F8D52
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 02:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB9FF3037406
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 01:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCDA0234994;
	Fri,  6 Feb 2026 01:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="jPfqKd66"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844DE18A921;
	Fri,  6 Feb 2026 01:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770339959; cv=none; b=YakQH2DB4wah4P/tM95dsA1cHZPUKcjSW6+kGBfkwugHXjMHv7wCcoaoTD1KXMCjNuHg2uKqzZ2BTkynXmai37C7gQepW8Gts/SSUJYU70Xv+ZCkwJOo6MeFX0s/LjY+ouC5iQ65YGaf6tJC35JDw5hbtcZA686olPIPoQsnazE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770339959; c=relaxed/simple;
	bh=zl8UuWGAhUHivdBlF8+8pMXfL7DBN0FzpT1yIJPl52g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WGPzKhruUKGgZtJtAWblu8VpdEMS6eetZATo1HYGFAcMXiGEHC9S8lQcIm7zB9P+zqVOvs7aR5jkmlRWEWNioHemHeWBPvONFvelEmS/upIm8Fzs1tSG/XtQuHDJdCMNm0239NdUDYrzQj3yaiqzEZzWCIMbTUahuDH397Crhas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=jPfqKd66; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=BN
	vlWzT8mWrGtEkS8XZPXPccT2INKC10nV+IIQWDjAw=; b=jPfqKd66nS05LwIXNc
	ZGsTDZs5+Fa4+6jaGLLpSYILWhTT9pGt53Z5dwZZbEieUdmqMXe1EoWJ7P+egymd
	cLiPa9/VQGhKiYv9UHHGsvfp15nWzKm4lAaPDDVUyp6GnyNf+/ByzlQNDqo6JboE
	LOb7KptdpUrDjMWkuGSRiziGk=
Received: from ProDesk-480.. (unknown [])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgD3_+0XPoVpQ5VfQQ--.20291S3;
	Fri, 06 Feb 2026 09:04:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Cc: alchark@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	airlied@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	nicolas.frattaroli@collabora.com,
	robh@kernel.org,
	rfoss@kernel.org,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 1/5] dt-bindings: display: rockchip: Add rk3576 DisplayPort
Date: Fri,  6 Feb 2026 09:04:11 +0800
Message-ID: <20260206010421.443605-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260206010421.443605-1-andyshrk@163.com>
References: <20260206010421.443605-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PSgvCgD3_+0XPoVpQ5VfQQ--.20291S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr4UWr43Jw4xKw1rKr1ftFb_yoW8CF18pa
	9xC3WDX3yIgry7W3yDtr1kCrs5K3WkA3yjyr17tw17twsxKFWFg3Wagwn8Jw43JF17Aay3
	CF1j9ryxJw42vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jOo7NUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxR1SsGmFPh0NvgAA3G
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	TAGGED_FROM(0.00)[bounces-263191-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	DKIM_TRACE(0.00)[163.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[117.135.210.4:received,100.90.174.1:received];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,rock-chips.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 400C6F8D52
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in dual pixel mode. And itself does not depend on the I2S
clock or the SPDIF clock when transmit audio.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

---

Changes in v3:
- Fix compatible order

Changes in v2:
- Remove unnecessary maxItems

 .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
index 6345f0132d43..2b0d9e23e943 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
@@ -27,12 +27,10 @@ description: |
   * Pixel clock up to 594MHz
   * I2S, SPDIF audio interface
 
-allOf:
-  - $ref: /schemas/sound/dai-common.yaml#
-
 properties:
   compatible:
     enum:
+      - rockchip,rk3576-dp
       - rockchip,rk3588-dp
 
   reg:
@@ -42,6 +40,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description: Peripheral/APB bus clock
       - description: DisplayPort AUX clock
@@ -50,6 +49,7 @@ properties:
       - description: SPDIF interfce clock
 
   clock-names:
+    minItems: 3
     items:
       - const: apb
       - const: aux
@@ -95,6 +95,27 @@ required:
   - ports
   - resets
 
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-dp
+    then:
+      properties:
+        clocks:
+          minItems: 5
+        clock-names:
+          minItems: 5
+    else:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


