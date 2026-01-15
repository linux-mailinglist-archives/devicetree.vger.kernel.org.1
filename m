Return-Path: <devicetree+bounces-255754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC19D28059
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7907131146E6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4244E2EFD98;
	Thu, 15 Jan 2026 19:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UNWEgG6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82751BD035
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768504689; cv=none; b=nqTQiwZ6gfoqx0Ko6dkXkVXBoYrenqKhl6gP83qeVqr9LGRPNsh0lkeR40stf1WHqniuu+OfAIW8NmsM43nXkBs6OWk06YS6BzvBfFSFTz1+rQxZeIeshIMf2nEZvyZIeu4fIV6cW8lz3i1Zc1xWnA+5GmD14jWAmhFG+rTVsJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768504689; c=relaxed/simple;
	bh=aL79ku9woK+lFHsaZx7h1/Un3D0nb/Y6kULQfvJwXrM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sD5+Qp/mG8MG0tKGAaaFHB6VJAh9dQTAs45RedDF8tw7oDoYu3YoZ4xc6iOmb6RKr0XcyfnCXvJJxVdWAjkDW774Qb0WrZZAgu1SSTeyuWmaorEkInrhIjq0bG1GialI8Wav0id/YQUIFUtLiJeJR/1vtkt+4B5Sm4cqGQyGC8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UNWEgG6Y; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-430f5ecaa08so663662f8f.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768504684; x=1769109484; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DcLpMVd1uoMRkrBJra0Sqn/oCunudMeXpwg5cYzBxgE=;
        b=UNWEgG6YLZkn0VN41a9+BzcTnh6syc4sBGvOGeFaAQzflTjBUK4C0pdNGDqcfIEf0e
         6CD46OvkkfR8Uk1meL1NbLmCIDf6DCV3qjuiZLvPoVPd3Lxpsaie7CsmYFn5rvqHdGvI
         YQxT1TKlCCITEROnQKZnnWhykIeCRo6D85Ies7UFqdMIYN/LD3lJ7fET4Mimiag44YLv
         6ByxMiyiuUchEEgr1GNQ5CLw2+mfyGF9S0RdN+LU/GbQO3aHeRuIizyOuIbid5Y58PNF
         9iOm3jO0QYetkjwBUNFH5/IXX614ZbNHaNGhnUQ8oltcOmzsaqetAUhf4gqzjOS6U1N9
         GNxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768504684; x=1769109484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DcLpMVd1uoMRkrBJra0Sqn/oCunudMeXpwg5cYzBxgE=;
        b=v2nQqp059vu3uRhd1uPn2dVHg/KlRdXwzamY3AGrFPAPWJSM7ur+u8ovv5qIC/E3uA
         KiySlaLrT+SqGXwjEilJqgLnFF717//EPN5H4TKj/N+NrPddHo6ZodmIm+7zrvCnmzHK
         iUItvs33G3Od5VQgUtkiHhDbSmJJ0y7wx+7UKICH3kYraG6d8s+tOQWabKOxWLh+PbXO
         zmvCDb9eFxKTvO8166IZqkcnWsLri2vYQHRqEurifNrwyv7hqWvXYAF2BXH6RdaAnShJ
         +p10MK3ZMYT5LsTI7q5qxHCSHQfI1HOe619mYZJ3ZQqCdUZ+OpRcE2dqpazafDV9Cy4z
         9x0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpwBv8Ny8dAevnJMWsuiTIzNAch6nKYGZeCycZpKJkpSEhfrRzTGJ+7Y1QvFj0hjrkfv3YJehmZsB/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywiy7zrv74M3bWnJXCe74W3mGmbqj1ihqzug+kDec9QHXvbbnzv
	tbkL7SN30CCZkqtE/TkKCocbEd6DH6P0ymbBYbSR33CspsHZKDhVJk2U
X-Gm-Gg: AY/fxX7kps5mNHyH9J2cj2j4KyjXN7hnNs6BwiOIEgpxV0sLL2yXOohw0KUCnPW/zUu
	bqdD5A4UhUEFQfw5entRHLPc3mgz2L1BucF5loEFr/GJR+DNMPgWzLsGjDU1nkLfRM+fqialxkK
	FwoB9+7jWJLMOaUA5nbFsLL4npaOG0DBYtkayBHo0D5w/nl7ylM4y8w0iCGGi8SIgiHOgKgZoVV
	I7bvuM5Fb9CdPmOkBaREg08MtMKIrddM2oZNNiqcicvBFmjUGaJlPOcPzCfnOhtmbMtYAni2XcM
	Y8+dMXhEPaEu3h4KPf258aYGknQ1uuV3HAkD4WFJstYub25NUazu6H/DrzrxtmSqRfCjcG0zt96
	mCpdMq6HRCLBkVdnp2xKMCw+4ICOSLj1qbCJVk93l2DZsBZG80mVsQsqW2mD9zPWoR0gnhkCyMD
	N9XuHNR9tLx+bUXfMMtBeGTkx6Zhhk9jbWLPH5GHbDErwL
X-Received: by 2002:a05:6000:2c01:b0:42b:2fb5:73c9 with SMTP id ffacd0b85a97d-4356a0662efmr421160f8f.58.1768504683920;
        Thu, 15 Jan 2026 11:18:03 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm692734f8f.9.2026.01.15.11.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:18:03 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Thu, 15 Jan 2026 23:17:38 +0400
Subject: [PATCH 1/8] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260115-cv1800b-i2s-driver-v1-1-e8b22b8578ab@gmail.com>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768504677; l=2155;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=aL79ku9woK+lFHsaZx7h1/Un3D0nb/Y6kULQfvJwXrM=;
 b=4AI//Dc4zB0LAW6t0lpzfgX5E/8bFJpEz7eva9PnikVe7DJg6MMIcs3jHP05P9nsmAecK/IYd
 loHA2q9vDIbDxJcS0fEHU3K9RMuF17S/aYb71J7Go359nwtOe2HnXK6
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=

Purpose: introduce DT schema for the CPU driver

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-i2s.yaml         | 75 ++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
new file mode 100644
index 000000000000..cf30880a62da
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B I2S/TDM controller
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description: |
+  I2S/TDM controller found in CV1800B / Sophgo SG2002/SG2000 SoCs.
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-i2s
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: i2s
+      - const: mclk
+
+  dmas:
+    maxItems: 2
+
+  dma-names:
+    description: |
+      Names of DMA channels. May be omitted. If present, one entry
+      selects a single direction, while two entries select RX and TX.
+    minItems: 1
+    maxItems: 2
+    items:
+      enum: [rx, tx]
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+
+    i2s1: i2s@4110000 {
+        compatible = "sophgo,cv1800b-i2s";
+        reg = <0x04110000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        clocks = <&clk CLK_APB_I2S1>,  <&clk CLK_SDMA_AUD1>;
+        clock-names = "i2s", "mclk";
+        dmas = <&dmamux 2 1>, <&dmamux 3 1>;
+        dma-names = "rx", "tx";
+    };
+...

-- 
2.43.0


