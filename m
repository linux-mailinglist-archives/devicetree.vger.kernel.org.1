Return-Path: <devicetree+bounces-53653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D862888CF9D
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 22:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DCE71F810B8
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA2E13D539;
	Tue, 26 Mar 2024 21:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dF99zDRN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E48213D24A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 21:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711487317; cv=none; b=G0+JtAqmn1RhmAuBANYVgaiopFPRaCXiDGe4H6GWCMMflgWGDGOofufscANjqd07I+0OHyIkB9vHNlUXM3xVpbz4trFZhhZtyf4mTnjM/Fi0wgDZ3nyuIlARjwxoL0vbts0hhDzYePtu03skaFtt5156Vku1EjZhIg0nEnhPPaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711487317; c=relaxed/simple;
	bh=eR4CFXwJ/DV52t3rPx/eaHmXMF5jodelDrArYPO4NaE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kU5xTMc3dFhw/hqXQ4GG4qk1MhRr3weLgkJDZvfaxvOu7sThLlfB94cil4KsIzhBecUO7yBJ0NjbJ0AIfFGWcXncQdwKey3L0L5odBCWEYfT7iP4VgUsrlmXMAD4uxsyeW0oLAJlhsCLSyFvtrK/x8ZRiCUFvuQ901PbanVUe2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dF99zDRN; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a46a7208eedso822892166b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711487313; x=1712092113; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Owu1u/GIpsA8DH2n23id8Dq1ZdjynMYs9dLtlBfR+WM=;
        b=dF99zDRNGTLjFQhUGaTfpB/Nn7mq/mWe9g29mmnpQcbwdjcQp+9T1j7s/aFrEIX0Wq
         tW7iuFITKP2HSyNDzck+RY77GpeysE5VR3NfP1KlW+fUPcPozF46GJ3otVAZRFAJgq5+
         lrPLIIU6Q+wkp1QNUJx1rRbnlBrUKpArufbotv4BTf0cl03bVNT+HhaGEAhwfRV91hOK
         dwZUprZ155iKVxi65VQ6beNcl6fnDJDyXnDWVw4IZMrOZKEXBQwDVFRhWdVJxuuQlnL4
         Lk9secORo9pf4sr/exh5jlGt9mzmeSIfJj3yTQIzWsJN8MJZ13T9nyn5YHZWil/oVFEI
         UD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711487313; x=1712092113;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Owu1u/GIpsA8DH2n23id8Dq1ZdjynMYs9dLtlBfR+WM=;
        b=sFgWgvhG78EstisUwchgYddtw+Py1nMJ8NPori1C9zeQfV4cfA7KMADUlR92cprOYV
         m5kpvUb/qZOuAN2kHorOblpN/tuwpsirL/CVpGMsZCTZ+cXbF36WpOeoNgK2T0TVbJZV
         rZ+wTeN9IUISpVMVQR70/NaQt317e2YbF153EOM4eDGtTGdsxPNKoli9CFISjJWzQ87/
         pBkqjlDL1a6nuX9hCmC1yNN6Fvn2q8sJVLpK1NU2aH3JwwXYUW9RGD+IOKejjmYN/0++
         JoDeyNmlhfb+nLvDfWrePtBC2o7+0G97R8alh453xFV+6yEUO0p6i06kQzC50h3eMGIB
         QmVA==
X-Forwarded-Encrypted: i=1; AJvYcCX2CEd4Lg+eLuQo6ZD5OKlh39SzqmM0mi++ZVBRQQM6JphoOsxUtZ3LssPt+TCVaGb39Lj5QRmkt8zzO6P1U7vlP0oTUYaO5YA2XA==
X-Gm-Message-State: AOJu0Yy3Hhjpwk8LBl06uNjAvBa3j2NH1aFawuR941OO1nC7votM1SS4
	KCmf9vbn9ZlmMSwOdIiMw9OFreCb3QIcRce7/lLPk8AEwGGkSeX1Iq+bO2Fx8tA=
