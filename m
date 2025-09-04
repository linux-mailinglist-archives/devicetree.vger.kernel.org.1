Return-Path: <devicetree+bounces-212559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F1320B4333D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:03:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E3FB21C26621
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D389A288C2B;
	Thu,  4 Sep 2025 06:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gUAcJJ3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F166E2882CF
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 06:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756968987; cv=none; b=azYtJn/FHocr+yx57VcFWYUxWP9jfCzY+Z52uk56enPkGl/O6NZ/Dd9YzEv0ijOyyNFQKfBNjDOVKwzqG/KUCA4YJlkzWQmcNH1burszrCufjeBnsh+7IaAwfTFCUOSrjqxu1aaNUUoz9JbeXjHDIYp9/vi+PtN1N81FQWG5KAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756968987; c=relaxed/simple;
	bh=jfzN/ldSxbD//tqugQGgHnEZ1hcjELAxuOulbu9UKOg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R1g+NdEUr8nloZWoemk/KPyCYXPvQsqe4l6VIgRexSCMPUGs/dni0SDIS6E2ytPJmk0n7i/oIBc1NmhK9EzN0DFiVbdQJmA7nVuUzs78TIRrsRX6uQDG9tiCspYHCTMvDhnb8tcdKI8qZ5OQ0jT3g1hLy/BFTgnMPGvv5qHrJ7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gUAcJJ3k; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45b7d485173so4776265e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 23:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968984; x=1757573784; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/G87kyp/pfaxxUGK2NUKqpezATDG2ia4UyLkERw3KmM=;
        b=gUAcJJ3kiEmYaduxK6nyhqW/ve5Ohxmug11TpqsRaXn1OFjtQDT0ZumEfRYYWVaqdq
         vv3BQ3tldiLNekXChC4vzwKkRS9Ij7SVtjvC/8L7TMS2rpuF46LafBq1MODTvmfGqqnV
         1+7rg2lf29BuDBqfkoATK9RJQBPFFmcXWCPwrmKxmbhKaYbeJCH8WQhCL2Jo8n7rArPw
         RLu0vCQUZstkCYzJ1YGloeR5WxsUkbNATAC5B31Gu/NfjL1sIkE1z/y+U5fB7qvoCs6C
         tHyRiwlZ2luKEbA4adaqK4z66onXwh9t4grw+67GdPIQEDqz7veWyFEZv9azJk24YOpC
         Jd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968984; x=1757573784;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/G87kyp/pfaxxUGK2NUKqpezATDG2ia4UyLkERw3KmM=;
        b=Q/omLX3WlHteooIeo4TQz+8cwzb/ZHcdFQYQR1N5oEEivd1IRXGQd7LAuql61+t/Z9
         WKkyvsNph1a3LAmw5o1amWeWLLUbEKj5GQmWEHhchFw9Pmc8zaIhq47vihIft0G5fYmz
         bBOZ+ElMQtx4FmLmuUgV2C5i2SEgLA3/nG15bNN5c28A15oAwwSM8BHGwlKlaj0JC5Cq
         yHZDR+vOf1yBFs766CQ63uNSkZH5gCJ5CybAzfYw+MCVmrVXGRoakv0aOfBZNmD/RfeP
         L3QbpmMuy8x9pkEMw5lE0COjeFmSvwmJm52h/uy6aCUNFWpk/Is3b7d4KjYHxHpsgNoF
         BVAA==
X-Forwarded-Encrypted: i=1; AJvYcCUlqp30AfFY2ychJCqF7X6zgqYJojv30Y8grgUmqg3CgHwVe2F7x9q5/9PXFpgb/RG+395zesJ1ucSc@vger.kernel.org
X-Gm-Message-State: AOJu0YzE9spb9mFNrrzmq9gt2UxAdc9GFoth2cbKKmFoRmGzhDaQQRga
	vTZJjVkLQEI2OWQjra5yqjGs9lU34O1MlFm9RvgXw8hhQkClyg6YLvJOvquo+Hy0jIA=
X-Gm-Gg: ASbGncv00/j2ii3LpfVqAoVmUKDclQaq4SoLwM0Jm8KYbn+CioZSlGrmid3qtdsymo8
	qVBXc1aF0BAN4+2/tnBwUZdQKTBOHDldb5kjAtzXkKoVDYY7fQUZY4WhZzbHclFzEcX8tVOzVSF
	dlweUa4IKuoMWVxEgKtQGP5+JL+/a0yGWShPkMSmc7T7LCATpZoVgcB839Mc6+pZHKdWoIyvoTU
	OUiS9e5i2pQTj77yApPtViUkhIiboV5SzsE2fbYbAMaiNXSltsrjAh3ZYk/qGRKLI8XUKhIFMeF
	r7lfplGvvYVKDEZhxImNXEsiDifr3JF4Tm7jyQwAX4F2Ovi3mGYYeVK+rYloMTWOyzvt5z9ErXn
	H91UbYFewKzbSKgw5Uh5uAqU=
