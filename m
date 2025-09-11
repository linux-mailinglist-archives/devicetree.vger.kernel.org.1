Return-Path: <devicetree+bounces-215992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0B1B53616
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:46:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54A1D18854F0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A07AA3431EA;
	Thu, 11 Sep 2025 14:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DoEW4ybT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D364532142A
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757601945; cv=none; b=fmWvmOOc+C7i1ke3lqfUQ315pRH3PrIgOIIz/NkBkBLeZPW7ZyrReKpDT/MstLKxETCEQBpJGD4N93C3OUtPi4A9E7QGmtd6UPuvSVfN8WmRg3Y/vQQklS93dPBdYr6KBh2a5ov3RwkzawDUSbR/92rvpE2KK+B9lsRkckcXSWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757601945; c=relaxed/simple;
	bh=1ZGtzrU3exJTnHu/Nyew1wGp2xjCeiCIpG3JNd0FD54=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ElrO1V8K0SD1MogTqxAileOlYrkFS9pd30VuGTNk09ZCk+ml2kWUE9OFqL5SEpd4PefcPYZH8BnkSmw4XZ/8ukfvNit4VPHtmrs3dTVUlM4x/pbSXYvPE+GeZaEH0SuRSJKVBwXFsWgFyvVhosQFTDj0LaRPFLQ7/QUaHk+aE/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DoEW4ybT; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b078aabeb9fso133010766b.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601942; x=1758206742; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=103cGBp+Ee6AQsaTfOa0MxZHuXIIb4UOJLdbajeRtrQ=;
        b=DoEW4ybTfDNWL6HzZJjCoSWn5HM3NIixB7PHxxCrPRJqj+g5hKnegQNgUb825khit2
         vk33W03FKH0d1P9iEUlRDcG1A69Ff2PaQfYRwVqZ8ju4ODN1Hz2uK8oCdTYbsQV73mkc
         yWR9hC/o2T3c3EjHYWBTDdnKllpRRbkqF5rOCjc17ECM51SWJiZoRyawnkdA1WTHizJT
         JU3OxdggWW1EPZrXludAMWfr39246uCiacilUeunDOkgSl9kPFD6jrPCJUXmnOzI/1Rn
         4ULIiQuujh0r0gOE6uSOZWg7zyq08hifmo+0Hl/EYf0ZmdZChBCilIRiNvXVV7oeSlDp
         BMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601942; x=1758206742;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=103cGBp+Ee6AQsaTfOa0MxZHuXIIb4UOJLdbajeRtrQ=;
        b=g+CxNjKvFxNM0hNsVonG/ZrLzL93p26OKqYWVvp/AbERg2jIrbyBZmdUF4DL0c6i4S
         LMwzkPeE1XoyEj3U3ba47ObXw1bDySSgjhR4YoDL96sSo5BYQOUTFNyFnvmMwUeFpDAa
         +hmaYlDRMvt+HAqdK3tp3ZM3X1cpdhAeoeUsVzpSLsVdl1mcge5QZzKHA4GKYGS7upIs
         OEWL0awaHzdXOrom91Sg3IYOf9SZDQ3YqLqcuhAmGxQ4mjgiCkqJzu4gCFy6waXbsC1X
         6dz74pYrbbKQ8t2z/B2XPkUCvzq1NYwGYizX6Lxv7zuIbnmAN45BrIr0EST9h6BCwcEy
         md/A==
X-Forwarded-Encrypted: i=1; AJvYcCUq0fsHe+RxYMH7Ua4x1lyhqRKTiu9rOdH33YmEvqLIzduJvfHIZZY70HvLgovrM735xE4TB6C05IIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzE1i3ZdL35hpnkdN/NmAgbg3qM3fNrbgz8ugfTqd+lF+A+aYoF
	N8ZHntqQrBiIgqbZBrR+aDii2ImwLw12ZSsGtOS2c+J0LJSEx3RKuKQu0lLhXIjb2EA=
