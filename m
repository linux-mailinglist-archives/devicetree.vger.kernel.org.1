Return-Path: <devicetree+bounces-141095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4540AA1D67F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 555BD3A2AB7
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6987E1FF7D9;
	Mon, 27 Jan 2025 13:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uQbHqjSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15881FF61A
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737984075; cv=none; b=r9rUDUwnhspsBAzSjToIlC8PtyxmmwtNNg9lvYcfkG8AbvOl/SwYaMOkVm7VwvaZNluRpd+xgbKEKDjf047HfqARXLvk9yyVxdB0iJHXOAQ/olHt0DgOmpIbmf9xIPngwB2wSSwCZywKRCFQgAOJm0ej+Id8wRR8k/nMjZYXMH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737984075; c=relaxed/simple;
	bh=IUbaxPS+HQnJ43himjlEznUpNzuts8QFvAEId8JRW6E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WAO94S6vsAkIIbpdaA45ah4JshA4l8e8Wueq0rCZgUzKx2jPxWFWKE4MrMKX96ZNzSSVGRNRb//hLJPMDRFEGqDLfu5kCEwobVieP9yMiID3w8Ga7x28yeD6sAqd+Y9pbeVah2/WpPxIEabt1qsOPon3Mrwh64fZMbYoJ9gqlTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uQbHqjSm; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436381876e2so2767655e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737984071; x=1738588871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lrk19+x0xCyWtNAM9zqIl3MR0fAbQ4p3LHFnpdDhys=;
        b=uQbHqjSmL3xY6zOmgponX/GjfcHJVTbPqMZ3SXL4jNsl238sUGEDNNS9etdIemPEqk
         fu9g279Ktu7veueqXUM7YmwotHehJgfSL43vMD7czk4ox7B5Clo4CovdpnxPDrrL+Cvh
         vEKgwLn/zDNs+a/n19P+/zSU0aou247ln6Sbeuqqp38OVklvCJaFmAhRYZEMpr9Ejmh4
         evSeeHWffJIKHjg7YXfgCNX5fyr2ODPEmLsVX8NKElrbBL2uk1JD6zuRePd3OBuQTzQF
         P7wAnrtvr2yzoiGGIizlAVRndxyaFia4VFoS4YcI0FdnnesOHVwdKQB3s6BtbIzPac3R
         xAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737984071; x=1738588871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1lrk19+x0xCyWtNAM9zqIl3MR0fAbQ4p3LHFnpdDhys=;
        b=CrJ1WLkL/XYW2e88xCxNW/XrMcZrR4efwv15YUcFYLoSZbFm/qitOZSogTLZ9kGvuq
         L0AjoQ2nZWfJuJH7fx70UTLnxzSfVinudTQ9w2M4uTo8e9NLeiZC7x0tGEZ4fZkafAjj
         vlcssbdJXy0n6hp8+DqEdseOXE+0iV9osQT7DSynAOUSmuwWE0zQJBizhrY2rLJlWZtz
         kC4/9EoXN/5lSg0YO5xYmgEVXttGiOlTXtSB3F1KtHduL0437ptVG4r0QmoYqUXwi/GS
         yFFoH8NBvPskeNVJ2FXsOydmObBF6OKttYbsqFY/RplG07LtV4hci0kZpMxjIo40hr2O
         GJuA==
X-Forwarded-Encrypted: i=1; AJvYcCWiHnk4pvzSedT2YIklhunv7QaCYJqAel3TXSoep3teArG+tfedU9s8rvAM+/hRgMaNJuGvRcF1jX4c@vger.kernel.org
X-Gm-Message-State: AOJu0YxfFzbPkgmlyI09CsLINWKzCqJsnv86G1ldG4m05SHeoMkmZum5
	KVXC+m5ekjqu3Zhwz4tWt/eVSRpPpXWFakqZfwLLgbixT0yNU7ZLikxuPueH9y0=
X-Gm-Gg: ASbGncsBi65CU4RM3BZilv4+Aubq1F9RXVsUIN/AjE1wSj9KrypkR67oQLG9hOEaMCy
	alxCz38h8FR7d76NL3uO1ENthxvXn1zcB7zrvIKmCvAkha3u+wBTrjZtWBVO/5Pw2ovPd5pNAAj
	1RdmBeJ43TJ5EyP8CgJiaDHB4lXCzFHeTtEDWE1YxIURgxn3FHu7I9R7OHAKEUN6fvwPswIYpXk
	95NanHOKy1d1NhaytqsaKlTaEXQ0MtVa9upfEt9R8McVPONFMkqSGSJFT8181NXmiujUnfWyPjI
	O/ZqoEnEDF3EwBCZNg==
X-Google-Smtp-Source: AGHT+IFQ3yteVkt9TcZzs8X17uQXuOmJxl9Leoqq2TKqJE6nDiurSR7kDwbdcXBuU+CbDYLyoR4UeQ==
X-Received: by 2002:a05:600c:1f10:b0:436:fb10:d595 with SMTP id 5b1f17b1804b1-438b1763eeemr80946485e9.1.1737984070644;
        Mon, 27 Jan 2025 05:21:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4b9977sm132386105e9.25.2025.01.27.05.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:21:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] drm/msm/dsi/phy: Use the header with clock IDs
Date: Mon, 27 Jan 2025 14:21:05 +0100
Message-ID: <20250127132105.107138-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
References: <20250127132105.107138-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the header with clock IDs to bind the interface between driver and
DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy.h           | 5 ++---
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c      | 1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c      | 1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c      | 1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c | 1 +
 drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c       | 1 +
 6 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
index fdb6c648e16f..7541ffde6521 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
@@ -6,6 +6,7 @@
 #ifndef __DSI_PHY_H__
 #define __DSI_PHY_H__
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/regulator/consumer.h>
@@ -85,9 +86,7 @@ struct msm_dsi_dphy_timing {
 	u8 hs_halfbyte_en_ckln;
 };
 
-#define DSI_BYTE_PLL_CLK		0
-#define DSI_PIXEL_PLL_CLK		1
-#define NUM_PROVIDED_CLKS		2
+#define NUM_PROVIDED_CLKS		(DSI_PIXEL_PLL_CLK + 1)
 
 #define DSI_LANE_MAX			5
 
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c
index 677c62571811..9812b4d69197 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2018, The Linux Foundation
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/iopoll.h>
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
index 2c3cbe0f2870..3a1c8ece6657 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2016, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c
index 1383e3a4e050..90348a2af3e9 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2015, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c
index 5311ab7f3c70..f3643320ff2f 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2012-2015, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
 
diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
index ed8192d56b06..305042c29b2b 100644
--- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
+++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2018, The Linux Foundation
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/iopoll.h>
-- 
2.43.0


