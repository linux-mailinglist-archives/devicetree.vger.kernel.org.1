Return-Path: <devicetree+bounces-148821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53767A3D815
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F8AF19C05A1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 549F91F4E4B;
	Thu, 20 Feb 2025 11:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ses+K2r4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E151F4E30
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050115; cv=none; b=bpVft0r4pAxu5qFVyHuApgV7+hdKAhvu9e0pYnZb+xPS+aZd7ww0VxzEuyhlhQygaMlbQcDGW2YkxiEqFW8zQioLiAIkCfivYS4XvbZkEVthLVHkgPOH6z9osVu7T0t7FqxOze4t27bm6tC2eKzloREDyeGVkKzyuZwrWbuoVnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050115; c=relaxed/simple;
	bh=d0CtcQf8Wv3lL9BY8WXV1YwbKLOoSAl/tzsPQ0leEnU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n1uQCC3Le/p71ZPQXwSgdp3cxJ8eM8mQRX5gjYY6ocr/jeZ+ntK3zTo+b4UJa8SG76pAwfXwjvE+/eZ/eVBaVC41s7/4DxRPOELbqvyCC/4JTwYrll0Y+N0h2cLQz1QdHaqC61HlqzxETMCERapGxDmlk4F42OgatfCF6FHhAII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ses+K2r4; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3072f8dc069so7823471fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050111; x=1740654911; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9X5DqzSWRf6FCwakTqnI1Z6ip+HiUbF/QIcptAcLPLE=;
        b=ses+K2r4X5O9AW4iM/3roKTgO7COuXU0TMUwAWq8MiZQ0jDZ6MIxvZ0Tz1sIobIEs0
         1Lw18dtr7pn3nA1JCMmMIPEZ4XvQFtcOa1yW/05isEDzuVcr6C/B5U8lFXuSryZNSfVl
         Ib+t5ORz6LHu+wP830jR+y/PlMa/PQtBBOUdrRvrA2VCAYYCNXOVp1g3XIlp5PKkTino
         eY8KLX61MGny4kRDcok0xFR1Lk5ZoFF51u0ck6WHl61kPwdMEgJ04fejpLqPgyp+1xQs
         B2dz7lQntYT+IuLy0xm2E3Q0jueyBlTZ9Nmgzr5EKWn/04s16VODAaoYJ/8gLpQBOfVq
         D6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050111; x=1740654911;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9X5DqzSWRf6FCwakTqnI1Z6ip+HiUbF/QIcptAcLPLE=;
        b=pGIFLNWnTitCVZ1UBNsarAzzhJNePOalFSi7I5xZg5Sn+ncxIJJXZPrpPC0vt1Mxcb
         8o4/nFMM4haXTVHIIdgIu/mXiCXyPWW+7/nEtje2UWco5+VOCgTvnjQ0XxFBteuQ/GGv
         v+ChWjoC6PrtywoJPZadlCeXS/jyqe9qgBcS+vDnfjUSOru3bPGivjL8HPzyYQJ7zMSN
         yJ1rAZKtmpv71eWygvJfH7Hax7xNcCbfuh99CK4EA+2ZiqXQhSpwFe2y/t0KD/OjyQjL
         odUWMhmV3+RcYtUT6IJTBj/Jdxcy44LDeSBslPv9+dYVd6X/75LKGgn2hfr+XRfEjX9V
         w9AA==
X-Forwarded-Encrypted: i=1; AJvYcCU8RgGw7xXT1RyjRpoHCbm7MaheP+VD3UfU2XDDLxzF1pSFY7K2yPSRCwplfWgW9aM+ZvmL1RbWOp73@vger.kernel.org
X-Gm-Message-State: AOJu0YwtUYTKxuFDKkC713sGrzF1+tZ2BUtT+NHTn2gYt/8R8znAqsFC
	g/537B+zahHd0mImwG0FebF8JnC4NJk95dNJcS1ohQyNeYVU92CV9pqMdIet2x8=
