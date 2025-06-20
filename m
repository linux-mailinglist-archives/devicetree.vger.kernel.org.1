Return-Path: <devicetree+bounces-187720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B44AE11F3
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 05:53:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C7563B8A9B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 03:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600AA1E1C1A;
	Fri, 20 Jun 2025 03:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jBprbPJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11FF322E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750391603; cv=none; b=EjGBKCMvcaBgDo3ttr+gjBbKMK8b/Wftuz4Rh/1aBCjNDy0Z18ZQNBfHyyxXJSchuF4AdSRhnUf38OV5wkpI0HPzW8aY4rtpU6UFoBVhm6J344AqwfugBnaesh48Pno+KNvEtsn3EkA1wVJai70TB9ADby6zpV9pCpsWsmjTLzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750391603; c=relaxed/simple;
	bh=3MQQBmBm2pG9RPlcbhAj9x0cz/M4bQhZQO+pGrPkUKw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MDc86QuRZpA0o4EWXDMfkh7xD/ZbYn684GRI4jR8cCOmrJbR8Zr/Soy5wRi8NAU1r/IvaxSe5bWXhjGdx3r05ru4k9of7d8eaG+FlsUuxL+YNLpj9yU0YUeH2Cc0XBH4hoJ7/XE93TfZem+hjdIksaxn0YHv13B1DCU7axyyv14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jBprbPJ1; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2363616a1a6so10441475ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750391601; x=1750996401; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Zk73xpM/6pu5NWnf3cetMa8ItGExnxBDcRFM7cGPPQ=;
        b=jBprbPJ1A5z+J/1omgb3WrY9hkztMUv2iqRZadf21xeNY45oLuBSeYTZ7ob8Tx8hbF
         WmPlKkKMjZRcEEANrT3Ux/eSTqMxrMp0sgLeYMHgd+NBHPKXPkvV0y4Jh2j4LLlEFtA8
         DeQPKKofofibfswUzM2raQa2kGo9Wn2qMMCHlx4BZgd5PhkgAIpEr6GwHZsLjZb23vtF
         OIENvToK58fJ7OYJolzMEN479p3WFqmPv7kgpn1PZ7TXHZgliIMmPKBdFqo0QDNinIrN
         iqqrlxYDyRHYAyv22up5V4XDpBCG/MFV4WhiQ/nhYHikM/eQ1NInGEi1NsYh0FyhG9/1
         B5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750391601; x=1750996401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Zk73xpM/6pu5NWnf3cetMa8ItGExnxBDcRFM7cGPPQ=;
        b=dGVqdJX+ult75Efw07IxeRQgCANHgx7kO3RWFcHtYBFT44h0rRi03Ca+4SuaiS+qKq
         cofkApY/a8+cfGjuT4Ptgaw4Qqs7S6znprGrwF+LbBsWjc8VLY7Is5iI6K9nOAXUuCfN
         M1+AiEbWnoj8eB6hEEfrvKdtTpl1Xlwr5VIjHfwBwncVciaISqllAkTgbANgsoTZnv23
         gnSc2/eAoo9nvJNZzfk2y0Mr77aK6bpxKpQx4AIzqmRlKQeWAk6AE9UKxt4Ka4HnzgKr
         RpYw9+tUS0blUYtyRvrYAVcPEhPpAlz3sBqKQ8gsSl0DKB27JLlWTYxJky4/XuECYDF7
         20SQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/JyFTzUee74XfiRhXCthuGUyt7X1OTH3aQHRAnmjzrFI82tzYq5NCKEgion2pjuGdhy4fvjoZigSj@vger.kernel.org
X-Gm-Message-State: AOJu0YzLc3z9T9uUwvU1ba45djmZTkvGaEPDDk6GXBK7RCRxUCeslSsb
	NVU9KK0lHTBd4J5pDEE3Ubr21BaqwTC44kDfykw679Y5ZumLWqOdwlw7
