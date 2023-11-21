Return-Path: <devicetree+bounces-17501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6C27F2B2A
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FD71B211C6
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC167482D4;
	Tue, 21 Nov 2023 11:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ya8GDy/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D08CC1
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:00:09 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32fd7fc9f19so3620108f8f.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700564408; x=1701169208; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nd56LW240BfEox5A8tHzzuiYVzAI4pJtmS/Gp0Qi45o=;
        b=ya8GDy/Eq4cWpUshsWuRoJnG8JeaI+/iSp1eoOj5WyabmFmNILDAlXNsrdxZWDsAvu
         D2tVjeAeWxA0n/UuWpE9ZyjTzP9ESRs2LaIHqFC/FFqVCD+AVs1gjVRnzJP8fNjjcX2G
         R6VCIf3sbKAgOvTTwWcvL88BaWPIAgpSZWpKecL0YCXS2JDwPnW0gXgtcUs2DBcvpEai
         HYp3rG+sxI305sWTDlb0heYSn/jXre+TPZKZY+PbvGLmwgchiR1igSpPljB8CGrJAxEW
         d6bA1HT/qclT8pwoJLjT1BRj4yYa6AyDX6P7bAZqZYgpibanr9Y5gT7G6zA918FdCMJw
         PbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700564408; x=1701169208;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nd56LW240BfEox5A8tHzzuiYVzAI4pJtmS/Gp0Qi45o=;
        b=xP0AAPNVHs20e/UgRsiZ5LNBM7yDK4PJfUOzz3c0oufWkv4Qq+GTVYj1TcgZOWqizs
         pj6natSkUS+cr55WckNzUJqRYJCjQkIuwuurX4lHGfzQI45uHjdhr4H13BAgSGihH4th
         q/OuT7pdZkGytWxiziJxjSmWXlNspEeZAzvOAWhjsGuJiuS7TrzXrvlK7OyNXE8ZKFWH
         wU3azTfvYQq7rvsWftpxY9zWSc6UGJ9Wx1/8nTSOsGJtFKNYYjrwycKAeERskE2k6+u4
         QsJc7Y38NxvNOE6tIB7CAX2otoYrKPXJVxbolo9Di679E4Vg+55jSW5vBM6VOoqRXztP
         e6Mg==
X-Gm-Message-State: AOJu0YxvdmaBDlx0GM0EElt7qhaVBNzNMG1gThYLWJ118lIwzrWMWG0s
	Bw5Jfw1akOT6poW9B3JcJks5rQ==
X-Google-Smtp-Source: AGHT+IHHIpGjYezPDdfE7dobT91XnAB+hj07X9Ron9AkMlWtGc+UTO7UO7FzcpCJhnu5zI6Bvwuqvw==
X-Received: by 2002:adf:b354:0:b0:332:ce60:5c34 with SMTP id k20-20020adfb354000000b00332ce605c34mr878148wrd.49.1700564407845;
        Tue, 21 Nov 2023 03:00:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id f1-20020adff581000000b00332c0e934aasm9028500wro.44.2023.11.21.03.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 03:00:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/8] arm64: dts: qcom: Introduce SM8650 platforms device
 tree
