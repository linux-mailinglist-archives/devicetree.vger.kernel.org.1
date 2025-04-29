Return-Path: <devicetree+bounces-171824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3041AA04E0
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:45:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77B1384276D
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 07:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4135F29B22D;
	Tue, 29 Apr 2025 07:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Js/QGX4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AE02951AD
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912595; cv=none; b=Dku1TAs+sLob3FQPWF1Pnc3CAUZo5fry+0d3Wa+L8qeopbxGHdI8VPulQ4iGRpB7IUW8onZPAqQVZRwUZp0lT8X8NWCzKJH2g3TJI68k7n+lEgNbeM5ZakvkJz3cKhZn6H8XttY69CiFbLvCGSPrATEVsK3Li95Tv3LNfKGfXFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912595; c=relaxed/simple;
	bh=2BF677c6tO2UD9l8anOQnMKyAs+rZguZaltM5HnXYbo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lbk3Jh+5lZVhrk0KX1Bv8LfMDpH/7yLqC//EVIycNJznrmJdodW3pjuzOZ0jZuxzH1cHBS1GTqY3mWp0UETwoeVmgcEYdGW+f+6x0yAI5GN9k9SmyAnPU30El48/4AUeQ7AQ0/PT5+F5ejWq6eZfdnGGXPz/NObjXxuGCbKGDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Js/QGX4O; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5f6222c6c4cso8844342a12.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745912592; x=1746517392; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kNYY5kOZUJL4wuBgLwy8jweZuYRgmMLFEUXFQaKesWE=;
        b=Js/QGX4OdaMzG84qA34iuAFGlc/efB5ngFBdDiRLm4SlwVYvUGCT15NxXxUExvhFAR
         3YC6c0fJJxxJ9T1eF42HvhTJ2D7koL/ywQ5NW2kxfqV/vgDrW/XzaGEJ9QwpvWk3U8NR
         1SZX6KKe09bmA6wVYI/qfn/H5i3aKToa8tZyUexEA9Tt4YWw7WCAnrR2xNH5FaqBptA+
         X7MlG4XYc4nq2IlKJ0k1YGjg1yJL0zAeAv1y21qkDlrEMrq6313uq0JEhA1QOni++VtY
         0/kcPfibosmJheqWfPvdBF5Yf2uEDZfyWpBxSNJoAFIN3WNPttW09mv8HC1JIYc0oOMD
         gBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745912592; x=1746517392;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kNYY5kOZUJL4wuBgLwy8jweZuYRgmMLFEUXFQaKesWE=;
        b=udkyz/e9msXzQfWpgjLpRBbXSDxyrCJ+w1K/ZcBfr85dSp+16+RaRBPQw+8hF812jS
         a/eyU/WQ0e49UBPyrLXB0v6zg6ornfqj/W7Ai+lq4bBHpbCn0HYbxxGEvzescQ1S7e7h
         xBPr/Os7v3PEy7YtyfhJqxnnn2OqlU/hzYMcGhj+QLvGt0OhmrdtyyrneU5sFvwduN8l
         rR9t1imnFMtOovNasq/idkTBw+epljUmvaKUGV65/Q707znE6dwizv6oP0LZ5t8m36k2
         Wa+2z5fsXCY7OC14kICH5aRs8F+Y89kgXezoBhQ0/ncCnyEl5v2nsSvAwt0ZkX9Dsnh6
         qR7A==
X-Forwarded-Encrypted: i=1; AJvYcCVs3omvfSENEOb+xKjfruSfKkLo/tA4IJ06ci6aEhJRa87BmK3AQOuaPfc8uiMb6qDWZi7C/3KFlqAO@vger.kernel.org
X-Gm-Message-State: AOJu0YxxkbuvdSYs/PWOVuUoHJVg/8CA5GkgrFWjt4eI0F+cMaao8qnj
	SIKAJJBDuJ6PZNOMt8w1jhfYIDcTp8fMBBGulH93spl7AmcVykyldOojjplwz2w=