X-Gm-Gg: ASbGncvQiuPezMo7W8YiQi52e8zHvnvbRQv2RTAowCyojPTjreV3Th1/EPrvS522GAB
	FIzeQbNqnfvK2C2ACGFWsMyK5d8J2EztwSkVoHnr52KIYVjN+RSRNIA7AlS/ZlMn42dSCqP0aCq
	/yl6d8A46bgSscbTkjcsubx3frM37DCRYamekK4XMjUTBLLCNBmjx9ZobGdxN6VGM8oSX+EN83Y
	uMvd3Z5WYPt1VqWESpTCdsqole7q9A4Deln5UliXB1Pqa0acOdUyPk8i5E1ytg3OnTFWTqRhCs5
	qjNCJzQW7nswgNKbtykCmOaL/jo7VyppxMVhE8yk+pcT+4Pb5Kd4syXu2GlHqZ5/CH7sDiioRww
	Jp8KWjRhFdkEk8DwhjDvn23V8dAqt2ILOzGZKxebwDmczgo10aoo=
X-Google-Smtp-Source: AGHT+IGxBam6gm0EgetXwwC30SC/9yFNrq5vdQq8RURaa3hshoHwVo5E2TM2bvabLDoswxDxgPRQ/A==
X-Received: by 2002:a17:903:2285:b0:235:eb71:a386 with SMTP id d9443c01a7336-237d9b8e9d5mr18655585ad.50.1750391601041;
        Thu, 19 Jun 2025 20:53:21 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d86ef84fsm6969405ad.216.2025.06.19.20.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 20:53:20 -0700 (PDT)
From: lcwang <zaq14760@gmail.com>
X-Google-Original-From: lcwang <lcwang@ieiworld.com>
To: conor@kernel.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com,
	cip-dev@lists.cip-project.org
Subject: [PATCH 3/3] dt-bindings: display: Add Mayqueen Pixpaper e-ink panel
Date: Fri, 20 Jun 2025 11:53:10 +0800
Message-Id: <20250620035310.735055-2-lcwang@ieiworld.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250620035310.735055-1-lcwang@ieiworld.com>
References: <20250619-earlobe-skiing-25605816a861@spud>
 <20250620035310.735055-1-lcwang@ieiworld.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: LiangCheng Wang <zaq14760@gmail.com>

The binding is for the Mayqueen Pixpaper e-ink display panel,
controlled via an SPI interface.

Changes in v2:
- Corrected capitalization in the title.
- Removed unnecessary '|' from description.
- Removed redundant description lines for standard properties
- Added 'maximum: 1000000' for spi-max-frequency property definition
- Changed 'additionalProperties: false' to 'unevaluatedProperties: false'.

Signed-off-by: LiangCheng Wang <zaq14760@gmail.com>
---
 .../bindings/display/mayqueen,pixpaper.yaml   | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml

diff --git a/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
new file mode 100644
index 000000000000..cd27f8ba5ae1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mayqueen,pixpaper.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mayqueen,pixpaper.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mayqueen Pixpaper e-ink display panel
+
+maintainers:
+  - LiangCheng Wang <zaq14760@gmail.com>
+
+description:
+  The Pixpaper is an e-ink display panel controlled via an SPI interface.
+  The panel has a resolution of 122x250 pixels and requires GPIO pins for
+  reset, busy, and data/command control.
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: mayqueen,pixpaper
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 1000000
+    default: 1000000
+
+  reset-gpios:
+    maxItems: 1
+
+  busy-gpios:
+    maxItems: 1
+
+  dc-gpios:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - busy-gpios
+  - dc-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        display@0 {
+            compatible = "mayqueen,pixpaper";
+            reg = <0>;
+            spi-max-frequency = <1000000>;
+            reset-gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+            busy-gpios = <&gpio1 18 GPIO_ACTIVE_HIGH>;
+            dc-gpios = <&gpio1 19 GPIO_ACTIVE_HIGH>;
+        };
+    };
-- 
2.34.1


