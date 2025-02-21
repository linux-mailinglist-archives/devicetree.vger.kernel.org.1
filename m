Return-Path: <devicetree+bounces-149438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F465A3F82B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4046417988E
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA882101BE;
	Fri, 21 Feb 2025 15:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SR9ofafM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA28208962
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740150803; cv=none; b=MYGCRunU5nnflecPqUxl9Cipwz+C56tLqlx7sNFWwMcHZasbmhy8Qv76iv+aMAZIsfge1ta7FD08/M/Qc0qV7Ow8JYhIthX92VvtY0zaGzge9bP+3msJlxUVYa1XUTJPKIosg6NHDIV4KtG5XPm+a52NTMfYiaAyO9PgvMKbzhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740150803; c=relaxed/simple;
	bh=Fa1BddI3XJm8BQciNHEuwUqNi53s9MtiqS6q/dOK9Yo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XX9pXx6ztRhuKtgfzJvvb9R+YYvsYDaiKCJ39v7zOacv5gP5J2M/4juBVWVGkekxUsZZf1mLpaeoyOvrneUPqrfWT81luaIyf1EsQHWDvhtXbHDzW/bqCUT2dOyVIa/v74/0Qyx+K+Xkzytc0HmPkn1qKl7d52Mr3HLlGetunDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SR9ofafM; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-abb88d2b67eso27965466b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740150799; x=1740755599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Kffi9mM57RBxjp4z5FLBrRuQy7GA5fKXeHplvEZGGf4=;
        b=SR9ofafMegilwl9LWHIOnO6ymnxn9Ndukl8qs1irlSjqzhDbrg3Plxu1E376q5lutJ
         g4AR7Xu1SEgchInZBMOKo8MY4MHdSfenMA8jAfw9JvoFRHhgwUnlWP5cMF5hwiYSzeEB
         n46/HwCSTQ1RT1vRpVigFYIf3CNWwXWWFBaXT5NM79nacKvU8DjcKdDPnkNAt/es8Vmr
         JQUFluZhwzbbFfqGkZHguTcL6G6XLgo9jzSywLPYmejHBzdGKvNCQjW0ny83enLPWd4V
         w5ekHp84g9scuGERSXxEd0uWvarwVaT1MPYhDvtV+IBYmyWDzpUyozOLfkv0Z218qwkC
         fJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740150799; x=1740755599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kffi9mM57RBxjp4z5FLBrRuQy7GA5fKXeHplvEZGGf4=;
        b=B11HOSemxNkWq8b4APhc5j4UKMHZk1njLLN8zSrM1mNckPNZWzu7DTCnwv1zgN9jrg
         SxpeU1Q7Flfz9dMjmXn4wf6i/oKoJ8VEC7VThM2F8TPDivyogse+gFYxrKgDOlAu63+r
         4mgfdbdJ/AihaiHlQcVo6Dzio0SIsVhDcweezkP/DVubdYUO37B0y0+AHJ6Csxt2g7y/
         fGDhDiNi4YXYNcBlzumPrJ69/tYSK5eF0Br/VQwj6qFOBsLwGeV+j3Zo+iIuOvkCbPSg
         tQQ84u8PJpTCAPoRYe2wKxI8534W2ACZ6MhGLEcID21My1u8wY7uraPBQ0TBqe2zCMo3
         AVgg==
X-Forwarded-Encrypted: i=1; AJvYcCWndUh/SXPpNHVZ4pNVdnEs3uMt7w45ioyBlnf89hi0hj5eqcaXw6vp+jfyCp3OVnmGJRBSDmFyhl+k@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7zeczNAVgU+Hl0tG4BSBegVVRZlP7nfCK0Qyty1SR3SGrd0LA
	X113rLXMG42jix8jDVHN2XLWtmTiDEMyRv++V22iChYQu8D2OA8gzMUZmeXJztY=
