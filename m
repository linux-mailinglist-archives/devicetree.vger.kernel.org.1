Return-Path: <devicetree+bounces-254438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D34DD184A3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:01:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E724305A2E3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2A9838B9BA;
	Tue, 13 Jan 2026 10:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDDBTUN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39B03557E0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301980; cv=none; b=V1pjkJUNAnOgzjwNU33RDKLOiEf9LOqQSe3+ghjQbV4Q845hfhnKMTSr4xO2QKCuYCd/YFHceDPK0+40TCLDTUCQITTgNoRMpKyfvp+WlrxsvDttETEBItl5gJzImuOmBb6lEEHGQqsmi3ALeqpjpm6D3yKuAAxg36MGbKRKaPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301980; c=relaxed/simple;
	bh=2yubVwhwO7ns8FZQYj8MKduIIlis7alJ8q+O1SQ6y/c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dk0GYneRPUDnH+e9DXSDeqH4sIGYDCv2xAtwjqy8a52dXrHiRGQDjEKxT9BucERtvj7ppXRR6EX2UMzJ5C4L6O9nGfZd4h3XAQN7rq77S+MnhOg4RfYlwqCdhVVOOwBDPQOPP61HsOyoF2ITXsI7JKD6U+mFcouUOsettq9Cm5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDDBTUN1; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-431048c4068so3827826f8f.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768301972; x=1768906772; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2O+ICvJOvqFIrMEVsuBmNNVxd9PD5RyBiEWFT9yHBo=;
        b=HDDBTUN1G75/pt4RgMFqcelGHCicXgUjak/a+ZId7OAY1Vk9cipm7U4MZXqSfrEIZp
         YMy+Tn0ywWBV+MOi9SBCk2rTqVGcRTT2LgDIstf1RLo343dkPyqGj4k/ZhhzR1gXt7nn
         BSNXQ4ssbEvKAZDxt6QEysCZYfTiBLxDiQHaCiUDUuOR8719X7kSxG+n7eIB4mereTqv
         r6LDqf3ATRfq6qtX3bToS5Skz3Ni4UTXH5wngUi17pfiJKoYKOiwltaRDINAUZaM+MjC
         +fpJbY6viVaEWXmEb2BfEFNnEOa71B4tq7Bj+xJjnC9huUSSUrlyNudoCKL0Wopw2pL7
         UVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301972; x=1768906772;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=i2O+ICvJOvqFIrMEVsuBmNNVxd9PD5RyBiEWFT9yHBo=;
        b=dE52xsroW/f++MuwwqUPwtTUbyYBqf+O0Agbpq4xJLHbNA7KSHh2Gat+rUNSCiGEpx
         f94guD+znu2c3VrXnsRhkIB9wTeHXTi7RK/4szvWALXr8qNJ/2JwEBKPaVk/6rS7DFPo
         NkLPVdR1lh2LQcChVYr+3EshuejTH/Zs5IUk21qoMgjedKOVwPnwW/e+j75gDLYDYFyA
         Id/jLwHEwcdjnVfhuJ0vETtx9ge1jSfWNveO+6vALXuEKQRwKeQWG1UBxOsgEh6teyvE
         s64vj/ufCNoER9JJjvu0YE9cdD/5gOyyKsbuEA+pd8oAySgka8twD92GflUD3NwSAPSf
         RwHA==
X-Forwarded-Encrypted: i=1; AJvYcCViQkMFsGHsM3Q3oVNNqkIMehzQw0iVpzri2b95c3Z0GjST9ya9lQUNc7puJzr/ZsAWVTlu9cD+uaHI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz70tYlwHSeFw7cZ0D3mxgkgbTwyOrWiu1/tSQyskxDGMe26DUQ
	W7YCu6kFHPq9lqRkNp2PfSelo/H8CjCQC0olWxQITLycFJZaK0CwHDaGhhiwDhdRB/Q=
