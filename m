Return-Path: <devicetree+bounces-214821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30053B4A998
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:09:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68C5C441471
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC44E31C584;
	Tue,  9 Sep 2025 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HlhYB0Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E3431C560
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757412496; cv=none; b=eVM9i7yiZAQVSl9AuwW/GHIGq/dU09Szylf4byMDmDfoad3wJ3oNJEIDqWSGBuJaOEjVxnVCyMBBw16lV4HNzZwjpZY45JzNEJ444xJBAJIGLUUgqz2skYgDmwbk1lBEjAtMvbIFp7FuAC7aWNinW93CkZj6iSJP7zQleKJWJdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757412496; c=relaxed/simple;
	bh=gd1/rQkOQZirFl18UzwZn/2cQtSjOyfCl1f0XILU2M8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=temo0MgHhc2CiwCMuUGweSse/BPObvIDBHLOqf/JEvao/2LVFQtWX9kfW3DiZXH3uAzkz/F85pxYGKEOk3jIcr6c4Ya0WwzaCYUhPxMdkVTHEISnmA9RvIXXZc95/qWMU2V34Dms2UwfG91xLyleytWkQ3+DTXkpGkI/QIv2nCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HlhYB0Gh; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-62598fcf41aso4259067a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 03:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757412492; x=1758017292; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0sIRaBk6vLQ8eD3uXidohEVpaoFfNVP9QHYmf2WgbQY=;
        b=HlhYB0GhFvHI/D/3jwPA/0gft6HZ68PUBHDF/mrn5L9CZq+wj446pQAk/8ezvlTLZW
         7R5ylQzGgQV/VfiH2XRKLYkNWQFBgsqK1NIxsW2PSmLkyrJzd6WP5fHRtopzqjxQWj2Z
         G4T0Qic6O3CYPinyEv1M/Fr933qQGi4exX4TGHUZ5rFOt588VDG5vo2UYsEWCdHANzcf
         XddkEnB9QqJofa4wCTw36pKRNYSyINYGpWmi5P00wSJYKs5MJRBdE+yurckOQ7t5de+R
         8HQWXxEO6ilW1RYIKNfleWLs4Q6OycHyVin1DEnnRrvMGCV6sBUdAsxBWUb9VNurN0zm
         1Keg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412492; x=1758017292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0sIRaBk6vLQ8eD3uXidohEVpaoFfNVP9QHYmf2WgbQY=;
        b=K7i3cXXX/DpKbapiEg1e/SoFMT96GETvAdjR6pHhHdee6BGM/s0ibPB1U1OyAzfk5o
         VYYA3IlL6KZpSDnMYMR1CZ2RTYiZ3IGNf0YRM3JyolWpa7TkCekhRW3nu/v5Xe9XKrmt
         7JOW2FvAX+fGAxTV36DUBE8PH2wwhLqzLvKeQX6Vv9MiRffQ5iL5UJaHOby44G85cHge
         GgK76K6olOFujgwZP9Bbng7Y585dHAcYdti6HBzcQa8W7IBO/zozf9cnO3W+kCSfQPGH
         ceL8KlKvcr57DkqMSOCK6pLfbm8Zl+6djc229mr8MkxZWBhA5aHDuL9oxhEvq94gEUTc
         Zotw==
X-Forwarded-Encrypted: i=1; AJvYcCUb+HJ0qSW5xhQEkns5bJDHazg+RxMSav7VB8/nV/+TqO37BEpIGdPxmU65RtxTLKVzELMklzLrFDBU@vger.kernel.org
X-Gm-Message-State: AOJu0YwWez0BS8OAhtLYJTEkvnBmHqZrspK8My8/RkjJOJ/e40TmV9Xr
	IKoKM7nEm0w6LVII/l0QHYAlbG40UbsBH5FnfxXZXhAoaNGwu0WCqmagOLKj2H/Aynk=
X-Gm-Gg: ASbGncvJKrbRtKfosbluOHu3WeYRCT6Cd85UvUq6nEz3Z7fAS+FURzHKxqhmgjIkju4
	EZv8LNn83j9NAy1ODD6yGYq+Hl/U225qLD6A7xQDumFBLxm1J+CW3OsIuGK2n/Z6sVc7hVl/iCR
	sEpwFFGTmaDVR7hhnP+zsGqm8NKmDj3IVBfFuBoRicevhvt9kGBkSlMdf0gVpa+2PGYMZtMrAoG
	i9dUKkcHftcDZsIdFi0n05ZjwpK/Sps5dR/mztz+io3RxrBdBfZrhI9rvzyX5xy9vJp/sHcU+3b
	zlPjnO8r9G7SWqyc+p7yJH615eLNKfQQRYrUwH//gvi2mtXHi2Vga7xTYGOzIvZH/qxUlrshD5o
	6mNTCA1Ua1gKExsNuM72smbsQER5fXtGoe0H3T6mDDgWJ
X-Google-Smtp-Source: AGHT+IG7P3FlTuDA+XmbsLkCjJ6D49ial374EyPCI74HQC/n+6HFLuSoKA47dmacX/A7pwMohgLIIg==
X-Received: by 2002:a05:6402:42c5:b0:61c:29e:db04 with SMTP id 4fb4d7f45d1cf-623725eda00mr11673342a12.6.1757412491857;
        Tue, 09 Sep 2025 03:08:11 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f65afsm965379a12.41.2025.09.09.03.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 03:08:10 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 13:07:27 +0300
Subject: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3063; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gd1/rQkOQZirFl18UzwZn/2cQtSjOyfCl1f0XILU2M8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov/yC3QqdbF6klANBZsX+CL1kBvV8fZ9czoaLo
 8esOnAp3+SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/8ggAKCRAbX0TJAJUV
 Vui9D/9WVfDQazxzor8ykuyAa8Ck9zuEDfFCAwSGCfz/kWIKl2NOkAczaNvidpm3IUSBmQo6xD/
 pONPPtlVMlqWUYDhcOi3Ch2x1hSsa5roCxfCqLGRCkAzp7KSklCGsE4tICymSN2KxHCRTswLkXS
 QdzZSLG7gqZioIfnxnGI04QasWGHiyID6z6+99UAkPF8FSvB8BxX7Cd+5hN436Vzc8GvlVrXE3f
 6ki/4RpOZk3z6yw9y4nPbZFI+RgjvbCdnvdaodmRXomhaYordCP+NlWJ+GEWrMADgLNiya+OWA1
 7q8C/GIrDpXiaQXeJlMUFsNuh0gf0fwDVaFxh4kM8nF+52nSy6++IXXlnoHyOcw2uui3DMlHFeR
 6uxcoJVYRZvICEGqTxp66HAAGolJrohH6kYFtO3sSypoSECDufpdqaf6fzX1Woq5x9nGni33FX0
 WfhzOcNYccZNte1dcGF1rHSyvsRm3TsmUNVjUn29TPHdVU4qkLu5RH0sHp7HhyvvXHkspE25Sj1
 HHimCuHcRWXv4tw3edqI8GCSAZvyqdWYAe73mUzj+Yb5GaXZfkfJVanU/L4NoBsrj0BK5R3oN1/
 a8Cf55dbHWRXFSI3OKZshAWOAe8D/bmIS3lQgYUzinFPomhZbMrSqyKm09qhYhZh2svaAh8ZYo5
 g6LDF1wW2PZ4NYg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.45.2