X-Google-Smtp-Source: AGHT+IGLpTHusCG88E6aPMx5XgydXW/TqsLoxaZrUvpMn95f0fLXzfbFIT7BrF9m0X4BdLAf7NE9/Q==
X-Received: by 2002:a05:600c:3546:b0:459:dc99:51bf with SMTP id 5b1f17b1804b1-45b8557b680mr134917665e9.25.1756968984254;
        Wed, 03 Sep 2025 23:56:24 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:23 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Sep 2025 09:55:52 +0300
Subject: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2613; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jfzN/ldSxbD//tqugQGgHnEZ1hcjELAxuOulbu9UKOg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgOvDY/6mTpV6oXDGupvZt038nd7Su5EthEU
 afAzIQ6deGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4DgAKCRAbX0TJAJUV
 VqBkD/wJINCKAk++NiefvogMxEuq8c5BErQWHuAff0xOb2ncynGXwTa7lJlzFleG8HALLvmvQrY
 4EpsYSanHdOCAwqXFr2/tMw9gieUmFs6MfwqmLq0wKfb4uuGZN4175Nw1E0LatK4QjQ8UpSWU3P
 fO+z9H1z0bxMY+hahGQyF7Y4GQAEloAuopJ6Vx0p7UoKfY84lO8YnDmnZGkQUjlbWthg/PvT4EX
 bhrl/9opLDWgzxvIbvXFT/SYBXrMXVmYSxK9z2ZHNP58/8dZW7uKgyBfO49EXw06XHfHHwvsYI/
 BPSOD/qz+lpY8LH0YuCUNQylLFE5iNO/Kky7Uq8k0biBZaQU3eFUelZ2oKUDtguiqJPuXsxn/C1
 /bjA1dYaCldR65ukku9ynO4WpCIymYg6iyFPgNmqIcfbbgBx1pyo4hob9hRBUspJ6OtKCeNjIcW
 Bxi/qe3ExDH+lo7a43ygLaYWWr/jg39TtpmJk2fjsaKQTeiT6XX8tGkCLKqz3P+KrHNxkyL2YEL
 2sEZUJyAHe214CggoG7ZF2+MumhU16kVYDeHI5z86Jzzol7yv9Tpashb0s2KlgquCHE1cfQjsIq
 3nBGQ51BNSZlQ6WWjcS0ov54OcwMtKfcfV2q0XbbHY6jwZQcvKxWhVVMlSLO92FEY15B6XJpjRb
 wcU2c9MXLVpVJiw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the missing v8 register offsets needed by the eDP/DP PHY driver.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
index d3b2292257bc521cb66562a5b6bfae8dc8c92cc1..7143925fbeecd9586d27ffef98ed3e8a232f39e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h
@@ -33,6 +33,7 @@
 #define QSERDES_V8_COM_CP_CTRL_MODE0			0x070
 #define QSERDES_V8_COM_PLL_RCTRL_MODE0			0x074
 #define QSERDES_V8_COM_PLL_CCTRL_MODE0			0x078
+#define QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
 #define QSERDES_V8_COM_LOCK_CMP1_MODE0			0x080
 #define QSERDES_V8_COM_LOCK_CMP2_MODE0			0x084
 #define QSERDES_V8_COM_DEC_START_MODE0			0x088
@@ -40,25 +41,36 @@
 #define QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
 #define QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
 #define QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
 #define QSERDES_V8_COM_VCO_TUNE1_MODE0			0x0a8
+#define QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
 #define QSERDES_V8_COM_VCO_TUNE2_MODE0			0x0ac
 #define QSERDES_V8_COM_BG_TIMER				0x0bc
 #define QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
 #define QSERDES_V8_COM_SSC_PER1				0x0cc
 #define QSERDES_V8_COM_SSC_PER2				0x0d0
 #define QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
 #define QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define QSERDES_V8_COM_PLL_IVCO				0x0f4
 #define QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
 #define QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define QSERDES_V8_COM_LOCK_CMP_EN			0x120
 #define QSERDES_V8_COM_LOCK_CMP_CFG			0x124
+#define QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
 #define QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V8_COM_CLK_SELECT			0x164
 #define QSERDES_V8_COM_CORE_CLK_EN			0x170
 #define QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V8_COM_SVS_MODE_CLK_SEL			0x180
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_1		0x1a4
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_2		0x1a8
 #define QSERDES_V8_COM_AUTO_GAIN_ADJ_CTRL_3		0x1ac
 #define QSERDES_V8_COM_ADDITIONAL_MISC			0x1b4
 #define QSERDES_V8_COM_CMN_STATUS			0x2c8
 #define QSERDES_V8_COM_C_READY_STATUS			0x2f0
+#define QSERDES_V8_COM_CLK_FWD_CONFIG_1			0x2f4
 
 #endif

-- 
2.45.2