X-Gm-Gg: AY/fxX76J8ai0IweLslplFo5kkAIymiq49LPvj4l2zyll2bs1wnuXrbhGy5mChqSzQx
	2WMeX+1r1oDNzWHELqnnEIEVl03H1f5ccRxkuEV0ChnqLafEFklV8jasz9XrXn4wDM1Yja5ZV4t
	PDsN+4GnQEdAsYlzW417RgrqSo1Jw37q0550AbeyGO4KkfD5uTzQJFlnuCnUnn6fhq5gCBSb9Z/
	6d0vsmL9cwinFlcbYmNhyYb7O3xw2x4eGwGOX1YiKqpYi9njKhKc2TPP+wNyJshEHrmIILN8fAb
	zoGUjXe4tSKqj/0W52dNJYzeTzEAEFMo1HGd+ZoFHYJ1JuYjYw6T+IjKLu4qN9I47YTx5FRW3iG
	4PcXKaKjWMKhtmucx4b3+0UzX5IEWwOS2Nze/4jfPB1dNc2GczGU3eIkz9Zl0bOs+D2LVJJt7JQ
	pxSVtxzpbPytDKaT34saRFg5ISR9WZoQVodgK3Vla4iso=
X-Received: by 2002:a05:6000:1862:b0:432:5b18:2cc3 with SMTP id ffacd0b85a97d-43423e7458dmr3411889f8f.4.1768301972016;
        Tue, 13 Jan 2026 02:59:32 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:3454:384:9eef:8e29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm43729881f8f.31.2026.01.13.02.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:59:31 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 10:58:59 +0000
Subject: [PATCH v3 2/5] dt-bindings: clock: google,gs101-clock: Add DPU
 clock management unit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-dpu-clocks-v3-2-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
In-Reply-To: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3729;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=2yubVwhwO7ns8FZQYj8MKduIIlis7alJ8q+O1SQ6y/c=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZiWOE3nOy29Cjg+ucJWaFXVn+xlXgJc+sb9Yx
 oBWrDqH0GyJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWYljgAKCRDO6LjWAjRy
 ugTlD/9NkVH/qEv0c/R6L8J1N386xpJvXJ4ZWLMUvx103TNRGX8cpOZTDA81xch3tj2qyam6OGE
 pxcoUYH6SMoXuiCGb/SpiF2EbtZSV4wWHn4DaeX7KjIGwbBOanMVstVMDNBNJnQiHyODT347Wq+
 LxHO0WRSf8WGhZiHPQIkdGXw5wRTqMLQviyLFmg1f8DpQO/vUuKsJHHVrkiARSvnREj/YztvV+u
 EjPFDCTQ9kojSCduthNhE42DcfdD+QOiSj8mUsh9z4YfenGtz+C53RTA1V8FxJdW/KfYLUMGyhU
 LWOfo8YOBgjGqPKHa7YXXFVXkWJ+w7oHhedfeLiRg+gZ20/FtJ9Hev++WrN60wmubxuSenKoy4P
 mFAC72neP2rpiqRwXAHPdv+y4xfqq/06Yfjgv2tPbzlBoXeOVjKxPJLYDqhMvLP7CmRgxZpd2p4
 qFppyKsolpBsedaYne/JSqDLLs8ekCUIhnBaUECa/cpsJ+JosOYIukgfPkRoXGWJLkPFBUFxI5D
 8KOO2vQTbwQDFWZOWACjTONcSwfyNoXQRvvbA0M78O2ITYCM/96rXA749a5hxiDRB+7TRQtQu30
 wrQz2ZIALpR99tRvznwM7o9bv7Tm6otahymTRAwmB7GJidt7vYtcAsJo2YNXfkckCTzD6tGK8is
 nEnOE7heVyTB/2A==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add dt schema documentation and clock IDs for the Display Process Unit
(DPU) clock management unit (CMU). This CMU feeds IPs such as image scaler,
enhancer and compressor.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
Changes in v3
 - alphanumeric in gs101.h header (Andre)
Changes in v2
 - alphanumeric placement (Krzysztof)
---
 .../bindings/clock/google,gs101-clock.yaml         | 19 ++++++++++++
 include/dt-bindings/clock/google,gs101.h           | 36 ++++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
index c41043c7d25200fe947a2ca5b2780e4dd50ad433..5122c5827718a3e3defbbecd926ec40e16574529 100644
--- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
@@ -29,6 +29,7 @@ properties:
     enum:
       - google,gs101-cmu-top
       - google,gs101-cmu-apm
