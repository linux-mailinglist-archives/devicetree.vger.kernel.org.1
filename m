Return-Path: <devicetree+bounces-29096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6D382171A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 06:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00C3F1F219C8
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 05:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329B4EC8;
	Tue,  2 Jan 2024 05:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YLzeU8jd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE3120E0
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 05:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-50e7b9cca2fso6204106e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 21:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704172648; x=1704777448; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oKdUrJNCReC9eOhzNwa7lHUNCx2+g7VDaGVelraoPhQ=;
        b=YLzeU8jdrsWivVFLipzgSmp+OICTbp3MH5vsAIiwYXRARuqGZenbxBfAi7KOJV7e2T
         DyorTE6IXLXvOgrUgLpvidIJAby8cwsDnx7UcYYOurBr+yu4w9HPRbfogQUy0S3hxhik
         ohY39IbuLt7pVZzEOS/HnTqRhfYx/0dRBoXQwxE68sVppmd5KlyByIsqpkLXW2sor62j
         JNYqwXNE/Ho3eB8jtnp/z4AN15K/cY6njIXtC7D493JRPSRtXXKs3hXlJyD3YApNv0Os
         v/VF6xiRdAhr5H4tcAibS4oJRWWLnwb80CJ8LpeDv1DQtoyHCF5UEbp2ZSpt4OsATWTn
         gofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704172648; x=1704777448;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKdUrJNCReC9eOhzNwa7lHUNCx2+g7VDaGVelraoPhQ=;
        b=PzYvzZrHr6nqp4hS92/RolHBzcuCRnlIUYVDRhAvolIlx2uCBYHTiXf0Q21yLqK8Wr
         +I3paHhe8viEcVEDwOBRFTuSvdrci84THU+p/6D9WKiEL7XGWOYdxBInbr6iItGarSE2
         AmnKhWxss2fSMnOoLFJAW8FuuaopqjQmzCUgqPEWfNbiAtk4MxpX7yDAYjhNFb8MSVLg
         LAlUI8PVecMe+42osz7yZKX009KFx8PsBdeGibmwy9bbJxU6qADCOhnoNRK+ib1QI2nk
         zl7afqnYQbivTrYa3X5RW63sewYuHhsDncd9H0LfbVLbdy6LdYBDTncvhwXR8BmfGzcO
         r+CQ==
X-Gm-Message-State: AOJu0YzWP7tMnCv1YC1dUTNH3WDXXCLV/LYS+U8hbUQsRONi9j6IGa1C
	7BUzO5K1H6bWuFwW2WYSo2PxfGr1OG+VmQ==
X-Google-Smtp-Source: AGHT+IH9Ux8fGS3Kjpth3HOJrmmqp91o+F0uRMGNzThcSjvbmBy78jjYmKqmwlAc2rflwCcfe9Z0iQ==
X-Received: by 2002:ac2:5e6a:0:b0:50e:935a:ca83 with SMTP id a10-20020ac25e6a000000b0050e935aca83mr1785675lfr.91.1704172647723;
        Mon, 01 Jan 2024 21:17:27 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r25-20020ac252b9000000b0050e810689e5sm2081827lfm.33.2024.01.01.21.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 21:17:27 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v7 00/22] soc: qcom: spm: add support for SPM regulator
Date: Tue, 02 Jan 2024 07:17:20 +0200
Message-Id: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGGck2UC/zXMTQ6CMBBA4auQrh3SHwzgynsYF2OZQiNQMq0oI
 dzdxsTlt3hvF5HYUxSXYhdMq48+zBn1qRB2wLkn8F220FJXUkkFEd8a4jIBU/8aMQUGdNI1yqq
 z7azI4cLk/Oc3vd2zHYcJ0sCE/5VRWjZSVpWqS2Nao9sWFHSTT7yVD+QtDs+wXkc/I4cycC+O4
 wvl1xotqwAAAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3455;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=jUUzlvlRe6+nOTsn7j/oEccAvSac6S7/LU+ktDHJNQQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlk5xiIQpi6N5Sy/VOojLvbNYdI3w/mOqEiHAIw
 kDGq+AlkEOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZOcYgAKCRCLPIo+Aiko
 1SpjB/0UnyaxoVFryguBxKe6lprIw23jO7C1eesEx9lxYCZqM7Mz7juGdjas2fbCRO2fY9ejfY8
 0VGupbo8WaMsMEX+tQFjWcO91FIE29Pau1fI12HjUyCtfPkxyUZNtbqKSPV3GwqX20goXoBmMtr
 iacLgWAtu1UbcHIQSTb3BnIh98iasGmvm3CoNg2XcID5mwmYbggA2UL8R5oFqka0aarMv/H+i/s
 gqXMy67Z6WuKQhRlqU4OpNjmg5ARO/fFJGXv3ZMCpm8v5vntps3yRNlLoBt1a7mJMXUwOWfZpM5
 o+k7cjmKRQSWn5e7DqITAnCkNScCApjkRrZZ/1qg1Vs7Oyhp
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The apq8064 rework to use cacheinfo takes more than expected, so I've
spanwed this series. It is an excerpt of the APQ8064 cpufreq series
[1], so it it continues the version numbering for those patches.

