Return-Path: <devicetree+bounces-222687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 724E5BABE6A
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:51:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 943517A25E4
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BE112C028F;
	Tue, 30 Sep 2025 07:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Xr8/p7+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CBA2BE7A1
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218662; cv=none; b=okB1TelkgZMcFGNQ8GMg9eQkcjdXHGLTYw8Z85SDCEzxa8W1mdULCY7DhWQUlqObVgfyld3ADBk6Fiflxi/Ve1ezfvzQRp/kBVZmuAn+xYZZ6QxqkPX1nTJWhJ+j5EjJ+DerKqB+jV4X5ia1ErAi+Zhdx1tB+9gFd5mlmPTKllQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218662; c=relaxed/simple;
	bh=vi2rW0HFsywcmOwrE1uwDZpSS77cZqzVGwj3Sjfo8Tg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C7hvBU7iaDMCi1DjrQShMkMioLF4caed0CxO6VQqwQCs5u+mXXyzLEyPyr5oDvC1a6W8WYbPTk/Ki+aqpYFlxa7Ie1gBmZh/sOEB0XEi8XlVu2xDKXner9Z2aW/CCAwjFOkfZPkGbqZg5FrBQMjYzYb3p6Ph866zbV0EZU+PONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Xr8/p7+j; arc=none smtp.client-ip=209.85.215.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f196.google.com with SMTP id 41be03b00d2f7-b4ee87cc81eso4936783a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1759218660; x=1759823460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a/whcb5d7/6RJGlKNOHW7Q8j/jljATqJnqXZint8Jsw=;
        b=Xr8/p7+j6n8doKLKpaQvcOIskVywect28adoP4atCLGexc7vKgiq0Rx3oCWJnFIy0S
         Pf7sPcibre+QQ7KQ0PyQ1Xh8AkQX2bR/PKznvjeKwkvOIPzWG/sNevtTH3fY1w1chRXT
         UCDK85qooLIqsdYmPgxCjqgnG3CFDMUwnxe5FXttS3eUtqemufXaBkYcM5ZDIHMzqx9P
         Tk8DHHV/1vsrOD7usE0nToGsdYLQe1OeIwoJjtIOTERPKS5AkOymOCT5JBSw1FdDVN/j
         D5FdoBSzTuWr3K0YluWL/c1XOv0VnShU8w0O+XnjP01jokKQnB38pVXVlLo2Ol5WHSQl
         ys9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759218660; x=1759823460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a/whcb5d7/6RJGlKNOHW7Q8j/jljATqJnqXZint8Jsw=;
        b=k2LJ8mtO0mIFA8Wx7b/j9P5MCiMKD2/5RmaikMhRY/XsJmLTYeDeFvgeIlc1sTAu5z
         OKeYR6HQDyXEZ/bB1h74+7UZm87PAJFQ3OG/Ei65VQuf+w8xSzcyJ8v8vAJLhGh4K2JM
         HVVH9Ko/co9Dx67KAo4Ks2qHkpTDJzp148j90Zoyi/9FsGYEo1JYKM/UcRHqVYXjZSkJ
         X1ZyRILIFhLLY3JOgVZmgp2/+Kc72e95jvI8pbiQMoFYxzGB3Tpllcwb1hmtggUGmrYe
         Qi68s2h4UT+cbRlpeCq+3BAc1rgD4zHvLwHT7SSH+mrtop6XnPJeeR2FNAfX5CSSCkNb
         WVwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyr89Cp0IsvtTav+id/1rXN5cA3GDOegyLRM7EYSfspwYT7mL2EoGn++H6KSNdCIKbU3lHfHRYh4Y9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc4gCDlgv3ceD2ywmsKoI79CANdLX9SbCxlCkhWKAPbRKSQTKw
	jezuxCghIwDobHe6Hg2z6gXJCvVZWiHuqJaz0LKp17X48R6MXiXXOrbodKKwQGCofbwubmlV8Rq
	Fy35WMEyaCg==
