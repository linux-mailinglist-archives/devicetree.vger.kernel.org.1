Return-Path: <devicetree+bounces-11589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1257D6331
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3DD8281CA6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F072C1864B;
	Wed, 25 Oct 2023 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BaJAhbTn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E9218623
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:34:52 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C85DA30C3
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4084e49a5e5so44911705e9.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219269; x=1698824069; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fE8lnfpH60VjXny5tiRH5VlhhWNYUPOQjPWoBvDGkLE=;
        b=BaJAhbTnk3atiwuEBuvecO6F4Aw6PtVYJ8xWE4xcpS4N/zq3gp3+lSiE99n2MW5nYi
         HOGu/y6rPid0IsltRSHKFp4SKIOZgcJQ0orI2ehMbkLW61UkAoZHSZX3PB3yN5CkIb5D
         6P3zBUCVyULC0NA7eQLNQdBYJQXTzsEtJ/rTwRmSV/AQwvsH/lEcMUNwPV4VDL5xzi0T
         4uvzbU2TrfcYWhu8Vx48pPzVBqbTnAFwbkKvdcUoxFVIDuHVODfp3tvnY7pHg3WxUcWW
         fMi4JcUdQvhXNpaoJhQgtS7PuogEZ/syyfmSaH2Q+UoN9IdQH0EblLBrKucVwm0N4cGE
         ROjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219269; x=1698824069;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fE8lnfpH60VjXny5tiRH5VlhhWNYUPOQjPWoBvDGkLE=;
        b=NbgCvQ06Q/MoInMKNQxNL8Ugj56uTInhEKvWD2et3s1ZIp3sVgmwabl51PpDIMUubI
         7Oyn6PjjFhpqv4N5SwRA/y91EZrFrsfhqmMMiM+WRFfJvRiV5P2TMtTCLbqCZGhALq6q
         aKUgBJIVAnvgHhdRdTb0vQHyr0yHOxH5lTLcnJmglHOcPoz4vPAaTSbj4STvmI76QI88
         7fbr7DB6YuNUSEYQ0Y0a5IfG8ZgbcKaqyD3CM2AyCXrKyTiGIWrOwgAoT8WC5HWdSHWE
         Fb+B7tbxsTvOny4jdUTOVohwL+fXpD6ljUEfJAAIPIvqCIyOQ4vNLCn2xekw3ThCZ+r7
         /FGw==
X-Gm-Message-State: AOJu0YxHE+Fc2ThOCd4OVa3pvw12wymjg0geQQaIiTZ380EO0CSgrqrf
	y3BRHIuch+1I4JxVPR08n72o/g==
X-Google-Smtp-Source: AGHT+IFAhfZZJ3gwdbIFUlXOY3usptA+3VKsx7F/YcUoyU9gIJVNtoulpa30s0um+4wBBZPyJ4VOkw==
X-Received: by 2002:a5d:6310:0:b0:32d:a236:b6f4 with SMTP id i16-20020a5d6310000000b0032da236b6f4mr12281843wru.50.1698219269476;
        Wed, 25 Oct 2023 00:34:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/7] phy: qcom: Introduce PCIe, UFS & USB PHY support for
 SM8650
Date: Wed, 25 Oct 2023 09:34:22 +0200
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP7EOGUC/x3MwQ5EQAyA4VeRnrdJp5jgVTYOQtEDJlO7IeLdT
 Ry/w/9fYBJVDJrsgih/Nd3WBPfJoJ+7dRLUIRmYOHfkPO5b0B5tqXxJ+Au2R+kWDPOJNbGngse
 aiwpSH6KMerzvb3vfD0fJ6uZrAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1940;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=2qdNaDtgGGnm05vv31/7opnlAHHFreo8WKAr4O8Zdsc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUB8JaeBVZg6YS6uDVAZ3/Town0yPRPcxPqk5wI
 LKxgWpqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAQAKCRB33NvayMhJ0YzgEA
 DAxioqC8P+mE0ccFVudeKAO+XM27PQd5yCXAohkSjEQJFNb1sqN7WpywmZtIzP2Hd4a47OlWZiSpef
 Cfyh6k11Xl1xlkcE1c2+HMiaGXomXaCI03klnhMMEkyUNVFA9rvFM2LdkGPu0ipjLQ6BdNZo5+6hEz
 ShoXUqI8fDsN9UnG7//RCvHp2V247+yZL6KftFQPJciCfVmFh4kEqtN4zilX+b1UhU3GaNT4mCYbWC
 Ykzx6Wui7syRyeso0OSApPIYW5xz2o5pi5Iw3zgieNbt6PXhi5maEBHT8KzCB4OMZGzWwH4NvjrrqT
 iwPDzq7chubYbOa24DTLcTQZ+7o9TKm4CLDIuGdkZ/VzBcb4XENbT9cEyTRiHHz+SADdTRwyISwcB3
 bmj8PvhX0K01+/J6YyESVZJstFpIT/KeTs66xHd6JP/0AAWXAGe1hxoB7I5u4T3CrsquHFCWu95ACw
 M9p4xbWy13Sfq1PqvjSUDem+00MNDxTLvwsYjzmhrLW+/G2LUMP5bELnqtO2rG4rX/mBH+VHZ3NAHU
 8ynSzV8iiAdR8y9ykcSqrVq7G/suWk3I2X+91sHsX4iWe7lfQAbViLRH8A/uZimfB/OuBbTMY4WSVQ
 br88r9NqXaDiHICWhBgNu2KNnStItzEYUiFeERZdhvKGq5oA2tAERyoQmFGQ==
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
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
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
 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |  1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          |  4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 65 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |  1 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  7 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 86 ++++++++++++++++++++++
 9 files changed, 172 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-phy-9026042f9248

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


