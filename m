Return-Path: <devicetree+bounces-261537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJtMELgLf2mEiwIAu9opvQ
	(envelope-from <devicetree+bounces-261537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 963FAC536C
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:15:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D319F3012254
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 08:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 003D42E62A2;
	Sun,  1 Feb 2026 08:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="C9P9r5k3"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D44513D53C;
	Sun,  1 Feb 2026 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769933727; cv=none; b=jdDPFlvJbepvhfJ5AhLoGOAtHnKeWqsqW16511Nwhb9tAdlgHdVRGFhGMyvd68QXIXwWf1tIxe0HIeL4k5P1cAEddBpqHJSHFoq6x8TwEJDZZPMdtNh8hUb6wByIoMQ6U+Lku2DyLzdyMXou0LotElb0esKJezBTzoD1jQOuioI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769933727; c=relaxed/simple;
	bh=AjGBoVcuO9ZntgNE3RbbcegM1on2tGPEBB6HVmyKRHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=stZlf//3n3MB5XG5miH+pAekE9rgGEIxRr8hRgnWF93f0W0WA5qT7ULvMRWq5ERbhR8gQqSugiJgHoZ1re4Yq7ZS9kRIKhXTm5AA0zuhRRNQltyp/da7K82K2YT/PlXz2C8J/cgnEFyFjaWMkNtB2mag3mkJUr5e0h5mgU6TvKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=C9P9r5k3; arc=none smtp.client-ip=117.135.210.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Rg
	ZxWMsgxvF9wqaRGd5L3OLgxXU9L3sDTfqybdxvKyM=; b=C9P9r5k3f/tlVWwIT3
	1UR58PvbFfWJnowCwO1q/35CLWyYjyE0d2u7OIHJF5za4vKNRrdtG4kTvxcKjlaF
	UJ3YHXiZWrmNVpH6W1fROBBe3AhghTyg7/U9KX/+oSye5z4+8SWY9wmb5QYq9PI4
	d8Gz8QOVrhRbNwGvrFMV6HQT4=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3Hz40C39pmxGTKQ--.55310S3;
	Sun, 01 Feb 2026 16:13:46 +0800 (CST)
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
Subject: [PATCH v2 1/5] dt-bindings: display: rockchip: Add rk3576 DisplayPort
Date: Sun,  1 Feb 2026 16:13:27 +0800
Message-ID: <20260201081338.407999-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260201081338.407999-1-andyshrk@163.com>
References: <20260201081338.407999-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3Hz40C39pmxGTKQ--.55310S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr4UWr43Jw4xKw1rKr1ftFb_yoW8CryUpa
	9xCw1UX3yIgr17W3yDtr1kCrs5K3WkA3yjyr17tw17KwsxKF4F93Wagwn8Jw43JF17Aa9x
	CF4j9ryxJw42vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jwVysUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxRoLaWl-CzrP+AAA3t
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[163.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[163.com:s=s110527];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261537-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[163.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[163.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andyshrk@163.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,collabora.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 963FAC536C
X-Rspamd-Action: no action

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in dual pixel mode. And itself does not depend on the I2S
clock or the SPDIF clock when transmit audio.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

---

Changes in v2:
- Remove unnecessary maxItems

 .../display/rockchip/rockchip,dw-dp.yaml      | 27 ++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
index 6345f0132d43..8a5299755abf 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
@@ -27,13 +27,11 @@ description: |
   * Pixel clock up to 594MHz
   * I2S, SPDIF audio interface
 
-allOf:
-  - $ref: /schemas/sound/dai-common.yaml#
-
 properties:
   compatible:
     enum:
       - rockchip,rk3588-dp
+      - rockchip,rk3576-dp
 
   reg:
     maxItems: 1
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


