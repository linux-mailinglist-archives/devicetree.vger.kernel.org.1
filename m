Return-Path: <devicetree+bounces-107440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A1998EB3E
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 10:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD71EB2483C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 08:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BAE8145A1C;
	Thu,  3 Oct 2024 08:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hpzjq4dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D78413CFB8
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 08:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727943278; cv=none; b=VZmTBrSYGn3p5zqW+XD2SyYLfCf4a3uK+sjBn3fRrRHxtvQrK9mTHlKygrl2TC4n4FiMXd4x04/AbX46NnYEuyeVe7BRqxR5+7iOAf9r+tiWscijJE8PF5A36iIPuEH3V/HbyU8MiAYdDA5AfZPZKDbpLPcYDXL6BPoX4tG6pbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727943278; c=relaxed/simple;
	bh=dH+SVdLskeQZiYIROK71JDfiS/rRfhCzgnVtQVskFbE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j2rIkSL6ZbiuPvbXuek0E+uEn6NATk2eiUl/bIDg72LoFUo+tK0ipoqjPpyiXFgKJv1cts8CRXwOqF4ByiTsLbnVVDUVWzSueRJtZQl0sHYVGkjPsBqZIoxs3yv8DOJjC0Hv1OX6dsRVyOnYB4Ntd7k+ErG9ihywDVNRsvtsxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hpzjq4dc; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-37cd26c874bso51609f8f.3
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 01:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727943274; x=1728548074; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eXlZz7rmb9UIZ/1Ho16Xy2pZAX3UIBne7+DPquCei2E=;
        b=hpzjq4dchmGRnmYdG/oBveNlKJCGnsvCd2Q4B5fn1N+0nd6bEm+/QKbmQjPCHL6Ybr
         7L8SRE01YbVOeR3FmNDkXWsYt7i0XXuYvCMqfe2Gt4ApvcGRBsobaOeRH7GCLLa17g+C
         84I77gztozBFCLBO7AL3jCMQGGeZyqLX2DT10GUUz1Y7Ko55Et16Zfnm1eYFBvP2HHcA
         YnA+ZubDzhx513Jo19g7AZ8f82OG36q+2ZXfPMmK5zXj3QffI+0/s/eM7fXoSvoTeucp
         apVEipA3TBhmoCGCSfk4Nj7QY79OK85RIH2lMbPoKDPVpeZ1AKbn9rR8dmt/B00EaJYX
         cQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727943274; x=1728548074;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eXlZz7rmb9UIZ/1Ho16Xy2pZAX3UIBne7+DPquCei2E=;
        b=iI76ZjD3ZDLFx3By4Lzj2XHnbGGOuynJGdvJRlOvs6vQbqqGi+k3QRpXQaUwCx7cap
         bRapSRCXcWYjuHg4gSrbfgZQ8VO/RbCXeNDjNh2MzWXfI8B4Gtl4GKktBnQsNSpeU9dP
         d4HBus4uqWFeFI7MWQ0BqI9Zn1SDuNSpjVHMNJ2zrgvx0svCLSMSY/GZNshifi0q1aTc
         24fBwizEu+TPetsosMjQmtcK/KSXZhuG9/Zg2lB8OY02D+DoyBouUqjQwM876/XLfQav
         ui3ZHw2XX7q9x+GImNbf+J3Vxv4W7cuPeFqEkwFTTQp0847Ze/jOb6DuKErl7R5ioiql
         ImMg==
X-Forwarded-Encrypted: i=1; AJvYcCU5FWGMzEOKu8fanwwT2MhPtMkHg+1f7yPKrZ+XzlDG1c0w5LNzQ4h5FavO7rmLC6gZD3xdTAruxW0t@vger.kernel.org
X-Gm-Message-State: AOJu0YxknLf7QiAE/W4ma44Ey4eooDE+clf7dOFeBQpm331Q/bnoXJeS
	f1TrbO1VHQqmevttr63B6U25AN1et/6VCQ0z47PoNLKPRvzmelaqJvNb62ESvJo=
X-Google-Smtp-Source: AGHT+IHORvrlXJ4uwjpyybGVAb6MaxVx88Mqx74c5eN9Gw4NoGknhvyMYnh6Ke8vQdMc9xQqHr1VSg==
X-Received: by 2002:a5d:59a8:0:b0:375:bb30:6518 with SMTP id ffacd0b85a97d-37cfb8b6238mr1902193f8f.1.1727943273759;
        Thu, 03 Oct 2024 01:14:33 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082d230dsm702027f8f.94.2024.10.03.01.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 01:14:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 03 Oct 2024 10:14:19 +0200
