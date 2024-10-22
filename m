Return-Path: <devicetree+bounces-114167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D0A9A9FF6
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD6F31F23EF7
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 10:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF52F19AA72;
	Tue, 22 Oct 2024 10:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fmgmMhRJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0063199FDC
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729592835; cv=none; b=AoMEMQfSQDSnXj83DGQ/rWAJudtTtt4oa1F4fYaxd8XjRFNwu5n9iA6NdAZPWnrBgFpCs3l5FNNY44fy4J+8qzsjCfLiKnkBQxXpqD4wPeytxTzLiqBkCcjG5bsTIgdlrLIY6AQ1y6I+mgqL0CxNkaATFFGfzOGMc2VF5ngStno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729592835; c=relaxed/simple;
	bh=A1p2TizbsQtxXZpPrIfxc3peSYJMxS3tyK0zgRRrbfU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ePFmmguJ5f1n1FfI+NjXM6qLF5p1HlYu2GmI1coYcjMfcRqJ8Z5iI3KgliznGqstn7f+RwXdUe4O++LVU0oG6WK3aLOyOecF8Yg6+IWrDIB4g+NAJsiux6lsylh2/RUZiGhuQmCwtWzA8jg5eV5avGMQHS8GIiof+C5Dcmw1cGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fmgmMhRJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d58377339so5855718f8f.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 03:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729592832; x=1730197632; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vbb65nsQeICQXopeIAXrzq9um6ghK/HL0FJyyVxl5IU=;
        b=fmgmMhRJa9S2RQksLeJFazqVw4NqYw/hTefvxi2+/cUKlyojVNYjjORxaPuLsq4hDR
         O8dASPjJd7by0VDteEbTSIjCwKW/5baW+LlrPRT3xgWePeHYR/5IWO92w7vwJkyHBtAX
         s5kdr7Htww2xMXXfWHgLwvsk0wW4f1hmAzolHqIfJCrE0t8EWQw6VRgj2dyEJB2u0vmV
         tKxXVySBNHg4q9NviG3gY1a2wh/wMOh5af3FpFfmKXLhFzvu9m0SPV8XUauv+uJVpP88
         AoELzmeRIqdXDCv8bhxOtd6jYCS3qVvdJqf77Gf7n5hFtsTlnMbse/DigZMo1Ha7XMmF
         OQzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729592832; x=1730197632;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbb65nsQeICQXopeIAXrzq9um6ghK/HL0FJyyVxl5IU=;
        b=cG6VrDeWlPELyhqJINVjBot+oWB/hTULPf89xBs/D1eQ34A8eU/UcQC1ff3BDh+XAI
         p15zd7/BkPAEeyxVspAUrHFxzQIO3kE2jWD6zeITmSh4mrv3d/Z/0I2yCUJ4TRYQxb1t
         tNWyy4NAy5CwTsCSZ3MVFdcDdyONy3Quaa0gWsj3HEN3OWnd2zLQIslXtKG9+7mKK/V5
         feq8Xp95i9awV/iH5KD3/kW06MSeJBJvpuHjwVzZ4Ly/+P25T19uqEcypjFN4zqruPsU
         1JyYiq3NaGODN7E7TrZ3sx0D9OirIHmWgXQkIC4wjm3xHNmXQ4hjFymbP71KLNu1voeA
         9ffg==
X-Forwarded-Encrypted: i=1; AJvYcCVtuA2mgOPcnQa4FMiZTWBcxqFsPiDC45XkwHM8AOPY8zob2BBW/OvyWou1OGxjNPrdyLH4CzUFtJR8@vger.kernel.org
X-Gm-Message-State: AOJu0YyjILioKRpO3JFY9RREn6sV08DpuFP5kcrl85L2L3AdJx5D0jDP
	hZWjtsCIRjdrORfCFvN9a1RtDlZ0S/rXy3Ifg4VXaY5G1sUnyZYD1iZESMoAAco=
X-Google-Smtp-Source: AGHT+IGm6v6POppZuH/AgAHPSNyIsYWCG8lvtdVObTXPFJfzE1RT8xFM8soRQsSr5TUvAL+0x6U4PA==
X-Received: by 2002:adf:f208:0:b0:37d:4a16:81d7 with SMTP id ffacd0b85a97d-37ea21c3663mr13138436f8f.8.1729592831927;
        Tue, 22 Oct 2024 03:27:11 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b94048sm6285184f8f.85.2024.10.22.03.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 03:27:11 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/4] usb: typec: Add new driver for Parade PS8830 Type-C
 Retimer
Date: Tue, 22 Oct 2024 13:26:53 +0300
Message-Id: <20241022-x1e80100-ps8830-v3-0-68a95f351e99@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO19F2cC/2XNQQrDIBCF4asE17WMRsmkq96jdBFHmwglBi2SE
 nL3mhQKJct/4H2zsOSid4ldqoVFl33yYSxRnypGQzf2jntbmkmQCrQUfBYOQQDwKSHWwK0moq7
 VRuuGldUU3cPPu3i7lx58eoX43h9ksV2/Fsr2YGXBgRsi1bRghFX6+vRjF8M5xJ5tWJY/oMzUE
 ZAF0GQRAAlJwR+wrusH4OZ1fvAAAAA=
