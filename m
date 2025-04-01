Return-Path: <devicetree+bounces-162413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC8A784D0
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 00:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 318AB7A39D6
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 22:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF17E1EE03C;
	Tue,  1 Apr 2025 22:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cNXnRAQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1017B131E2D
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 22:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743547633; cv=none; b=jkL991RKTM00nNH8s4aNaczp/9ozEiMPr52C665zithHHi3zNVNbR/rELYI27GraoRetpRqp3Mj0XvcfenltT3ECX5mHUEQTFhvJqLTGKyhCqJn2C9UwDjADtFl33agxwhTO51ur+wWxnrbHN8HJTnrytfFURu2iJJEUGLrWCRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743547633; c=relaxed/simple;
	bh=RgFlJsnTIvdVDvIE9N9PHEKhYOH3uTflC6iJyoSy2zA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cvLd2fE2hR0o0WqlMPbLOh82v0GvXtenptXRvkvgGH1h6fylxcbzyWYeIv+SxR2u3+EV/rqCIznfOkqbliqr9vOxeJYjrq51X8sD/li2XmaaEsRXVxfdxC64nXqMyvTv27pmC6Oi4aygC8OFL3sisuyGzjTcT5G65MyIMUgZ5vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cNXnRAQ1; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso3428693f8f.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743547630; x=1744152430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98NQySuN2mSdiaqDA1MOqkdPIYgJtZlP7a7zDH1HO5E=;
        b=cNXnRAQ1Ud5LAZiKKFcuLxMjNDb68hqEv7Tv/rujua6yn5q3m2EjXGA8PimvLgBpHk
         3nf3aps7UG75hj9W+1U+KZMPKi9qW80YuYSSzommED09m6pD/7DOXyLSBqZtx2sBwpXb
         m64MTxJ86lCJpAZkRe0BSMU7pGri8ocnqOfXMw0pNMKG4NPwsqyNjAAkIFQySaVtTxd8
         2ZEDkF6lxedouBVU1bTYMAGIsIRfVn6941Mv6C/R8225q3cgL94h+5WEGHbl9EyI16Qr
         PTDhhc6hNq+NEHaap6S6ReUb6Lmgf1mwZ2ypfoN7KBDSiurtJb3njrwd91GTPsatokII
         ZHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743547630; x=1744152430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98NQySuN2mSdiaqDA1MOqkdPIYgJtZlP7a7zDH1HO5E=;
        b=tEEA8lISBFLXW0vyDGnQeVnTsqKSyK96mqUxMuUH+EcxqNkF/MjDTTziu4rqC9skn1
         DuSgcu3FSRqoi7m179SP70LGeHGocGYgFUFb6j9Oh/9RY9Gcc0nGBOtPTbQjREpjHfCF
         piz5o143NYKlr24S676Cw2B7txOfQVEcor8Y+XEyuBf7TxxhM41adqAaUtqutvftNcSX
         w2pFDrfyq3XveGsLq1dryNyP8HJtorAkGXElod9MfRC5QQoI7wMQ9x6fYz4Rf0Zi53wu
         puoJDyV468+cTzEHGhfl+E1Gl0WRjHIUu2lLv/Rd/jtqVlm7bLg2X4oPdTIHT8If3HMq
         MmtA==
X-Forwarded-Encrypted: i=1; AJvYcCXVvD0+zoJ7TMr9yMZ3CUW3t9FUTHN9W/IqVSQf+++DsdswScx7eXHUaJ/dayfPq0dbLPnABwSewQDF@vger.kernel.org
X-Gm-Message-State: AOJu0YzG6Jxk9V2YI+lbLbnogH5rfRT/V6yXsfTTSJDLo2ovxhKuzfD5
	53ch+v+9JsrT+wjGhUAN5q4NmnRsMoKZXyy/ybXvhl9DG8OT4Ln2qqzt70bJP2s=
X-Gm-Gg: ASbGnctfF6Dj2YQEk/BW+GLaFztTE2UL2llEeBwNYOtLRnX8XjXXKDmUlNjPRH8KqcX
	Y4GlLLEfYu63nh7rzHkZOX4LNOtjouRLkrZGYFiiotqkQMLRc6g8rsFEnPQwE1i5Xo5soqlle79
	tX3J1vsQruLxj0nBb0dfDydkYIitjuz9eSgj3Ll/uKdWRO40MwhIg6FfL17EYnPdo4yyAXn5pdq
	mzFIAnvRJuzzhwu5by3mkzyBUMmfPrb2lnzwQR5mlfVnwdCCETS7pvp2dUTQKEg+Zq3kDmMwUJJ
	X0uq5DVQ1PY0wxw+5GQmV17BGZ1ZCB0n/AwBfGKu9n+8QO3eXo0Lz5RKGlSNs2kS1kvXNMQ=
X-Google-Smtp-Source: AGHT+IF2NzzZ6KCw87M2RGUntEuVmQwVlLWQh94Xf93+H3tQqSaCHSKYTBuIHsPytXFa9/kFxPYH9A==
X-Received: by 2002:a05:6000:1789:b0:391:4999:778b with SMTP id ffacd0b85a97d-39c120e1bedmr12286234f8f.28.1743547630343;
        Tue, 01 Apr 2025 15:47:10 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b7a42a3sm15488862f8f.91.2025.04.01.15.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 15:47:09 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org,
	thomas.fossati@linaro.org,
	Larisa.Grigore@nxp.com,
	ghennadi.procopciuc@nxp.com,
	krzysztof.kozlowski@linaro.org,
	S32@nxp.com,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
Subject: [PATCH v3 1/2] dt-bindings: timer: Add NXP System Timer Module
Date: Wed,  2 Apr 2025 00:46:41 +0200
Message-ID: <20250401224644.3389181-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250401224644.3389181-1-daniel.lezcano@linaro.org>
References: <20250401224644.3389181-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the System Timer Module description found on the NXP s32 platform
and the compatible for the s32g2 variant.

Cc: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../bindings/timer/nxp,s32g2-stm.yaml         | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml

diff --git a/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
new file mode 100644
index 000000000000..2016f346b2ee
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/nxp,s32g2-stm.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/nxp,s32g2-stm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP System Timer Module (STM)
+
+maintainers:
+  - Daniel Lezcano <daniel.lezcano@kernel.org>
+
+description:
+  The System Timer Module supports commonly required system and application
+  software timing functions. STM includes a 32-bit count-up timer and four
+  32-bit compare channels with a separate interrupt source for each channel.
+  The timer is driven by the STM module clock divided by an 8-bit prescale
+  value.
+
+properties:
+  compatible:
+    oneOf:
+      - const: nxp,s32g2-stm
+      - items:
+          - const: nxp,s32g3-stm
+          - const: nxp,s32g2-stm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    timer@4011c000 {
+        compatible = "nxp,s32g2-stm";
+        reg = <0x4011c000 0x3000>;
+        interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clks 0x3b>;
+    };
-- 
2.43.0


