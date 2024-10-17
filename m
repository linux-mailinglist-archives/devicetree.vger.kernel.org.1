Return-Path: <devicetree+bounces-112569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B629A2C0A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 20:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17BC5B28444
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666311E0DBE;
	Thu, 17 Oct 2024 18:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bLaqBY24"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0031E048A
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 18:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729188855; cv=none; b=pxnpQLeUdSaqVbNoHVmEUK2bUkRLU/RQUmDgwaUleUTZlOhpGQD6med184+deMZWXK/Ee8K8nVka7MyP6QMg+ha4rZ2yFDO5Nf4gXbx3wWvfuPc1GddtebHe2GpO43JY03Hc9HX0xQLrCzYXig18xVvvMrE+8LygqmteU+iwPlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729188855; c=relaxed/simple;
	bh=Lgjp5XVgoGmDiK8kT6aQvjeU/v0P5XtPbWZlzVPG8zM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=T1qGsUPpKox98jtiT1sbrmyYs9jmFYtqcZ6C+2tF3P1763jfYckVoILzB/fehBjdm8wI4Guz81HczwGQ6ZcJN2pbj4oHJjaspVigoUmW6YS2PTsKglvBmzix9E9VW01K5Y90iYaHgf9TN9mDiPM+QtaVQQS4m36PFibIorKusA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bLaqBY24; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb5a9c7420so13333471fa.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729188848; x=1729793648; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rdNFD2cphGzL2BomZa1IYH9iZ0GkCDn9MRpnCMuLN6s=;
        b=bLaqBY240zKYy9ylMQ8r1wtoBy9KFRSEc16MPCYYRWr038gZ6n3/xbyosYRKRlSgi1
         9na5xiNCTn8hJvUfscIx03iv90dpJix/PMFJ52Yjk31288tRZTRFmFHqby/Lo1sELxnA
         zlSHw/oETvzltOUfzIZHB9AZVsQJQAaPFbuy9x6lqAheC62lC/RsReGrF23Rr04ivuBJ
         PGUcTXZ9PIDpFXgGFJtQuK1O89DR7tgdQ/g2qKAwism0bsmm7Qsk9dYeBEdKRDyu9OO3
         rWw6t3zbfc4HmLz1/1rgFCfRNYSgd4IvUIrQD+8guyuZSUNXrKa7WtGfsMHAlcCI2wol
         SMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729188848; x=1729793648;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdNFD2cphGzL2BomZa1IYH9iZ0GkCDn9MRpnCMuLN6s=;
        b=ECJmvhzB5yA1G5tTXpOo2Tw49m5Fl4G6isPOGOTNkfR/M+G2n+beaicUsjxgy/ImBJ
         t0glmL15FslcUVjSl5FyypPNDjEdAZga/ZRjPXZ3o9yeIFgGwAWT6j2xI+h+T7zZsA+f
         JbKtugJSEz1ycp813ELNefq+1Ft/byuDtOnaqdShX1GYHF/UrpQbLjM8T7foJdYGq4ZX
         jsSPcG34s52VdAPQ2dszkSwHjuacf48kzw1vckq6yhW2FnE+SkkzQMVb6+DrUdPOdBCu
         HAEGSlQAsL3WRjIpvgvspCUiril9ZM8n8Ol78nOe/yuFNbvtctuS7t7J5DMkZST2GGud
         PyNw==
X-Forwarded-Encrypted: i=1; AJvYcCUUOv7nLbJvLmxey9299oe3tLQ8tE4n/3oOA0q9Y2ao6bQrvrBFs1sz1m3jJO+UlIF8Qsjsd/Uprdqi@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj9zEXNgpU0m/6oj9oivOOizXW+0gTc4cKlXcjs7gBvZ0WhBrx
	++QU43fR7J6VhWToE/bRva9OOz01wzq8KQ5MxrJh5VsUqeZ9TmaviU0HD0HD4Ts=
X-Google-Smtp-Source: AGHT+IGYlENtSdHVIknFWn3bTCeEZD1pDwTA8bOtxifsLfCGtoTomI2bqJvmi1dBUbkAoMM0KWAUnA==
X-Received: by 2002:a05:6512:3d23:b0:536:a6c6:33f with SMTP id 2adb3069b0e04-539e54e82f9mr11694378e87.13.1729188848182;
        Thu, 17 Oct 2024 11:14:08 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00013a8bsm831733e87.258.2024.10.17.11.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 11:14:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:14:03 +0300
Subject: [PATCH] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb: Add
 SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-spmi-v1-1-43ac741ee071@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOpTEWcC/x3MMQqAMAxA0auUzAbaqCheRRyKTTWDWhoQQXp3i
 +Mb/n9BOQsrTOaFzLeoXGeFawysuz83RgnVQJY6Z92A6jO51ibUdAgGomGMfbQhtlCblDnK8//
 mpZQPhjamJV8AAAA=
X-Change-ID: 20241017-sar2130p-spmi-d2278f5f0df3
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1224;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Lgjp5XVgoGmDiK8kT6aQvjeU/v0P5XtPbWZlzVPG8zM=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEVPs/kGw4xf876K46k103X3WCo5k3dW2/gjGc
 T1twNvwIUqJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFT7AAKCRAU23LtvoBl
 uL83D/9BEgpzq3RGhDVMJ234o8gk1mfK593gaybjFkNHpNa2ypUpImgWY0NxtXySQfk26VVZS/O
 lhKvuxJ4UiAXBnyXP1u/Y/76gfTq4jXt4yVMNLBrGbe/LNBLkBvLXBuyNdTlYMcLvPXA4JYBpTv
 pxvwZrIXVdlOlHQpz6bcn7o7q4CvhT17CILoeeHu2ia1RLWpgXINQFnwcLU7XLqO37fnyt9JtWU
 RzXzECtBITz57S/PjB1VgswOHluaMciywdaoau9x6fM0vWOxZ7Us2t4GlmyRyMXLJHqbVwJacCE
 oLbnMvS5MJraKnj0yRTksa8kw+Chnq8dh/OJV23o9Fpdqx4n1FnXjYTEm+C4pwd7mdr35FHtUqN
 NpMojiMotcWJ0Nw84kxxmoR+q5BlvALDOZF4dNGIZO1QqSLraA9l0n7tYzz7OKgF4Aj3LnH3R6X
 XP3ltuUoAgCZ6Iw4m/VbnhY35RPRCxw6F9axxlGkFGsiEnxcHCXCe4X5qUgudB1QOuwkmitAr02
 0u3uttF+Jo2uY4CiPhKH49tiMMjrkANw1PNk8zpLIzFh9MXVQgUU5Bq3OsymYAc9FDcvcov//ae
 i0W5k8zo0SxdaRGVAoZi7EuKc929GiqNALw95hPUvxXRluHWuqCddyFAoiHc7Z+G4Zh51MmmvKf
 fSTftX5n0l74Asg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

SAR2130P has SPMI v7 arbiter. Although it has only a single bus
configuration, use the new bindings for v7 platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml       | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
index a28b70fb330a3a9831a24c0c5f5ab3251c184df2..7c3cc20a80d6cf8fe7c4614032cc4df6d8b54973 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
@@ -19,7 +19,11 @@ description: |
 
 properties:
   compatible:
-    const: qcom,x1e80100-spmi-pmic-arb
+    oneOf:
+      - items:
+          - const: qcom,sar2130p-spmi-pmic-arb
+          - const: qcom,x1e80100-spmi-pmic-arb
+      - const: qcom,x1e80100-spmi-pmic-arb
 
   reg:
     items:

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-spmi-d2278f5f0df3

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


