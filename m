Return-Path: <devicetree+bounces-14014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE17E1C6F
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 09:39:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9115B20C79
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 08:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFEC823A5;
	Mon,  6 Nov 2023 08:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pMydOPHa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3380A15B7
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 08:39:22 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D7FD8
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 00:39:19 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40842752c6eso32349105e9.1
        for <devicetree@vger.kernel.org>; Mon, 06 Nov 2023 00:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699259958; x=1699864758; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pTUGWkFm+eoFBrzY4hz2ysi787CRQJ+goyZRuyIksI4=;
        b=pMydOPHanAhAq8HTFUR7cGj57ssv6pAME/jVqwjE9FiwtJQW2vHYjIKGe+KBhd4NCL
         DYOY6C/lJyZWLMTnM0yHB30NO5bLFaXVwuebbo6QO4unz3vzfSH7xx6lqT/5vqb6HwX3
         JieoiA7dufoCAD61UF+Z81mJqX6sjX+jQ7yMDB8ySdJmlQMoolOLKsBcqPCKMdLan5Fu
         UFpkguhDru2HoOTpB8/dyteUHS1TZtktDMukqi/4SX8kb1mLpPfhszm05vCAnp18EqeJ
         GA/kiHcgHmxLjpaKZQlV4PYohsc6prD/DQS6NqFmfJDT5YHiyQYFozkCzGe3t0L+ElTr
         91bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699259958; x=1699864758;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pTUGWkFm+eoFBrzY4hz2ysi787CRQJ+goyZRuyIksI4=;
        b=dsq1ouziCmInax0dpZfUoKk03xwnGX8i6pnyY/FB27XWw7EpCdN2MMZ+eT0bNR9U4E
         Ir5YLnnVpYlnSSbz6SDzAg1OgpVy2rXA33t30jclL4bhuIoWmlAQ3ohBnxr4A8FPF3o2
         HmbKszf+0EbsmMwyo5qKb3WKcLyDVr7thY8U6zthEhoR2CdU6LOr6n67cSwpwS/o968H
         sJm9Jdbh0hZHpk5epk833E75oYQymSmd4Z3LJdGhX3yqxplb/Lpu8rIFhul6+TPeRxFE
         GeIO4cYxwrzy/nuD4LMEuKeoPD3N0lDXuGm8/f3ijxxcJsm4bnqnTYkXn3py70FOQ1Wk
         DD3w==
X-Gm-Message-State: AOJu0Yz9S97DjanlklyWeMtQ35uCMfSKwn7KVzdUIP4sDwxsZEw1ZRqh
	E5FV+4bTSJm7lZfCtkWGzrPUKA==
X-Google-Smtp-Source: AGHT+IEF6pThiR1da8QQ/3I3buz7DyM87pZyWq8xnCNloeg3ygd/0h60F6oYsb2SMWd16qqJlTo6Ug==
X-Received: by 2002:a5d:674c:0:b0:32d:bc7d:c431 with SMTP id l12-20020a5d674c000000b0032dbc7dc431mr21228644wrw.1.1699259958171;
        Mon, 06 Nov 2023 00:39:18 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t5-20020adfe445000000b00323293bd023sm8829830wrm.6.2023.11.06.00.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 00:39:17 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/8] arm64: dts: qcom: Introduce SM8650 platforms device
 tree