Subject: [PATCH 2/5] dt-bindings: display/msm: merge SM8250 DPU into SM8150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-dt-binding-display-msm-merge-v1-2-91ab08fc76a2@linaro.org>
References: <20241003-dt-binding-display-msm-merge-v1-0-91ab08fc76a2@linaro.org>
In-Reply-To: <20241003-dt-binding-display-msm-merge-v1-0-91ab08fc76a2@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4033;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dH+SVdLskeQZiYIROK71JDfiS/rRfhCzgnVtQVskFbE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm/lJg0f/7YyApnEY8pSbuulkztqOe3u+5CTTNw
 NTupL6zl1uJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZv5SYAAKCRDBN2bmhouD
 11hbD/415N1kKo/l9YBKsL0cydlNj3GtPjC2ZZfex3cZjVPKMyQW9dXJJ1WhWI5dIVUToYmeSVp
 ZTfm3jqW+96yurBGDecwRoJ8/B/Zwim1uWApF4WygfyZKEAOgesBtb8FYMJ1hSbPUaZVNcSZKzJ
 Iyb482ktA9vGrGkHlyInPWds7pr7vw/JIDUuU/I8xNRd+3KJBl0N+KhcHFN6WxGl/+8FEqkKC7S
 Qyjee5Py3vzAt7GlaP2MAFz9ut68mmHZpYxkeGnUl0ZiWMESRIOYDZeoqVuuLex/YQkj/UVzgOm
 ngrcfQMqJEg6Q/zzf9pybylBtVvJuEBWrnC9nJ7vSsDB6v8+L2b0LT2O8X5W+ZSRpdmP9DyUvbw
 nT9vtIjahfdCxic8tyAuEW7TuoTDM68syCRVwjy2y3RHCCtuQlFQOhKp9bH/BiEe7fFKFnoq5EC
 yScWAgoh8GRtGDMa7WrsvG6ECThhiRPfdpZR7KwhA0y0KPysZa86F5lFLOqwxkZcje6dCj9yXJW
 L0JrbOEfSO5oMwrKSNMoUHzt0MZAt0QELr7iK6oNTsbKXNSB8UJa5x6NAfcNqCMpPaoDjKDvgUw
 HIn1cBl+3Ua37RFoakIXN2ASKUT4/YpkLLV749XHhZIqcU7r/MvlvSIHxvaspMGiqw3JirEbGIv
 tgLUfaTwPxLZ4hg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Split of the bindings was artificial and not helping - we end up with
multiple binding files for very similar devices thus increasing the
chances of using different order of reg and clocks entries.

Unify DPU bindings of SM8150 and SM8250, because they are the same.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/display/msm/qcom,sm8150-dpu.yaml      |  4 +-
 .../bindings/display/msm/qcom,sm8250-dpu.yaml      | 99 ----------------------
 2 files changed, 3 insertions(+), 100 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-dpu.yaml
index 13146b3f053c..a88d22f30a60 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8150-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8150-dpu.yaml
@@ -13,7 +13,9 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    const: qcom,sm8150-dpu
+    enum:
+      - qcom,sm8150-dpu
+      - qcom,sm8250-dpu
 
   reg:
     items:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
deleted file mode 100644
index ffa5047e901f..000000000000
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8250-dpu.yaml
+++ /dev/null
@@ -1,99 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/display/msm/qcom,sm8250-dpu.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Qualcomm SM8250 Display DPU
-
-maintainers:
-  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
-
-$ref: /schemas/display/msm/dpu-common.yaml#
-
-properties:
-  compatible:
-    const: qcom,sm8250-dpu
-
-  reg:
-    items:
-      - description: Address offset and size for mdp register set
-      - description: Address offset and size for vbif register set
-
-  reg-names:
-    items:
-      - const: mdp
-      - const: vbif
-
-  clocks:
-    items:
-      - description: Display ahb clock
-      - description: Display hf axi clock
-      - description: Display core clock
-      - description: Display vsync clock
-
-  clock-names:
-    items:
-      - const: iface
-      - const: bus
-      - const: core
-      - const: vsync
-
-required:
-  - compatible
-  - reg
-  - reg-names
-  - clocks
-  - clock-names
-
-unevaluatedProperties: false
-
-examples:
-  - |
-    #include <dt-bindings/clock/qcom,dispcc-sm8250.h>
-    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-    #include <dt-bindings/interrupt-controller/arm-gic.h>
-    #include <dt-bindings/interconnect/qcom,sm8250.h>
-    #include <dt-bindings/power/qcom,rpmhpd.h>
-
-    display-controller@ae01000 {
-        compatible = "qcom,sm8250-dpu";
-        reg = <0x0ae01000 0x8f000>,
-              <0x0aeb0000 0x2008>;
-        reg-names = "mdp", "vbif";
-
-        clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
-                 <&gcc GCC_DISP_HF_AXI_CLK>,
-                 <&dispcc DISP_CC_MDSS_MDP_CLK>,
-                 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-        clock-names = "iface", "bus", "core", "vsync";
-
-        assigned-clocks = <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
-        assigned-clock-rates = <19200000>;
-
-        operating-points-v2 = <&mdp_opp_table>;
-        power-domains = <&rpmhpd RPMHPD_MMCX>;
-
-        interrupt-parent = <&mdss>;
-        interrupts = <0>;
-
-        ports {
-            #address-cells = <1>;
-            #size-cells = <0>;
-
-            port@0 {
-                reg = <0>;
-                endpoint {
-                    remote-endpoint = <&dsi0_in>;
-                };
-            };
-
-            port@1 {
-                reg = <1>;
-                endpoint {
-                    remote-endpoint = <&dsi1_in>;
-                };
-            };
-        };
-    };
-...

-- 
2.43.0


