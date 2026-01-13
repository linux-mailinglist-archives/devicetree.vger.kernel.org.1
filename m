Return-Path: <devicetree+bounces-254468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEA7D185F7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2BC7C307CF2C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1439138A9A5;
	Tue, 13 Jan 2026 11:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RNlpWaiO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC3B2FF150
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768302145; cv=none; b=Q4LaBnBmcJmXESOxMstAN6kzfOzrdNKXrZ3YP2eWKqX6Wcmh36FpF4sNZQHruWrzBMBIiUWu6OlLh+XmQP6N0Oo27nXqTo+wwx3wA2Ih+3N85GpHmE57xMOoC+vwgjqcui5vIaMe0hnPCGJoQ6PQuMCghjDNOJTh41/ZElMTsCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768302145; c=relaxed/simple;
	bh=HDUKH+I7Fa+PmeSfYZXj+pEr7M14pExXySUjkX85juE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qul8vzQajPJM2utWpLcKC8HfORXWvYg5SjwLANdt0kf6/MeHQcSGfr+0R1clgWWDjufbBmTHZcRnGxLN0Ti/iQpQJFeGk++CZUFmdlYthMqz7RKL1BcgL64cDVi889zUS/KH2j3CCCRjLjv81RtTUllyyQp1RTv7/jsmm8wZ3bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RNlpWaiO; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8b2d32b9777so1121821485a.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768302143; x=1768906943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/DtPGFQHFju1IO/Degf1/ys2a0tv707U6qKEmBe4+A8=;
        b=RNlpWaiOMmaqsLsx5xjtlQ8lXh93lLxtPZXD5rGQ6d3cmlIpc30Z0i3w5YnnX9S4qb
         FDDg4AIHHUmlLAo+8u3yOCTPG5jQu/zscOgEUJOvOmz5weX/u6X8VWr0AHeeuDTxvNqO
         M8N8wYbaQ5SrzPGwmB5OUU3gmk1FE7sjKnElDxBcmenV1zl1Cl8184J+KBxryL4bAMae
         z5Dujp/GdIWzwPhRwDVjhMLz+CPWtUWWmzigqjppHbSBOrDvR/2nINZ0dHuz0FXj67aY
         0ABcSVyJgbMa9mkI2qjNOFzaxo7ClleFWD2jWV72F4r5HoytAx2WJ3UNYQi7WYqiBN1n
         IFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768302143; x=1768906943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/DtPGFQHFju1IO/Degf1/ys2a0tv707U6qKEmBe4+A8=;
        b=Zvb88NpDYl2IhmULoQPl3hHhLD6DBnL52BcctJkNlZ/O1ff7vElfRJHlc6eaBJXOww
         INz1PN+S/zzCeBezejXnbvnrZKnx40L8NvJg9LbTVAyI8jAllUqKKrOp7GusY5urMNuY
         S/LMM++U+40YPFlwKvsjDv3xlqh02y+65GaXq7Ix0MmETxSyUCuvWyUoFXqy13PsMAbK
         60t5YQHRvElniupOJp1mhm72JyMp69Jt2Kqds8IIyx32GiCh0iCpds6glOdjDqRu4O5E
         om0ZvlOJ91Ra1EnShJaDkFFkkve+nD5AozCT/m5pfxv/PHE2CC7JtGsE1pLtJtcCjq7y
         JBoA==
X-Forwarded-Encrypted: i=1; AJvYcCVTx8VrxnJzoD3AIq2x7uDCt5swYpf0aTb0r0UFXG28BCkFkmVzX1voSyl6pOtU1K0HCVuxn1jyWgIA@vger.kernel.org
X-Gm-Message-State: AOJu0YwXHV6bDv2Mzu76mzVaKWi0FceoD/usc2P770JrAmUOG/ADCrJ2
	GD7vXVaQNeFvEJTDVcWlwRFQdj/+p4g1weKkJchL4zhL3huXhWK8JDsuMYwarA==