X-Google-Smtp-Source: AGHT+IHUSHvtxOlBEUCvFuSqIQshOTsg/TGRscOieh+BC9vJhFsjCZ9Yng6qFsSIz8pbTSvGhhlurA==
X-Received: by 2002:a17:906:840b:b0:a46:1cc2:3b8c with SMTP id n11-20020a170906840b00b00a461cc23b8cmr1724623ejx.20.1711487313611;
        Tue, 26 Mar 2024 14:08:33 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090612d300b00a46cffe6d06sm4621697ejb.42.2024.03.26.14.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 14:08:33 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v3 0/5] A702 support
Date: Tue, 26 Mar 2024 22:08:22 +0100
Message-Id: <20240219-topic-rb1_gpu-v3-0-86f67786539a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEY5A2YC/32NywrCMBQFf0WyNnKbxDa68j9EJK+2gZKUmzYop
 f9u2p0LXc6BmbOQ5NC7RK6HhaDLPvkYCvDjgZhehc5RbwsTBkwAqy50iqM3FHX17MaZcmekqSU
 HLgUpjlbJUY0qmL5YYR6GMo7oWv/aT+6Pwr1PU8T3/pmrbf2VzxUFalkNrZJn0UBzG3xQGE8RO
 7KlMvurs6Izy22twGoQ8KWv6/oBzvTXwf8AAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711487311; l=1873;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=eR4CFXwJ/DV52t3rPx/eaHmXMF5jodelDrArYPO4NaE=;
 b=n3FIqlObwZssCgMB9MvlRA7U0Iw4dopzKLC4ZwE7c2tuJxTaMx2C5Og9f+ra4VVX5yjR//Uqi
 ZBueHO5uMqMCzG8PbwOOzyFbM4zqrqQSxQYGBoQoSlOwhSmRQZuvv8c
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v3:
- Use EXPORT_SYMBOL_GPL in the alpha pll change
- Drop applied patches
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20240219-topic-rb1_gpu-v2-0-2d3d6a0db040@linaro.org

Changes in v2:
- Drop applied smmu-bindings patch
- Fix the gpucc bindings patch to be even better
- Reorder HUAYRA_2290 definitions near HUAYRA (..Add HUAYRA_2290
  support..)
- Replace weird memory barriers copypasted from msm-5.4 with readback to
  ensure timely write completion (..Add HUAYRA_2290 support..)
- Keep my super amazing commit message referencing the 3D accelerator
  official naming (dts)
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20240219-topic-rb1_gpu-v1-0-d260fa854707@linaro.org

---
Konrad Dybcio (5):
      dt-bindings: clock: Add Qcom QCM2290 GPUCC
      clk: qcom: clk-alpha-pll: Add HUAYRA_2290 support
      clk: qcom: Add QCM2290 GPU clock controller driver
      arm64: dts: qcom: qcm2290: Add GPU nodes
      arm64: dts: qcom: qrb2210-rb1: Enable the GPU

 .../bindings/clock/qcom,qcm2290-gpucc.yaml         |  77 ++++
 arch/arm64/boot/dts/qcom/qcm2290.dtsi              | 154 ++++++++
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts           |   8 +
 drivers/clk/qcom/Kconfig                           |   9 +
 drivers/clk/qcom/Makefile                          |   1 +
 drivers/clk/qcom/clk-alpha-pll.c                   |  47 +++
 drivers/clk/qcom/clk-alpha-pll.h                   |   3 +
 drivers/clk/qcom/gpucc-qcm2290.c                   | 423 +++++++++++++++++++++
 include/dt-bindings/clock/qcom,qcm2290-gpucc.h     |  32 ++
 9 files changed, 754 insertions(+)
---
base-commit: 084c8e315db34b59d38d06e684b1a0dd07d30287
change-id: 20240219-topic-rb1_gpu-3ec8c6830384

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


