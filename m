Return-Path: <devicetree+bounces-139449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D5A15CED
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 13:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA7B716564A
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 12:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA71C1DE4C8;
	Sat, 18 Jan 2025 12:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YSem1jv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DC91D5CCF
	for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 12:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737204082; cv=none; b=Q3dSj5LmiIMAoCw+NXsKjGfJsN1a0JJndYtJgPGJU4kwNLdYcYWKFVPLim2h36cnFjwrId9UgnEWKJqH3Ddg2BQNFFFpr9gmJ/XBImFXGICRq8lUrpFmLIPURcZUs0N9WuFJKjIIjpxPrZCQi4+5eJAJ8sIt0n57XIYL4LGyt1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737204082; c=relaxed/simple;
	bh=El72Xw99HLuBdH9KtR0LW7UzZsYG3PNdKxTAjv0VMF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F4l3PzR/uxjN7Zg/ipguxPT2ik8V3SEGCKZrU6A3PMuQe7mLncHwDIk/TM3sZShS2eWo5pg+GsCt5PuFP46LNuzSVj+38Yj5/EiU4z+5Ukp852BwlJomcM58i52nN4m5ufYeO0M+ANQPIce6axDzpoAq4U83kdNXxG9tp7xwYXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YSem1jv3; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-aa684b6d9c7so513164266b.2
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 04:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1737204079; x=1737808879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aXOt2DStfgxzjFuE8T9ZB+qgm2XwGSAXjcE/H4FasAs=;
        b=YSem1jv3kQwqoWXgZfxtx0RAl4l0J+eG3zcaR7farAwOW88tm/Eu4PyeyVr18am8wC
         qPoqQwSyqG4eJ84jPxlVLQMmh8j+H8BaGQRb5S/SwlJqLdqST/gIB3g5DOX65sAWJ9Xr
         HqMwnC0qLnKCwoBT39qUO/XPWjcaaDjPA2Nc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737204079; x=1737808879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aXOt2DStfgxzjFuE8T9ZB+qgm2XwGSAXjcE/H4FasAs=;
        b=ZXqfKhk7aSDpd43dDriMFqnc4OpNoDlu/IC0/ooqDG4sjxPThkA5wqEhOY+v3x4dTB
         XcbhAuEKJnOQ+l4PEChRg1ZCF7lie4ngjGpb4fxvbRrn+FlU/DuDhE+PKMdP/PKtZ12M
         ixpXvnPa3Y7pjV3t71j5rK0z9TnaJhaBDXN4c0PSjE1dBfS47UBVFaZqOdTwA8lU/jgs
         qFrkZTRFOhPnWvIgSYnSFQCckyJFJPIp9CQ+vNd+8ime36KRDSPfd5TMa5vP5hkf0JBL
         RAdDLKve1SoBrWIBsmvVHI8ltP+HdLzDgR2dmy9/lin0LymibLXKWstcrgSD8jPR8GPk
         VL5w==
X-Forwarded-Encrypted: i=1; AJvYcCXXwZgrfe5R8GyXuyGmWN+SL8l8mK5o+5guJA1dJU8zFriuYrqEQBb7wp9+HcJfbObhevhKajwwpZEU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1T+S7cEExS6wxqnglJ6Fxlq7l1LLpOLmmtGMkr1StICDf1W2U
	U+SAnxud8+OXN8xAywZRyHmGs+JcWeDa1dvcj12zf6XkgddDy53U6xeZYkF3rSQ=
X-Gm-Gg: ASbGncsyQUdm15OCucz4vwMHfvADMlJR63RlXVXy2y2WgPGUht4eLU/oNFoR7y2wmtj
	jf4jbD6NXpEqNcLL9Ilne+hSlx6HfDIL0K0reJcbQRs1wD447q/uSZhDIg4uoNA2OnF1dNnrB9T
	1YaHYIb3+vGz+L7441whuG4AGm3MC1yNQb6WCmqOMJ6fL8UG7nRFgA2D6lWadlf2ywaozze3GF7
	cudvq8WkpR9znuk68+NRtaZm3A3bMqL0Z3l+DSsJLNI8pi+cZOMvj3a80HSFNMqAlIpiFTwFh6u
	5u/T4+WkYFlQiSF4xoG7UY5VfEsDAr/2ZO0hso9t6mq5W5+n2wbCtxHkrMDULEcKYHUYT7AN6jc
	5xsPDWkvx9pfRMRqt+SjrsAdGyOw3Ic7IdMoG
