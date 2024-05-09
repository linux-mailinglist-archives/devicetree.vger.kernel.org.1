Return-Path: <devicetree+bounces-65969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F53A8C0CA9
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:35:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDF2E1F232BC
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44D13149DF4;
	Thu,  9 May 2024 08:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="wDt/Tuny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066C213D8AA
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 08:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715243713; cv=none; b=PeuOZ/bTEV9fuVsQq/Q2V2biivwFFCA63XdW+jBLLCXm8Ykgk3NqDKuUNvW4M7WrgaY3l3FzSMcYsC+eyQWozIyR1scs5ebS5ck4ajs6n0am/sbY21fgB1Xhb5sUJEq4SRSZ7SksvxQmXhrZ1hQzyLMC7FK4yVidprNDJ7X+nYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715243713; c=relaxed/simple;
	bh=11xKjgV6AQg1YRAhxm1Y/KPTLgBuNEkJuOQs2P6gYLE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=MjQet8tvanEAPrZ1hcMFkFWqG620qQhEbyM7IGSyjgIuIC3SuQ8jt84oxFsiaS5SfI8Ggmr0FNGNxJFBALJf4Ju21xxX8m04cVQ+K+PLDsVWmJy06BgznVyiOLLlrANslcJSCjCrtwkaGwPYLZ+RZs8xbOuygKRfypDivrX7gLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=wDt/Tuny; arc=none smtp.client-ip=209.85.210.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f67.google.com with SMTP id 46e09a7af769-6f09ed75e4cso308088a34.3
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 01:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715243710; x=1715848510; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oqO7pR16Targcl+ULRUcXbcABQhE9U7T7xWKnAilQyg=;
        b=wDt/TunybO2LOf0+SrLb3b6eXegRIXt+JXhRX1gdESJqDguTnyxsh1cLTPB054SQx/
         WA3pAAyldYEJHMVSdSJ7L5qMmcKoD6MYjEbwFxoEPajUd7Mm7bvUoB9y4cauF8u0xQL8
         ngog/h71Mfo0xeAQycr21uxrpwvxlHkdBUVqq+PROr9NowIT4DjrSLdEcT6DkSmNKI4x
         2rvmrWNMUsOR354QtOjGozZiQEZgOTPTKaCk+Rkgrd5kSB8/hEXihhN8cxCtMEgvyu2T
         c0zCdfm5eAz/NILcspxVsjAFLq017+QMlRkGvOPsMtEpkhdCUdqTaqQPki7WVZRAfqMe
         Q0VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715243710; x=1715848510;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oqO7pR16Targcl+ULRUcXbcABQhE9U7T7xWKnAilQyg=;
        b=krHnkgOJ9LfTZwdJZOlHfKgGtRT7PeimZjjtyA4dNSqzskeF4TL3STvV+bdISF5v9x
         CMRum//wkxXDL/l8I902eavcbvrD7J6hhM1aXswFxMHESgSrksraxoWHHqkwUfpUP+vp
         bmiHuGGQDp591FmdU6wjw5yqZlwD6ZREHgFvgK0RAaNvQbGzUk9+JxrF3c9Tv3T6Yp1V
         H7EiHiEJ1BffMCCbQa2MOqJn6IiZfV+kfwEEzwTyplxrIehYCGfc+7h7AHCaN47psyII
         cX8LB+vZDSqkT70XdynRvSdyVhqiVFkdgCSznesdECh1VT0mUcsJn9jbePbBGgFaRJs2
         VFCw==
X-Forwarded-Encrypted: i=1; AJvYcCVyfK6DeaFUSUNRe0aTCVEdPH/UJCS4CVneBPqFLVuDV1bpy+0fCbu74Eq36bLXF/JISVFvqE/ph8gl8E2K8btOcSaNNTvWVbZPNg==
X-Gm-Message-State: AOJu0Yz1x6+m+oQLFTFL8166PnMkX4REs635SjduzGo4sMP+ZgpyS1mO
	ZcwGhiSv06bquD+VidpSkodHLgyPN7XLIZINALuI1PK9l5MpUeOlf8b08HAXYBg=
X-Google-Smtp-Source: AGHT+IGyfXvc57xRXt/nPbK8uIuvRWBNkaxTWjEfIN9Wd7JCyZ+Mecf4mBxMjFjONY6D2w6DXitOqQ==
X-Received: by 2002:a9d:6f1a:0:b0:6ef:9506:ca2c with SMTP id 46e09a7af769-6f0b794614emr4614967a34.10.1715243709979;
        Thu, 09 May 2024 01:35:09 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6340c8a6967sm792643a12.44.2024.05.09.01.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 01:35:09 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Starry-er88577 support
Date: Thu,  9 May 2024 16:34:52 +0800
Message-Id: <20240509083453.14073-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240509083453.14073-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240509083453.14073-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Create a new dt-scheam for the Starry-er88577.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Chage since V2:

-  Unmodified

V1: https://lore.kernel.org/all/20240509064959.23550-2-lvzhaoxiong@huaqin.corp-partner.google.com/

---
 .../display/panel/starry,er88577.yaml         | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,er88577.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml b/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
new file mode 100644
index 000000000000..6686beaf0f16
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/starry,er88577.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/starry,er88577.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Starry Display ER88577 based MIPI-DSI panels
+
+description: |
+  -This binding is for display panels using an ER88577 controller
+
+maintainers:
+  - Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: starry,er88577
+
+  pp3300-supply: true
+  reg: true
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - pp3300-supply
+  - backlight
+  - port
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: panel@0 {
+            compatible = "starry,er88577";
+            reg = <0>;
+            enable-gpios = <&pio 98 0>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&panel_pins_default>;
+            pp3300-supply = <&en_pp6000_mipi_disp>;
+            backlight = <&backlight_lcd0>;
+            rotation = <90>;
+            port {
+                panel_in: endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.17.1


