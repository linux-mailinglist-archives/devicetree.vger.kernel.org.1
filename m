Return-Path: <devicetree+bounces-146362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FA8A34A64
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 17:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B023E1787A5
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 16:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06A8269890;
	Thu, 13 Feb 2025 16:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dEVuCa37"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD9245032
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 16:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739464088; cv=none; b=ACf7B1TrRdzjn+Kc9AmEyh8ctZbj2etq1pQL2/YaRuuM6w09k9O4CNSAeieKOmcOTNZLJojXxYTe7Pk2xAOMmMgl8zLEpBuGhGoZzVct1/Wee6eEN716vpDnPx8Ink5DeyZW5VO5Ne2/Bfidrov86q0r2V5I43rqvXag7PFrzTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739464088; c=relaxed/simple;
	bh=oNd12i+2YmkCuPYQliiOZGjMa/GCFMaAOwx4UZry5cY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YQIBpuOduv4Kzo8/ma+3cbhuxjU8BZGxwhhBEnTYd/bTqMZ56CynKqiVfm/FgSJpbHf0vC3jWJS7bUU3LYlulvobfbKPAZM126aBUKnHhxBUDHANOJP9fqg2npc616p0dP2sK+e/MZkAQWcYd6gfUO0YAAPcf6izW+TUYeKUdC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dEVuCa37; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-439585a067eso11586015e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739464083; x=1740068883; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nckyoaf9WMSwIR46ubTH6va+VexZaxBrD6oq84P05tk=;
        b=dEVuCa37xF94crz1EBsIxH0OLchEiFA+EpYWKLk0sxfWJnNxZyo0/7E3yQbx8OW0DA
         V17YsF/0oLClf7g3wBubekl6hX7yl/BYvyKWDRVQWlK6Oq4UQlu1kNi9Olrk7Cc1On1X
         fEV2gav6/Wh1xlb13XaZJzugKAb7VT+TuubGk1AWcrWraLsSmknj0cUc7tIhnMPqc1Em
         LW96lt0ti1cBeZpxtNKZSyBP0cyV6TyKgfdLy8lX0CU0RwHkzsbdpTVshrjN1vKT50D8
         OcRbz1TcQ/Lg6eUZJ/6wg7WPH0CKKpvBzfH+JPZMT3dV1o0J7p6QLggyVeHinsHNAOrM
         NERQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739464083; x=1740068883;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nckyoaf9WMSwIR46ubTH6va+VexZaxBrD6oq84P05tk=;
        b=SVqmB+bkEq/MmdI50UGb7577Hky5tZeULBaTJ6cSge45BVO63XAClBY6dR0e3J40E2
         qiLFSLIPv8YYXfLUptPZXqe4vNf/sCyF/aEk1B/5QZTEr9ppsxffXfTii0YVfWJk4+xw
         dsq9SJQQvcQn+vmBSE50a91nTHz20Kg9q160Ygwiwf04AHdSSaRW/eN5/uq1SOErc6nV
         WOQ7xVrflHLc5WsUAawkcNGjitvLm3+ADrm8qQIAWfr/+ghUDQNweTHAjVoBaJVcxCbA
         rcRRCQxSaFfii9mNj2mJ4TAnYfWeuf386NieQAQONJk0XXU3lzTfS9pv2HWbDJWU0Ib8
         tKFg==
X-Forwarded-Encrypted: i=1; AJvYcCXKUuxE7gYhxWiygd3fjoY4XGOAzlp5aAWMAlWtRgDE1FAk9UA4l0fVRuxsZHkNNYwKbCQxGNXjBy32@vger.kernel.org
X-Gm-Message-State: AOJu0YxJymtCO2szAHX8FrpzBTaccrxmLQ02uIkfusulwu2vT4zM6OJb
	gMwWl7Ewdy+vKEVV4Ur0NsCv6jmsM1GC1dACzFPcTTsTKy9ech2JqwfaL01z0Do=
X-Gm-Gg: ASbGnctDn8Fu/8w+miqY1hwWcMtcJMjBnOAt0VoEfoustGRos5iK1fpRPXRFwnaYkMt
	zJzJeDPprYiopxtpIDF88TTb7jyjGIvmDDPnOQucc/hGkCtNTMnFYmY4qlEVASEuSmHcD8m0qOr
	uDtVwrABpUN3aog8rKUSFxbak40+k7zqUrXEvKoEa88QAoYkSA8xSyo3nhOt6KTGGyMegFj8Rhg
	T9WeTjy1EXNmTDH7NE2PwDb8Q/FNm50HNLH5JUmXv4jbzFLeIxGwnieXiy/YnaR0RBl1dK1Q1q2
	zZ9oBOTub5DLFHx4uM+P/MPUmGA9zfLi/KCt
