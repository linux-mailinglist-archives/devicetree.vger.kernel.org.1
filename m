Return-Path: <devicetree+bounces-221513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8866BA0799
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:54:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A951638472B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5472FB976;
	Thu, 25 Sep 2025 15:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ON6CbBYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F203043BD
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758815625; cv=none; b=t95K6k6v3Zx0AananxN0HEdKU1U6CUcz9F1vuEkc3gYjSvwraxuuoxsvo5tF/yAPbrvL1spY+WQSv7Wc6I0OkeWt9RGiYGi0K00eUEh3Y4OgvjImdv/64STna8GRoEwy3YDtf4cny9VIjA5PyUEDtQAntgY7DSjXYz8Uf4jzEnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758815625; c=relaxed/simple;
	bh=vqa5P6oczfhyljtf37ARWG4nhCr1jF20jEq+N4qGoAk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=X7hXOTfPQ4fmyH7r097GsrHxrOnDLiesNgxcWWbG8/8zU7CGNDGLWTTYMehZzZK+6+b0uUOMKOmeRFtGw+fO7lNyT/l0U6rkRy2h/4e/soi4/ESm+zaRrRJgymINgmadGIXIzLErV+bB07UT9EJKHb2qFtGELklcrb1Opz5RUp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ON6CbBYB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45f2cf99bbbso5589285e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758815622; x=1759420422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aJqNYQ4cdfTFLv2z2ldssPg3Z08F+8b/OmsBnqjGcYc=;
        b=ON6CbBYBY7xb6rmXno9lxNNU8smXMHCG5OeWILtLySOFg3YO5xiwSBbcG4wbbyHM6U
         L17X7WGwbD8tQR9a9Y41mjivYaPohcQoqaiqXa6hJ5arT8brd6T+pQp+/U3gCtAJ1hmI
         x0m1Ni+NqgAbXRPVnf7c7M1jerBxgsuLHpdvaI0hazrPO72m7o4A1HLDryubSggB8SOi
         8XEqTnHhc3AFUN71CWhFnTi2EtDLHDkssiGDNLL3CQdEOgRTWq3nlJ9zrBPqua4kqAXo
         qfoFIzRa8hZcOz0gwLe8v6hu+PyOAzRk1Wv1rU2QO9krSCLB5h7fXpv1NIpN982znRnM
         nsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758815622; x=1759420422;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aJqNYQ4cdfTFLv2z2ldssPg3Z08F+8b/OmsBnqjGcYc=;
        b=WZSsQkYkU3dep1DxZ/4llymsPuetGL0GGEF1CYZK/fCwzmll2A579t0iogqsJYUrFH
         AMyqeNZ7i3a6PxBfflTeHlgGnJ4JBxZTis6fsDim5jb8yIIEypD3dG0VB0SCoicQIDDH
         s8WWVOb6hshGfD1E/zb0U8KyNreP193XXwAY5TBb61FLLYtIHO+W4FzT8m34XmRy3Rf+
         czu0kSQfjiy3nQWTG6JqOVC9NpAQBStI4mIMA6JEFrorSxC+/BQREIZqx6Gs3rTEMNGE
         MKCUMQJkTM0nV/aWycxqKl/YArQJo8yLEcf69we9PAKbmU6LQVCAPzbdQY3LsifcgAiF
         EbqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoe3LhOZ/GWcFjqgN0Yx1IBzo/++pTn0AFJO0z7C08FDL18ulQJIeZnV5G0yPwrJxz0XXJFxyryY4B@vger.kernel.org
X-Gm-Message-State: AOJu0YzGro1R/RdQDPDUKrnm+uqGnsT2653zH5MSDM46tu6QnAJEOkzg
	aV4X9/Z8+Z0apzlKRhYux0VokvgCtGXt5laOoiiqFzEByUPFxsqXWQ2j
X-Gm-Gg: ASbGncvHnE56nbPAFQEvZsEaG7LUE4HQvTBmcI/Z0ZRSZYcDcOdHTttgjW3RMMMXYgx
	SZmaiLslhO5mrs3zFkPyuOXEhPALYj88sIIKyy0r+3e4eaX0GBNkFWY1L+bxYc/ZFL+f9Irjau6
	2ZbTVFGqP7EI5GcY3hK27sXXn3EFXN54WM5y5LQnAXBhMwY+8YweP00hXf5FrszaAf9f3lNSY3G
	qf9BZ5HzxzFLetKGpe/aisjg9umT7Wx4gThQxtMq8p3Tm952/rlFOZWoO6YVMLVHxYCOx1m/vuV
	pxCHUMIXDZehuw+nLpzXWnWOjyMCsD1LnITX0GyYpVCuxNNFDu0OIRZ7a1bgKh5D+KnBi+suHo+
	/x9J2jnUbrYeci4ETsXqG+FY8bIs29NNdHLHRNxRFGjxtupAP9gU/pjNHBQggpbMrnMMcy+zOEk
	jNU83OMQ==
X-Google-Smtp-Source: AGHT+IFdx6Jo6h2Zlp0z9KNqZKsNTsBYY7KcgSjHFZWdKQaN+BPd2cWlPTLOF0WlCzxaWRiRR5GgVg==
X-Received: by 2002:a05:600c:8b16:b0:45f:2bc1:22d0 with SMTP id 5b1f17b1804b1-46e32aff787mr40556945e9.33.1758815622333;
        Thu, 25 Sep 2025 08:53:42 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-46e2a9ac5basm98449995e9.7.2025.09.25.08.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:53:41 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: PCI: mediatek-gen3: Add support for Airoha AN7583
Date: Thu, 25 Sep 2025 17:53:08 +0200
Message-ID: <20250925155330.6779-1-ansuelsmth@gmail.com>
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

The compatible have -gen3 tag as the Airoha AN7583 SoC have both GEN2
and GEN3 PCIe controller and it's required to differentiate them as
different schema are required for the 2 PCIe Controller variant.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes v3:
- Add review tag
- Add comments for compatible inconsistency
Changes v2:
- Fix alphabetical order

 .../bindings/pci/mediatek-pcie-gen3.yaml      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
index 0278845701ce..1ca9594a9739 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
@@ -58,6 +58,7 @@ properties:
           - const: mediatek,mt8196-pcie
       - const: mediatek,mt8192-pcie
       - const: mediatek,mt8196-pcie
+      - const: airoha,an7583-pcie-gen3
       - const: airoha,en7581-pcie
 
   reg:
@@ -276,6 +277,26 @@ allOf:
 
         mediatek,pbus-csr: false
 
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
   - if:
       properties:
         compatible:
-- 
2.51.0


