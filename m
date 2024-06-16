Return-Path: <devicetree+bounces-76166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8897909DA4
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CAE1D1C2173A
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BB718F2D3;
	Sun, 16 Jun 2024 13:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sVGcm/js"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D5A18C32E
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543982; cv=none; b=cuSH1W42nB2H4lzm6IPVOrR+v+fwqleUcJOFgs3DgX1m3KsAdM9yNOAoCxv8gZz9aq1zSS2phIVHnPU8qsNWEtZgC7NikU8GWhiWumdkT+OAxZuekBHtRvkONCm8FHgZuehJfvXLBxOlaeTbECAIQozbIzynA/19OIxd0N/Bd7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543982; c=relaxed/simple;
	bh=U6AmwKP+N/F9FNv1bT3SMtoH8ZjiVmeYNelKJnyt4oU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cHQ6W/ygklBA+qMNnDq5ebclzMDaGJSNZDo/x0LAIAheBj0XOw9F8Hkud7lQO3Fr7iV0Th8VF0DkQ3ou3xvB1G57cwrmaxWOJgT62xtpl3cSEzQdStDvURafJ6tkHD0Wrcbhux+4x1RIrv5sP8SPZrLFaMYDvZH8NN8mJQS8FHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sVGcm/js; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-57ccd1111b0so634526a12.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543979; x=1719148779; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mInVLHOlqqVVQJezxSVPVAQ/ObgVPbGWs0w1ykk8K+4=;
        b=sVGcm/jstel936faEAOperrHnZ2LbIAPNZPtDqC4n7roSr7BPsgSJ1xMKeNxLB9Aj3
         HICy1SWj9YsurgCR7hzjA4IOvTNhZzcmQExbCMiFIlVYtfds520sN+aC+YVCVgKfF3Ly
         5hMNirOmC5jxAYF2xzj9l6aqs8WIOKL25P40/KNtXeg/pjhR5rKTJskTs1XyoMIpvBqt
         q2IYKZsDbCrUnvtCHhojeQUJQ21ZNadzOZy2boNvhCR6/6kDzRrpqOj6I2kHSvcW6omE
         Nhg5SjsPAMyUZMg+/izpeDPXlVzWHx7FrZM0TEaO7gFDCdTcU33QZy/8hmhqhPd3Q9+Y
         jNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543979; x=1719148779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mInVLHOlqqVVQJezxSVPVAQ/ObgVPbGWs0w1ykk8K+4=;
        b=Y+6f5sr8gl7NQOvUqwjObPA8eKuOBkxg86G9LaUl3Bp6zvt1CwXtUCyyb/9AN0HgTZ
         4+JT29TVBTJTz6iljee9AAJm4eIwvXBynBpX7aj878vaRqjFLbwFQSKx3kdBUaejQtLY
         ZyaL4TADpw/gAaWAnSfQkSeayNMiXKuIH7JWWZ9pIvnMTWf0ocPWSN8rVKC0TDew4wf8
         FCNrxY6quSIbPt3cwnIhxJR5CR+FQ3kemFVP6Ys0iw75OylJEH7wVAIIKpayK9ixShJ3
         CXu4vIL50jvG9TRabfCgOhTev8s8pkuEVN63yjf0rcEt7mRBs3aAl0S/0DsOtTbwajUm
         s92g==
X-Forwarded-Encrypted: i=1; AJvYcCX3mTYI71sp2ZWKZG/06BBwc2zWts+QnI478UGZC7qcQ4JCgzHSJNO17NwsdEN0+hb314iI4kI4ZO/QP+6YYmUJ7XMWW09wsBltow==
X-Gm-Message-State: AOJu0YzzdDGUCREXlAPPwaIsbkES/C6DkF2teLIAF4KMSnN2sp5+kKFu
	CsBI+iiacWYShvz0T1q71YYGppb4rRoyLEO7BVqlEpEt6nKSZk+OgFISUGfJWk4=
