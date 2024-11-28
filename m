Return-Path: <devicetree+bounces-125342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 342DC9DBA50
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 16:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8E1628136B
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ACBA1BD9E0;
	Thu, 28 Nov 2024 15:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XJovoJqM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579801BCA0E
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 15:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732807014; cv=none; b=Y8L2NOjHQnxO8SV73wIxf1sRHjspOctTo3iIJrJxIaF7Byc8z+MLLL48791wjgR6jK4oLZ3aFdy0pNXVomOH8jhrkWJ/fGp3zD9z+uV3BVSqoauI7Ztq5DM0TEMJXBx1VF+hvrcMDxIOckoEuOF9MNz5EqaBL2HL9HjtMQ36V0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732807014; c=relaxed/simple;
	bh=KH6tn61/Aofb7L+ocHnF34SBttJAGs8D9xM5t0ckYwk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N3aqIxdrLsLdQ6nSEyq59wZl3siG53BvfSJEItVfsHEMkcjU0+DpyoNa1gLs2kPj2BJX2ZOqEa4GiJUFLJLyPUnnQffAL4Ya5XHx/gFbQgtiM+5ScHUPjG2uw8QFp2vMB1D12ITaNva4mw2k03z+VWmgzmwN0AdSAlbKoBLjNSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XJovoJqM; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-434aafd68e9so8509145e9.0
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 07:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732807011; x=1733411811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S5Q6Qv7Q+7NO9XRjvZFVeABmFoVh33eCRfYHhRmvlpw=;
        b=XJovoJqMCr0OOC5a7cmVFcs96NJJtNSPf1f28StK7+zWHsDkFihP3wPTiJz2tQ4Gj+
         pzfYoTa+pF4Sg6xJeytNb1yEX4ioJ1QP2zeQmAHVBtTO5CN00f7DjGVsQUv8oPYIgo83
         zoz0uM5eMnR3RvPHdrTXkwU2YbmGJL5bymAMwCCocOP/OeVITsIPON3zg99xK0Tf1HgH
         1+JJ3Lg2NgdfqVg0LQQYm6edWgTo1k9/dQIbCH76k81fjOlK1VAjOfbtmSNNzTlq/Rew
         xNrfBPM6U1xXDs8CJ2/ANgwQskKC7Goz6d4Oj5fR+xmn6Ce33MZVu0FOfcDZTIcQYvng
         toHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732807011; x=1733411811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S5Q6Qv7Q+7NO9XRjvZFVeABmFoVh33eCRfYHhRmvlpw=;
        b=t2CHa/yWFwvtE/eheCoII/Fg6jpMxDVWUF1ONuaRgIM2zUQ8pIeAbed+jirRhodnQo
         TrwJVov0sh9SeMBB2HPmUcJvxbctEOJkGANd0sKyP1H78h+aEfRzZoplmVkXgpkySSZd
         bYXDYuomOqUWBg36ll4W4evaeDM0NU6sCK/Ra7jzhKBaK9oOtW5HvGKAP1QnYO+pDVDj
         +ONJYdQMVe3+pkOeAWHtCfhpNfl/LL8jRPHTB4fRHoLxlx0JOf98iYTutB2+LV+6PbDA
         3DSbOX8i++VuhPDJVkHl4cjGy2FX0qF+2OZqavAXumaacoulqi9l5RtngCVpBVM3y7mG
         iO6g==
X-Forwarded-Encrypted: i=1; AJvYcCXEsXAwyaDFrp25sGcnMxrwcNhoLEf0MHxwPluTM0Tcba2sx1dgt5zOCPNHftr0angzmrTlWHZuYqke@vger.kernel.org
X-Gm-Message-State: AOJu0YxGkEIza3uKluLm+7faZsG60y+7bvLm8KywYxZZqAe6/GMO7Pnf
	L+eieiMa7ImvvXageX3GDk7rUOdaJEPwDi3s8zIGZW+SNDmLxOSDTD590ge25O8=