X-Google-Smtp-Source: AGHT+IEGWBFQCcPRpsGYAMeB7nEf4t2kqxNBUWYNEEALNt45EQbT5cmxoYvaE5QDjvNCrevmdUBs3Q==
X-Received: by 2002:a17:907:7fa8:b0:ab3:875f:a246 with SMTP id a640c23a62f3a-ab38b0b68c7mr643475766b.7.1737204078976;
        Sat, 18 Jan 2025 04:41:18 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-30-28-209.retail.telecomitalia.it. [79.30.28.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384fcd73dsm332562366b.178.2025.01.18.04.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 04:41:18 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v9 16/23] dt-bindings: clock: imx8m-clock: support spread spectrum clocking
Date: Sat, 18 Jan 2025 13:39:59 +0100
Message-ID: <20250118124044.157308-17-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
References: <20250118124044.157308-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The addition of DT bindings for enabling and tuning spread spectrum
clocking generation can be applied specifically to the PLLs.

The "" value for the fsl,ssc-method property is specifically intended to
specify a "no SSC" case, as in the example, when you don't want to
configure spread spectrum for one of the PLLs, thus avoiding the use of
a method that would only make sense if SSC were being set.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v7)

Changes in v7:
- List the PLLs to strictly define the setup order for each of the
  added properties
- Drop maxItems from "fsl,ssc-modfreq-hz" and "fsl,ssc-modrate-percent"
  properties
- Add 'Reviewed-by' tag of Krzysztof Kozlowski

Changes in v6:
- Improve the commit message
- change minItems from 7 to 1 for all the ssc properties added
- change maxItems from 10 to 4 for alle the ssc properties added
- update the DTS example

Changes in v4:
- Drop "fsl,ssc-clocks" property. The other added properties now refer
  to the clock list.
- Updated minItems and maxItems of
  - clocks
  - clock-names
  - fsl,ssc-modfreq-hz
  - fsl,ssc-modrate-percent
  - fsl,ssc-modmethod
- Updated the dts examples

Changes in v3:
- Added in v3
- The dt-bindings have been moved from fsl,imx8m-anatop.yaml to
  imx8m-clock.yaml. The anatop device (fsl,imx8m-anatop.yaml) is
  indeed more or less a syscon, so it represents a memory area
  accessible by ccm (imx8m-clock.yaml) to setup the PLLs.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

 .../bindings/clock/imx8m-clock.yaml           | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index d96570bf60dc..d347d630764a 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -43,6 +43,46 @@ properties:
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
       for the full list of i.MX8M clock IDs.
 
+  fsl,ssc-modfreq-hz:
+    description:
+      The values of modulation frequency (Hz unit) for each clock
+      supporting spread spectrum.
+    minItems: 1
+    items:
+      - description: audio_pll1
+      - description: audio_pll2
+      - description: dram_pll
+      - description: video_pll
+
+  fsl,ssc-modrate-percent:
+    description:
+      The percentage values of modulation rate for each clock
+      supporting spread spectrum.
+    minItems: 1
+    items:
+      - description: audio_pll1
+      - description: audio_pll2
+      - description: dram_pll
+      - description: video_pll
+
+  fsl,ssc-modmethod:
+    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    description: |
+      The modulation techniques for each clock supporting spread
+      spectrum in this order::
+      - audio_pll1
+      - audio_pll2
+      - dram_pll
+      - video_pll
+    minItems: 1
+    maxItems: 4
+    items:
+      enum:
+        - ""
+        - down-spread
+        - up-spread
+        - center-spread
+
 required:
   - compatible
   - reg
@@ -76,6 +116,10 @@ allOf:
             - const: clk_ext2
             - const: clk_ext3
             - const: clk_ext4
+        fsl,ssc-modfreq-hz: false
+        fsl,ssc-modrate-percent: false
+        fsl,ssc-modmethod: false
+
     else:
       properties:
         clocks:
@@ -124,6 +168,9 @@ examples:
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
                       "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
                       "dram_pll", "video_pll";
+        fsl,ssc-modfreq-hz = <6818>, <0>, <0>, <2419>;
+        fsl,ssc-modrate-percent = <3>, <0>, <0>, <7>;
+        fsl,ssc-modmethod = "down-spread", "", "", "center-spread";
     };
 
   - |
-- 
2.43.0


