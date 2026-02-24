Return-Path: <devicetree+bounces-267983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPVfJuTSnWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9B2189D44
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E7AC33045241
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD6B3A4F49;
	Tue, 24 Feb 2026 16:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H98Om4+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF15239E6C
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 16:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771950814; cv=none; b=rUXt4jT9Qb24EFBqLYgh8SvtIdeeYsl+Npkg+72Kz9/sCqNiu3AP87qxogmX/8y5YM0T2KC/PGMZgpeto87DenKbF2eree+curJrJpiJE9zarCH47qnKFbXXypWG0CkuR8TDCMncmCHWyXrTjkKVPriW+qoNVg0l7IB3X7dFCHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771950814; c=relaxed/simple;
	bh=3sl7Q8RsM38aogZg/TT4Z4kExJczhYLR1lProrBeQrA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PGGTH9MPu8RQgzx/BdqsfZVpiDmIR5cuqJyYMsnEgqhpffQvcZF0uFfzmAY5MxKV4Ty4YY1PYDGqGiEOK2lWWzv4yXwAwl9kc8hWIibFkip0Q46WttPMlRgr3gpnBe/jLPayKFwruqt8YCarwN9NZuvsHW4aGjgIasv8mzUne2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H98Om4+w; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-45f053b7b90so3934266b6e.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950812; x=1772555612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QUsICOMvXTU5rjy5Y1VVi2FLx1XR69GqWTxj0tN8RHA=;
        b=H98Om4+w6bLK3uD3ZVrwWdQ3qEay3XlobYtVgwH5T7Yu4lVLxx8+rDEruGNBoToH6O
         fI+OU4Wjq0OtJ1WO2lA4aD/iWWeD4roq78mEU+uZ0hgLPMD6dFmLJfu/z4b6U71bZ/Vu
         irFusbeYd0S3addm5Ry40jvbeJWD765RfzedHL/WlukPoIEVovBE/9ms3U8UGtcYCUUl
         NiXgQcigxbAo2I0KkhngRY/6HKQv31S43gblSjsIIfgvOd8GFzxZqWA4MqdVfbpHsg9W
         XLXiyKT4559xLtFILR2jhEgKOk/0g93hLf+q6llWHoM26dSjFkcBf+hgzpCfj9c8PGVE
         0kAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950812; x=1772555612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QUsICOMvXTU5rjy5Y1VVi2FLx1XR69GqWTxj0tN8RHA=;
        b=Gd0G/WB9sc0dCqt5WK+SivilKD3psHTezPbQ533PJ357WWVDS/R4NgAqbv29a0uXfz
         1wE6UI8HDkioYKKa0P3Tfvf5bGf4csDeDnYY3MjGm35gb/oNua4llPGWoZH9II7KjJbZ
         wu8czH6GYtkKHDgrtdB/01L1Ocl9XN40XjeAEeQws7vAMv0+quopcmUA7ZM5WHvLnss5
         6hr38qN6EFwbUhYW7FhEouMiBl7I4gncZyg182R28y5NXPgDzReMcMcnc0hJ4QmQGDFx
         xKvm+oR32uEHNr+acVeCXrlP+dC8kmarQqzcZNP3Q05yewztgwET/wQrR0H2OoaFl1bA
         bEHw==
X-Forwarded-Encrypted: i=1; AJvYcCVEPd6/yCm26X4ZCOY+hMOoJMOnV0lZ4DXAv0GdexQTKxoeIUPx5co3YxSgDifrTzXjQZF4byTV1j8D@vger.kernel.org
X-Gm-Message-State: AOJu0YyD7hoF3qbTsV1Vc38Voz/Aq90wfT9LW60Iw5hkpZAcQ5mqZzR1
	k3WsxEfGqz3kz4encHnwMO0yI49FSq9+ZlDtBRuQW7Qt32JA1EUluJ+L
X-Gm-Gg: AZuq6aIy4aVjgok0W67KHbBKbtZmGnpjI2y3KsT5DyYuXEnJXGWlbAaBrs2heAOGTBF
	XAnLxoz+S4zv9ZAK85v8pBJEM89XJaPFw9xiT+ObvOR5/RZ4eQX4Un+5PI3gQfPut3gT6LEISv1
	E00unr0jqiAM7XwLM4+BHICTZgkeqH04UIre0bGsR2EAhzIIEuAlDOwwYSsARuk7P5et0ElzhWI
	Zo/pFQYY2SKPKATxyNcqqNM41h8CxhRQBG/RVVjBdHdadabq7dQm0bu8BzEZvYnRNpXM17JFaMx
	Z7Zblgj90UrR2QG6SDTl8uo87RSpcWneris2N3ELWMsRiYX+Nn7UjPAktRGb4slSG3EThXL3sX2
	xGMgXUFvN1F5UXOup5gSTDK1uqhJSDv5FbrWttrdjTUpmqwcvl0HPhwkbniWGtYSccViN2GAOK9
	srKK4yZjfWdr1Af3dqA1ny
X-Received: by 2002:a05:6808:4fd4:b0:45f:727:8fdf with SMTP id 5614622812f47-4644638d060mr7303360b6e.48.1771950811989;
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: iio: imu: icm42607: Add devicetree binding
Date: Tue, 24 Feb 2026 10:31:03 -0600
Message-ID: <20260224163109.370930-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-267983-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,devicetree.org:url,0.0.0.68:email]
X-Rspamd-Queue-Id: 1F9B2189D44
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/iio/imu/invensense,icm42607.yaml | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
new file mode 100644
index 000000000000..d783ef063f5c
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/imu/invensense,icm42607.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: InvenSense ICM-42607 Inertial Measurement Unit
+
+description: |
+  6-axis MotionTracking device that combines a 3-axis gyroscope and a 3-axis
+  accelerometer.
+
+properties:
+  compatible:
+    enum:
+      - invensense,icm42607
+      - invensense,icm42607p
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      enum:
+        - INT1
+        - INT2
+
+  drive-open-drain:
+    type: boolean
+
+  mount-matrix: true
+
+  spi-cpha: true
+  spi-cpol: true
+
+  vdd-supply:
+    description: Regulator that provides power to the sensor
+
+  vddio-supply:
+    description: Regulator that provides power to the bus
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        icm42607p@68 {
+            compatible = "invensense,icm42607p";
+            reg = <0x68>;
+            interrupt-parent = <&gpio2>;
+            interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT1";
+            vdd-supply = <&vdd>;
+            vddio-supply = <&vddio>;
+        };
+    };
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        icm42607p@0 {
+            compatible = "invensense,icm42607p";
+            reg = <0>;
+            spi-max-frequency = <24000000>;
+            spi-cpha;
+            spi-cpol;
+            interrupt-parent = <&gpio1>;
+            interrupts = <2 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-names = "INT1";
+            vdd-supply = <&vdd>;
+            vddio-supply = <&vddio>;
+        };
+    };
-- 
2.43.0


