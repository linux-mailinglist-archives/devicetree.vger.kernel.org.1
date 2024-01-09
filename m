Return-Path: <devicetree+bounces-30787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC4E828EF9
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 22:37:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C4A51F25C7E
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 21:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050D63DB8D;
	Tue,  9 Jan 2024 21:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFWfbkRc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100803DB87
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 21:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50e7e55c0f6so3655512e87.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 13:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704836263; x=1705441063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Df5vbAJJu14yKYfvCr4fxtDlzFXpAT3tR5jvbBHluqQ=;
        b=YFWfbkRcOHKiTZdcmpDxQFyWVW6egN7PGpayOa+HqUmjjKDj/fEvGRWEEdSRnGnDry
         wLzQAvMiOzw7H1PU+0qh3Jv1zM3DsH2c72SKg4YXyFcpbKStzZ5NdJzzccFDBJXaYYWu
         SqjtiEbTVWSmT7ibTXcEx7LMvaN9lxJRbZKBLL9Kv8WEj7neZjY1s1GHxsqC2Bv7NXeF
         fL815P1lyds6qVmbOhN9Y/I2YGU9kws+Df8x0fdEgcVR1CGdqHkqP41D2NXMBVud6jX0
         w1tyjOXNWP7By2fH2VmzCg71wAGQvJwq0c0hmZyotXu9ilMA5tBKghgBhaBw/2DAN/BE
         /uxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704836263; x=1705441063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Df5vbAJJu14yKYfvCr4fxtDlzFXpAT3tR5jvbBHluqQ=;
        b=sjRenAoRyeYZDHrPdLgVfSSn7eX4RtvjLGY8mFFFcg/qTOE3pNkxBtM0AFi6qHKVCp
         sGrhxHyq6juZbaXTXPt836AG2cJYQvQ18C6WqeFwUV29h/jWb6pEAuyv1YX9zSmYNeWd
         C4X577vQmGluaRmJiVs2FGDapBFX8IxL2n8HV12beUOPTPO3Fy9v/Y4MQgLDrUOpnSar
         EWRduWrGW45R7rjqqAgA7/+BC88c1OUNxIIzh5lR1QerARP6HM3AldRNkESRnlMwliot
         6XRqMl68O2IG3/h1h37Ct5PCDRnHR8byI1IwUfhBAdkfMEM/d/oWJW1HGahaK/xwqY3Y
         11xg==
X-Gm-Message-State: AOJu0Yyv+WIAgp0uQ2SFM3N0gFOhavE1pd/pG3uyF5wFkx2n/cIjpZDn
	iX75VdVadA9cy4yI9Mp1i75LhsPkbEiDmg==
X-Google-Smtp-Source: AGHT+IGaixYqKBLJGCt7Dc8bk3FuZ2kSYvJcJs/DSrS/IfT6nLOs57OXi7Hzzt5IyKJ5I0YIuzzo2g==
X-Received: by 2002:ac2:484e:0:b0:50e:7b7b:5557 with SMTP id 14-20020ac2484e000000b0050e7b7b5557mr1310256lfy.145.1704836262813;
        Tue, 09 Jan 2024 13:37:42 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id g17-20020a1709063b1100b00a2356a7eafasm1413272ejf.199.2024.01.09.13.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 13:37:41 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Michael Walle <michael@walle.cc>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Subject: [PATCH] dt-bindings: nvmem: add common definition of nvmem-cell-cells
Date: Tue,  9 Jan 2024 22:37:39 +0100
Message-Id: <20240109213739.558287-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Linux kernel NVMEM consumer bindings define phandle to NVMEM cells
("nvmem-cells"), thus we also want the common definition of property
defining number of cells encoding that specifier, so the

Suggested-by: Rob Herring <robh@kernel.org>
Reported-by: Michael Walle <michael@walle.cc>
Closes: https://github.com/devicetree-org/dt-schema/pull/89
Reported-by: Rafał Miłecki <zajec5@gmail.com>
Closes: https://lore.kernel.org/linux-arm-kernel/20221121105830.7411-1-zajec5@gmail.com/#r
Closes: https://lore.kernel.org/all/bdf7751b-0421-485d-8382-26c084f09d7d@gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/nvmem/nvmem-provider.yaml         | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-provider.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-provider.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-provider.yaml
new file mode 100644
index 000000000000..4009a9a03841
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nvmem-provider.yaml
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nvmem-provider.yaml#
+$schema: http://devicetree.org/meta-schemas/base.yaml#
+
+title: NVMEM (Non Volatile Memory) Provider
+
+maintainers:
+  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
+
+select: true
+
+properties:
+  '#nvmem-cell-cells':
+    enum: [0, 1]
+
+additionalProperties: true
-- 
2.34.1


