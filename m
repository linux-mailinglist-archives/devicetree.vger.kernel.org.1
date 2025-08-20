Return-Path: <devicetree+bounces-206855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C24B2DC28
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:12:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E5B81C448ED
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 754972ED848;
	Wed, 20 Aug 2025 12:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sjgXMTxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC262E7179
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 12:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755691866; cv=none; b=oHJL20qlQZ1yioURUKbi0Tujxrsq35XuPe9VpVlrf+QJndQeecASeb6wiR08aClr9SxXa6i0N2Cba6U/Am5+/dC9ll6jzBjsa1MYm8J4qVey/vEtVuwlOh/GP/1cbWHnqOTiuW0KXLy2bV86HTR/t8MOorGhD2Kb0gGagTVOH4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755691866; c=relaxed/simple;
	bh=f3xB0tvkuyaUVJ94KkePk91bBqSguAHtqworF2y0QNg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Qz2OnIjLY/uwPH7AwBTR2gJnqZMocnvz/fSXZ4FSXFQ9pFr9b4c911dSmwlHt0npzAXa7GN5bJ2IvGB4Xf4dX/BbG1sRrocPrOIINOnavL2Zk3JMVSpF4L+bmTS0xOEg/OV6iaLXf1qEv0OnPvTC9L4CAZ3XYgdhcCys5EFuSXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sjgXMTxS; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55ce5243f6dso7076712e87.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755691862; x=1756296662; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0uwFhS+61H7KqiQsmg/6fzZuNhHOEI84MRnG94LKZpo=;
        b=sjgXMTxScJ9f0EK7gwEBacF/atcQPyv6TAtmm26PC39lAEow5pigMSYmb8IiSWB98U
         hrlN86JlvqfjxWBoWIzPGFOzM+097j7wSqR+Qa0oA1cRpEUuttHzEfv3kppZu/JZzXo5
         +vLuKV3WXWrJrKcuFv2anDT/URmKB07Eq3c+w+UASwaTKwVa1jCkAMh0EYDqieDXJOG4
         x7GpqoPKOUkhtJZ+qflPiKLkHn6Qo3CFkCuy4wCIgazsaJLTxq4WcYxz69LBJqGlvwow
         DNEZUnbvbzHXSHniHVMoyuzBnCpEJTz13sl43KWrJ8hPRIP/bYmzvBFY8wXVQEx+VuiP
         rysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755691862; x=1756296662;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0uwFhS+61H7KqiQsmg/6fzZuNhHOEI84MRnG94LKZpo=;
        b=Ayx4Kz9fSvIKNl6VFp2eNP7oKOU0qCbB3un06H2zHMzTUvkMvIEneUoaaHc8Z2D3gJ
         5Z4fUvY2fPPWlbK9xuMfECsKJq+pz3krSCYEib5U7mFjsZEVe2aerPfytTKSetv4wmET
         Pe3t7iYOoUu4rRQRjfcR/bp2jG0g5hpRXjyzUvT7JYc2QCOBlXnlCFmEFxrsRjn6mGQa
         WEH8Eo37Kwr9QUgOip1uCZTjQzVyTYITEtOPt5kD4lZ4UoULq4F98bTER5wvSyw7ni8u
         oEWl2OHYpNbfOCKjvGQYVRgdAcPa0FwWeFFfaB0AzGGLY7i3DOtLae4cSFC76e28caWC
         3j3A==
X-Forwarded-Encrypted: i=1; AJvYcCXK6knwqX3Ky5psr9ERPP+wjW+HbI85N/PLi1VgwjGYxRSKJwLTkShjEz4BKyf3smekkBTtfXjX52tC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb68ez6fbm5avjLcoVHptJSIOHGtnCKfP/x8O+OPQt0pOc1sCp
	v9LkqNsVmqHhKevHUoF2O1g6cF0q4rfAbcDuMBWEEqckOLdelKLf/uQmc20qDjTw8j8=
X-Gm-Gg: ASbGncvYzp2GEhJtAP/O00F2nbmsWbZObX4RUp9+m1gdGISr7wOHiSfAvkQ8cOs22p1
	mLvtpnxKPd0HCJo4KWJDJeq3kHUryia4mIw5kuHVkD9REEIxaj9hr+SrAGy58RmmLC0pwuG5Lrc
	BjMxP+JbU3JfPNaoiUg3DZg9I7gVOHqZuvTIltbvCADMDsBcMntXh5frifz0Ht5za2GiEZFWDfj
	rsM6FLIR6uBBPDJlvM0RpJ0k9mUWSYGz/TmY/uZ8JXI8kOue/9es3ikRADzFEofy5DwDm/KOQTx
	L1l+T+2J3OOnM2tpgao9Z4KRyaDDAQnw0Hvg60ObLSqd5i+7wVUjzaKpVxK18eoHEN8exnnIIIj
	8JY5M9mjcG3yuBSMCNmUVv27T6nnaiYw8
X-Google-Smtp-Source: AGHT+IGO6nQK3uJ9oBAmWyOXIJ0GpBiUfeAWgsZoBMuAIXdZ0R3g2CyrH06LUAP2sTgMElpmFQMYlg==
X-Received: by 2002:a05:6512:252b:b0:55b:5a47:a48c with SMTP id 2adb3069b0e04-55e06bc1147mr878583e87.43.1755691862349;
        Wed, 20 Aug 2025 05:11:02 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef414f1esm2589129e87.140.2025.08.20.05.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 05:11:02 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Aug 2025 14:11:01 +0200
Subject: [PATCH] dt-bindings: usb: IXP4xx UDC bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-ixp4xx-udc-bindings-v1-1-640f29140164@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFS7pWgC/x3MQQqAIBBA0avErBswNYquEi3KmWw2JkohRHdPW
 r7F/w9kTsIZpuaBxLdkOUNF1zbgjjV4RqFq0Er3atQKpURbCl7kcJNAEnxGR5bcYIzh3UAtY+J
 dyn+dl/f9AHFpRKNlAAAA
X-Change-ID: 20250820-ixp4xx-udc-bindings-cd4dc7333ef3
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

This adds device tree bindings for the IXP4xx USB Device
Controller (UDC).

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/usb/intel,ixp4xx-udc.yaml  | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml b/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..4ed60274689725696a88dcda43b829cb0863cbc1
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/intel,ixp4xx-udc.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/intel,ixp4xx-udc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel IXP4xx SoC USB Device Controller (UDC)
+
+description: The IXP4xx SoCs has a full-speed USB Device
+  Controller with 16 endpoints and a built-in transceiver.
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    const: intel,ixp4xx-udc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    usb@c800b000 {
+        compatible = "intel,ixp4xx-udc";
+        reg = <0xc800b000 0x1000>;
+        interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+    };

---
base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
change-id: 20250820-ixp4xx-udc-bindings-cd4dc7333ef3

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