X-Google-Smtp-Source: AGHT+IE1IZgGoLbi+AV+zctjjPIPycm90dwqlre2plCiolym+rEY150IZRR1oN0wAi38iw8IO6vr+Q==
X-Received: by 2002:a50:d48e:0:b0:57c:8e57:c3f0 with SMTP id 4fb4d7f45d1cf-57cbd685122mr5918029a12.16.1718543979240;
        Sun, 16 Jun 2024 06:19:39 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 16 Jun 2024 15:19:23 +0200
Subject: [PATCH v2 3/7] dt-bindings: soc: intel: lgm-syscon: Move to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-3-571b5850174a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2724;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=U6AmwKP+N/F9FNv1bT3SMtoH8ZjiVmeYNelKJnyt4oU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZgZGoeLCSo5prKUN7qBIVwMLpdtch4to7B+
 bGnm4BFVbWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mYAAKCRDBN2bmhouD
 12QwEACCPZJ1clXIYpSrNCstqF44Etkra5SMnYNsNPs15tD1DJx+pyWnQ242EiwHk06S++GFzku
 PvWYLACCHV5ljKCUPQIyX+TH6+X0x18GN2/bx27Z6UZlY+pQ69EDk+fY7Pb+dcGXkysajkJBPHU
 mCi5LH3if5ljHv8hn5uRjlsM7AaK2dWyrM+5BT18usBLsVQyy6a9nMtxh+RSxI46yNrIAhz94xb
 dzH5JoUtj8oxAx83TebXSyyaG6ReyGTGw0pHWTeHFlQXbiid+4AJez+3JhwWoq5ZIAh2XgXnTgM
 U8QG87JiapvKgf9Y9zZ0Y+M8k1LfVZ/sAUQhoDSD8eLJoSK0qWdyx9lwX6tSO9ia1v41MbXEqaq
 ajfRa7iipPymAcnN+dnPwGGLfebTRJHFI4a05d/X0//cFOJUl5ssKp3VWNJV5XR0fRSGHgGbRy9
 QhnA2PO9A38x1aNTqsN3bj6zUXxKziD5/j4OAnV4g9YvcG2GxLzLEzDXomek/hA9HlI9VGGHBm/
 YFAkgjCvZ7qmFEVKsqFCI3W93si/9ojM645JJRws93+uSL4r/z7SP8R2+qT31qLWsz4AxIy+QBw
 oGLWcf8KhTt35EPV73wRBU/pVgD7WIpLUGogmUex3wdg1c3UtBNRkt8C/i6U20+Q0JUWQUTr79C
 /qpEo3hw6LfXa+A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

intel,lgm-syscon is not a simple syscon device - it has children - thus
it should be fully documented in its own binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../bindings/soc/intel/intel,lgm-syscon.yaml       | 56 ++++++++++++++++++++++
 2 files changed, 56 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index af442767aa96..b9bf5bc05e92 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -77,7 +77,6 @@ properties:
               - hisilicon,pcie-sas-subctrl
               - hisilicon,peri-subctrl
               - hpe,gxp-sysreg
-              - intel,lgm-syscon
               - loongson,ls1b-syscon
               - loongson,ls1c-syscon
               - lsi,axxia-syscon
diff --git a/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
new file mode 100644
index 000000000000..0a73b7616a60
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/intel/intel,lgm-syscon.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/intel/intel,lgm-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel Lightning Mountain(LGM) Syscon
+
+maintainers:
+  - Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
+
+properties:
+  compatible:
+    items:
+      - const: intel,lgm-syscon
+      - const: syscon
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
+  "^emmc-phy@[0-9a-f]+$":
+    $ref: /schemas/phy/intel,lgm-emmc-phy.yaml#
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    chiptop@e0200000 {
+        compatible = "intel,lgm-syscon", "syscon";
+        reg = <0xe0200000 0x100>;
+        ranges = <0x0 0xe0200000 0x100>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        emmc-phy@a8 {
+            compatible = "intel,lgm-emmc-phy";
+            reg = <0x00a8 0x10>;
+            clocks = <&emmc>;
+            #phy-cells = <0>;
+        };
+    };

-- 
2.43.0