X-Gm-Gg: ASbGnctmQpyDy6dGQxTWNSV4qnEGYj83F3NQA0D5EhIuUib86vsTqsIYeoRs+facsXw
	kd/Hue3gnjZiJ1EBiUiTgHrYDH1IfoF99LvttXr5mcUQGRMAdKOh2WL6L2sY6rRCaRa3admi7k9
	RnWXMk6BQHKc6FaEWp0ml/QuFJAcE9rZZH+/ehWvzK4PjhBCOkUDqgXhlXUiZR7fug5HqsAYt+K
	Q2S8sz6rVx97EMtJGgHnSWZ/PEHS4k8vVu6qv7zXJRiEVFcONpI6hVNJfoYl3qC4moCxZkKnWo9
	KHVn8NImdNUQYpApeBnlJWx4QT4D5Hp3/4xTh8g=
X-Google-Smtp-Source: AGHT+IFrMrgLeh+9bjL3sU9fZCl4Cmj0USPv07C9XFmv1pDOIZO3kUr+G3+sN71kOeH6NxvXktDboA==
X-Received: by 2002:a05:6402:51d2:b0:5f6:ace4:9fa6 with SMTP id 4fb4d7f45d1cf-5f83885f278mr2391336a12.16.1745912591871;
        Tue, 29 Apr 2025 00:43:11 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm7048114a12.22.2025.04.29.00.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 00:43:11 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 29 Apr 2025 10:42:34 +0300
Subject: [PATCH 6/7] arm64: dts: qcom: x1e80100: Drop useless DP3
 compatible override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-6-058847814d70@linaro.org>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
In-Reply-To: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1317; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=2BF677c6tO2UD9l8anOQnMKyAs+rZguZaltM5HnXYbo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoEIL/T4gIjuECJrChPEg9rYEt5lXJpdbRrgjSC
 yITlyKbZmaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaBCC/wAKCRAbX0TJAJUV
 VloDD/45wqOtTUsroZplNunv5UTFGPuCOJz9r9VtZmhmkQoP06BbOQVUzBG68PIBdu2tllfEiL9
 Z1eZJUb52NQn8ScZDhmHYQzQ5qaEk1K8HBuMVCxluIcEICzVsPre8Q78TvQrCMQbYBlMUp53EZM
 TLCJQ/jXpvKlUe6q/Z4+UnQDoe7wlva6yKS9RKmq0J2iXck/XCPX48WMnbvOkSDXS78ByfGtXCt
 Y8CDkmp8+kcYV0RPmSXY5JDGQ82e7MODyIzI4AF5IJBfcnS7oJX0JVd/uT6htZ9tzGBkyFvTlzu
 Tzd1QXrByzZF6jyV8uSSuemDeMX6tvTwyx9rNPVsGdSIH6AUSLcmhwB+Ucj+XkN947FZtatr48P
 zjQh3pSn4FvxMtz4Sevxu+xC3Jn+RMaqbQzLD3MrF128oH8Rc5PjfTuDftNs0qKGzMGbrhM5uae
 8cky0XYDxIAGpb5g//9Pm5H56XA0xXcdFmbEPM/FkAR3wyHAioyFtxRT0eKoPwGF4vKCxnJ77sm
 afMxXvhB2DYSWczJEJbTquCBxqiABETMCYIccQ6QGGXU2a9m//NHHCauky5bhlOy5WxFWribuxb
 lSe99BBiFj2XSLZApB74dLCpuNzYUxnC/3Au2uTRGwrLT/KUTOwac4kECgoDGz9B1PwrXC+dlmU
 l2Cy0JfYEi0pYqg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when display support was added initially to CRD, and we used to have
two separate compatibles for eDP and DP, it was supposed to override the
DP compatible with the eDP one in the board specific devicetree. Since
then, the DP driver has been reworked to figure out the eDP/DP at runtime
while only DP compatible remained in the end.

This override was copied over from CRD which was the first X Elite
platform upstream to have display support.

Even though the override does nothing basically, drop it to avoid
further confusion.

Fixes: 45247fe17db2 ("arm64: dts: qcom: x1e80100: add Lenovo Thinkpad Yoga slim 7x devicetree")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 445d97d67d325853b7dcd2060523e7469ed4e6ea..e9eaf0d2b28bd4f83a8baa89197bc5b6b90d4ec9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -615,7 +615,6 @@ &mdss {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";

-- 
2.34.1