X-Gm-Gg: ASbGncsH9AJwPuLEg+luRjDPGdaqSCd0GxtCQHrnFw5jYFL8Uwf5fgdrO7dZqakGtG9
	y7ud90lc7x1LMTDwPq0NUvIFnPxbSBdHJ33XSi8y0W4GvwCthCp6/KT5G5Wtzz2iaFqGjlZq4O+
	T6uSp257hs9iNytM4O7i3dl6/ImsT3EK3HlZoazK9CI89ZatYuJEuV1Bg65cqwRiOlrvR6iruXu
	mH5pMKjXkBHQNBoaAg+OxnyQx9+PVDpIjVQmN/mhFRTd3gwatyWNMO43eWhP3eIZx4lKXKkbGhQ
	kirFUIRyangwa43r7SkBi0o=
X-Google-Smtp-Source: AGHT+IEBrH7t5T3Pj2WB/YKjyu6Tt9mfV/BJf6mygTdxQLlHJOo6nI55pj3svLEpB1+vdLAfNkGcnQ==
X-Received: by 2002:a05:6512:68c:b0:543:e406:6363 with SMTP id 2adb3069b0e04-5462eedb651mr3405483e87.3.1740050111516;
        Thu, 20 Feb 2025 03:15:11 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:15:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 20 Feb 2025 13:14:49 +0200
Subject: [PATCH v2 7/7] arm: dts: qcom: apq8064: link LVDS clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-fd-mdp4-lvds-v2-7-15afe5578a31@linaro.org>
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=d0CtcQf8Wv3lL9BY8WXV1YwbKLOoSAl/tzsPQ0leEnU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6sydCzdr3lq263K0JOQk4Qc0tnyxdU2wME+
 N15Skc4LBWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOrAAKCRCLPIo+Aiko
 1a22B/4pss99hBOLDX1XScPaKx+olriF4M0K8pHizkh00Z3WXSnIrKWJXBFmoeXMv3qVLJGrM0t
 XYV/MGe18IURcZhSkygCpi9HvJpgzK1QVEW74QVH9x9GSMrWQba0SLDX1XLzOdGYooiBB5mUI8E
 EuXd973XQNSA8aWj4ilqqFrzPvd+O7wYJPNC8s8WnG7Zt3Gz8FuIW5NzveuDEk4+d2delGqk9PY
 Nuxg8zf+Nxh9tMnz6to4uG9vp3dw8eB62vBCBvfcsgEzqok9at27cUaEEKlbBieluMZ6W4HKacr
 IO+VeB/mBl7Pa5mhesh4KgO9VbWqQ5+a9Jc65SqVnFSdjklR
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Link LVDS clocks to the from MDP4 to the MMCC and back from the MMCC
to the MDP4 display controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 5f1a6b4b764492486df1a2610979f56c0a37b64a..b884900716464b6291869ff50825762a55099982 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -737,7 +737,8 @@ mmcc: clock-controller@4000000 {
 				 <&dsi0_phy 0>,
 				 <&dsi1_phy 1>,
 				 <&dsi1_phy 0>,
-				 <&hdmi_phy>;
+				 <&hdmi_phy>,
+				 <&mdp>;
 			clock-names = "pxo",
 				      "pll3",
 				      "pll8_vote",
@@ -745,7 +746,8 @@ mmcc: clock-controller@4000000 {
 				      "dsi1pllbyte",
 				      "dsi2pll",
 				      "dsi2pllbyte",
-				      "hdmipll";
+				      "hdmipll",
+				      "lvdspll";
 		};
 
 		l2cc: clock-controller@2011000 {
@@ -1404,13 +1406,19 @@ mdp: display-controller@5100000 {
 				 <&mmcc MDP_AXI_CLK>,
 				 <&mmcc MDP_LUT_CLK>,
 				 <&mmcc HDMI_TV_CLK>,
-				 <&mmcc MDP_TV_CLK>;
+				 <&mmcc MDP_TV_CLK>,
+				 <&mmcc LVDS_CLK>,
+				 <&rpmcc RPM_PXO_CLK>;
 			clock-names = "core_clk",
 				      "iface_clk",
 				      "bus_clk",
 				      "lut_clk",
 				      "hdmi_clk",
-				      "tv_clk";
+				      "tv_clk",
+				      "lcdc_clk",
+				      "pxo";
+
+			#clock-cells = <0>;
 
 			iommus = <&mdp_port0 0
 				  &mdp_port0 2

-- 
2.39.5


