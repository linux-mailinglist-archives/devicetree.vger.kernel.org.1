Return-Path: <devicetree+bounces-216931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FE5B568B9
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 940A63A47C8
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55530269806;
	Sun, 14 Sep 2025 12:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LHpsT/Hc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BBDE263F2D
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853761; cv=none; b=L+YWhRrwFW3EVq0/gpWPxUdHQvtd69WomYignkTzLk63tVM3NY15vQjuB/1s95TbsGGUWpVnkohmTfA1+Snqdt3NRm5/8Qx9wtfrfVrlZc2sTnqA0n7svs+cxycTLcddGMqQbrg38sM+JDJw+THd8c2JgwQEqplIex66Cs1JhXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853761; c=relaxed/simple;
	bh=y0sCz1ox1pdVdqC9lyNwJysTnUl+q01sDp++N8XGWHE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F45vEjjRCUgqA3el+gJ1OypP8S6jETuJDgcoUOJZ3LdrmMP0MXN+DdPSgKOc2ujzsWLSxJD71eBdy6ZkqGTIQDHSvTy3etd6dO/yMjyOY04uNy0gMEo4ZfsGaqyjtaqMZDS0aCcB13r7BNwlofFtfMlyvDUCljVQwXf4kOM+ito=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LHpsT/Hc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b4d89217aso23303315e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757853758; x=1758458558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7YlK8x1e1nNbpl5BkBqgVftDE3O74o0MrUDh59tTEnY=;
        b=LHpsT/HcJwdMOk1R6v1K7d7gfNZL5c3gCpcFNPMt6d/dhj7g8tpFb1tGLNTj9/Ve/0
         4Wgp6OMRrhSi5AcxzZGkw4WsmKROi0hKkJnUsuHcASVoKvqIV00p+HLaLFYDBlSOAMQz
         W8H3vGNWgfeV4j6fc698DcIvqhblHNOAzWZDGOzVuhrOMCBWjj/w6Iyf+9f9i/CpfcUt
         9LAWiHnpwJampHPy+xoKhT71YUY5H4uAQ7KSk3MRkc++BQQScNwaVDEUIEZmu525vfWm
         mHNLnXfotArsYxsp5Bu6paQiLgGeCHYoZfQQogcv2CPaKGvt52l9R5zI9wBsPkuNY3X8
         p8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757853758; x=1758458558;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7YlK8x1e1nNbpl5BkBqgVftDE3O74o0MrUDh59tTEnY=;
        b=DtKkwD/B/SVpVMRg8mCnPhhCUQuWmZ7wyOtYyjuiqibtyTt7afLTbBo0Sa3x93W7vD
         yX2cC+hp1ffu5tBg0L4p7UtRaOJ0vprJUBQW8Esw6zsxF/odyl7MHHYp0K1SEQo7WhFc
         JovQSE7jaMgEm/spvgU7tRPkcWsTZJVyakF9VGTVmH44S08f/5mQmId4qjYSGGUE7G8c
         8iEWv4gtw7bFRt59fLWrlsNeG3ahQMNskuo5MpyncobIFtV4W8QpyzMjQKV4ejBf3QR0
         9mrOdTQLHtu/C4EB+GphfHwG3EqzFHj/ujbDpthfcRfunIJklJlQxT744NmoTkSFTWj9
         KYaw==
X-Forwarded-Encrypted: i=1; AJvYcCVVYzstB5nnKZw1Y8tA39W7wfQuXW/pNlPpUW6HmrjsQzWkKpctTBw9WdvG/akM0CVn4FTjk+T2b6hF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu8m5N6qjgoQh85XT6kXAwpIdAqm/4omrru+izNjsYZwkD0ith
	tbL6vD34lomvbi1K71xshOwwnknehp36+81F0DdDBJWdf9Bwwnh9CtHy
X-Gm-Gg: ASbGnct/TX9shxaDpr2LnkKdQYzbbrqAXcnjzxBgXmW7n9Ko01cw8sj5zGIOq1GYxQY
	V1awqRC6iBvn8Qo7laXmQ4Uu5gcWPNECJXnZxxOcIKgOCOUDhbPiIja7UJbqNjfc1OZun8zyl/k
	m3HPaXUcUzSAOX0d/XWPkKklm4wj/TEXoDH2q6jBu4bCgvAG30d94u8+QQSSY7zHZxrwOp+A8Ch
	MkxxVwo0i15HymU3BPLQ6IEjYHL/nxpNGNCw6n9LuYHmYwaqvcPLS3U/Ud8qFUPxMBW18f6nh+C
	iShBz0s+ekYIxAksTTXsgzmy5f3pp4fQgQSqsn0Ve2XpMbsIFTAoiFs36g2/ZpCbye3XUi8xocv
	l82HeXjajLrbUeoV+UETkmrfR8Atx5nYjOG+HcwEZ2ia8fekliBX89769usNOfRAbibsmpxTriV
	MMQ1gPFNtC
X-Google-Smtp-Source: AGHT+IELVFIlesJEmaJQpWXNNvn35JfGIecuwQDqOHfPhALJRBcTy5rG9hu4+nxlOgJqxNq0ak5Xxw==
X-Received: by 2002:a05:6000:178c:b0:3de:78c8:120c with SMTP id ffacd0b85a97d-3e765a139bdmr7119284f8f.38.1757853757902;
        Sun, 14 Sep 2025 05:42:37 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9511abbccsm3727773f8f.9.2025.09.14.05.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:42:37 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/7] regulator: dt-bindings: add documentation for s2mps16-pmic regulators
Date: Sun, 14 Sep 2025 15:42:21 +0300
Message-ID: <20250914124227.2619925-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S2MPS16 is a PMIC found in exynos8890 devices, which controls voltage
regulators - 38 LDOs, of which 11 are used for CP, and 11 BUCKs, of which
1 is used for CP. Provide documentation for devicetree definitions,
regulator naming patterns, etc.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../bindings/regulator/samsung,s2mps16.yaml   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps16.yaml

diff --git a/Documentation/devicetree/bindings/regulator/samsung,s2mps16.yaml b/Documentation/devicetree/bindings/regulator/samsung,s2mps16.yaml
new file mode 100644
index 000000000..ede87d3b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/samsung,s2mps16.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/samsung,s2mps16.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S2MPS16 Power Management IC regulators
+
+maintainers:
+  - Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+
+description: |
+  This is a part of device tree bindings for S2M and S5M family of Power
+  Management IC (PMIC).
+
+  The S2MPS16 provides buck and LDO regulators.
+
+  See also Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml for
+  additional information and example.
+
+patternProperties:
+  # 27 LDOs
+  "^ldo([1-9]|1[0-3]|2[5-9]|3[0-8])$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for single LDO regulator.
+
+      LDOs 14-24 are used for CP, and they're left unimplemented due to lack
+      of documentation on them.
+
+    required:
+      - regulator-name
+
+  # 10 bucks
+  "^buck([1-9]|1[0-1])$":
+    type: object
+    $ref: regulator.yaml#
+    unevaluatedProperties: false
+    description:
+      Properties for single BUCK regulator.
+
+      BUCK 10 is used for CP, and it's left unimplemented due to lack of
+      documentation on it.
+
+    required:
+      - regulator-name
+
+additionalProperties: false
-- 
2.43.0