X-Change-ID: 20240521-x1e80100-ps8830-d5ccca95b557
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3882; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=A1p2TizbsQtxXZpPrIfxc3peSYJMxS3tyK0zgRRrbfU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnF33xAa6u82WilM5eb0FNiTzT2LizrwClShrzR
 elrsjOuKTmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxd98QAKCRAbX0TJAJUV
 VqXeEAC8PxrXGRPMfXNHDSQHtpECAF4rVo6JfbsUbrrHLj1ANMVxBxsBXHypIRlKm3A00H0zzlG
 3VGvLz/1CZpTp1Xkk622gI6TW2bNQbVq0mnEZGsJUf4pRCkQvMnjFBwHOOxoWVhu/LgFBrtVLi8
 NBpKJwIBE+rZJ8UagFuXYar9ueme4j5rgNMOy5UwTZGgaUjNTNAmJHcErZFFLB8eAd1yjx/6dJr
 INDG/A7yXrI7EoA2bC8NLNgjzt8h4Z/6PPVuqmAwZ8oRpyJGKH+Y5z8wyctaO3s3C9VzzKpYD0t
 WPrkTrdka9n0UoUolLr6ZtMu2m3CcDMmQDRWdNymJ+8lgyx5a4sL9DAerdxQAamjl40qVPAEFeT
 QDdRA6Qo1/eTrAWI5Uwd5f+gtstSY8PbAGe8Fzfjj2fraMostYRISw4rLhEIsaFuj5io/q6YX9d
 PwOmskt/XY81nW9ZHQFO4jM3Hla6Vcju9NkLCXPx5PdVWKs84412o8Tslw1+PMRDk9wllFjJ7ff
 dPSodk46ODLBnVIIJ+0LLIOsmsPnUC1t+lgeHN8f1h/baOCvdDAJtHXByMxi8BHCWfkqilMrpbB
 Ibtwsuu1NOL4gzp0C2oSF4WQ7Gn++tup8pqsPEOPfI1BWl5DjiWyTQ30Izvv6vk7R4DmP7y8wBD
 yHIRukw8Hcn5vZw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Parade PS8830 is a Type-C multi-protocol retimer that is controlled
via I2C. It provides altmode and orientation handling and usually sits
between the Type-C port and the PHY.

It is currently used alongside Qualcomm Snapdragon X Elite SoCs on quite
a few laptops already.

This new driver adds support for the following 3 modes:
 - DP 4lanes (pin assignments C and E)
 - DP 2lanes + USB3 (pin assignment D)
 - USB3

This retimer is a LTTPR (Link-Training Tunable PHY Repeater) which means
it can support link training from source to itself. This means that the
DP driver needs to be aware of the repeater presence and to handle
the link training accordingly. This is currently missing from msm dp
driver, but there is already effort going on to add it. Once done,
full external DP will be working on all X1E laptops that make use of
this retimer.

NOTE: Currently, due to both LTTPR missing support in msm DP and a
reported crash that can happen on DP unplug, the DP DT patch is not
supposed to be merged yet. That patch is only shared for testing purposes.
Once those 2 issues have been resolved, the MDSS DP 0-2 enablement patch
will be respun.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Reworked the schema binding by using the usb/usb-switch.yaml defined
  port graph and properties. Addressed all comments from Johan and
  Dmitry.
- Dropped the manual caching of the config values on regmap write in the
  driver.
- Reordered the DP pin assignment states within the switch clause, as
  Dmitry suggested.
- Added SVID check to not allow any altmode other than DP.
- Added DT patches (retimer for USB orientation handling and DP
  enablement). Did this in order to offer a full picture of how it all
  fits together.
- Split the DP enablement in DT in a separate patchset so the USB
  handling can be merged separately. 
- Added ps8830,boot-on to let the driver know it is supposed to skip
  resetting the retimer on driver probe, as the bootloader might already
  let it in a pre-configured state.
- Marked all retimer voltage regulators as boot-on since we want to
  maintain the state for coldplug orientation.
- Added pinconf for all retimer0 gpios.
- Didn't pick up Konrad's T-b tags and Krzysztof's R-b tag as the rework
  is quite extensive. Especially because of the ps8830,boot-on and what
  it does.
- Link to v2: https://lore.kernel.org/r/20241004-x1e80100-ps8830-v2-0-5cd8008c8c40@linaro.org

Changes in v2:
- Addressed all comments from Johan and Konrad.
- Reworked the handling of the vregs so it would be more cleaner.
  Dropped the usage of bulk regulators API and handled them separately.
  Also discribed all regulators according to data sheet.
- Added all delays according to data sheet.
- Fixed coldplug (on boot) orientation detection.
- Didn't pick Krzysztof's R-b tag because the bindings changed w.r.t
  supplies.
- Link to v1: https://lore.kernel.org/r/20240829-x1e80100-ps8830-v1-0-bcc4790b1d45@linaro.org

---
Abel Vesa (4):
      dt-bindings: usb: Add Parade PS8830 Type-C retimer bindings
      usb: typec: Add support for Parade PS8830 Type-C Retimer
      arm64: dts: qcom: x1e80100-crd: Add Parade PS8830 related nodes
      arm64: dts: qcom: x1e80100-crd: Enable external DP

 .../devicetree/bindings/usb/parade,ps8830.yaml     | 129 ++++++
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts          | 472 ++++++++++++++++++++-
 drivers/usb/typec/mux/Kconfig                      |  10 +
 drivers/usb/typec/mux/Makefile                     |   1 +
 drivers/usb/typec/mux/ps8830.c                     | 423 ++++++++++++++++++
 5 files changed, 1029 insertions(+), 6 deletions(-)
---
base-commit: 63b3ff03d91ae8f875fe8747c781a521f78cde17
change-id: 20240521-x1e80100-ps8830-d5ccca95b557

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


