Return-Path: <devicetree+bounces-12765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C35FC7DB682
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3AA31C20B22
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36B2DF40;
	Mon, 30 Oct 2023 09:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eFMSckd0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF88DDD3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:29 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A201EDA
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32db188e254so2934209f8f.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659302; x=1699264102; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KPTZJaV/MjL39+P4h6OmYZujDec2OSDGxnH10oBPzHE=;
        b=eFMSckd0/jLbQXb/2AC3TIJ38GlssXXI9Ue8ucbscKvRoB5q/flk6Z2mzVAmjZaTHD
         x9LHViXpzEwik3JgQdB6v6ikTkFH3Nu+Q00/JbbeVyLzoozhY+iIVH36Lgdc6HewEfij
         Ict3rtMzRq6ZOdbarrgprTatJ+KsJgzr662KzuFPvmBDIwWorBlFlX5IyMGchf0uwyCG
         lJsu1C2CsACzcgjTqD1OxBF4SN5TZk3F4ZBopek5tfU6C8jFTg0vxkE5TkNKrAPLclOz
         R5uWfDv1KFUgftkhCA3yUWjJNf8xUIHOE81Gw+RIjiROIGKNTEbq3fKSGV6DECYKsXKM
         XnnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659302; x=1699264102;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KPTZJaV/MjL39+P4h6OmYZujDec2OSDGxnH10oBPzHE=;
        b=OnjPRLEog5rsrYsYJv3aPw6V2YjYusiKUUk1EcZ0dlSSFaBDLwFD8wgxakzbSay3mR
         2YM3vBC65scv2MF2T0O7O3ekh5iHdakZCTh0xcuaJsqqMh6QTzwuaSmJMz9oyW9dIw6E
         f1asVUZ2cacc8HoIJESu6zGQ2VbRyoYouZOaXU6Fvh3hzsf9vgW4mhx7zZScCuqgQV+e
         RKr7DVvy4xHbxCmth8MMXwEFaWdeOXyrZfon1+a4tVelCtlDGP3cjB38WpJrCE5pQyjT
         SXh06cDPvj2eIMmvMfDYiS/FKBAvg+NX6LviM5XVB0FSZZp8N71V+9suTKbMUiGu9De8
         edkA==
X-Gm-Message-State: AOJu0YwHc4xw7sCPerhHmeYIFiz59a+GPkxs00oGEjLQed6ymlOUUVYF
	IBUWexmE6Py4q4fUpNeq+SLUUA==
X-Google-Smtp-Source: AGHT+IEi+2EnChCdXuC4BZnLb291jlsE8CMuY5f+RKFa/FzCVHA6umqZ7slvZXuTl1qatU8X6D5bTA==
X-Received: by 2002:a5d:588f:0:b0:32f:7e4e:535d with SMTP id n15-20020a5d588f000000b0032f7e4e535dmr4565173wrf.15.1698659302024;
        Mon, 30 Oct 2023 02:48:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:21 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/7] phy: qcom: Introduce PCIe, UFS & USB PHY support
 for SM8650
Date: Mon, 30 Oct 2023 10:48:16 +0100
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOB7P2UC/32NQQ6CMBBFr0Jm7Zh2gAquvIdhQWqBSYQ2UyQSw
 t2txLXL95P/3gbRCbsI12wDcQtH9lMCOmVgh3bqHfIjMZCiXCttcPaBLcaxMqXCV4izuHbEMKx
 YKzKqoK6mooL0D+I6fh/ue5N44Dh7WY/Uor/rz0rlH+uiUaHR+SXVS1K2uD15asWfvfTQ7Pv+A
 VMar0zDAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2164;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=P+sEQT2Rv1FEwMjfBQ01O/6OblFcpIJuA1P/WnguyMc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vhUQVNRQTirHoI4ASs8izOOUwzDBGyfp5VSXYs
 TPF2zoqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974QAKCRB33NvayMhJ0S8iEA
 CuqKVtPX8PmzsPKVHBPLVuzhDgroORz8sE72lh4OKElFlUNHHxoOHINYb4ovPfZRgI5OCrmcDxAGNX
 YF8G66klpXUREC/Csw/e52IfnnQe1Nf8F4hYu2UovITfjzwK2gon5mxZuvC2/zNGnltz2/8wy2NCOm
 bDYHHDgILnxi1FM747iRJs1NyfJ8BWGbTTo4a7b/y+H9XM759nY8kigheM6/QqL4ky0I8YwAoDBiXC
 9JycmtxsUsW63RLLmkIMZti8wmFcRBcsBLxC67XAxaHAYxqrXeRdSRGSRubZjSlUJ2eCCf+gYmC3vT
 JmUVuUN42fo+J0wEKN6tdkzi4YCZkLkCsfsLDA4zebASWoAu6LmRmrTQceVK7SNQYGFRYue0MVuejt
 XkeDFulmOEc4sTUS/73A95/9RJNKrdkXndNIaBUGlW+kHHzGgvy/d4e/Vzpcg1eeDw1dz20soCf681
 B0dj3+J2VEu1q6989TJGUt5NzcdX8tbjopn6qsJCI0BcZTIqOlPChWv2UyMLXfVPLNYYecJAQTdyJT
 xKQOQImrYoOHIVIhQui6jpSGbImts5ncT5xp3/+e97cfqeo/5ATxXCRXslRrlDFd5pr8freekAI8ST
 MjWxhrxzTy/Sk8us5yhyst3/+Nwdm1ld/6K1cjo2OGaRBZMQMVLnMsmEUauA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The SM8650 PHYs are similar to very close to the ones found
on the SM8550 platform.

Only a few changes in the init tables are required for the
UFS, PCIe and USB3/DP Combo PHYs.

The Synopsys eUSB2 PHY is the same as SM8550, so only a fallback
is added in the bindings.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- bindings: Add missing sm8650 entry in allOf:if:then
- Collected reviewed-by tags from Dmitry
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org

---
Neil Armstrong (7):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8650 QMP UFS PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document the SM8650 QMP PCIe PHYs
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: document the SM8650 QMP USB/DP Combo PHY
      dt-bindings: phy: qcom,snps-eusb2: document the SM8650 Synopsys eUSB2 PHY
      phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
      phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  5 ++
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |  2 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 65 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 9 files changed, 173 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-phy-9026042f9248

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


