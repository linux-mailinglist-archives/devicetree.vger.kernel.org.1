Return-Path: <devicetree+bounces-244835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7BDCA9448
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:29:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E012131313D0
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD6C2E7645;
	Fri,  5 Dec 2025 20:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="npHRtsDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83192D780C
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764966517; cv=none; b=RLv5KsSuNzHm5LxtmkIQtLRBppRa0QmNzu4/BrIsKsrQTWMFjy4zl3Nc20dPDDtLEsjbSYIBYgOAgvz5nPBQyZNGVGyOdPl7ush3BD9Cuf0SVc8xb9Pc7ASqcoY4b3EAlfSltCDmA4OXb6QPW6oU9aJd+mDzJU7UCCD5i6N3FYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764966517; c=relaxed/simple;
	bh=azE6/sKR/pDr9h9pZaYF+h/EQIlraEjWOI9ZhVf1gRY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gsvzSaNZ8FZab3UqPMFnIu+qYDpx2H2GCsuianzeLmFfnLGcaaKS2hZnZOdXz3N3aFXCn1SEyhThnqV7GRNRseRR84ixdJ/OzKevhDkGx2UuQQc/UKxG7GAp8/IZYzUWu90iAV2S5rO7Dt2fKUAkpxy6Y6qBguRgaD7ei+eFei8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=npHRtsDJ; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-29812589890so35520745ad.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764966514; x=1765571314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZogGanCrO7NukEfQvdNpvWFAmgObDEJxIVV+nj78Ze8=;
        b=npHRtsDJp48VnC2VrZNWvGLIH9YiQ+JDzbwASp334iq87bDXzW3/MYuQNRvkJxWciK
         TXmXJ6qkjHnOXTLZL7F57F/XdX+Twg+IaY5KOnEU2V5JVlM9ZZTQIWpM0maL0IROGSgE
         N1miSjXh3rswK66brjmxSDvSbuQcbLpD3DXYLskI60IxDRfZUAtioxEaFR9mdWsfj1F5
         +EH6DmxZdW3L9uwdaP5r8TgQrCPwfPNY3x9mrnK53VNR0DIly0+vmxuOd+x5Nav7SOua
         3MCQ3K+NqXi0ss5T0huP2ATCmC333c8+2WLhP/KF5ROTWGL3tAaGMKHqMnEpwrvFPkby
         7fbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764966514; x=1765571314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZogGanCrO7NukEfQvdNpvWFAmgObDEJxIVV+nj78Ze8=;
        b=NC2BRho9CiNxqTGwR5SKTcATwLhBNIZkZr2L9nZgSYQk6TwHHtgbOUOn32DAq0a2z1
         CElmldQD8mp7q6+lVjF07OBYJmSHoL/fQO2TYmDk53wdhV+fRTEA6ULCfe+tpJgwavS1
         XfD4SrRM+vD/8YatiLvrX0jYreh0YmohkWeA4BgnnhejM7YcgheMhfORH+R2XONHbD6B
         o2wXiQaZvbBEhFoYBxCFEP14K9XRxv27zkTv8oRyJ/JUcq0AOL+bpvLDvKHMBmwSoq3S
         EW/aYC/+svrdj9QeDQY0UpjgXRJx4UcY2q8Xsb/FwAy5vG6gYRG0+BjCaB2kirQFX1Fw
         IV3A==
X-Forwarded-Encrypted: i=1; AJvYcCV4zHNjYRSkqQDaZEvcXUTsfNbUat4Xy74ywyRa+SePZSfNBckwFr+HdDyi1NgOq+SCmSdGL9MR9g8M@vger.kernel.org
X-Gm-Message-State: AOJu0YzFi/r2yAnSydxRZZgWJgxqNbr7EQXW1/lNieyGDN1Ka4ErnGo4
	ZJ/7ZZZ/60thlZZeM0gfFMmXeTCWkBgWLANfvbynkRrYfFCg+yvt5Eb7
X-Gm-Gg: ASbGnctFv6e8gKeT1FeIUcwfH2bCJlj67+Ymx2iJOaT9RO8yHbUl7wjvsSJXiS7v4Sf
	c7jmqiTwEj7GSELsMZHOQ+bSZ2W/RpGPOBkzsKMD3HLt9pmT46dGNIw5CJFg2AGdnSiXTY4Zd27
	q5b80Z5YuzgY57lMihqWivtt79BpsoDej15dSiO70m14GRHFtnDDeybP5yB8oWJizYcYDWccHmq
	L+c50B5AyEPEaU8urUO+K/HbZ5aWzIHHk3chBCEdYeO1HqslROt5nhFyzH+L14//HGJGnJZKMH6
	C4LaauITdz7qj0i0hlWlW+7b+sSMJZkk4O12LzGftL2V/V/lC2yuyoOWUbRIAR4dLKNmlDy9heP
	dwhbWNJCdSe3SNFRfnbO3bkUub1RtbXxXyDaOwUoik7pZsLAWg/Bbz5aoSScomkHM3gM3Gw/Vox
	EHuQ0HdK60FKvjQ2HKgJswQNlNX0duSHmBggiU5SNISFwYae3pWl1JPMyLqBf9FcGpk8bz4Hdy/
	SnPL3GD1nfSYKlFl7kzjJwpZvCPNC3HzoeYq5HTz+ITZiNNdPcCghujsh+Jfqq2G7QVPT46
X-Google-Smtp-Source: AGHT+IF1wT7Td3ZI2BC55SXXYAJaxCzsMe1hAMjfGfhAUPysLAPT7MMB+HubIzcEFfpLuQKK5R0Glg==
X-Received: by 2002:a17:902:cf0b:b0:297:fbff:fab8 with SMTP id d9443c01a7336-29df54761c4mr2295905ad.21.1764966513935;
        Fri, 05 Dec 2025 12:28:33 -0800 (PST)
Received: from Lewboski.localdomain ([181.191.143.42])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae99fa59sm57256845ad.58.2025.12.05.12.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:28:33 -0800 (PST)
From: Tomas Borquez <tomasborquez13@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Tomas Borquez <tomasborquez13@gmail.com>
Subject: [RFC PATCH 3/3] dt-bindings: iio: add analog devices ad9832/ad9835
Date: Fri,  5 Dec 2025 17:27:43 -0300
Message-ID: <20251205202743.10530-4-tomasborquez13@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205202743.10530-1-tomasborquez13@gmail.com>
References: <20251205202743.10530-1-tomasborquez13@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding documentation for the AD9832 and AD9835
Digital Synthesizer chips.

Signed-off-by: Tomas Borquez <tomasborquez13@gmail.com>
---
 .../bindings/iio/frequency/adi,ad9832.yaml    | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/frequency/adi,ad9832.yaml

diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,ad9832.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,ad9832.yaml
new file mode 100644
index 0000000000..f14e054ab2
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/frequency/adi,ad9832.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/frequency/adi,ad9832.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD9832/AD9835 Direct Digital Synthesizer
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+
+properties:
+  compatible:
+    enum:
+      - adi,ad9832
+      - adi,ad9835
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 20000000
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: mclk
+
+  avdd-supply:
+    description: Analog power supply.
+
+  dvdd-supply:
+    description: Digital power supply.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - avdd-supply
+  - dvdd-supply
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dds@0 {
+            compatible = "adi,ad9832";
+            reg = <0>;
+            spi-max-frequency = <20000000>;
+            clocks = <&dds_clk>;
+            clock-names = "mclk";
+            avdd-supply = <&avdd_reg>;
+            dvdd-supply = <&dvdd_reg>;
+        };
+    };
+...
-- 
2.43.0