Date: Mon, 06 Nov 2023 09:39:08 +0100
Message-Id: <20231106-topic-sm8650-upstream-dt-v2-0-44d6f9710fa7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACymSGUC/3XNwQ6CMAzG8VchO1uz1TCZJ97DcFigQBNhpJtEQ
 3h3J/Hq8f8l/XVTkYQpqluxKaGVI4c5B54K1Y5+Hgi4y61Q48VoYyGFhVuIU2VLDc8lJiE/QZe
 AyDrrnOt6iyqfL0I9vw763uQeOaYg7+PTar7rD8XyP7oa0OArNFeDPsN9/eDZSzgHGVSz7/sHP
 agkScEAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6958;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=WZLAF297H8bm+I4vuhrG7BZHVymzYUf0PL6FzNTKLN4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlSKYxwsBGpOEmnX1DC+KQajDqwvs0WYcK+0a3r874
 2Emd3kyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUimMQAKCRB33NvayMhJ0RrtEA
 C0KF2MC+9x+OHxBzHvgpimy8kX5dssWy4P3Ohna3AtA3lFUsB1uOrkCW4XIHRQLmVJAe2h8qY4d2kf
 qHfDW7cpmys/pt8Mbd5/wZs8303Pwdc//oxjM2+nwfpSqmecp5Dl3YxuPDe/mzGC/hjRjIgp5pLuA1
 sEI3AvzXm5KtFiiqRnB/pOWml82fwhBzjaHaxIeCHgA4qioLJ7PRKXtVa53DmlWCCxvMHrQ/xKd9/4
 q2tyGN7EHtnBpYDuB0RwhOV7+o+QovZ+J1n8VQW0q21ExJDve7qPYzQ+NH4gbKyEF62TOgKGhd1wWA
 DWbdqnosrSl902gUALSWLUTHGlW+Mgf2SSH2xt3uRI9YAgVTsqENyqoeAqOx1f+xwzb0toHSqCRTlW
 dXdf/tnqsOgx4tz+/plSD4xdTZTwoz3ZABQJdhPm1GA33MbQf9Asvfr9vb/xmfQmF68ppHiy6pjP4a
 xTQq7f054izQHAlmWVX/TrJuH5nizGt9lK29dBmFxPeBBpNarklJ+kasgOAh6yhsoj/qTuYR7Ia4jj
 83MN4L6g5TSl0NvocP2kv8k4j5OPSx/xtHL3aQU753lJEBvOUybLhkZBj1GQbiMXAIvQW9/XGPLRE9
 AKKAUEOdpxZR+Dw1gx2tqd4rabAB0zJVELeIcAKZ4ggYGTgyJrg0Gd63xxHw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This introduces the Device Tree for the recently announced Snapdragon 8 Gen 3
from Qualcomm, you can find the marketing specifications at:
https://docs.qualcomm.com/bundle/publicresource/87-71408-1_REV_B_Snapdragon_8_gen_3_Mobile_Platform_Product_Brief.pdf

Bindings and base Device Tree for the SM8650 SoC, MTP (Mobile Test Platform)
and QRD (Qualcommm Reference Device) are splited in two:
- 1-5: boot-to-shell first set that are only build-dependent on Clock bindings
- 6-8: multimedia second set that are build-dependent with Interconnect bindings

Features added and enabled:
- CPUs with CPUFREQ, SCPI idle states
- QICv3, IOMMU, Timers
- Interconnect NoCs with LLCC/CPU BWMONs
- SoC 3xTemperature Sensors
- Pinctrl/GPIO with PDC wakeup support
- Global, GPU, Display, TCSR Clock Controllers
- cDSP, aDSP and MPSS with SMP2P
- QuP/I2C Master Hub I2C and SPI controllers + GPI DMA
- PCIe 0/1
- USB2/USB3 with USB3/DP Combo PHY
- UFS with Inline Crypto Engine
- Crypto Engine + DMA and True Random Generator
- SDHCI
- Mobile Display Subsystem with 2xDSI output
- PMIC Glink (USB-PD UCSI + Altmode) provided by aDSP firmware
- GPIO and PMIC Buttons/LEDs on QRD board
- WCN7850 Bluetooth
- DSI + Touch panel