X-Gm-Gg: ASbGncuD5/Wx7kj4Ykk9z19pSIxzcdoHsXhz1+LK5BUoKw48APyl7F5NeItSJ7hhNrY
	ZQuLgxfk3W3lDsIuvZFi7XGandkfl863xce4RiTjCdjZZZt5BEPxYP5wt5haOjfJMg6acK2/nLC
	eORtuoa9xVcAijK7sYf9zq0bxZ+xvqf4ud+Jql/cEZma9a895CAWJGe6CxweNpiz7RGxeD3xiiS
	yW9DlramW5/JLiRBZayJQ7xVCR4jeXuleCFoAr2StoTmXCHUnpzn3etf4d56v9XiMbGY8JwEk6f
	6KQAueBe+pEZ+1R74HySsG2J00Olygm094kCShI1LMX+B5dK4YGnXoQtV474CpyCGx1bmplnlvk
	=
X-Google-Smtp-Source: AGHT+IE2efORy+XnFq6iGRbNUJ79O3DLiV+WA47UQiAkKow39HzZeGH66x8Isz/Apww6BksdMEVRpw==
X-Received: by 2002:a17:907:a089:b0:aa6:9574:1728 with SMTP id a640c23a62f3a-abc09a0bf96mr141099466b.6.1740150798792;
        Fri, 21 Feb 2025 07:13:18 -0800 (PST)
Received: from krzk-bin.. (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8ab30726sm1110640166b.153.2025.02.21.07.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:13:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mahadevan <quic_mahap@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: display/msm: qcom,sa8775p-mdss: Add missing eDP phy
Date: Fri, 21 Feb 2025 16:13:11 +0100
Message-ID: <20250221151311.138755-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Qualcomm SA8775p MDSS display block comes with eDP phy, already used
in DTS and already documented in phy/qcom,edp-phy.yaml binding.  Add the
missing device node in the binding and extend example to silence
dtbs_check warnings like:

  sa8775p-ride.dtb: display-subsystem@ae00000: Unevaluated properties are not allowed ('phy@aec2a00', 'phy@aec5a00' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Fix reg size (address/size cells =1) in the example (Rob)
---
 .../display/msm/qcom,sa8775p-mdss.yaml        | 32 +++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index a90a8b3f1a9e..5fac3e266703 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -52,6 +52,13 @@ patternProperties:
         items:
           - const: qcom,sa8775p-dp
 
+  "^phy@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,sa8775p-edp-phy
+
 required:
   - compatible
 
@@ -61,6 +68,7 @@ examples:
   - |
     #include <dt-bindings/interconnect/qcom,icc.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
     #include <dt-bindings/clock/qcom,sa8775p-gcc.h>
     #include <dt-bindings/interconnect/qcom,sa8775p-rpmh.h>
     #include <dt-bindings/power/qcom,rpmhpd.h>
@@ -158,6 +166,26 @@ examples:
             };
         };
 
+        mdss0_dp0_phy: phy@aec2a00 {
+            compatible = "qcom,sa8775p-edp-phy";
+
+            reg = <0x0aec2a00 0x200>,
+                  <0x0aec2200 0xd0>,
+                  <0x0aec2600 0xd0>,
+                  <0x0aec2000 0x1c8>;
+
+            clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
+                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
+            clock-names = "aux",
+                          "cfg_ahb";
+
+            #clock-cells = <1>;
+            #phy-cells = <0>;
+
+            vdda-phy-supply = <&vreg_l1c>;
+            vdda-pll-supply = <&vreg_l4a>;
+        };
+
         displayport-controller@af54000 {
             compatible = "qcom,sa8775p-dp";
 
@@ -186,9 +214,9 @@ examples:
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
                               <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&mdss0_edp_phy 0>, <&mdss0_edp_phy 1>;
+            assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
 
-            phys = <&mdss0_edp_phy>;
+            phys = <&mdss0_dp0_phy>;
             phy-names = "dp";
 
             operating-points-v2 = <&dp_opp_table>;
-- 
2.43.0


