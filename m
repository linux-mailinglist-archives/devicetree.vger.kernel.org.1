Return-Path: <devicetree+bounces-207233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A542B2EEF3
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:59:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75AD316F758
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC242E8B63;
	Thu, 21 Aug 2025 06:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ekm6KjpF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31372E62D4
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755759550; cv=none; b=LHgFvBmgX6lZFzuH3fFkqj/3M1agHH7HEZNTljxsUGzzwwhf+vHWIMTtqcl+dCWNbffHZ7bf9NGHTRbX8Bq3v3KNq5RhhS5JuXuxXjWQnBDt7z3B60atyzV+cwI5MMBOAt0bgkpxPXJauA6FGfN1iTMQLwsLlf2IgvRt8LM90LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755759550; c=relaxed/simple;
	bh=noJnXR5fz5uvdCvAkcNEa1jNmbr6rkH0YiAY8IYmjQg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JnRwri1DB6m2AVfce5iHQm1VCuMf0WNP6ZH6+qB5EC9+35VzwW/CRL7qZV9oA+c6eondCoNI6TJwlqFwI5wd5fszXenW0LJt+LWEW6kMkbcXhEbNAEBcjY63qoOqWUIc5C/syTfRwDEM98wj+yRgf064CQkRiHWIC5Xu1objmBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ekm6KjpF; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb79fb221so6377766b.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 23:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755759545; x=1756364345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pLhC4lsKdeJ9/A2G31nCU/i9ls1OYFW3dx0kccZaDUU=;
        b=Ekm6KjpFgjpZp5ky1Uf9Gw/T0tc6GgFCJlD5Emk8e4yW1s00Wh7x77c3cjJW1jt8cn
         6D5JaHVsUR8WE+2lU8MXZB3lUaxwWzmuvobMWaYgbs02z8T3rh4pphpaRGoM3GqcFRi3
         6JFXFqWoDlDrUubz/z6R24z+hJhNMg8j8eU5YE3sBmUU5VY0ZLJImxjIBJdu/HJYFlg/
         b6aiVSp1eHa6qXwtwmM7uSSVPIAutzwsRTlumw4ZQp2Hv2J7alMQdBwyFjQm2LqfZDBa
         s0sL8RnZ39pvazWmT/Kqrs6sC3tD5VUymh1cT/9sOMz06C24gaPWx+qRx1eGCRfonRaz
         PK4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755759545; x=1756364345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pLhC4lsKdeJ9/A2G31nCU/i9ls1OYFW3dx0kccZaDUU=;
        b=jet91CdT6f5L5UByrmhEbTqN02EUyQkjQ7Wle3vWL9E0wenDvMjd5kjjFk9P/jKFuA
         SEvPjt5siBSPgGS3lGB26Uq/IWGyx+v3pXr2EKQElULA5CZfDutSfJq9OZE5mtzlhSe0
         PnCdsgOr9UjTc9n14VEg0byuHzud0s5hRcwzSqgzQnEsFIZIPrUj3p4HpFUPbB5NQkRZ
         /0drbHtWgtQvevsjnKgqBwhd/k673rrYoXjGT9m0Xu/diYnPfkpZQzIOCSwfmypD4VFf
         DV9MYVTnGxEdJKNl4jL1vE8IIts67C68vC9cfIZzXLQvgECcqtPeFZg+23FAIUksFP1+
         CVbA==
X-Forwarded-Encrypted: i=1; AJvYcCUyikVLJy7633C1c4xpRzmDw1wP/ehL0OQcAx2YZD7p/GhO66uJY2S5Db70AWCZu5cv7D0loaMrbDxV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywgth/iudHLly3CRMJ9O/SIaA8KUwrQumpQAHT794JuqbT1Q/na
	h4vppS5Sckc38b2NddwsweGkjH9AuhTxTedbZyo3+L5RnSU1wE9F7VHO3ftv8oeAeXc=
X-Gm-Gg: ASbGnctRJFAryXPB5szK8wSsXc1MA7tsTB5eRtJPRTgum4iLO+z65R10XMEQhhF+chU
	xM//Oyh20qxviWkF5vsv4qWe1e4+2Fb+X5Hulb3zScb+EqO5kuklO11djrRPkURgoFHM+kAp3Jb
	2xj36N2jOw5oMZVPAxnH1t1r6BeES9dYm2WxFna3cdB2nyfwQoWgmtE5NLkAQ2xeC/xzxngqrA0
	ew5tD4I69MAW0fnTXhoqMefxM4IsUSNvLpsOeBKo33LLTnXF3nphvipDyH2Y/5fjYtzlm3Kzr+r
	q/XXbl+KYgyNJ4z21+EKaMaJLXVmVoZ581yaC9/m15QsBaZgq3Pr3+MhrTqhFtIsnkvCRFKqL9U
	YcmZ8623G9OnxzMyWg3ta1aWZGT1ZERnv0Q==