X-Google-Smtp-Source: AGHT+IELeKCADQgg3H5ZzZcXql0ZPJ1C4Uvb1zOBpoOn1s+Bz0PEz8ZZ92bF4HPtyxGd27LfKSXksQ==
X-Received: by 2002:a05:600c:3544:b0:439:57bb:2aa with SMTP id 5b1f17b1804b1-43958166727mr107502195e9.11.1739464083323;
        Thu, 13 Feb 2025 08:28:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b412esm2274382f8f.1.2025.02.13.08.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 08:28:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 13 Feb 2025 17:27:56 +0100
Subject: [PATCH v4 1/4] dt-bindings: display: qcom,sm8550-mdss: explicitly
 document mdp0-mem and cpu-cfg interconnect paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-1-3fa0bc42dd38@linaro.org>
References: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
In-Reply-To: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1989;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=oNd12i+2YmkCuPYQliiOZGjMa/GCFMaAOwx4UZry5cY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnrh2PxgSsYod7hW5BPfhjvjXJr3Hpc/Y4nGjmbpLq
 /LWeb26JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ64djwAKCRB33NvayMhJ0Q0WD/
 4qd13mpilaLgIGAOQgbLY3IKdNqPNm5kMS18FEVqOC1wxxdtMXcWQ2TV916MPWxwLWyZ0V+Ogkc7Vm
 wj7AE90w09sWjRWMNFJAaevlVjzFtRj7tg8tLEH2WaojWU91xJZZZxhDjnNImc44IiO4fn0OftaVmo
 2J3PnvAEDJpeDqfcDgBr3MWEm9wHjT/kGPjr6Ahi6f7dKqnFqMKAVBAmXEUx82IxzCaJDdnAoxZAlI
 Dx3TVYX5ofK3S3RyvhvJ9Wj8GwF+I8Apc14DU9RQZyBrtw+1Do6t598lCEFkf5UKGoc2WKNknHRoMS
 VmpNK1g+E9t32NnlryQo/qdHVcNuvEw35dcQe9Xhk2J0gYSiJO1ERiD5D6iCZAoFjwWiqw0JV/QlWk
 ENCrWpIIx3f+xkO2O48CRatyzt/5LHDLM9sprI3wfkgo1IdVeOmjDUzqdgQ6l8P/q8pF6out0DEETR
 apeKJV3LdWurx4UNkET5DYpweh4Gqo4tQLcKHrka/6Nw7/TPoVVTfk19sUnvOgA9GS7U+mkdsT+fqo
 xtRoN+LAo3ESej07wlqYf9wx+qprBUirXwTFlTC3QSOMU3aqiQrC8h5LaoAeYjRswn/7dSfjD+Xclh
 AEW9bbl3X2yhN+fPBK0yTONibKBvxtZ7jAeopKOWiGtzNr7J8t17swEwq47Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The mdp1-mem is not supported on the SM8550 SoCs, and having maxItems=2
makes the bindings not clear if mdp0-mem/mdp1-mem or mdp0-mem/cpu-cfg is
required, so explicitly document the mdp0-mem/cpu-cfg interconnect and
add the cpu-cfg path in the example.

Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml  | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
index 1ea50a2c7c8e9f420125ad30a80b4ebd05c9367a..59192c59ddb9c126ada43ada1430fa7569651f99 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8550-mdss.yaml
@@ -30,10 +30,14 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    items:
+      - description: Interconnect path from mdp0 port to the data bus
+      - description: Interconnect path from CPU to the reg bus
 
   interconnect-names:
-    maxItems: 2
+    items:
+      - const: mdp0-mem
+      - const: cpu-cfg
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":
@@ -91,9 +95,9 @@ examples:
         reg = <0x0ae00000 0x1000>;
         reg-names = "mdss";
 
-        interconnects = <&mmss_noc MASTER_MDP 0 &gem_noc SLAVE_LLCC 0>,
-                        <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>;
-        interconnect-names = "mdp0-mem", "mdp1-mem";
+        interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>,
+                        <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;
+        interconnect-names = "mdp0-mem", "cpu-cfg";
 
         resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 

-- 
2.34.1