X-Gm-Gg: AY/fxX5ACd920vlN315UbR/8hLI2+s/A3d6GBYopP8II5zc1FNiCHDeTaW3dkEBWoRN
	tVc7y0kLfj+UHTXKM/meQK9/V/8jqqGvxyKz48oZ0s5bDPz5YqkuzL3x+Kr52S1vmGLzI09mE1S
	xUDpZbFVsBqfOLBmKg0DTQYaHydiZqtnv2qMQX3kflAuYQlOjkSKFmtWwYVD+Ph2L5b7RX+mlpq
	ROgEqnm/VVsS+ckxO37PLzGl5MuFIhNngLfLghUzjaIYUQODnxIJ5xx7A4sPmeE1kjW5YyEou56
	wzR33Z6MIJPAyK6ST7RWHWxQ7j+671H4bRvEXCtvbTwzXNfGO/w+mVfksIBQGSvOSfWOUKZo+jq
	o4+/sEHEV9w574Rr0u5eLnwjk6nrVlld3Hgt1DMeD3lOUbjLxY80cc5jN9pHsdpuevEzPnrdgyZ
	qKAC8qCOUpFfdPG3Pc5jO7DYGAIqfIn/pSWu5gA+JpsAtDYBHfG8f3ilWwLnCGnATjLDKMVbOxW
	S5xOKNGwl+N5UOFBvLVag==
X-Google-Smtp-Source: AGHT+IGN7YtptJAvyBxGsryFp/ZVQ3AtqkPm+d6Uo/gUGIm0zr03kGaJ57Syx71qzIqCdd6goycVuA==
X-Received: by 2002:a17:90b:4b0b:b0:330:6d5e:f174 with SMTP id 98e67ed59e1d1-34f68d0bc5fmr21176395a91.20.1768296400127;
        Tue, 13 Jan 2026 01:26:40 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f8b0f67sm19483200a91.15.2026.01.13.01.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:26:39 -0800 (PST)
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.torokhov@gmail.com,
	sre@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: jserv@ccns.ncku.edu.tw,
	eleanor15x@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Kuan-Wei Chiu <visitorckw@gmail.com>
Subject: [PATCH v4 4/6] dt-bindings: power: supply: google,goldfish-battery: Convert to DT schema
Date: Tue, 13 Jan 2026 09:26:00 +0000
Message-ID: <20260113092602.3197681-5-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260113092602.3197681-1-visitorckw@gmail.com>
References: <20260113092602.3197681-1-visitorckw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert the Android Goldfish Battery binding to DT schema format.
Move the file to the power/supply directory to match the subsystem.
Update the example node name to 'battery' to comply with generic node
naming standards.

Signed-off-by: Kuan-Wei Chiu <visitorckw@gmail.com>
---
 .../devicetree/bindings/goldfish/battery.txt  | 17 --------
 .../power/supply/google,goldfish-battery.yaml | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/goldfish/battery.txt
 create mode 100644 Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml

diff --git a/Documentation/devicetree/bindings/goldfish/battery.txt b/Documentation/devicetree/bindings/goldfish/battery.txt
deleted file mode 100644
index 4fb613933214..000000000000
--- a/Documentation/devicetree/bindings/goldfish/battery.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Android Goldfish Battery
-
-Android goldfish battery device generated by android emulator.
-
-Required properties:
-
-- compatible : should contain "google,goldfish-battery" to match emulator
-- reg        : <registers mapping>
-- interrupts : <interrupt mapping>
-
-Example:
-
-	goldfish_battery@9020000 {
-		compatible = "google,goldfish-battery";
-		reg = <0x9020000 0x1000>;
-		interrupts = <0x3>;
-	};
diff --git a/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
new file mode 100644
index 000000000000..634327c89c88
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/google,goldfish-battery.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/google,goldfish-battery.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Android Goldfish Battery
+
+maintainers:
+  - Kuan-Wei Chiu <visitorckw@gmail.com>
+
+allOf:
+  - $ref: power-supply.yaml#
+
+description:
+  Android goldfish battery device generated by Android emulator.
+
+properties:
+  compatible:
+    const: google,goldfish-battery
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
+unevaluatedProperties: false
+
+examples:
+  - |
+    battery@9020000 {
+        compatible = "google,goldfish-battery";
+        reg = <0x9020000 0x1000>;
+        interrupts = <3>;
+    };
-- 
2.52.0.457.g6b5491de43-goog