Bindings Dependencies:
- aoss-qmp: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-aoss-qmp-v1-1-8940621d704c@linaro.org/ - Reviewed
- bwmon: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-bwmon-v1-1-11efcdd8799e@linaro.org/ - Reviewed
- cpufreq: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-cpufreq-v1-1-31dec4887d14@linaro.org/ - Applied
- dwc3: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-bindings-dwc3-v2-1-60c0824fb835@linaro.org/ - Reviewed
- gpi: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-gpi-v2-1-4de85293d730@linaro.org/ - Reviewed
- ice: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-ice-v1-1-6b2bc14e71db@linaro.org/ - Reviewed
- ipcc: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-ipcc-v1-1-acca4318d06e@linaro.org/ - Reviewed
- pcie: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pcie-v1-1-0e3d6f0c5827@linaro.org/ - Reviewed
- pcd: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pdc-v1-1-42f62cc9858c@linaro.org/ - Reviewed
- pmic-glink: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pmic-glink-v1-1-0c2829a62565@linaro.org/ - Reviewed
- qce: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-qce-v1-1-7e30dba20dbf@linaro.org/ - Reviewed
- rng: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-rng-v1-1-6b6a020e3441@linaro.org/ - Reviewed
- scm: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-scm-v2-1-68a8db7ae434@linaro.org/ - Reviewed
- sdhci: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-scm-v2-1-68a8db7ae434@linaro.org/ - Reviewed
- smmu: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-smmu-v1-1-bfa25faa061e@linaro.org/ - Reviewed
- tsens: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-tsens-v2-1-5add2ac04943@linaro.org/ - Reviewed
- ufs: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-bindings-ufs-v3-1-a96364463fd5@linaro.org - Reviewed
- clocks: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-clocks-v3-0-761a6fadb4c0@linaro.org/
- interconnect: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org/ - Reviewed
- llcc: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-llcc-v2-0-f281cec608e2@linaro.org - Reviewed
- mdss: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org/ - Reviewed
- phy: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org/ - Reviewed
- remoteproc: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-remoteproc-v2-0-609ee572e0a2@linaro.org - Reviewed
- rpmpd: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org/ - Applied
- tlmm: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-tlmm-v3-0-0e179c368933@linaro.org/ - Reviewed
- goodix: https://lore.kernel.org/all/20231106-topic-goodix-berlin-upstream-initial-v11-0-5c47e9707c03@linaro.org/ - Reviewed

Build Dependencies:
- clocks: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-clocks-v3-0-761a6fadb4c0@linaro.org/
- interconnect: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org/ - Reviewed

Other:
- socinfo: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org/ - Reviewed

Merge Strategy:
- Merge patches 1-5 with Clock bindings immutable branch
- Merge patches 6-8 with Interconnect immutable branch

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Drop RFC since most of bindings were reviewed
- Collect Reviewed-by/Acked-bys
- Remove #ifndef PMK8550VE_SID in favor of #define in sm8550 dts
- Add allow-set-load/allowed-modes to LDOs
- Add QCOM_ICC_TAG_ALWAYS/QCOM_ICC_TAG_ACTIVE_ONLY to interconnects = <> instead of 0 & 3
- minimal sm8650-qrd.dts cleanup
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org

---
Neil Armstrong (8):
      dt-bindings: arm: qcom: document SM8650 and the reference boards
      arm64: dts: qcom: add initial SM8650 dtsi
      arm64: dts: qcom: pm8550ve: make PMK8550VE SID configurable
      arm64: dts: qcom: sm8650: add initial SM8650 MTP dts
      arm64: dts: qcom: sm8650: add initial SM8650 QRD dts
      arm64: dts: qcom: sm8650: add interconnect dependent device nodes
      arm64: dts: qcom: sm8650-mtp: add interconnect dependent device nodes
      arm64: dts: qcom: sm8650-qrd: add interconnect dependent device nodes

 Documentation/devicetree/bindings/arm/qcom.yaml |    7 +
 arch/arm64/boot/dts/qcom/Makefile               |    2 +
 arch/arm64/boot/dts/qcom/pm8550ve.dtsi          |    6 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts         |    1 +
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts         |    1 +
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts         |  678 +++
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts         |  803 ++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi            | 5610 +++++++++++++++++++++++
 8 files changed, 7105 insertions(+), 3 deletions(-)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-dt-ee696999df62

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


