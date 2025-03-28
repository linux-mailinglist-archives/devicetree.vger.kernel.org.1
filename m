Return-Path: <devicetree+bounces-161655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24279A74D8A
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 750B616D16B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA361DA4E;
	Fri, 28 Mar 2025 15:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IH398ePK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A371CB51B
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743174927; cv=none; b=Y/xIK9nK9g/BKx/dS9b3KR1udwb+dcESYNCxnZZ1z29E+OHMFXWRwslva97cNkyrH7sMw++MQE3acf2/DThP+V0CIHN/3/AVN6ppV9bXPayGzmG1wn+7UfThfJkFT8LxA8ZRNxMJb/2se7bhQoc7yF6yYSgM5rVm7nRSFBDma9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743174927; c=relaxed/simple;
	bh=3IHdPt3ilrvQl1EBzfBDUJ1zVOOCJvrWeRswwbDNyTA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TvBNs3I+gaa6MguisxSia55Xa+MrtjkrIJXCayoZbqa7gOjlW5mZTKN3SHopfbTt4if9an3DooBvru/sQdXE1LDSMGjQMd7292NcqlV57tvDM6BGGBkZtHfJmfFt0MZ+2g33u9BsJpRVkV8IbrJFfR+kOF+xVjRrY/1Kyap/aK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IH398ePK; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso4143867a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743174922; x=1743779722; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rZ/A5NQVl/i0LPvXyGUfZOVhC0YHLCb1cbCkUXx5q1Y=;
        b=IH398ePKiwLnuh3h26ii9r7jxNDP2xXDTEGPpQOj42EwtTGH9tTwsbTCQqeYYVMpUy
         xEncPRM7eeGr7+GoYK9anAJRCoviaa8j8wpRcW3an/5JOrPqX44GItY+54NMQqV83oh0
         GJRgi0mWIM+t13ORyBg4a499lqGkhI7BBTLTGhxQBqP1CVyogWY2DfnK5wFe2Tv3gu9E
         4nFngFgzdxywxJ3lA1JldAtoS3Sm25SPqdQJkNvjI3btHdhLFzSpgXrGEITL/SEk04uv
         VnmHShLcX5bzZTmkchj/xl3ka5738eR3DFj04FA4+brtKoZiMaGxrisYN1D5Cn2gJUaH
         zHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743174922; x=1743779722;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rZ/A5NQVl/i0LPvXyGUfZOVhC0YHLCb1cbCkUXx5q1Y=;
        b=n/b90KPUFGijo/FyEFA+DuihDUi3Kk03r05Z2DU8kQ58YqAnt5XVVAcrTC9kXT63Pl
         bo63HbZ2cFMJ1/zCBkiVAMWWe8HzaZFX3HDCpDYoPUlmLwk7Q1R0mCGmlOAMuCS98qBC
         vcSlEyh5bQ/HQkI9VrijEke9sSEMt0D+TDXbD+o/4LK3iSwOtqb+qGA7pgRCOTdXZsRW
         o4z7KBWW8FomS9LL7sfVQnfzgxTlFyNTvMHhg0tTDgXlNdtv/OXVNSq9k9jdJAD3Cop/
         ZJt0PGpAKGVitMkhC1Qq++kW1rP7ttcGEpBzHoNWqkPK3d7GRtO7NDOmMxzBvkpEbfni
         KpYw==
X-Forwarded-Encrypted: i=1; AJvYcCWBwe4RVvbw7VvuXyLWdp+PgpGXZl0Hu7caT+JbE0euO+WMcUSC5ZamzNqY8gl54Asy2OL1rr29lLgY@vger.kernel.org
X-Gm-Message-State: AOJu0YwcyAehNSOt3DZxAM9Xvf28G0LfehPi5oeg3ZCR7lp6CXr+nlVG
	ZCdXlc9xmh3456R+4UC+K2PHhGCmLQjZtNlm7gqHDdcGU/MXlyzD82Ppn27bZvQ=
X-Gm-Gg: ASbGnct8ugF1LE1Gy3jhg/2tL7jHyDoahuU8FnlZRw8DIL1oY/X86W+6bK8SsPGQtzM
	II9vIHBQSeXGZUSHgLd8l208rZbKJaEQPXxVHG/pouG5Niw8F9or77WKXMJcbyrG2xMZLjmAlz4
	qjHwqacIiifsh8uwlAxJhkO3qWQsdIgvmdBakdU7sdtWGwUuYbtq7xLOekTJO/ajFHtpcZyQ900
	QaC5M/xosbLc9tx8lJV1lS13/NamP46Y5CzuoDWEvOOALOs5MyyliRWtN5PcMOXC3ntC126wWIF
	3e0uqCurjzESM1VSpkguileOzdZigT4hQKUo7RgPmZlZMIK7+W8A7jZrA+9YkBvrDKDx8OK5TDZ
	Gw3BBgZ5IwOJ1PSLI9+pHT+yxtJYP
X-Google-Smtp-Source: AGHT+IF/SAGXajaIJE2fIq4KovdnKXhHLZoUZ8JDIQJu039BLgAJUBx5iZLh2HzQlSqeRVtqSuVgwg==
X-Received: by 2002:a17:907:96a5:b0:ac3:8626:607 with SMTP id a640c23a62f3a-ac6fb122244mr749440766b.38.1743174921576;
        Fri, 28 Mar 2025 08:15:21 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71927b742sm178789266b.65.2025.03.28.08.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 08:15:21 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 15:15:19 +0000
Subject: [PATCH v4 1/3] dt-bindings: power: reset: google,gs101-reboot: add
 Google GS101 specific reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-syscon-reboot-reset-mode-v4-1-77ba57703ace@linaro.org>
References: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
In-Reply-To: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

GS101 supports a couple different reset types via certain registers in
the SYSCON register map.

Add a binding for this.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/power/reset/google,gs101-reboot.yaml  | 32 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 33 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/reset/google,gs101-reboot.yaml b/Documentation/devicetree/bindings/power/reset/google,gs101-reboot.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..cbd0a1d9b45af0cb994d616c56b96440c43ab971
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/google,gs101-reboot.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/reset/google,gs101-reboot.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google GS101 syscon-mapped reset
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description:
+  GS101 supports a couple different reset types via certain registers in the
+  SYSCON register map. This map is retrieved from the parental dt-node. So the
+  gs101-reboot node should be represented as a sub-node of such a node.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: google,gs101-reboot
+
+  priority:
+    default: 192
+
+required:
+  - compatible
+
+additionalProperties: false
+
+allOf:
+  - $ref: restart-handler.yaml#
diff --git a/MAINTAINERS b/MAINTAINERS
index 322ee00547f6e494a96d2495092f72148da22bd0..e27f5e672bc5a04777afd098355898654654659d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10080,6 +10080,7 @@ L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	Documentation/devicetree/bindings/power/reset/google,gs101-reboot.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/phy/samsung/phy-gs101-ufs.c

-- 
2.49.0.472.ge94155a9ec-goog


