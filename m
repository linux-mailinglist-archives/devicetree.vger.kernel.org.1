Return-Path: <devicetree+bounces-26537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8252F816D76
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F356283FB0
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9DED4D5BC;
	Mon, 18 Dec 2023 12:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vOVWuzTr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76EE4D5B7
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1d3cfb1568eso1334075ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 04:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901275; x=1703506075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=vOVWuzTritXUOfvOKyVa2zJh4vZhwx4VilwZ+e1up7KVE5kcYKHbQ0Qlowh+iEjCEw
         jIkrjDi6cWHkYwttClEsLhuJEuXGQV//yVJaHfVui4V5fMcA2BsXA2jX1KDlUHKnvISh
         hI/zP3n1Y22wn5Gk7dwL7CtYXNEz20dYsEmNK5iwhK6DDfR2u7j0gEhY9dw7d7Teic3t
         YCJQ8XUTlwQZR06FNODVcWvdLpBCRBLvDXBypgAFVgx19lfeKG4awYLEzKEUJgfGIXAj
         WZBiGjxMjhd8mTwZBwx/vjs7VyhP6Ts+xe6LbluwX+JG+GxhbKg+YH7yqsNglAcucHld
         uhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901275; x=1703506075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=QFwR8OBx5zvM37T6TAelP999sLVRnAHmDym18GTJESDxIgaiQLZj468Scdnqj1ADQb
         ynp0IcaFO5iul/xWo+IdqhwuPJelMb+7lRmYmAHk1ndKVoFtEJT5iOheYo9+GizvUqJS
         uNX/oeLS76+zIa4nSdwhC6e0Z74WDgoMmwkyCxTgtcSQ4ODzpFd3FmcCHtnBS5IFvcdl
         Q993JsC9kHwIDadzX41l/7dTZbAZ+xLT5JBG/zIu3hRmfTLaH9vl0J8I6EBmbYdcszsh
         xKWAqLb1GN6OeIHCQ5AmIBl4znUVTn6aWm+o8OuomcuWeEbkc63MVCZ2jVpI9ej1bAqk
         bkcA==
X-Gm-Message-State: AOJu0YwGiEBeXlsuDwE7ZybfhJREPygUDTbsMAngaeyFLJtv9u2kI2Lr
	rOg4/tsuUvyX67/zahaqDzV/
X-Google-Smtp-Source: AGHT+IGpYOV/SJS+GqznnUdK0MyAkEm3zZZSxOs9irbVbbQ1gkqu08h5/o5UYUypquxsVeUHv6aoQg==
X-Received: by 2002:a17:902:d54c:b0:1d3:3952:8885 with SMTP id z12-20020a170902d54c00b001d339528885mr13518743plf.11.1702901275224;
        Mon, 18 Dec 2023 04:07:55 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:07:54 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 05/16] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:01 +0530
Message-Id: <20231218120712.16438-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QMP PHY used in MSM8996 requires 2 clocks:

* ref - 19.2MHz reference clock from RPM
* qref - QREF clock from GCC

Fixes: 27520210e881 ("arm64: dts: qcom: msm8996: Use generic QMP driver for UFS")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 6ba9da9e6a8b..b235f1d651aa 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2105,8 +2105,8 @@ ufsphy: phy@627000 {
 			#size-cells = <1>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
-			clock-names = "ref";
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>, <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref", "qref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


