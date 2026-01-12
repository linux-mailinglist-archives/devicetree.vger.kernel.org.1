Return-Path: <devicetree+bounces-254187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DA6D15558
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6AD6B30142D1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CE733986F;
	Mon, 12 Jan 2026 20:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q6KqA1JU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A270331237
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768251156; cv=none; b=brGX2e7DwZS7deCZl0eVJq94XmKYLIF5PiiX7V+hh5GINhbcmwbcaBFhFZrHGuXGFcaFgjEOs9Og3s/BgfjfYWvuXXgdyFVwRcedk0MxASCKPTEYJkQWht5/vZAxS5hHahKrzRYyh79qm0rVmdJvNuHs5HafqcVWF+oNQJhtqFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768251156; c=relaxed/simple;
	bh=FJzcSHDXluO4dUb76g2nKqIIglQO2UJtt5G2NIwIGRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NJI0Iux8RrvUyta93iZu7x50SSHYxbkourK+VPApYtk/x1BDJlbgp+/vP7e5T6GBYcJ5CbOS6yJHedK70AQH0Tu12CWi5mmf33KysYkPDTaLpMw0Ggr8pkstpIngE1rwobjeVVZD3JQUI1yF5hWlEhDPpvmDuZn3DdlBhfQrbP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q6KqA1JU; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-3ffc3d389a8so3487626fac.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768251153; x=1768855953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HcdvqbOz52LfBLxCMSffSYUjax3JQUZoLUuen8kKWUc=;
        b=Q6KqA1JUBHiyoOctW6LKwISjdKTmONK2JeeQmJGbqtrnBWQ1k8AEJEBi6KF8aiZem5
         37kLoqAXIoVIHnCJN6whKvQOyaiYV9+6J/nYN4FaUbAhP2qTByOT6cgKM+i3LNhG/jQ5
         XwfZ+pcPiC1uqwnf2OVSerX5E6M8oZL3AFGIr71MPqYrsmSEz3fx7llPOmeN7cPMi+n5
         KciM2Z+/oaGTUbKHqbHQA/atjMO8O3Ssy9HQ5yZM9cM0VOdsLiwceeSna5HnFZUKctkW
         xfHiZoH06/E1FrA60Q+hNXdQx2WspAPC5yfWQIrIYgbAzT/4eJw/qJsQyaCUj0Jr0fB+
         ZqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768251153; x=1768855953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HcdvqbOz52LfBLxCMSffSYUjax3JQUZoLUuen8kKWUc=;
        b=jLCDKNHp8iMCXVGjTvBc/VVzgVj0yKqU87GoPbYXeeJX2SVDCugFGg9tUdCuiFXnPf
         3lYvHpcwNmLbDog1gT8VIqgNtNgL1fHRABJPam9KUSqtd5Kk8yX6bIi1acw6lCuTcEGq
         xQUmif3qtX7oRAeZ1xz8bVGjbkaWxxJ803WvcWQ9qnm8zto3P7oVTBnthS8CIUzJM5ms
         kZOjR3Qsn0Xy8ctVn0u036jG34NlNX/OIwB+g8sQ/l03iVZ/2kr9wpGRm2/AwEvNMm99
         OH9cyqBK/rs/D0KtM0dRFLYeFaVMYgvw6wuhyjInLrI+aoWzsSkqqY0SCG8B4YzvwVnE
         P+Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVWSTK+zNv3v3eIB19P1V7CS/3hs5e9RaoMe1B6NyFAgVtvezb7+cDDyADg1XUxyiFzl/hCMxOjP8Qf@vger.kernel.org
X-Gm-Message-State: AOJu0YxLAaLstTNTKdLKDUpXwyhtR8+QNfuv4YzxMQbAsCFeaKQlpPFP
	wed4hRLUwz87PbtDUZIhWUevgw/O6ZMn7x/9AivvFLA3Q/RbzKjIm8Pc
X-Gm-Gg: AY/fxX4NECvn9Lousczt2zfAR0XcPyFQv60oCLhjEsE+ROXFYTkL+AU9QBgSKbXe/za
	URa0WQF37X8E8g9IY37T98VTFZL8tJhprivUN8g6POWgixJ5Dz69zQt076hI55JCrf1mak4F5Hc
	NxHsMjjO/deCDS4duogswK1OBPqEkYURXkS9TEDGTU3pWZh4k/0cKKINR6CGRKYeukJlj78vZgo
	RSqjMVxxkfw3TlWykzkLRxbzI0lOk5Vb5e9UK4rjN+jYoqPu4Qbyvx3BnU2mHpiIbRHDpSFDAZ6
	fUy0B2zF/IVBhLO+ZlBKAT7Dh9xNwjbZGCyGdK7deSAuvn7QeRjOwILm0Zf6LdsKR7axGOoBLy0
	gVqhGqLMiaOPvz/pSRNr2X8iS0ZFBQcX5OUIs+rBJaMtrxUSLlUdj5yGTcP4jV0jXA9IeJssLV4
	rA3WktI1cHUVpKRC08uIpqejAsB24tX9Z83hC7MX+NAs3hwXEc2udeKnAOyP6tAr+uHy7+n6QGv
	Z3J/FIpXRicpZiFHEofAw==
X-Google-Smtp-Source: AGHT+IFk1Dr6wslFyNgQa2xGPUDljm9kHZ7BOgUopSMDiNk3ke91/OiF9CCfER+TuAOFwDhwgffkQA==
X-Received: by 2002:a05:6a20:9389:b0:364:13ca:3702 with SMTP id adf61e73a8af0-3898f987e4dmr16296668637.42.1768243926226;
        Mon, 12 Jan 2026 10:52:06 -0800 (PST)
Received: from visitorckw-work01.c.googlers.com.com (25.118.81.34.bc.googleusercontent.com. [34.81.118.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cca06b16fsm18874197a12.31.2026.01.12.10.52.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 10:52:05 -0800 (PST)
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
Subject: [PATCH v3 4/6] dt-bindings: power: supply: google,goldfish-battery: Convert to DT schema
Date: Mon, 12 Jan 2026 18:50:42 +0000
Message-ID: <20260112185044.1865605-5-visitorckw@gmail.com>
X-Mailer: git-send-email 2.52.0.457.g6b5491de43-goog
In-Reply-To: <20260112185044.1865605-1-visitorckw@gmail.com>
References: <20260112185044.1865605-1-visitorckw@gmail.com>
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
Changes in v3:
- Use decimal format for interrupts in the example.

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


