Return-Path: <devicetree+bounces-8133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA037C6C57
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:31:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 175A4282A3F
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E325249F1;
	Thu, 12 Oct 2023 11:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bpG3HF7w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0591E24202
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:31:10 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AAAAA9
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:07 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32d885e97e2so832558f8f.0
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697110265; x=1697715065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82Kqf0UBYM8c+UzHOY9T7/SD0aaAr6GxwSoS4++hAHg=;
        b=bpG3HF7wO2yeeA3xaVNNGjILmaeujbC4hpkjd/YPdboa4RnIF4zaMqDxb5nnZU0EKn
         BskR6tqCCizR2MWaPo6WUcohFLA3pPpdn8vxIvSDsiyiDn50iuZRyE9xMxSWPiEuGjVU
         /RMsK6geCnOGCE4z2jTENthhXtVirDCf28lx+HvwcZHBp67ylZMsprnQHTvatClOjiPC
         gCUqBooxX7XpJTfO0gj7T0CMFuHCYPgm3rqm2T6AI9yBr2PhiedB3PBD+gJcvlVzfWDL
         sJIkgtkzRDANvSupkxxo5egPQdv/Y+86ZZ1/06FUYcrdgKrIKKecciyMwADiiXJx0Vfj
         yeBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697110265; x=1697715065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82Kqf0UBYM8c+UzHOY9T7/SD0aaAr6GxwSoS4++hAHg=;
        b=JIhH16WWhL+oQ1mtLnSZy/yZDoXCZqxbwp7USnDIc/CKdM2RZBDjvfWnBet4gLyvC/
         DoJD/YWG4FsL+sOLlE/Wber65z2gjMLbcZEJDUwgfrK1XvckkXHPtIh4tkv3SQxa0INy
         w/fL2YIWbH7S7ps7z694ai7allklVskcrIDR0zBytvAomWF96CuKF4X3vjwxnkjJJhYS
         Ae/gFT1/0EMxPfiCWNThxqCUUmS9DUApWNPfBXYz3n8RUdIDzyLdBbLe5YBZ4g5zNS0L
         u9+gvLH+Yqrf9AAzh6xsYPaLkeDmqm4qQowzGOxGbncQ9Dv94+xNk749nl8lsVrbZ93V
         /L5g==
X-Gm-Message-State: AOJu0Yy/Yv9u93yIC8rdP8mEB9/MJLNtaeM6XI/UnCtjdCmSyKbVKvRZ
	aMoMPlNjKNO1jI3WytJefJO0dA==
X-Google-Smtp-Source: AGHT+IHdiO2gaVfOKAtP8BKlYveVx8f24wMW+fnbvPbvHY8RXPkNA0QnfaBmFCNBIfn+BybDkHvcKA==
X-Received: by 2002:adf:f1c6:0:b0:324:1521:3a6e with SMTP id z6-20020adff1c6000000b0032415213a6emr20587033wro.24.1697110265731;
        Thu, 12 Oct 2023 04:31:05 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id l14-20020a5d480e000000b0031c5e9c2ed7sm18244891wrq.92.2023.10.12.04.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 04:31:04 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v4 1/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Thu, 12 Oct 2023 12:30:57 +0100
Message-Id: <20231012113100.3656480-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
References: <20231012113100.3656480-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
similar to most of the sdmX, smX and now scX controllers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..fafea0f34fd9 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,gpucc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
@@ -3450,6 +3451,20 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sc8280xp-camcc";
+			reg = <0 0x0ad00000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss0: display-subsystem@ae00000 {
 			compatible = "qcom,sc8280xp-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.40.1


