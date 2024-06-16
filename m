Return-Path: <devicetree+bounces-76165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C626C909DA2
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:20:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78B91B20ED5
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5221918C336;
	Sun, 16 Jun 2024 13:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b9ElPHIX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E756188CCF
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543981; cv=none; b=SjGvmk9kllZBiireSThShF7xqcK1VQ14MAt03h6u5ocMI8JHKO7YrhnVoQsE8EvpzIcm2a/ORVs8vUtA9xAsDNnLK8RDWRCMDamEyagknRnlkLyuKu3TZACHKLD1UgvWCNvagzZCphEUlagvicqVgw6NfslUiKRCHwDsKiyy+XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543981; c=relaxed/simple;
	bh=dzjm2gBTdMjl6mgRsFtrUQDBw9hhYKgIAMant8cvlAI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GYGV7FQ7bwmHpq+og3GQn0dcKqnJP9fWA0T7uvwDsqktyoXOI1sHkNEbLqQKEuZexRN7/Ui/rA4+Pqm05v+7CZpifr5y/5Mo0sJwllnz5wRKMF9l6EcRd+XBNQ+mKJGv6epch9pQLmaQRrVQ2HBQJCXzaxb+ZOTZdrKnYtqoElo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b9ElPHIX; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-57c923e03caso4048497a12.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543978; x=1719148778; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9ZLKoGKyA/Fzir83VT6KMHwP0QAfjlVUV43lkT6aLM=;
        b=b9ElPHIXhGYplvIOWN2e2Od410TaR5JO7iD1Pahzo3K3ikFaTZSD1WDR/Mr1vptCWK
         H6qvoOitOpSrwSeA9bNMbnXh4i9MirJHoTtqT60fei17rkxxGaQSqt3T4cuMg51uTdNB
         b1YjyEsC8RSNa6T6P764pfq6zq2VqvMrSCGY7o5UvoMPtPW0MCNfAWOZ0YZqTJXOTNc+
         ND5lplGxQFtcrZkjIaLcfQAix7NWyILYmJxc3N0eWhoxloL47HskAOLgaCjSvlofPZJl
         tk7Ej5hpv/6luUXJ5xH2reeDuQ/XsrVf1Ccazx2qSxSmFScsCGZdVqvho3UVO/5vRqW9
         R4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543978; x=1719148778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9ZLKoGKyA/Fzir83VT6KMHwP0QAfjlVUV43lkT6aLM=;
        b=vwuJNWym0h68eMU9x5IdYZDxF4ZizL4eL3kKnH+HBeFTsL19iEbxoh82edWhP7gSkZ
         SptbF2xgnTdrKL0akbduxg5jXzXUpsknhbALJ2YBv/3AsvkExHCfF3JCGVgudRctQjNV
         xJZ+alVZPWb9c3IepBTm2/6WN2YIj+2zqOVmJ2xmG1hPrYLCT9zE4XzX0k0u9Ip6HwL/
         7lLMjFUh57JuqqaRQtZjuH3JhDMWKht//++ZUbpzs8EMjhUKAwQQysq4KacRvtOrVY6m
         w9FFNjjF4l7Nsc9rOgvPcSKeIMgEqziZLYhAW+pjaJVo2NBjgw/ozH6gF3nQkU9Y8blJ
         vHng==
X-Forwarded-Encrypted: i=1; AJvYcCUxt0/GYZdl1+Z3IyDRrJAFjrLsUI4naaXamsGJc6MFsnIm2pksyRw2w5r6/SQLJuPxKJcpV8GwFtHkCTVItZobNNj8fjrWW6Mk1Q==
X-Gm-Message-State: AOJu0YxJwLqrhc89lBDLg9OwcF0ppezu0UIUH+9ybMl+JfFXon8wu3+2
	XXvYMtqBn+IHV39EMBn5eNAJ3fApAKHrvUFQOaHpR0dg0ClAAD+6qh6mGcFKnPc=
