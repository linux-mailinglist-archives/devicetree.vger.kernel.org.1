Return-Path: <devicetree+bounces-80127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBDC917D59
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A098B1C2284C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037E2178388;
	Wed, 26 Jun 2024 10:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A1JM4YcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AC2178376
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396605; cv=none; b=Pjf0VKbCacjI5rPgsZ5Yt5q4wWG9Mm5KRxDVK7hL/FvYM7WmWNZK1DngPXxKzpTqca/LjoBdJ4wjxw/Cstzlid1NaLACzZ+fHQk8SP/Hc7Z/RwP0AgFKTDGQC1WM7nqX3R5iX2UZIdy63a5VtzbTJ7RU7rQAPKS67jRCbQiOQZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396605; c=relaxed/simple;
	bh=dA2BvNuDdbIFKkStpUlyQC5zc7XFrh1545e/AvgMWBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iQq1jYSePADhxdcT1pUpwI0clu0xTdOBebHW0zKtgJ+oQ8CF6CFi2lDZ0MJhPvdeiFtLQ+/9r1Y7XHKkd/YGwaG4yh+yr2zvuVQ1j9zzjhAtgSLI20fiTWu17vil++u9fTwG63L3m4/rvhFODDtRSpBzaVEXBjA1Yb2Z0WKxl4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A1JM4YcH; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-375f713a099so24182915ab.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396603; x=1720001403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zrd8K+qyBfVetpIrLm6qlKeNQKmHjz4ob0FFgn8jaII=;
        b=A1JM4YcHAQ4PVeLdzZvkiwqpcEhZJNOSHdxXKggmWVhwBic+l8sIH+eugXoNZadY7r
         oYtNYNvSiC5Lx4QWGKTmVnEUbJCChmgyV/Vq3etcc1KA1WWVxSiC/2WmNtQASHbir6w9
         gnmiEOQANPbPf4sGKqE2QaGn25tK0GrS+BLTy/UOqJYA4CqO1ClcSxKmK2CWYJ6GHMT7
         r9mML4OkKYUMyoIhjZEEA2bF/N8t1ceKJ2v/8e+tDfqU+0voPdEAOWq6UScyX/wpMGT7
         F6utotP6OgqDKXRQUShckBHBfwTHSq43hy4oo2zIquxmn1M+KtLz1oBjnhaLtMje2fzx
         I1ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396603; x=1720001403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zrd8K+qyBfVetpIrLm6qlKeNQKmHjz4ob0FFgn8jaII=;
        b=ZvTwq3d9xHAUB37qa94IpZiDYefWLlt7Tw+cudeF3DCGblyDcd50J+gjRsx2TzE4K9
         u3i34gOVBfc8UzLT1KAvpDqmr5W6M0wkbRqlBNmM/uoWmcmS6MX72rGZOPhDkJCqDqrN
         WrwOfV93VAfkdnZ3/PI4fhSzwsvttHxV2QEmTSQGtZRjmJiqs9Wv4fZrkACRJtofH+Nj
         K9cvvmkCdsrTPeZ9yIv7tFNmkVEoI5eumZ6ZTmEEJ6oW3U1VFKi33zMNODYhZ3PzucaK
         351zrNgEquZRD9U8pKmqy6Wg3H4lZjXbx5tfQsyfYwHu99o2e4u1LanRTdC9j5K0nfYp
         8J/g==
X-Forwarded-Encrypted: i=1; AJvYcCXveDF4dgsIhbEmcPi6yRBH+aWJ4W1EV8XouXGI6LLI5t72qG6fnqEcRDXGsdvLyMwiPGfn7K2OLIkqQJXdqTl5fd3XQDbXFZPs4g==
X-Gm-Message-State: AOJu0YzWemdKs2eRDxUdVMFjKXTdx/OBtPQ1r7875WwawmZgcr2WPzPE
	MMMWTgctxOJwEENBsTleHSnXCLhs3KKUd23jN8jmtmC/STGQRYPLqTKlROEVf6Q=