The Subsystem Power Manager (SPM) / SPM AutoVoltageScaling Wrapper2
(SAW2) are hardware blocks used on some of Qualcomm platforms to handle
the voltage rails. It does this by bypassing RPM and directly
interfacing the PMIC. Extend current SPM driver to export this
regulator.

[1] https://lore.kernel.org/linux-arm-msm/20230827115033.935089-1-dmitry.baryshkov@linaro.org/

Changes since v6:
- Added SoC-specific compat strings on MSM8960, IPQ4019, IPQ8064
  platforms (Luca)
- Fixed saw2 node names on few remaining platforms.

Changes since v5:
- Added patch that moves SPM structs out of the header file
- Removed support for L2 SAW regulator (Stephan Gerhold).
  msm8960/apq8064 do not use this SAW2 to manage this regulator and
  other platforms will need changes anyway.

---
Dmitry Baryshkov (22):
      dt-bindings: soc: qcom: merge qcom,saw2.txt into qcom,spm.yaml
      dt-bindings: soc: qcom: qcom,saw2: add missing compatible strings
      dt-bindings: soc: qcom: qcom,saw2: define optional regulator node
      soc: qcom: spm: remove driver-internal structures from the driver API
      soc: qcom: spm: add support for voltage regulator
      ARM: dts: qcom: apq8084: use new compat string for L2 SAW2 unit
      ARM: dts: qcom: msm8974: use new compat string for L2 SAW2 unit
      ARM: dts: qcom: msm8960: use SoC-specific compatibles for SAW2 devices
      ARM: dts: qcom: ipq4019: use SoC-specific compatibles for SAW2 devices
      ARM: dts: qcom: ipq8064: use SoC-specific compatibles for SAW2 devices
      ARM: dts: qcom: apq8064: rename SAW nodes to power-manager
      ARM: dts: qcom: apq8084: rename SAW nodes to power-manager
      ARM: dts: qcom: msm8960: rename SAW nodes to power-manager
      ARM: dts: qcom: msm8974: rename SAW nodes to power-manager
      ARM: dts: qcom: ipq4019: rename SAW nodes to power-manager
      ARM: dts: qcom: ipq8064: rename SAW nodes to power-manager
      ARM: dts: qcom: apq8064: declare SAW2 regulators
      ARM: dts: qcom: msm8960: declare SAW2 regulators
      ARM: dts: qcom: apq8084: drop 'regulator' property from SAW2 device
      ARM: dts: qcom: msm8974: drop 'regulator' property from SAW2 device
      ARM: dts: qcom: ipq4019: drop 'regulator' property from SAW2 devices
      ARM: dts: qcom: ipq8064: drop 'regulator' property from SAW2 devices

 .../devicetree/bindings/arm/msm/qcom,saw2.txt      |  58 -----
 .../soc/qcom/{qcom,spm.yaml => qcom,saw2.yaml}     |  45 +++-
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi           |  32 ++-
 arch/arm/boot/dts/qcom/qcom-apq8084.dtsi           |  13 +-
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi           |  25 +-
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi           |  10 +-
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi           |  20 +-
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi           |  13 +-
 drivers/soc/qcom/spm.c                             | 254 ++++++++++++++++++++-
 include/soc/qcom/spm.h                             |  23 +-
 10 files changed, 353 insertions(+), 140 deletions(-)
---
base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
change-id: 20240101-saw2-spm-regulator-af0f81c15cdc

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