X-Google-Smtp-Source: AGHT+IHO9RnbHcazsIsMGMs7VyXCSngI/q7B/q3+4iSsAbqu/mLW9gJSoHV2U3Z1C3VdPOojDxIbeg==
X-Received: by 2002:a50:9fc4:0:b0:57c:8027:534d with SMTP id 4fb4d7f45d1cf-57cbd69d9b8mr5103771a12.27.1718543977636;
        Sun, 16 Jun 2024 06:19:37 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:37 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 16 Jun 2024 15:19:22 +0200
Subject: [PATCH v2 2/7] dt-bindings: soc: sprd: sc9863a-glbregs: Document
 SC9863A syscon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-2-571b5850174a@linaro.org>
References: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
In-Reply-To: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1897;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dzjm2gBTdMjl6mgRsFtrUQDBw9hhYKgIAMant8cvlAI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZfiEg4Htf73PryBDmHhre04Usi0iIsta0KI
 HauaVoH5/aJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mXwAKCRDBN2bmhouD
 1wUND/4zJem/xT2bP0jF8QkDD0M/Aj7W3bmFEdpYj9UtYubYLZSSMxUk4qKXCk6kLeYVahA5rPC
 h62lhRFq1txEAblixLgsn+TiseY/cWNGESVoMdjYApbkXurI/OTfmE1WkRvJdzIHZ1lDhBoxFbp
 mAC+A90V0a9L5ylVBxj/TJsS2RT5F8TBkAn3mpkxDSdrBzOz41Hm1DsHPF8sVjKqikmJy7AfK8K
 BiWWaFi/I37y1ETVqfdhc92c8+zfMh5lTZ2TSQDiYoyiwihVNfQNbzEylvUQ3945l9sD/845fGL
 yZmIrK/dseAxgAMGcyKPy4j0YmS+fZTA4pohSsP3EBxoJYXriElXyXwKCAwaVIc2gKrU/uuuaPx
 gnNw324jOnvUWx1jchGv8Qu/wfgxoYDvYt1oXdsY/ya/VtOr7mFMxdxCEkKOAifX0ANsDB2fKdH
 SoXo6LgbDbZNoHzO8bIPOFPx6reVkj2cjnjkb35WY+2ui3BMn93C432nN91zVnS+ikyn70G/1W+
 Lrx8HNeARldbkou56Yt1wyX54daffXOPE28BtlNeL8//88syhIkTtJfUT+DRS8b+VqYs3eTojuw
 qt6esBgduNadtkatmGFC2pTnRlPdvvYDugVj1rpId0PCUt5rVqqAvw8i38jvspVgBfBn6n4Ayek
 E9lvLWTzMeLinfw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Document sprd,sc9863a-glbregs compatible already used in DTS and other
bindings example.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soc/sprd/sprd,sc9863a-glbregs.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
new file mode 100644
index 000000000000..49add564e5e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sprd/sprd,sc9863a-glbregs.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sprd/sprd,sc9863a-glbregs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SC9863A Syscon
+
+maintainers:
+  - Orson Zhai <orsonzhai@gmail.com>
+  - Baolin Wang <baolin.wang7@gmail.com>
+  - Chunyan Zhang <zhang.lyra@gmail.com>
+
+properties:
+  compatible:
+    items:
+      - const: sprd,sc9863a-glbregs
+      - const: syscon
+      - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "@[0-9a-f]+$":
+    $ref: /schemas/clock/sprd,sc9863a-clk.yaml
+    description: Clock controllers
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@20e00000 {
+      compatible = "sprd,sc9863a-glbregs", "syscon", "simple-mfd";
+      reg = <0x20e00000 0x4000>;
+      ranges = <0 0x20e00000 0x4000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      apahb_gate: apahb-gate@0 {
+        compatible = "sprd,sc9863a-apahb-gate";
+        reg = <0x0 0x1020>;
+        #clock-cells = <1>;
+      };
+    };
+
+...

-- 
2.43.0