Date: Tue, 21 Nov 2023 11:59:59 +0100
Message-Id: <20231121-topic-sm8650-upstream-dt-v3-0-db9d0507ffd3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALCNXGUC/33OwQrDIAyA4VcpnucwtrV1p73H2EFqbIW1FnWyU
 frus2UwdtiOfyBfspCA3mIgp2IhHpMN1k05ykNBukFNPVKrcxPOeAkMBI1uth0NYytqRu9ziB7
 VSHWkiEIKKaU2gpO8Pns09rHTl2vuwYbo/HO/lGCbvlFe/0YTUEZVy6EBrjJszjc7Ke+OzvdkU
 xP/SMD+vJd4lqpKCyMbYEY1X9K6ri89YIKtCwEAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7246;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=/NCfw92VbnLSEmzRIEnxqhjWCw04REkUufIx2VDmw6s=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlXI2zUIh0nu4es5XpkchlZjmYI/l6p4hPMECj1EF0
 rhlMUpKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZVyNswAKCRB33NvayMhJ0ejwD/
 9i7d2KB11PW29Ulrj8ANSATLPia33Hb2es5yu9t69i4+IVIc/7qxn6X3D+qEsLvxeIIcVRVKM7zM8W
 GoPQES9aABQweSmdtyDMw/677A0G1aa6jZbCqA9S40U0vwXYTsiPAqtes+hheSrOOPTobjSF5oAPFY
 z7SFZ1lHqia5uJo8SJ16aXVpmzM2vLFbhZfa/tfbgzgthRujxY6+7VCdqnUJwRkjUW6XM6W6VY7ik8
 Pr8u4uTkDSfmNGHG/36RuMN4njfKN0tCaa00TTJv0V7HnZPF/LgUXUhddjPNPo3az3eR7vCyyGbMIx
 7ks4pVEyGlYfFK6tZCQGfHI3JT6ucDrUQrSMplAbnza4aUaVcePVl891d/n5BnPU3uJZ4d0w2MJiCI
 JwiiXsR6t2ZkkB9wBYKOYA7tJ8/SNCYvdEacXkVCOVzJ1SM3W+oAcAcBWR16u+4BYT2oaGjTz87C/f
 qF5Dr0lggEKAZkj6AyvuxVeCIFCejAKOJ4R0Cg7jYZe/LmMK8VQpu43IGdUc+9qPHX/qnNJs7WmLlX
 +68WU7C0R+g1V47jPvC96t1z3ypIiWF4/Vsp2gM92K7yQKkxTt3K9URRGP1sIZm7zuR4i8CxKuUdJi
 X2fk5vv3mehVxLANg7Pldp4F0Ta6n7A+1SLjVr/c3Ttg83lEZVgnLB4vChHw==
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
- ice: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-ice-v1-1-6b2bc14e71db@linaro.org/ - Applied
- ipcc: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-ipcc-v1-1-acca4318d06e@linaro.org/ - Reviewed
- pcie: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pcie-v1-1-0e3d6f0c5827@linaro.org/ - Reviewed
- pcd: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pdc-v1-1-42f62cc9858c@linaro.org/ - Reviewed
- pmic-glink: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-pmic-glink-v1-1-0c2829a62565@linaro.org/ - Reviewed
- qce: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-qce-v1-1-7e30dba20dbf@linaro.org/ - Applied
- rng: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-rng-v1-1-6b6a020e3441@linaro.org/ - Applied
- scm: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-scm-v2-1-68a8db7ae434@linaro.org/ - Reviewed
- sdhci: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-scm-v2-1-68a8db7ae434@linaro.org/ - Applied
- smmu: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-smmu-v1-1-bfa25faa061e@linaro.org/ - Reviewed
- tsens: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-bindings-tsens-v2-1-5add2ac04943@linaro.org/ - Reviewed
- ufs: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-bindings-ufs-v3-1-a96364463fd5@linaro.org - Applied
- clocks: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-clocks-v3-0-761a6fadb4c0@linaro.org/
- interconnect: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org/ - Reviewed
- llcc: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-llcc-v2-0-f281cec608e2@linaro.org - Reviewed
- mdss: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org/ - Reviewed
- phy: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org/ - Applied
- remoteproc: https://lore.kernel.org/r/20231030-topic-sm8650-upstream-remoteproc-v2-0-609ee572e0a2@linaro.org
- rpmpd: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-rpmpd-v1-0-f25d313104c6@linaro.org/ - Applied
- tlmm: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-tlmm-v3-0-0e179c368933@linaro.org/ - Applied
- goodix: https://lore.kernel.org/all/20231106-topic-goodix-berlin-upstream-initial-v11-0-5c47e9707c03@linaro.org/ - Reviewed

Build Dependencies:
- clocks: https://lore.kernel.org/all/20231106-topic-sm8650-upstream-clocks-v3-0-761a6fadb4c0@linaro.org/
- interconnect: https://lore.kernel.org/all/20231025-topic-sm8650-upstream-interconnect-v1-0-b7277e03aa3d@linaro.org/ - Reviewed

Other:
- socinfo: https://lore.kernel.org/all/20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org/ - Reviewed
- defconfig: https://lore.kernel.org/all/20231121-topic-sm8650-upstream-defconfig-v1-1-2500565fc21b@linaro.org/

Merge Strategy:
- Merge patches 1-5 with Clock bindings immutable branch
- Merge patches 6-8 with Interconnect immutable branch

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Cleanup of thermal zones
- Rename SDE pinctrl to real signal names
- Link to v2: https://lore.kernel.org/r/20231106-topic-sm8650-upstream-dt-v2-0-44d6f9710fa7@linaro.org

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
 arch/arm64/boot/dts/qcom/sm8650.dtsi            | 5382 +++++++++++++++++++++++
 8 files changed, 6877 insertions(+), 3 deletions(-)
---
base-commit: 07b677953b9dca02928be323e2db853511305fa9
change-id: 20231016-topic-sm8650-upstream-dt-ee696999df62

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