+      - google,gs101-cmu-dpu
       - google,gs101-cmu-hsi0
       - google,gs101-cmu-hsi2
       - google,gs101-cmu-misc
@@ -82,6 +83,24 @@ allOf:
           items:
             - const: oscclk
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-cmu-dpu
+
+    then:
+      properties:
+        clocks:
+          items:
+            - description: External reference clock (24.576 MHz)
+            - description: DPU bus clock (from CMU_TOP)
+
+        clock-names:
+          items:
+            - const: oscclk
+            - const: bus
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindings/clock/google,gs101.h
index 442f9e9037dc33198a1cee20af62fc70bbd96605..7a14dcb9f17b1e95d792b0c29fc6b8bfdc78213d 100644
--- a/include/dt-bindings/clock/google,gs101.h
+++ b/include/dt-bindings/clock/google,gs101.h
@@ -313,6 +313,42 @@
 #define CLK_APM_PLL_DIV4_APM				70
 #define CLK_APM_PLL_DIV16_APM				71
 
+/* CMU_DPU */
+#define CLK_MOUT_DPU_BUS_USER				1
+#define CLK_DOUT_DPU_BUSP				2
+#define CLK_GOUT_DPU_PCLK				3
+#define CLK_GOUT_DPU_CLK_DPU_OSCCLK_CLK			4
+#define CLK_GOUT_DPU_AD_APB_DPU_DMA_PCLKM		5
+#define CLK_GOUT_DPU_DPUF_ACLK_DMA			6
+#define CLK_GOUT_DPU_DPUF_ACLK_DPP			7
+#define CLK_GOUT_DPU_D_TZPC_DPU_PCLK			8
+#define CLK_GOUT_DPU_GPC_DPU_PCLK			9
+#define CLK_GOUT_DPU_LHM_AXI_P_DPU_I_CLK		10
+#define CLK_GOUT_DPU_LHS_AXI_D0_DPU_I_CLK		11
+#define CLK_GOUT_DPU_LHS_AXI_D1_DPU_I_CLK		12
+#define CLK_GOUT_DPU_LHS_AXI_D2_DPU_I_CLK		13
+#define CLK_GOUT_DPU_PPMU_DPUD0_ACLK			14
+#define CLK_GOUT_DPU_PPMU_DPUD0_PCLK			15
+#define CLK_GOUT_DPU_PPMU_DPUD1_ACLK			16
+#define CLK_GOUT_DPU_PPMU_DPUD1_PCLK			17
+#define CLK_GOUT_DPU_PPMU_DPUD2_ACLK			18
+#define CLK_GOUT_DPU_PPMU_DPUD2_PCLK			19
+#define CLK_GOUT_DPU_CLK_DPU_BUSD_CLK			20
+#define CLK_GOUT_DPU_CLK_DPU_BUSP_CLK			21
+#define CLK_GOUT_DPU_SSMT_DPU0_ACLK			22
+#define CLK_GOUT_DPU_SSMT_DPU0_PCLK			23
+#define CLK_GOUT_DPU_SSMT_DPU1_ACLK			24
+#define CLK_GOUT_DPU_SSMT_DPU1_PCLK			25
+#define CLK_GOUT_DPU_SSMT_DPU2_ACLK			26
+#define CLK_GOUT_DPU_SSMT_DPU2_PCLK			27
+#define CLK_GOUT_DPU_SYSMMU_DPUD0_CLK_S1		28
+#define CLK_GOUT_DPU_SYSMMU_DPUD0_CLK_S2		29
+#define CLK_GOUT_DPU_SYSMMU_DPUD1_CLK_S1		30
+#define CLK_GOUT_DPU_SYSMMU_DPUD1_CLK_S2		31
+#define CLK_GOUT_DPU_SYSMMU_DPUD2_CLK_S1		32
+#define CLK_GOUT_DPU_SYSMMU_DPUD2_CLK_S2		33
+#define CLK_GOUT_DPU_SYSREG_DPU_PCLK			34
+
 /* CMU_HSI0 */
 #define CLK_FOUT_USB_PLL					1
 #define CLK_MOUT_PLL_USB					2

-- 
2.52.0.457.g6b5491de43-goog


