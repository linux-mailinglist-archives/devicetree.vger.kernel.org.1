Return-Path: <devicetree+bounces-227555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC224BE2825
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:51:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 557103B0893
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF5E2E03E1;
	Thu, 16 Oct 2025 09:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="tY2hlJ90"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4290D2DEA6E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760608258; cv=none; b=VjP218+ieXKguE7mJAGJAmbgM7/MuOfjz7yr3FH1USZ5Y7XYMSVRCw+KP/WXPwyjLZ3AKx69xlCNhsdCsG0RDF+ZeBzrPbgnRoMI6eKcLYbZQV+Ma0txzAtmTJWLqeXJF4NEQMU2sbuOcru4VVn5x2ymxENMisQeYi97bKg/qIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760608258; c=relaxed/simple;
	bh=nPPQHX8eYq9TT6Af1AxBiBYIobQJgeM4uW8BQ25eQ+s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Iy0zI291pJ9gaYQzJBv30CRBiwsFIVJ4M5zUYTbyDpI0UzAUfLkHjneZp9jLtz7ooymsOQzfnGWMEbzaJdKzNd2LYQnvMCrrxvzcXQMyRWiV/1/SzcF0yoq4+Zurz2TpBTRM/HXYrLE44HQO3A8mM/sdZbTrHymd8MF/3gel4NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=tY2hlJ90; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b67ae7e76abso372249a12.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1760608255; x=1761213055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8lwo5+QtTg4leMDK6YabJ0+AataBKUrh7WnXyXZEVc=;
        b=tY2hlJ90mU1pJsp+Pchl06gnenyCPHf9fS/0mWU2iMqgvmz/Zx8pKMT2kirYAOthHT
         SqeTnub7eAb9DZVbu2NFwBxhmXESYK/KwnFxQZT47IG/dOEVu7h3MKrR9QthcQqYdDdo
         zgQjo8ZhgSEYmZKEQ92MR7mARaiCDx9qYMhjxeYhP5d30iCt+7Mi8GwcRpw3s3DCSiNa
         0CTR3Sux0KWKcrYsp9XcVWGuBeZJFJ/MEJ7yws5aHkmveQ3NXdh3fMbtrXC4b/mvDr/s
         tDfWGqfkX3ACPOXQrAyoNSmyA0i7gewTNt8u+ABGHEkb0/QwbAYf4PIkGOqV1YcuahAk
         8seg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760608255; x=1761213055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8lwo5+QtTg4leMDK6YabJ0+AataBKUrh7WnXyXZEVc=;
        b=wlR8fqR1q4Z50GRoGdzGinqc+fdo7ydogV1l43uiypJw0dgQYE/LzA5YWXL1CYkmkW
         h8kD3YXsBKLASpAGetpmZer1DdrNQWFCf8NNGwBlfxUVQsMqIaHrPp+a3LlItzmK4pH7
         dquxpsVk1vT30QaaAAXzjRMx14QdV+lvu0YHDZVGmlofBHLX5ERXPhIqNVAIrR/+rnmF
         oyhSLubYkGeFCwMtq7xlYD+FyhAh70iYe7A9ElXiZGa4zuRAweaF/X6WCFzZBBuXUPdZ
         tnmE8pRPwwZHAMKzF+hsLnzRNMq9blQ8Bdc+/OBi936gws8g9X1ZtZKyZvjhY2Zd2oxQ
         rPgg==
X-Forwarded-Encrypted: i=1; AJvYcCXWar8S3rOyDp+m11vse8lsbArVASQ6tNBzS6kepGQlQ8mCnuc77ulOLzU1xqA8XFuCtbvJZAlZ4WRy@vger.kernel.org
X-Gm-Message-State: AOJu0YywV4FevUrzTyYaQ7XROSqcnF2ZUMK3vp1NXuNSwM5+PmEJySTB
	QMdiiQrNmBRBUEPNHJr9zy/nRLniltKmAzzlrL+YsrPvba//7uE7opBQ3nPOnp8HdEk=
X-Gm-Gg: ASbGnctdnNUAhkfNqQlhF6wCS9RuRZ2CumEBG1TCgFvzbAoVG8K/1uS5BH2/bMnm3Po
	ocqiS/bJD3FQM+nLAL5qo7PRROPoT9ncNJf6HnTLW6eHPiE3hNMOyrB4LYbtPWHYXLc2vqFbtN2
	zHluciQzh/pHn5uvwzf+FFzNwDUcUVUFny6++GPjrgqTItgfcZVbSHV09/Hh/ynAyF/S6RvDj4B
	D/Oz5RGEldy4e2n+TSnGloO9otLF1l5NjfBQ8VvQpQ+RXeGSbBoZayhyYmgu6KF1b7fOObLVOgf
	6GeQhNGdmt4NqMI2YwqTF6Mfvw1cposHZgry9hfJaiRpHa28Hl82dMfELE20jzcwHzfvk5FM/sW
	wNHvMR/JnHRIK8+euPk4XOqfIyL0ihXz33xQ2OSW6FtGm/0ZcenqJDhIenNBbW1QNWBDiCnTZjh
	OBruXovCQickKqcFP3NspYv6GdciHqFV0d8GfVs0CqaH4u5Y8=
X-Google-Smtp-Source: AGHT+IE9vLrAwDLQcz+0U3II8DUCaJP2gPK7bJaQpcbKO5SQlykPmukNz62SIYwsb4GaeEmergo5nA==
X-Received: by 2002:a17:903:120c:b0:26c:4085:e3f5 with SMTP id d9443c01a7336-29027391377mr374826855ad.50.1760608255266;
        Thu, 16 Oct 2025 02:50:55 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bb6519421sm1272402a91.1.2025.10.16.02.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 02:50:54 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 1/2] dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
Date: Thu, 16 Oct 2025 17:50:42 +0800
Message-Id: <20251016095043.1694736-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251016095043.1694736-1-yelangyan@huaqin.corp-partner.google.com>
References: <20251016095043.1694736-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the Tianma TL121BVMS07-00 12.1-inch
MIPI-DSI TFT LCD panel. The panel is based on the Ilitek IL79900A
controller.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../display/panel/ilitek,il79900a.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
new file mode 100644
index 000000000000..4e3c5afd4584
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,il79900a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek IL79900a based MIPI-DSI panels
+
+maintainers:
+  - Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - tianma,il79900a
+      - const: ilitek,il79900a
+
+  reg: true
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for the enable pin
+
+  avdd-supply:
+    description: Positive analog voltage supply (AVDD)
+
+  avee-supply:
+    description: Negative analog voltage supply (AVEE)
+
+  pp1800-supply:
+    description: 1.8V logic voltage supply
+
+  backlight: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - avdd-supply
+  - avee-supply
+  - pp1800-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "tianma,il79900a", "ilitek,il79900a";
+            reg = <0>;
+            enable-gpios = <&pio 25 0>;
+            avdd-supply = <&reg_avdd>;
+            avee-supply = <&reg_avee>;
+            pp1800-supply = <&reg_pp1800>;
+            backlight = <&backlight>;
+        };
+    };
+
+...
-- 
2.34.1


