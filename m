Return-Path: <devicetree+bounces-264222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNbvE2eoimlBMwAAu9opvQ
	(envelope-from <devicetree+bounces-264222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:39:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F88116C4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 413553009F93
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4DE303A0D;
	Tue, 10 Feb 2026 03:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DbkpOXDw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711F52D0601
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770694756; cv=none; b=cRtjZzS5kQJ0PFi++LGzR0lvmOQ38m5Z0TX1ojG7IIxW2Sb1qrF4AJEBcHE8Pw1ZiKueSXVU2U5stossr+MenVOyu7KpUGg07LeVmmfVeEPW4Zqh/hVxd8ZumnZkmxqCm/fDWdmrvpTz4v3PArh2FQtHSABMElWIV8H881OS0Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770694756; c=relaxed/simple;
	bh=6mwOA0dPC+Xr0uI2n1ZFZV+bR933rcuFFj/RWST+Emg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ulC4L++10/DRl0tzrw9vRqI/+LdUQy/mPrPAiF1Gx/7JTADdti0aYSJiU/FG8wx13mFtVlDplJwycrphVs/xcTXbRu+cozwLKpC2lZrmxuq0xOQTT6Drc/1NtFm/0oNIde4kdVpQjtcj1cosPQKFovL4EQFHFiKB7P5PwsfOs4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DbkpOXDw; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-505e2e4c35fso3372531cf.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 19:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770694754; x=1771299554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5iup6qDNhA3Ov81Mqulz5I0c3UbxOYNMRh+dC/qq+Kk=;
        b=DbkpOXDwN1uPUuOYCihvmxbWnToUDVNw3Ph6mwKD4hDqYkenDO4Wk9rr3G62Gptin9
         +swmyUDVsYx5HAgj5zeKbq5Gn2PC5n98qjvftBkIWCfZ5eIJEfX2j+kbdKJoMXapNovQ
         535v2fD5lMlCRpgguVK+baPze1hA6fQ4nqkoqh+99gXY9+1u7IpjoUDPXjN9xBA3iou1
         QiMYpXliTnOlSGXZKmX5kyAaaC4SxF5IGORSwzj3fkAPkJK/XLxA+zNN7OAxAM13xeB2
         3dHp/wajb07jafUhsNoLk+w1/1IzXYelHl5GCQVi5xdP5X3d74ygj1m+q5Spf2ixvOnh
         YGdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770694754; x=1771299554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5iup6qDNhA3Ov81Mqulz5I0c3UbxOYNMRh+dC/qq+Kk=;
        b=rEJIrhPvAhR37/tnH3MBHj/79OxtBIF9R/YcfBB9jM5yhw8PhJbfXR/GAIT728OFlG
         uyiG0d7XmSegjUdlt+swLmH7ij95cWKA9MqExGPiEJLIwMyhReqLOk/ofGNyPOHvUq4L
         i4vLUmQekDuEDffaJ5RYM2M7t2OjwNV0aPPoRJ0osTUYzQxhQVOK41D0Ft//QEH9TwB+
         m/CosNGs07Azl70T0xGNaTDZeS4EmtqmRS4sLac4oEo3zRUSUujotfKdPm60O/gi5n1x
         cvSEaAHWdXPlEAhRcyBvSRkLmMXuQO1D6mR/fRWVSWjz/ZA73ymIY3yD0x51VdC2BHTD
         BjtA==
X-Forwarded-Encrypted: i=1; AJvYcCU+Ted2FPVJ41z8movEQF5ZtMEfXaESXKoEyZPhxPYIafdr9DDUKKAMD4ACjuUB1M9j67xJobMQ6VhK@vger.kernel.org
X-Gm-Message-State: AOJu0YwDkdJRvMlsFQOLHTu7C19NBXMJyNpltdCHWClW0OcAPv4hhYqa
	qzUFR8XspS4CYSovo9A/1At7ngSQbiXUz0lMOnMXVN3dxaibBWAT3bsjzvwk7w==
X-Gm-Gg: AZuq6aK375lwmdZiTZlvKy/BNIRLya968QxB+j7e/z8KKAo3nCf3CYHc0LVN4IuuGf9
	LZWbt+LQR5gl+0WC4kr93I52V4DLSOM0ncj44efYLStf8y9mmOXwePxo38S8XOlvQOTcPUEYBAN
	nco9cPfZQxiOBWIDFNXKZ2srX+sNuJG7uEkbnXALFaPF3WtBHJ+v7E8V3TJfKHIRNFVvuxhVNQm
	6g+AfcY2qtTxF6jgZOs4KoBx/avrmqdFhf8XfgW5ftwOXiySEalzgCXkCVW+qCC90JTSBt3rc4M
	PPP1xPov51xzy9L8pz4CxUwzAKpgbtYKlm1veBuPgi4OcyQhSF4J6OPEEwCw9VQqmZcEO8zgXeb
	9I8+XTyVyTWo1ZGq3I2FYfcmLLzs7qBkGI86n+MDsrUqcvrNjJFZY6bhpTWd2dg7NPVv4UnMQAt
	/VLr0dBrvnw1N9A1SYMHpm1N09xFOZ1j9W+7B5bpWDoGujZyfWsWgVGGjLLw1lsHY1kcds/u7Y5
	urOn1b4SUjmBtc=
X-Received: by 2002:ac8:7f87:0:b0:505:e7b8:5531 with SMTP id d75a77b69052e-506398d24a1mr168396881cf.14.1770688894933;
        Mon, 09 Feb 2026 18:01:34 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8953c03fca0sm89311366d6.28.2026.02.09.18.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:01:34 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v8 2/7] dt-bindings: media: i2c: Add Sony IMX355