X-Google-Smtp-Source: AGHT+IEuVTZYnamN/Xowwi1nRdH6LMjKeL4XdJAvBXyBCXh3wYl1BQwHweSgtnWHDmWjFNyCCYNcGw==
X-Received: by 2002:a17:907:2d90:b0:ae3:5d47:634 with SMTP id a640c23a62f3a-afe07e9d221mr56729866b.9.1755759545251;
        Wed, 20 Aug 2025 23:59:05 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf0ba2a42sm296119266b.49.2025.08.20.23.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 23:59:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] media: dt-bindings: mediatek: Constrain iommus
Date: Thu, 21 Aug 2025 08:59:01 +0200
Message-ID: <20250821065900.17430-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3795; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=noJnXR5fz5uvdCvAkcNEa1jNmbr6rkH0YiAY8IYmjQg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopsO0jo7CwTeUi/nTEXn6Hl/cd661HvDUBl1G1
 CoaNqlc6G2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbDtAAKCRDBN2bmhouD
 13pQD/9vTqb+ZSb40TqgV9s9GSHbKX+jREpUaz1Lbl/H9x1SCzuYcFTdKLgx0SBdIv/3/DnkpJq
 vo4NhdsbhEwABDRNfTFkidTninZ4+sOOW9IBkJcd81ceHIlMX/+8FhLS+PaWcfQMGzjmOWO2LeM
 hl1knU+od7Z5A6vy6xOrsQ+UIqs3NPsxc7KkHDjxYdc5HynoLR5dP02syrmBRRvX7A19iy+9RnS
 ZeW4b4suXJhVRt6Bp+OT3EGGuQxXuJ/lmlt5AX+5b/lYeUkw1+WQSRJDDEpl/7zgoQODT35oveh
 kmYdjWLaxjh6T99vUluCdHMm20oVUoiF1ESlZ+juv+2wkQ83KrC7H6V4mh24OywQu+omV6FXXgS
 UkP1ZpMX318tChOvSCx+Flh5W66b+1NAfDyq4eFJzqJsgd8BUj4HP7AXPZtEYZWUB+TlxW58LVY
 AUqfnNxQKwMp4in3IYO2O0a7/ybRfGUOBxTzYITO4PWbHZq3ofmPG1GG8qayMt9OFJbDjBP/gUb
 IxShcYENueZ0YrKLb82fSGXqRGhcfnFNr8AB8APcAIjlUg40iWE9ySR+DnZagKj74puDbphzG0Q
 iUyzR25u2kDVdGOnM5FcwTuUYBApUdObGTvJlNtxmoBzWfuZ6LQyU4DO3bPoiltiVSoKKt3AQlG vlGi4hhxJqNiBxQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Lists should have fixed constraints, because binding must be specific in
respect to hardware.  Add missing constraints to number of iommus in
Mediatek media devices and remove completely redundant and obvious
description.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Ack
2. Mention dropping description
---
 .../bindings/display/mediatek/mediatek,ovl-2l.yaml           | 5 ++---
 .../devicetree/bindings/display/mediatek/mediatek,ovl.yaml   | 5 ++---
 .../devicetree/bindings/display/mediatek/mediatek,rdma.yaml  | 4 +---
 .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml  | 4 +---
 4 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
index bacdfe7d08a6..ac0d924a451b 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl-2l.yaml
@@ -45,9 +45,8 @@ properties:
       - description: OVL-2L Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    minItems: 1
+    maxItems: 2
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
index 4f110635afb6..c0fd0a91c4d8 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
@@ -65,9 +65,8 @@ properties:
       - description: OVL Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    minItems: 1
+    maxItems: 2
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
index 878f676b581f..7e5234def39a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,rdma.yaml
@@ -64,9 +64,7 @@ properties:
       - description: RDMA Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    maxItems: 1
 
   mediatek,rdma-fifo-size:
     description:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
index a3a2b71a4523..276868c0fde7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,wdma.yaml
@@ -43,9 +43,7 @@ properties:
       - description: WDMA Clock
 
   iommus:
-    description:
-      This property should point to the respective IOMMU block with master port as argument,
-      see Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
+    maxItems: 1
 
   mediatek,gce-client-reg:
     description: The register of client driver can be configured by gce with
-- 
2.48.1


