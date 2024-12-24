Return-Path: <devicetree+bounces-133790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D0D9FBC11
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B54D162552
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:12:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8329C1B4F2B;
	Tue, 24 Dec 2024 10:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cg2NWYcg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9704F1B3935
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035157; cv=none; b=AEY+vxF+5tyxEN5UYSjbZsk8mIlzOINdOHmz9+nqvu40mIBGG3tqfSA7aZXHovD8bPNrt5EMChgViTqJhKR8wF3vVceKKDkWWa+BhhS48CF9Z7N57F5Y2CMC7tVl+PAFI+DezBxM9OyUi29e6kffCtWV1LlQw+TXaTKiZim6ZGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035157; c=relaxed/simple;
	bh=Qth8lmPCD2HZ8e7n0fcscU6OItm375v1ZHaNDTxe/k0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m1T3iodypyR4Yn8PEJHJzry7ztXip0Bse9nn4/vnkbvA/XH5z4VfxLKZxPvNkDjhPoE8sQuwkhTdmgvO4DqvcfEOPbXzlLFfLreypUtudUbMjCsMW2drBDnPhMzdBHi2bMgnC+XbpujMOOqx3eHM38SZ7qSLecz/fO0ty4Z4KEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cg2NWYcg; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-30229d5b22fso57089351fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035154; x=1735639954; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNv7vuo/nVPsOvSPfX1b8QlBVUPniiNuRCRjr7neK+w=;
        b=Cg2NWYcgXS3gGV0XjQXFG180zVG7fGlQwQ7A/NkGKIK6x2bqqIZe0r4EBarr7NS2Qe
         1SGBfN6bCdWPZdcaumM6Wp0X9KJ48Vsxq79PgiHLwudOssK0nbJMwCPbKU24qk4DYvg+
         J7M47zTqVBsl4b1T5pJ5ODxl7LoijkEuPwWxRSp+Ip+tAiAL22xpWDZRi4uBgbPvCalR
         wfrub/6OpfzrInNMS/SFlkiRI+RzJfJtNpVdMd1aOt6UmCVezGC1JavAmJGXnVHEWFoq
         01ie8vIfkyl2pEZxh+6imDuYoUGiac5ZYwqNYC4DZPoZlZLLP+sMk6qMtBy6BGGxwkvk
         BIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035154; x=1735639954;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DNv7vuo/nVPsOvSPfX1b8QlBVUPniiNuRCRjr7neK+w=;
        b=bV6h+QRkRRfoEagKZVVhkRqeTqmAizlrwNmoQihOMbYxFskL1EhAvZkPMcNSpYkGQF
         ssMUraWjr7efEAt1lpqRuhL6aTkhXP47kcSA5JcpmSCZexxMUcpG6YdQWP0x1L5e0kHk
         NZ9Fn1B7ovgLA60G0Wrh41nZZ/fmFGiwvmKMPBjgDfOUp1IygMFN0QWkVwD4om+i4Wb3
         97VKb5BvNbgi6wpxnJU2A8cfEbaaOR3b6PgTImz/rQGxcsLUFomNCgzk0yFxNawjNXLD
         QJj6E/pyrjFBSH1Q3ud6mpJg/QB4/MBVD1N00250GJtJ9sQoa0uGXgSCUFFhGMuXPLxk
         nDJA==
X-Forwarded-Encrypted: i=1; AJvYcCWIvi99JhYxAJZ+AiVpVL2gCQ3fz6TffYMWP6WZy5G3+k/qKXzzVQW/1WgIxx6Fl0hwy2hUcNnSQqgK@vger.kernel.org
X-Gm-Message-State: AOJu0YybDJCbUhuuZrLGxpWLEP5NAjaEBvNIuyxT48o1UC4R88zBmrWf
	p45sgqUi8mrJvXBwWnlHKBsPg+e4Pgwr0TfFQBVrhiLtavVtl82k9eiN8SzRkCiCXWpPamCw70K
	v
X-Gm-Gg: ASbGncsCPVJ2zEYzIwfIq0ZPPDEVNKh5A3NsmgNy9YjS8bPBLrXZIXBoyArmtf1iMpp
	/wzuqLILgOEzdXUIpBvVgtMdgbbCCewAjjxcmOBpuUqO5fjIRV9kpKZbp/6EJs+QNzSZtx3MGt2
	OeRkvTGvX9Vm5p4FEIGSxCZAenoeJBkFiAHbflrvSh0oCWrb9n9IlEGp2fLxbEax8H15BkeWhBy
	lusMDCGnASH2QkkmHsti6FEmpuCaIyGMX5VQwAafMDW1YFpDJN+IT3Jqp9aqQCt
X-Google-Smtp-Source: AGHT+IGqnFZxpigpQ9ODtiMrS6DALNNNczOXgsG0KCWv9iCI5/tAgbeiqKkqCBnMr84iq0mo6PD4rg==
X-Received: by 2002:a05:6512:1283:b0:540:3581:5047 with SMTP id 2adb3069b0e04-5422959cfdbmr4227024e87.48.1735035153783;
        Tue, 24 Dec 2024 02:12:33 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832073sm1574233e87.260.2024.12.24.02.12.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:12:32 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:12:13 +0200
Subject: [PATCH 1/4] dt-bindings: clock: qcom,mmcc: support LVDS PLL input
 for apq8064
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-apq8064-fix-mmcc-v1-1-c95d2e2bf143@linaro.org>
References: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
In-Reply-To: <20241224-apq8064-fix-mmcc-v1-0-c95d2e2bf143@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1416;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Qth8lmPCD2HZ8e7n0fcscU6OItm375v1ZHaNDTxe/k0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaokMnqkvhxjSffwsb2H2ODnrmOrLntpagqmz6
 DSMteYvVxmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qJDAAKCRCLPIo+Aiko
 1XOxB/4kwF9PgbpsVnjxy1HtELAqbnhuecamdGx7qGW052yeXgyQh/vocy6c2Qst83ESM0eeI4u
 bZF/BeIcfFkzleUyyrxuDioDAslxNyw2ETS1R6qDJWLsWdulkwiHmD0BVyXJCgZBypPjGJfBY0B
 ZPbsMnjThr3IZalaU/Xp2pO1Gy5qXMFazELw1oXN+qMV5zm/OnFmtb39oZHL3plfoApdC/gujlj
 e77pvtGMcvjjYg+HbkLDOZwQtsTEVo9304tTM25IHN/hnU9Q9HKRQ02SaT7/fgsjumBP3gv56UP
 Uja8v699FBjAkoq7Cj5yC6Wi3wb7xl4YokuCxkTiyM6v08SP
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

APQ8064 / MSM8960 have separate LVDS PLL driving the LVDS / LCDC clock.
Add corresponding input to clock controller bindings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,mmcc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index aa35a40648ba8a606c9d6286a1916e2cff339f1a..59ac288ca5f12de4f14fac3ce0d783d1ee1ebb4f 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -78,6 +78,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 8
           items:
             - description: Board PXO source
             - description: PLL 3 clock
@@ -87,8 +88,10 @@ allOf:
             - description: DSI phy instance 2 dsi clock
             - description: DSI phy instance 2 byte clock
             - description: HDMI phy PLL clock
+            - description: LVDS PLL clock
 
         clock-names:
+          minItems: 8
           items:
             - const: pxo
             - const: pll3
@@ -98,6 +101,7 @@ allOf:
             - const: dsi2pll
             - const: dsi2pllbyte
             - const: hdmipll
+            - const: lvdspll
 
   - if:
       properties:

-- 
2.39.5