Date: Mon,  9 Feb 2026 21:02:01 -0500
Message-ID: <20260210020207.10246-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210020207.10246-1-mailingradian@gmail.com>
References: <20260210020207.10246-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264222-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: A1F88116C4F
X-Rspamd-Action: no action

The IMX355 camera sensor is a camera sensor that can be found as the
front camera in some smartphones, such as the Pixel 3, Pixel 3 XL, Pixel
3a, and Pixel 3a XL. It already has a driver, but needs support for
device tree. Document the IMX355 to support defining it in device tree.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 .../bindings/media/i2c/sony,imx355.yaml       | 111 ++++++++++++++++++
 1 file changed, 111 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
new file mode 100644
index 000000000000..6050d7e7dcfe
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx355.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/sony,imx355.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sony IMX355 Sensor
+
+maintainers:
+  - Richard Acayan <mailingradian@gmail.com>
+
+description:
+  The IMX355 sensor is a 3280x2464 image sensor, commonly found as the front
+  camera in smartphones.
+
+allOf:
+  - $ref: /schemas/media/video-interface-devices.yaml#
+
+properties:
+  compatible:
+    const: sony,imx355
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
+  dovdd-supply:
+    description: Interface power supply.
+
+  reset-gpios:
+    description: Reset GPIO (active low).
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml
+        unevaluatedProperties: false
+
+        properties:
+          data-lanes:
+            minItems: 4
+            maxItems: 4
+
+        required:
+          - link-frequencies
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - avdd-supply
+  - dvdd-supply
+  - dovdd-supply
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        camera@1a {
+            compatible = "sony,imx355";
+            reg = <0x1a>;
+
+            clocks = <&camcc CAM_CC_MCLK2_CLK>;
+
+            assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
+            assigned-clock-rates = <24000000>;
+
+            reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
+
+            avdd-supply = <&cam_front_ldo>;
+            dvdd-supply = <&cam_front_ldo>;
+            dovdd-supply = <&cam_vio_ldo>;
+
+            pinctrl-names = "default";
+            pinctrl-0 = <&cam_front_default>;
+
+            rotation = <270>;
+            orientation = <0>;
+
+            port {
+                cam_front_endpoint: endpoint {
+                    data-lanes = <1 2 3 4>;
+                    link-frequencies = /bits/ 64 <360000000>;
+                    remote-endpoint = <&camss_endpoint1>;
+                };
+            };
+        };
+    };
-- 
2.53.0