X-Gm-Gg: ASbGncsIs7TnX/MA9YZkXiLtLD4SjTM6SaEZT6GbiW8fEBDndsCgpH3xisxwx4pVTaq
	aTjjzlLA5pfY2V/64jADVX+REufYLneETkw7stQrTGHEIr2f2hhgtl1ZgQeV6ckHmnO0dk6R5Et
	5OH+hNYYJNJcGZHxEZUnH8xjpV4NIYVtQ/K4LfFl3e7q++A05qvqF2w2ZEYlzz67O24peUGHDjs
	R3r855J0ZavCwaktzl4UUfRxppUI4odyAbwyoW0R8jSw1EdVBS2XCw8WwfvNdyn6Rdo35BWun7M
	aAn5l1FTlxEc9cJPcGGao6JQRbYsAujqIrFvGFuQdZX5NooE0i3piZPaVKu0XPfagBXX/Z8TYnq
	Ih4zZ+fbpKy+TSavjQZiwh6+fJWELSIw7Pd9i3BtKR014a5iBQYVXrm/denxewBTqkGNuHMPgfj
	eDHtqmO9tsGxkDWwfg2bSx8cKj6h9klFF52Myyhwk=
X-Google-Smtp-Source: AGHT+IE27yfFnalXswyaYjSz94Su9vVfjr1kOzMMqId+LH8jlsFm4Xvsohy1cY8MeUbkA9K+KofzuA==
X-Received: by 2002:a17:903:298b:b0:267:8049:7c7f with SMTP id d9443c01a7336-27ed49df3bemr209524225ad.7.1759218660594;
        Tue, 30 Sep 2025 00:51:00 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed688223dsm152313565ad.86.2025.09.30.00.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:51:00 -0700 (PDT)
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
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
Date: Tue, 30 Sep 2025 15:50:43 +0800
Message-Id: <20250930075044.1368134-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the Tianma TL121BVMS07-00 12.1"
MIPI-DSI TFT LCD panel.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../display/panel/tianma,tl121bvms07-00.yaml  | 85 +++++++++++++++++++
 1 file changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/tianma,tl121bvms07-00.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/tianma,tl121bvms07-00.yaml b/Documentation/devicetree/bindings/display/panel/tianma,tl121bvms07-00.yaml
new file mode 100644
index 000000000000..e654b86782e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/tianma,tl121bvms07-00.yaml
@@ -0,0 +1,85 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/tianma,tl121bvms07-00.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Tianma TL121BVMS07-00 12.1" MIPI-DSI TFT LCD Panel
+
+maintainers:
+  - Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
+
+description: |
+  The Tianma TL121BVMS07-00 is a 12.1-inch MIPI-DSI TFT LCD panel.
+  It requires multiple regulators (AVDD, AVEE, and 1.8V logic)
+  and an enable GPIO. Optional properties such as backlight and
+  rotation are inherited from panel-common.yaml.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: tianma,tl121bvms07-00
+
+  reg:
+    description: DSI virtual channel number
+    minimum: 0
+    maximum: 3
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for the enable pin
+
+  avdd-supply:
+    description: phandle of the regulator that provides positive voltage
+
+  avee-supply:
+    description: phandle of the regulator that provides negative voltage
+
+  pp1800-supply:
+    description: core voltage supply
+
+  backlight:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the backlight device.
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description: Input port of the panel, connected to the DSI host.
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - avdd-supply
+  - avee-supply
+  - pp1800-supply
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi0 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      mipi_panel: panel@0 {
+        compatible = "tianma,tl121bvms07-00";
+        reg = <0>;
+        enable-gpios = <&pio 25 0>;
+        avdd-supply = <&en_pp5800_mipi_disp>;
+        avee-supply = <&en_pp5800_mipi_disp>;
+        pp1800-supply = <&mt6359_vcn18_ldo_reg>;
+        backlight = <&backlight>;
+
+        port {
+          panel_in: endpoint {
+            remote-endpoint = <&dsi_out>;
+          };
+        };
+      };
+    };
+
+...
-- 
2.34.1


