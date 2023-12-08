Return-Path: <devicetree+bounces-22914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF0B809771
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BD881C20BF3
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81F32380;
	Fri,  8 Dec 2023 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hLXrYOQh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 410A8121
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:20 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ca03103155so18249571fa.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996258; x=1702601058; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1X9LMB+oVPng9ws8U342EyKjkvqeAQn5jzp3ck1U/W8=;
        b=hLXrYOQhJgcHO9gmabKuRP9XQ10PsVBJlpHMYUegGWUDhlT6eokpuWV5xOuC2/LXTN
         dBaip4YmoGwP7ahY6TL08fgOyA5J87Upw0aGIwD3aUBtb5bYUPL9waAYVLzj409Yg2li
         jErPp2ywOwiU0teyROPFlC5Yq7mKBr8G/byyYRszbjfWTNLt+0zD184AW21Mi0fMdCTP
         0GGi2nGqb7Gs9mdvnhrZ+E+D8v3Teid1XYWqTkkwChGqmB679X1grAXS1qrFfkXBtBfR
         cXgd//iMBDudhWD67JnVCRb5/UDSfKI8XGpOwaGTs5yHZp+aIJD1hkGKhItigluQ/xxr
         qpsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996258; x=1702601058;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1X9LMB+oVPng9ws8U342EyKjkvqeAQn5jzp3ck1U/W8=;
        b=Llc0Z5tC/O/l/3gsjoz3NO6HT8/oeku4We4MfDb+/USPITmGIVcG1/DxU0eaQ7xuis
         Ui8MCFOaCeVLFSd2w+gSaM/yrfwUPpHGbdv/UGZ5d3wvUW2pwwyUFy0SQX9l9RqdeVEq
         bCXLTIzjOmDqPIgV6b/RlU0G3sCTEUdojSQUr+ZHzLlZ+jqOGSGycsRdJhV7fqOII6ZU
         GhmGJeaUbS958agnObdhp3UewtCAE2NoBs8YKPUZVA+h7p/5Hh5ab+0U5ZnhC1x4yRvh
         Go+bnnrRqq7/iTu02uSMRBg1LxHr0Y0qxRMUnhRbwfcxu0SirZ5If2VO2ER94WowiFgL
         kiuw==
X-Gm-Message-State: AOJu0YyHIkQkaWoepcGemH0AD6j1z7EDa/ywbS41QPzsvjIqyT8dCyws
	uwU2h7FDhcOtVQ4naFG/vgZpIw==
X-Google-Smtp-Source: AGHT+IHJq3hSl2GMpuUmsaGxbHysQQfeUdmZcunbGnlDTNaGhjwyo+gl874n630YSiarhtoJyzq5MA==
X-Received: by 2002:a05:6512:eaa:b0:50c:c15:a77 with SMTP id bi42-20020a0565120eaa00b0050c0c150a77mr1522724lfb.112.1701996258370;
        Thu, 07 Dec 2023 16:44:18 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 00/11] soc: qcom: spm: add support for SPM regulator
Date: Fri,  8 Dec 2023 03:44:06 +0300
Message-Id: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The apq8064 rework to use cacheinfo takes more than expected, so I've
spanwed this series. It is an excerpt of the APQ8064 cpufreq series
[1], so it it continues the version numbering for those patches.

The Subsystem Power Manager (SPM) / SPM AutoVoltageScaling Wrapper2
(SAW2) are hardware blocks used on some of Qualcomm platforms to handle
the voltage rails. It does this by bypassing RPM and directly
interfacing the PMIC. Extend current SPM driver to export this
regulator.

[1] https://lore.kernel.org/linux-arm-msm/20230827115033.935089-1-dmitry.baryshkov@linaro.org/

Changes since v5:
- Added patch that moves SPM structs out of the header file
- Removed support for L2 SAW regulator (Stephan Gerhold).
  msm8960/apq8064 do not use this SAW2 to manage this regulator and
  other platforms will need changes anyway.

Dmitry Baryshkov (11):
  dt-bindings: soc: qcom: merge qcom,saw2.txt into qcom,spm.yaml
  dt-bindings: soc: qcom: qcom,saw2: define optional regulator node
  soc: qcom: spm: remove driver-internal structures from the driver API
  soc: qcom: spm: add support for voltage regulator
  ARM: dts: qcom: apq8064: rename SAW nodes to power-manager
  ARM: dts: qcom: apq8064: declare SAW2 regulators
  ARM: dts: qcom: msm8960: declare SAW2 regulators
  ARM: dts: qcom: apq8084: drop 'regulator' property from SAW2 device
  ARM: dts: qcom: msm8974: drop 'regulator' property from SAW2 device
  ARM: dts: qcom: ipq4019: drop 'regulator' property from SAW2 devices
  ARM: dts: qcom: ipq8064: drop 'regulator' property from SAW2 devices

 .../devicetree/bindings/arm/msm/qcom,saw2.txt |  58 ----
 .../qcom/{qcom,spm.yaml => qcom,saw2.yaml}    |  39 ++-
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi      |  32 ++-
 arch/arm/boot/dts/qcom/qcom-apq8084.dtsi      |   1 -
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi      |   5 -
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi      |   2 -
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      |  12 +-
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi      |   1 -
 drivers/soc/qcom/spm.c                        | 254 +++++++++++++++++-
 include/soc/qcom/spm.h                        |  23 +-
 10 files changed, 317 insertions(+), 110 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/msm/qcom,saw2.txt
 rename Documentation/devicetree/bindings/soc/qcom/{qcom,spm.yaml => qcom,saw2.yaml} (57%)

-- 
2.39.2


