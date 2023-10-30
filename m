Return-Path: <devicetree+bounces-12773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5707DB68E
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BDD4DB20F45
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72FCFDF71;
	Mon, 30 Oct 2023 09:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qpHTHyFA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFD4DDDE
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:37 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D75CE1
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:31 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c501bd6ff1so59388261fa.3
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659309; x=1699264109; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQM5616W4VpYt3Uuf+LKbgadEdoylnFckH0iKGfwQfw=;
        b=qpHTHyFAal77nlLPDw61N+AAY2Kkbf9mTQqm0GWF+fLcyF2pLKE01W0Rmk82CYVeK7
         rjCRUvgeLXL4kyVfvJLOTpedGJqVLiUgo2ak1toUG1vj0uclwm7Kp9ibK5BxEGhJnnB1
         RKHbPUP3+kD2zSk9jwro+Geanm3EjUQ6PAsHbWjEQNKNNnVxhtWsEofW7TSI3570CqeE
         zDkOU4T06+4UfCx+l5iEoazcANmWmYQvK3777xg+9kTqgnnW+vO3M1iHKVvfcQARbZLP
         ET+DAuKAXEZoew8NS1NhxV5x6QAOPWiqt/MCcugI+Vbykc95XVI/ahOgIXO6MfgJvIfi
         31dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659309; x=1699264109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wQM5616W4VpYt3Uuf+LKbgadEdoylnFckH0iKGfwQfw=;
        b=TsYiTewtsp/kn/yCZI+ojrpTGemdzg51H45D6PwdR1aE2hr8uaIJE9z5alYUirWYqP
         Mkct22r0tAtdSTmhBDRfeP8INeyfargX81O2bO8WsfVHiSDgb+Nfw+5FKML3r6Dk6kRw
         QE+i3RpNp0bQpUXhMMzxNCyDt9k2epwQOVKhLelT1SuctAW+ot22MQs5M05iEewJsoEE
         Dog3QxvvF/EnFyI7aiH3dXfiDU2tutBV4AvICFQTp+XfKxn1O97U4ael5/lgmEQq1ufw
         aIBGf6CabExaR23j8oNkc1lx/RuyqA4X8oJhJn6kfttuVbm1Ol0S9g4rECsyaF7ja523
         ynQQ==
X-Gm-Message-State: AOJu0Yxk983yAGJzGdjVPzbjj4BF97tTpLf6rntlPjWUVRjf29eHEOnh
	HX21jEW6CzGayhNSy4wNr/jMBw==
X-Google-Smtp-Source: AGHT+IEwwsBExwDoPhElKWqXZ5jo2UJT+EbWVeyrD2yKAaZbvCmWwcsGRiRieS0xTn3OYYsWmp7tzw==
X-Received: by 2002:a2e:86c3:0:b0:2c5:94a:ac96 with SMTP id n3-20020a2e86c3000000b002c5094aac96mr7794942ljj.9.1698659309336;
        Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:23 +0100
Subject: [PATCH v2 7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables
 for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-7-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=868;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Za5suk8CkzX7Dik/mXEOJCOXHPTYwiAgMf2jppXrNEE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vkgmrXVXmBDf3YHDwYcAoiOGICGmldBybhSgCm
 bxpZpPqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT975AAKCRB33NvayMhJ0SR5EA
 Ckn/nIBO8v0WhjeI9FXREPxSrtrxC85E/pZ+D9lqmjrXgVZAs8qNlI2bwcg6zLCTE0gsOwKCM1iWUY
 HBnHGSyx4kTc0LGJo2GOc/h41fF0xs/O0soEuM2tq7TTHeA5hgZNvAFGmHBi9lbeTZ7TYpNApda+N5
 VaLG3jFZQjY/ovdvExCIl2T1fUfn122kMu15Up5h3xjRAUMwbQ++bGqaghY+02i9uI27ZJcONMdEyA
 QHYN2/KsApsmDb8d7+i7WoOndBLsz62LWDo7hMmfP4onPe5uCPRuZFccgzDYUmLY4awjwygzOtpg6W
 +SC4Oy1fRc5oGHY7WlSsPvcr2pShnVWvSXxBstCKY/qqIfb/Zfg8vRuxnTIKJpYImhT+aLMw/meWus
 Ub5CBGxWU2KHlgfMMk1wdOt9UUMdp4V6iTF6ZG52AIm7PoQlrhA8rQavz8x9nSrkiEWl+k8jaMIkmj
 dQt+htF/Vt9bUKNISDnUgOx9NC/KPv7YOeLfQL4LqZLHj9owy2aJxeUDlxwMXjHplt+iCMSgvU7+Qu
 itLZjXlaLaOBLWb0WMq/5xOa0VovwLDs2DEPlfwS741it/XGEnJ4bd86XRSs821HyQELobiPtIhoXl
 gT1J++3T5q4BlzzP2RUW+Y8R0to3+lin5M4xc2g1Lf1EExOx0T8ENoOM94oQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add QMP USB3/DP Combo PHY support for the SM8650 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9c87845c78ec..0417856b8e7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3558,6 +3558,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm8550-qmp-usb3-dp-phy",
 		.data = &sm8550_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
+		.data = &sm8550_usb3dpphy_cfg,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qmp_combo_of_match_table);

-- 
2.34.1


