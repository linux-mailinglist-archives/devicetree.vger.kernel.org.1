Return-Path: <devicetree+bounces-219526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F032CB8C46A
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 11:26:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACFB8163A42
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 09:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A3429BD87;
	Sat, 20 Sep 2025 09:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KI7iaOMq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C7B29AAFD
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 09:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758360387; cv=none; b=eE0FhtKPIh52aasiwKvhhEPvMYSozktFAMYetXg21jEtwSa82T61TVsN22RoiW3hC3+DhVtduLQzc9TnZzECIp9ElS50XoaBPXXe+oKZ3buNlUYgTQdIBQ2EI3rvUV0PsDVDoZAWvwXzSpH+Qb2zR8RrETgt46TRAzt5Keg2BKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758360387; c=relaxed/simple;
	bh=3BbqoSmJ0NDplQL4bxeVCOWydY8wpQLkEvYPPE0msBw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cULRHYap4KfLP92DLXSSEuqkONvq7pU8TubcvHBrrXk48jfAOmlkwTnLi/JlbdMARzT6XLIobnmP1fZO2J8TzlYBH4uGis1Zsrdvv2TDPT6k98SZ0TrDy6Ahj4T4bz9BrnnbI/UuNA0f416XoE3UOTtzxA42Q5YEr+G4XX+LhBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KI7iaOMq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so26084475e9.0
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 02:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758360384; x=1758965184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/xEwCQ2kLx4wO4jHEqwEMPS8Qvt2FpFOtZT1uSLzl+Q=;
        b=KI7iaOMqe+xxTX6AyO+chI2Bxg2X8bt8spl//ofkjdJlQhAXKc9kWh+u9hO+haSDln
         ct2PM/s6DYbh+1eAFrZELJ0oc8DH/vv1vN0/ZJb8WOib6YRmCn1db+2ze0V6BWvoqpch
         2VLv46/blZO4vlWx3FOiT65e/1BjbWJtFo8me+Z+FgiDK6P2KfRI0+JF/wDT5nzlpGRy
         qsG5BVIUna5h2u8O069dX2Jkh6zftqk3+nocfdF+PG9pOYpDhOs7qJeX7KNYwe2Qrhoc
         5R0ifLRgXMLyrGhRK2zR2s1vfQ8SydZ4TQZBULpmV1fRKhNdQ5wssA/MjyaBTSvTstzP
         7+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758360384; x=1758965184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/xEwCQ2kLx4wO4jHEqwEMPS8Qvt2FpFOtZT1uSLzl+Q=;
        b=lFjzI8kj4fgINHhZXE94hdadFgccIJK/uskyMzmCBEjGiGbnFK6vRyV4lAmNpVCCxW
         07dhzOW9ACFR4UUWqbn3LLI5VaddHmOPTle7fNwG6dq6Kzif4IW7si/1iTQylkZLYvv2
         +x3BHB2jiREnA21ilMD5Is1rl2HKVdvrldBQ+H4qKcbarSVFSkNz8j4oFIAAXwLt3W+J
         UOQPBd3Nh/GbbuoTDog8jfpAn+7PGTdtY/4dlXDU8vJLsxZBcCM8cklNyBSGsTQk4KUN
         bYSTyitxavc94FC9/GFTtkImaVQaWjSwuRV0fCUe6IeK31/EufaAn0LDpStWQ87+fiKG
         VTdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfxfOS5d8KeXGHSvjWFkm0kkoSgOkXr1YpD92Aa4WESfdjT1IomuNCn5IQOHhI1ow2gKvXmYUTWy7l@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq/GFXrcZypy5n85Oj+b+3XadB9/FeOm4KHMueeLxBE8ivsSHY
	IzU8DsuHqKJeGCBLMXAIBn7q1tIEVTESzKERLxtDHh2ypmHtj/BwkPNc
X-Gm-Gg: ASbGncsOmfpWTmQC+llAj+CLa9JYibrBBKoljYWDubwBqyYdtxKvEamyXgOf97IHPm2
	BdMUbB7ylGhYiq8nEpI/jfoTXdhBe5wpjfy9lefF9JD7EcjqU/Pn3TsJDPgc252WueLGcskFhWo
	rtYNKd/+bdqkItb+CD4WxoC96jmWYiHuzuBzrhMK/0BwrhwrPxChuyhDdmvLTMQ502blSze6OlO
	qQG3MRkBv4sNoTiJejQe5uIa7LR0059xcrHoIqUya2/vESZKkJU5I7uwfVsxCwXqTa9LZgQIAFj
	NLEqiZbuwKfT2HAU5gwcuN+5GTXcIAke9zpiUyDj9Dr8FnBiTVp2E4FA6nVhMOg+PqW8rPXlrWV
	R3h+QDdMK0vAYFOJG2kn9iB9azzTa6aeOijxgbh39Z81zIC94rGSsCrhIKkyODH8vC8FOXvQ=
X-Google-Smtp-Source: AGHT+IFxlAXSV4W5++7XWnPzZ12JWvBKJO7xkpt1cyOakCo8rv+0InqQQYz6OthfTBtMJczwkWlkVQ==
X-Received: by 2002:a05:600c:43c5:b0:45d:d295:fddc with SMTP id 5b1f17b1804b1-464f7027ee6mr62778095e9.4.1758360383862;
        Sat, 20 Sep 2025 02:26:23 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-467fc818e00sm73648535e9.0.2025.09.20.02.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 02:26:23 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH 1/2] dt-bindings: PCI: mediatek-gen3: Add support for Airoha AN7583
Date: Sat, 20 Sep 2025 11:25:34 +0200
Message-ID: <20250920092612.21464-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha AN7583 SoC compatible in mediatek-gen3 PCIe controller
binding.

This differ from the Airoha EN7581 SoC by the fact that only one Gen3
PCIe controller is present on the SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/pci/mediatek-pcie-gen3.yaml      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
index 0278845701ce..3f556d1327a6 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
@@ -59,6 +59,7 @@ properties:
       - const: mediatek,mt8192-pcie
       - const: mediatek,mt8196-pcie
       - const: airoha,en7581-pcie
+      - const: airoha,an7583-pcie-gen3
 
   reg:
     maxItems: 1
@@ -298,6 +299,26 @@ allOf:
             - const: phy-lane1
             - const: phy-lane2
 
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-pcie-gen3
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          items:
+            - const: sys-ck
+
+        resets:
+          minItems: 1
+
+        reset-names:
+          items:
+            - const: phy-lane0
+
 unevaluatedProperties: false
 
 examples:
-- 
2.51.0


