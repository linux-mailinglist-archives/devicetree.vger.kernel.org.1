Return-Path: <devicetree+bounces-141114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34866A1D753
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:51:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70ACB7A04B2
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289E91FFC62;
	Mon, 27 Jan 2025 13:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rCPKPR6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194E4202F65
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985706; cv=none; b=HEqX13yGG+615zBkS5/lZQpREmPeFsasep9gUFwoPaXgDTq/4/ZAIAvuuOvrTB3jeuHkrbYlIcVv5OhLYggIPhe2Sy+IchGPiEHl2pzeORRZwfWM3yJvOHmlR8ZXl3fmKnYLPmgtdAraLB4M8ZPVt3eQ7zayDOl4SPO0ZaLne6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985706; c=relaxed/simple;
	bh=FIuKkW1CzSLhLdhFLxXXMbgC7UA4/tekSoGDFuKEeog=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=beUL4UwjMK2dn5GSpE/p192sC2zDPQNAmr1YO6z00MGhiDIbVb9dOVXbR/M1qMLOFmM7BJeN5kCmU/UhBsRLpzAQbazt7X/8KrE3qbtHuYDM+1d3+Dry29VHw63O9CnGSDmE2zhVwSySe0t1slNwRuSCKlbeKOb2LQ6P3J/3E3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rCPKPR6I; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4363298fff2so2791435e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985701; x=1738590501; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=McytRK8bGbTfeyZruSunW0cr38Y4q03c8wd6GjVq/Uk=;
        b=rCPKPR6IowTKrGD7rFXeTQd457hOjRNmvmooI6SkT0VXuumBo2Y2VmiMzr5Vpv5ti4
         hI6SDx8tFON9/d1WQCjMVXr9mXxtkyG3NBbYDGj59jDOqURJmboGHilUsAJpo48fPHsZ
         W6F2vz+yg3LGqrkOs5fZ7u+1JvHUne52D+bVYLtPoL8E7NCHAlf/FGU0CY6HLxfsffLG
         vDlev1bI0lc899RlZ0xQVhxCj9nCdMDav7KKnt5XnkLfbJQW+QVG5OuZhkeyFDYd4uP8
         rwzkVWLSQDF42JbGOVxWFfwO1cvfv54y7BoBdP8HWZ2RRs53Ey9i6XuX+FUghmkrL+sS
         bLOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985701; x=1738590501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=McytRK8bGbTfeyZruSunW0cr38Y4q03c8wd6GjVq/Uk=;
        b=v5yyVj1yHS2D3WIeQ4Rro6K/eJ8WBmyiF4q9jhuFi55Gcl3vW2KucLkXIMYiFetVrG
         1Sjf86yzraNDWJFl8CUotTwnT3BDEeJUGpuxxG0Dblo4VATPQyFlBI+nE4PkoOZt1Nod
         sENUF5gigz0k9lrMJvgAgwdgHke+D7eiQ/hjp4g/gmBeTe4U6TjqazFT1Y4f9eJuMPez
         38qQDVPZb/bBK48XRp19AC0953kbTKd5M29XRjImVa6bbMmiKLaBwWS7COK3A6lK0oFO
         ZjA3//hpJf9QSMBpXF55IjIwv86rkM8HMepbjOiUnspjnqJN0dbDOuDIY/JZbtoM59x+
         SJ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2Tko+sX0/A8qI4dg2cp8YPc/hZae+OLDgTRa8Ibj4qa60/m/EyRNAlwwhGefvHyE5VSsGUs+ZNhwD@vger.kernel.org
X-Gm-Message-State: AOJu0YyOdJwjBKp2JmM6kjmrFkFANb6dzTejECdHAJX4RLpujK5K4QQs
	MqR6e0rn++B4Cm6Lli+7VaQ9uAYp+lCjNhHYmPEraj1QQqCye8RBLEdJ7WFlbew=
