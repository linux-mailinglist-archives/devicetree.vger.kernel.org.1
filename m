Return-Path: <devicetree+bounces-48612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C22872C40
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 02:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8DDB2845BA
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 01:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A6146FAF;
	Wed,  6 Mar 2024 01:35:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail78-37.sinamail.sina.com.cn (mail78-37.sinamail.sina.com.cn [219.142.78.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A429F6FBD
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 01:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.142.78.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709688903; cv=none; b=bcIG/IdZxOVOtn6lup99eQqaezBA9Lyki1ZNG2rPjIoZWuUAKQwHnZ7zloAUkD7GZ+bj/SAep2/9loQmwXBMigSIkCsaUcHHMoSjIEzLioe+8T5QafNEW58t8qBZk5pUYn9U6POB0jUCNv5ZrIMpf5cUVucjJalUkD9UpccRncc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709688903; c=relaxed/simple;
	bh=fCf8VgKAZPcTn7Hbdj2zRMYVft3c4RyIgKvpUyrpq9I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=LZUD/nYyb8mmS+5sJiAOh/fyyPogbXp0u6gngQI84NDGcKCcK6uCoetHGnHxPbhHhrvHt9llnW6Ysk1g4UwY/y3MZIa1XmqUOlgkk4Fk05nhLKf20ES4mUplc0CqNWon62HZZSyBEchoouUUlDc+fEh9GVWyq9Z5MZhIC4/GrDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=219.142.78.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([116.232.53.71])
	by sina.net (10.75.30.235) with ESMTP
	id 65E7C81800003DE4; Wed, 6 Mar 2024 09:34:21 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 4B4DBEA8F7494573A9940413471E1AE4
X-SMAIL-UIID: 4B4DBEA8F7494573A9940413471E1AE4-20240306-093421
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH v1 2/2] ASoC: codecs: ES8326: change support for ES8326
Date: Wed,  6 Mar 2024 09:34:14 +0800
Message-Id: <20240306013414.18708-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240306013414.18708-1-zhangyi@everest-semi.com>
References: <20240306013414.18708-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Removed mic1-src and mic2-src. and changed default value
of interrupt-clk

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8326.yaml        | 22 ++-----------------
 1 file changed, 2 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
index 07781408e788..5c9ee6ba7980 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8326.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
@@ -37,22 +37,6 @@ properties:
     maximum: 0x0f
     default: 0x0f
 
-  everest,mic1-src:
-    $ref: /schemas/types.yaml#/definitions/uint8
-    description:
-      the value of reg 2A when headset plugged.
-    minimum: 0x00
-    maximum: 0x77
-    default: 0x22
-
-  everest,mic2-src:
-    $ref: /schemas/types.yaml#/definitions/uint8
-    description:
-      the value of reg 2A when headset unplugged.
-    minimum: 0x00
-    maximum: 0x77
-    default: 0x44
-
   everest,jack-detect-inverted:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
@@ -87,7 +71,7 @@ properties:
        0 means the chip detect jack type again after button released.
     minimum: 0
     maximum: 0x7f
-    default: 0x45
+    default: 0x00
 
 required:
   - compatible
@@ -107,10 +91,8 @@ examples:
         clocks = <&clks 10>;
         clock-names = "mclk";
         #sound-dai-cells = <0>;
-        everest,mic1-src = [22];
-        everest,mic2-src = [44];
         everest,jack-pol = [0e];
         everest,interrupt-src = [08];
-        everest,interrupt-clk = [45];
+        everest,interrupt-clk = [00];
       };
     };
-- 
2.17.1