X-Gm-Gg: ASbGncuFfM6C/y7Y5IhMmiWotH6FYYw6NzczSsEuu/bAOYaBnQVO1hCc0XrCsjscNIy
	2c4wZm5RYpeykjsaVF5x3NctouvbKt4I8Lk7XvfCL0wKvwKUoVtMJs2Xo+PigpPwTsNH41rLFGw
	mXX9s1NRujC84dkmKwJ6jAzEGQffJzwx2UKQpSqovI3vWAORsBKVtTJyjZdI+nRwtoxFj5aOGI/
	5h2pHFJ+ERfV1uWNjNCJtRT+R0hztdZEIr/Ro6B9YTtSTFdkzRen1bhrJIHuifRYmnSnuo=
X-Google-Smtp-Source: AGHT+IF0iJc1B5czbddvWTBnzzA/XHuEcHL2hR6LyPDDF8y2Tqjitcp7kVj8ES42GYzv1qAY3kVKlg==
X-Received: by 2002:a05:600c:3b29:b0:431:57d2:d7b4 with SMTP id 5b1f17b1804b1-434a9de3be9mr60030445e9.26.1732807010910;
        Thu, 28 Nov 2024 07:16:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4fe1sm55867025e9.38.2024.11.28.07.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 07:16:50 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 28 Nov 2024 16:16:44 +0100
Subject: [PATCH v4 4/5] dt-bindings: mmc: document mmc-slot
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-4-11d9f9200a59@linaro.org>
References: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-0-11d9f9200a59@linaro.org>
In-Reply-To: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-0-11d9f9200a59@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1754;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=KH6tn61/Aofb7L+ocHnF34SBttJAGs8D9xM5t0ckYwk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnSIlcZZ0QyhefaYAilsotWqcLqgfPkSKK9P1RiHTk
 FklhojiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ0iJXAAKCRB33NvayMhJ0QNtD/
 wJTQlrjKH0PY65pp1YvHE/K8ab0MOAghsuUJS/CYKI6D2Ee2EewIuUP5zLVsm1tq2+EUEOrJBqIlLM
 xgxNnGjNR2QEnoZfWeNFEEACal3ui9bkPZi7c2/CSi4KUw5SAT9ycCwBaNCH2JVbX+ubMcQJo6XQW2
 IoqziEgnTD32MkJP+gFanL4SoBxlVE0sGU3QiDu3scymKJ9CCFANE0EOsuBmNS5RIR0h4CEuFSsBPd
 cKefbWZxv97HOPZPXeGrVt5CIkqZ1R+Ajel9T8zVeQ12NZ86wXD6ytuxe1LVXq0pNiQWZ7pvk/zH6m
 SBIZe9BM6HH1ggbkmp77J6HTXaFZxP4C2HjNPXsWg5Mzx8X4jF8318t+BkiRcaBmDxWAc55M9FAS7h
 B3I/6SO7VdKxmRjJc2HKqMDiMpk28uXgaManIKOkN8gzmJtp7QZgYgTTRuO4wasH3yifooaU7AEUpL
 lo71weRzjMjo7d3Ev8mUidV+EvTIgqsbGxAMqmfoZvQROyUkcFMLMFvGmVWMznw35s+2k1yh4zxq8y
 h5JdkysR9IUT/SlbHfkuFR70LYpUIEROx4wThdLGqLVbfKf/2Ci9iuiiWlMOtthQcz60C8+m+Kg5qs
 OOD2zGlhE0zLGIpNpIlTBCYvq2DwHZlzV71aErT//1OaZGZHMJFbMGvvIomQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the mmc-slot, which is a subnode of a multi-slot
MMC controller, each slot is represented as a full MMC controller,
the top node handling all the shared resources and slot mux.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/mmc/mmc-slot.yaml          | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-slot.yaml b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1f066782806341a9f72460edd8e6454ce22f4320
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/mmc-slot.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/mmc-slot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MMC slot properties
+
+maintainers:
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+description:
+  These properties defines slot properties for MMC controlers that
+  have multiple slots or ports provided by the same controller and
+  sharing the same resources.
+
+$ref: mmc-controller-common.yaml#
+
+properties:
+  $nodename:
+    pattern: "^slot(@.*)?$"
+
+  compatible:
+    const: mmc-slot
+
+  reg:
+    description:
+      the slot (or "port") ID
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mmc {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      slot@0 {
+        compatible = "mmc-slot";
+        reg = <0>;
+        bus-width = <4>;
+      };
+    };
+
+...

-- 
2.34.1