X-Gm-Gg: ASbGncu2R0mbM8CN1RuvF83B0h2q6KvARaDudP/flvJWo+MtE0PeM/St5yefa3kRdZW
	69sulza/jMGHAf7nNfxkj0Cf5paWY40kvqvjw4Q93/YfQx0zstZZlRLQJqtHndHJHD55wmNZKtL
	AY7rZjMoQ8EPyfj2Pnc/PdOLir7djh3OuPyDzaFTjNmMIGgKzBjYRy+bAd2Z12eYFaUEqjy9Huj
	P5YG/3HG9THp1zcG6OOiubABjj/GWpzNncIW/InS+aiL2r4FtEegK5DjuJ6iXkf0kPajTxQO/Gk
	8GFo3X0tHsuoBrkQBXI=
X-Google-Smtp-Source: AGHT+IFr/nfu8dn+mL0rBT6svo5ztHqGkSUKYgUQ4qRyj6fKtRgVrrmY1jIf/DPMzgSC8OtGvNVjbA==
X-Received: by 2002:a05:600c:3b8b:b0:434:941c:9df2 with SMTP id 5b1f17b1804b1-438b17d5c3fmr78857675e9.8.1737985699986;
        Mon, 27 Jan 2025 05:48:19 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:43 +0100
Subject: [PATCH 10/24] arm64: dts: qcom: qcm2290: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-10-9d8ddbcb1c7f@linaro.org>
References: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
In-Reply-To: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1784;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=FIuKkW1CzSLhLdhFLxXXMbgC7UA4/tekSoGDFuKEeog=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46HPzEiHrY/cCapjCm/rM3XUE7+Ud8Hu0aHQ
 WnMpFc88cWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOhwAKCRDBN2bmhouD
 16QBD/4j+hdbkDOxylfYJm2zYNdRbemqv79e91DPTAdvPHFdVg27bsNs0TmNOloaHpyyJPghd2f
 OzQ/bRY/zK9jnPML8dA3DVXLLp+HtK0ZRHFHMDoCvMBBE+W2vqhmNlzoOl42Md3JzHSannTsBJe
 lHWtAk8I3gvCLk1FS9VkYuNgNGrJ6b3kvr1JxQ065TaLkzXKDx1RWXea2gZhJbgWpR+wmLdQ8Pm
 Y4IR5/m2ghRNbJp64+K9bTxGtp66ImTuzwwFG2vBWrpR3+heSDVuZWNHNABR3HYzoBJ/rKnVjsi
 KYNkhx1zV6/ATv/u0g/r9kiNbvl6C4u+h9G3yctyPGMcEw7xesCbtirq0UFfydfNEhwuduOowuH
 3+ZI+nOjjA2ooUKVL4675nxjw2fz36yl+ftuVtppoOlCtwW2DY/nfK4pylcJ1Vt80oEQxMbYVo6
 lI6uX6y7bwmdub9MgVlAKK1W1y4WOjit2vQgBSpR5ru3gIofE5ZK67C28Qk2b6U9pE8hnC5O6X8
 axW2BXyWMH33nO0MTYzcbZz5X9ZR7/41wpIpS4t0D7LfDLK+jBld6Ap2UhOv2ihve9kTqLg+heR
 tJHCAhIpmwcon8b3WEB1FeX9lWqdFzKD1flSuPCus5A00xFJ+7xdWdp0JSqyxV3pEUC5PGRM5Pk
 /b5h6orkz0qMlzg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594d5ce5cc314c956eaca11556a9211..9000ae15a3994ea388fde9f4ca21977f58a2c60b 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -6,6 +6,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
 #include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
@@ -1702,8 +1703,8 @@ mdss_dsi0: dsi@5e94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd QCM2290_VDDCX>;
@@ -1785,8 +1786,8 @@ dispcc: clock-controller@5f00000 {
 				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>;
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 			clock-names = "bi_tcxo",
 				      "bi_tcxo_ao",
 				      "gcc_disp_gpll0_clk_src",

-- 
2.43.0