X-Google-Smtp-Source: AGHT+IFUZzMErxpLYVEJfjbPiqJyGKvbDtnALq/jGvRL0oxC3s7sFwdWv/jSN7Scrt6aDPMiIQgoiA==
X-Received: by 2002:a05:6602:6427:b0:7eb:eeba:5e92 with SMTP id ca18e2360f4ac-7f3a4e4748emr1288982739f.13.1719396603486;
        Wed, 26 Jun 2024 03:10:03 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9d121859csm3079108173.137.2024.06.26.03.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:10:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 12:09:14 +0200
Subject: [PATCH v3 5/7] dt-bindings: soc: ti: am654-serdes-ctrl: Move to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-mfd-syscon-split-v3-5-3409903bb99b@linaro.org>
References: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
In-Reply-To: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2452;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dA2BvNuDdbIFKkStpUlyQC5zc7XFrh1545e/AvgMWBA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme+jRx0FlUKs9m7U74Cl3aRCoF9QLcGf9TXxW8
 zEdB694ZDaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnvo0QAKCRDBN2bmhouD
 17GeD/9ttG1wj0agCEdCp2J1UVba8gqRUHHk9HtrVHO0PJV3qgTr2zDrRQDq8umUBkbNKhvceRs
 j/B3B31vXhOrLr5Vxd0OEp9Y9rM+q89afgjdQysN1szBsGzd0465MObh6jRFyrVCuGINTxKpS8F
 yQE4dS6fgoIIJRfX5GoY/gGCk66GVE8mQiWj1E+ATc0tmGtw2Uz7pSUm+55Yu6cVqS4HLB7VwCX
 SFepNQvkCIYsxaacKdJNxkcDh8P2k5IcNgbEpCpe2s4eyZmcDYkcY3uP2PRzckYG9Svwwly2/VU
 sCCD5iiRyxY8M/waZoEHbcWfTYfiUCBcS88241a0t7MlKcYQq/FdVEGDX4H2KvpRDYJSonayugZ
 /3KR1xEfPG4UC6PizRklUScg5fP9voO/inXN4SiB8KQvqD7JaFpsRpn8SciEzcD3xniNHcqFMR7
 Yu02tuZI38F65YkJrrGFL0bZLDcaUmRwfOo4d8LZNYC/qJGkmg9I4QIF+oDFtR4jIcZLl3aAC58
 5kSdZ9qxXKHEE0zMQhK30NYVZSfSkBOsv3U53TXhjH9ibHu0uGIMif+QROwn2QukdH8wkXZeyd4
 uWEwtdZ2VYO8Bzyx/9r4MNazK1IHpu9DPQ5lTl0ZBAjomrtvvTLe4V93mgQ02RhYKmSKbQBXHvG
 asVbvlvhTTM/b1w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

ti,am654-serdes-ctrl is not a simple syscon device - it has children -
thus it should be fully documented in its own binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../bindings/soc/ti/ti,am654-serdes-ctrl.yaml      | 42 ++++++++++++++++++++++
 2 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index abd3debe5faf..d6fa58c9e4de 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -117,7 +117,6 @@ properties:
               - ti,am625-dss-oldi-io-ctrl
               - ti,am62p-cpsw-mac-efuse
               - ti,am654-dss-oldi-io-ctrl
-              - ti,am654-serdes-ctrl
               - ti,j784s4-pcie-ctrl
               - ti,keystone-pllctrl
 
diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml
new file mode 100644
index 000000000000..a10a3b89ae05
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/ti,am654-serdes-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments AM654 Serdes Control Syscon
+
+maintainers:
+  - Nishanth Menon <nm@ti.com>
+
+properties:
+  compatible:
+    items:
+      - const: ti,am654-serdes-ctrl
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  mux-controller:
+    $ref: /schemas/mux/reg-mux.yaml#
+
+required:
+  - compatible
+  - reg
+  - mux-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    clock@4080 {
+        compatible = "ti,am654-serdes-ctrl", "syscon";
+        reg = <0x4080 0x4>;
+
+        mux-controller {
+            compatible = "mmio-mux";
+            #mux-control-cells = <1>;
+            mux-reg-masks = <0x0 0x3>; /* lane select */
+        };
+    };

-- 
2.43.0


