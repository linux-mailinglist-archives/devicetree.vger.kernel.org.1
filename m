Return-Path: <devicetree+bounces-229779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D2777BFBE80
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5CE5D357268
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2506B344032;
	Wed, 22 Oct 2025 12:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="0jxREmuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40328343D87
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 12:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761137206; cv=none; b=K1BszEShg1/lkYkjJLKtow9EfDhf2prb2bJL3S15COwIyCBj/ZZivetL44kQwDKuNirQZ74JPin99QWuHEd+oDteWfytudoW6/YMQrTevd0VceUDNAJjuy5yZoxVf0y3pwpU2anPu8ve8LAUELbgOzx3f/IURZrcbHthXmZeU0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761137206; c=relaxed/simple;
	bh=IXAjhztmJMCzTA+vN8hOlGN9SME+9Fh11kn7rnXfPn0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MjaKLtaW40srpa7BgRRtqjprFpHd7RfwAth3jwM+SulB8ZutkrNW4OYokB+ClNUc5WCGxHVhs0VsiW6rCrCoTsdb+lpxewHdbIo0ex4xgZ/aOvBzPC1O9bvLECc1YhsRtffqgA+B32jji5gnclNTsc61TGidXWKfNVvpZs2abMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=0jxREmuI; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-791c287c10dso5255054b3a.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1761137201; x=1761742001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A50ivLTFfIL5rLTOAdlo5avQWAkkIMfNPchxjnbv+ts=;
        b=0jxREmuIk3XCqOzCVmt2rFH8UUtYfOu/OCiA/2Mbn1fCOky9ErEDEmLSUa3Ce4qESm
         Adl+x27K1E923elYJMWtyC69lAiWLg3kYrbU+o30AookVzgQIHC/kPE650/3ufJW9giv
         TDsjvmKYxrg0Oh/mzdupTrrCRrjkKbHTdl55wKxqtDf8RItdqU2FGylXnB/AiGGvpEfT
         Q3N31mkIviWda55bN9k+0SM33qIJwYv4tPRHoS3qrhLSpWfYsA/bBHPEleBGLBe8W6IN
         arp9cajMpFCcT9pc+SmAf9pQSZ4b2JHvg9iRfhUF7TCYK3PVqgBZbQFWhkKMAgSYyZLZ
         81BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761137201; x=1761742001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A50ivLTFfIL5rLTOAdlo5avQWAkkIMfNPchxjnbv+ts=;
        b=UvRmvCSDHLzGKKCV4r2xxT9cwIdr3ATFRDLDdsvNgoGLX5yhf8m9asoZW7XB/pYxvM
         5sODbl3A7ruyheKvYn7lkcsWMNK6i/FiLPD2L/aLrS7FbtAkgFn2XmVGLDcslwSngWHy
         A2ISUrR0x35aUKRBOj3F5nByNnjGczdVeFhdyZP3YwmYPwyX+LcoCCoU8tW/7mdVWR2k
         QRnr5kdU5YUWfFyvxaU1FDigu3rCL5afgh9cuR9ALTRbaAjxeB1be5KugpKFX3X5b+1Y
         AcBYKYdE7PHiBiwQ0kcsB3fqP6mepdtG+A6x/fBGihRSdmMc7ixecbaNOtbcCbu8o22z
         uNqw==
X-Forwarded-Encrypted: i=1; AJvYcCVowrW3xzCbPamMKtNzcWjc51ffHugHPFXIu5EPDHCfEqSDURm7TeVfVOfD/fXbLqZ1qopZcur27VrR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw38eqooEQNRiC4dbqabkR6fTB4Z4Ltgq1LsHWKWzKtzIOG36D/
	JYetyVUo0mSDXZywSOZJYn8bd3+yR29ace3NA93qJ2Hm1eHNCvxLTIcPM+aV65UxoN2w8ZuQW0W
	kvKmh
X-Gm-Gg: ASbGncsDtAtJkziUdGsp3leKInMIuPoka7XjO6Wc51SmeIGCOdXLKmqL+uABHQSTRzi
	hq1RRa5cR8WgG0vLJ+2CnrF7nBxb2GadZLcWrztvPCGqIUECEvcZ0AP86cdC26zBFdl4E1gHgX7
	oNp5kvAFA1llbMxOzTcDlUUgilqXuJdyADNzqEZhs1l9bLTd+vY8bRy/J/+Cqv2z07a/csjZvA0
	DW9T0TU1FxY/gD11d2tkF6MxznbNGQVQNDDUWKutAMlAk267h2AllZyHGIM8cmp0gwhkY2kFdR/
	3Br3hA0k6YEtE5V5ZUPf9G7lhZUzphvNoTgcPDUp5LooJ9gX12iR5HCJyf/3lNbOrrxBRBWTpKq
	onPP+UCSdfqmo0Y3GfaDtS9BB4p4Kd6KSU586OEZ/e+oSRtR0UflqR5mPqY3jyo5zsqorWjep0b
	NsDM+7zU8fhVVuwQvMoSdQOhk+r63/2+wADvved/UTTTs+OUStxMUp1wFX4Q==
X-Google-Smtp-Source: AGHT+IFShKa0+/lbzXoLsCR0uN15Uq+d2ftAkvw2Ky3lzofYQm99g+jnMJV5beGBG+hMOWHlqbHTXg==
X-Received: by 2002:a05:6a00:2182:b0:77b:943e:7615 with SMTP id d2e1a72fcca58-7a220acb8f1mr23954246b3a.16.1761137201007;
        Wed, 22 Oct 2025 05:46:41 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a23010e25asm14363935b3a.56.2025.10.22.05.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 05:46:40 -0700 (PDT)
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
Subject: [PATCH v4 1/2] dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
Date: Wed, 22 Oct 2025 20:46:27 +0800
Message-Id: <20251022124628.311544-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251022124628.311544-1-yelangyan@huaqin.corp-partner.google.com>
References: <20251022124628.311544-1-yelangyan@huaqin.corp-partner.google.com>
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
 .../display/panel/ilitek,il79900a.yaml        | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
new file mode 100644
index 000000000000..02f7fb1f16dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
@@ -0,0 +1,68 @@
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
+          - tianma,tl121bvms07-00
+      - const: ilitek,il79900a
+
+  reg:
+    maxItems: 1
+    description: DSI virtual channel used by the panel
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
+            compatible = "tianma,tl121bvms07-00", "ilitek,il79900a";
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