X-Gm-Gg: ASbGnctgGZncxAxwSP6oMnKEHAH4zv66enx9IB+VNlVMm6uxV7lyWuZMmEo4XVEePs+
	2h45XzX3PZqwCYtZkvPHbCuxZ4ti7KCJRErFx/5W5KaVMdYi2w02ZpGvPBEv/f4Qfe2fG28p02e
	BBnoRm9C3cEw5GoCsiOWRz0KPGRU4ojiDmdme1jHxxsyR9GMilDCLlXM2LyOLKjArDgFWvMoUrX
	iI3G0b5eYImhJJGx2YjtqcM4bFFVn/eRU9jYqnxJRvNI1RWQcxizog1IDPLkkvq+tIqtgXDXI2Q
	8KWjQoNXY7AkG7Vmskchg28y0JEHBL7+xU1eRcr6MbOurrHTmmg0fvW4KmR9tYOPxm/jhhWTosh
	tVQT8uEDyQflvNxnii6++ISw=
X-Google-Smtp-Source: AGHT+IHI4MsNX6U7yd3HYoHJOuomoEwI9/ElYgPM8nXP6Yp+KZHZ1xiK18Y8gwgZTPkHgL5uhxR+Rg==
X-Received: by 2002:a17:907:6eab:b0:b04:274a:fc87 with SMTP id a640c23a62f3a-b04b13fe46bmr2015424066b.4.1757601942113;
        Thu, 11 Sep 2025 07:45:42 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:41 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/4] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 11 Sep 2025 17:45:21 +0300
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIHgwmgC/4XNTQ6CMBCG4auQrh3TH5DWlfcwLgqt0ARobaGRE
 O5uITHRFct3Mnm+BQXtjQ7omi3I62iCsUMKdspQ3cqh0WBUakQxLbDADFw7w6u2PWjlQCoFTTf
 3k4cwOWf9CFRyQkolaMUFSorz+mne+8L9kbo1YbR+3gcj2a5fOz+0IwEMmrP6UglJ8qK6dWaQ3
 p6tb9CGR/oLimOQJjA9F4xxovNS/YHrun4AN9TtnSABAAA=
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1655; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=1ZGtzrU3exJTnHu/Nyew1wGp2xjCeiCIpG3JNd0FD54=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCJiXBuPUgcuSwM5NgfCaGKyFmkIR1JzF7l9
 J1aW12ScEyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgiQAKCRAbX0TJAJUV
 VvidD/wNlB+W7BH7/9suRcthkLqdB11uXaVveTh2clqqGHpAZ+o1vOzPaXuzEnjMXiU3oULZ/Ps
 MLKftVkROjkTLi8d8tmmGieUQ6qg2cjRaBAKAiZwGAgWgAMeTpuoD4xwHGCIbvTiNwMz5DjAdkH
 iqvyxHcI9nBt7NnnMu4xKNjO4Phk8O/rymnGC005bX0rPS/clJLVRZpXxDivuZD3cCjGQ4Rei/g
 dlk2OKJOf8ZzU3F2ZKKcctM4/mp5Mx5pzeZYm+3MWA30L038G/Mu1oG7cNmjTT3GpnPiWyBoOZu
 nfyVVcOREaf/7tCZE2oooew7ZnDINR9+lHM2K2PmDzTzqJW0ZguQxPL0omB1GWCy9RJXsbYmeth
 lX2PeILK0ZiBXEexSDR6XuBxM0VYtw0THBTnmh/lJlLTN1VfjsY7trnWfX7w0Q8cbWPfqgOXbtz
 tAe1pIZDblSniNAj/gP55TRbxM3j9Ac+nVoCukRpTKzVPDDlfcNw4/ulwB/6k3HxQoKPy1Jlfam
 mnK5yma0SO5GAvBuEyeCnrjzUwDM3fAIKkWRAoCDNoC5b0rot/DjoySgasbt7esJYtNu0yBGLxy
 cZgWTOhUZQH6Azssz+l32KClMXwZ+tW09oFOjcJkxagpfLy0tz7YrAWz8c+jJKgwl6yqmvu49QB
 gfsyIsAHMhJCIcw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Split the DP_AUX_CFG_SIZE change into as separate patch, as per
  Konrad's request.
- Re-worded the dt-bindings commit, as per Krzysztof's request.
- Link to v2: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org

Changes in v2:
- Sorted alphabetically the both the compatible and v8 specific
  configuration.
- Prefixed the new offsets with DP in order differentiate from PCIe ones
- Link to v1: https://lore.kernel.org/r/20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org

---
Abel Vesa (4):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 242 ++++++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  |  52 +++++
 3 files changed, 289 insertions(+), 7 deletions(-)
---
base-commit: 8128ba77e80a40f545381f1b31267f2f204380fe
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


