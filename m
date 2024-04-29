Return-Path: <devicetree+bounces-63575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA25C8B5649
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAC661C22220
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 11:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C764AED6;
	Mon, 29 Apr 2024 11:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AgKXX2Vl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2DF4594A
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 11:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714389348; cv=none; b=aMdYGl5bumwcvtjC0zTvQNVMPcM72QyEpCCugywG7XJrSYp+M8Zebis2bTd8AqZe2qo9FdmQe9j2PloB9CIahDDpi/oUUezRtc4348rOTAohZTWB6Di3TbntiY7G7V15OX6Uq2lz3mzSrjbnfqJT2DvV4PPwxL9voohtlskqf30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714389348; c=relaxed/simple;
	bh=R8u9gOpaZoz3b/0A4Dz6h+enHqnL9gWvIJpc2lmJbIk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RbokbS7lM4PBuv6P3Wjq6+sCK9uVRxDGU9Hca5TjuiEy2RVe21mtBtfuZlwGLOaQki7+aKSj/+X0kUEVrtHiALsvHZdlDitUtbMwM+e32Obfbjv3+SNGY7+DvebZvyHs/yYiSGTI4xgTnbHiWB9ljWwuvuD0jxQepK11AmZOPws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AgKXX2Vl; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-41b79450f78so21322885e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 04:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714389344; x=1714994144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N1WAKwxpulo/9a7288mxakZp0oX6XNI0y7Pv/KuppyE=;
        b=AgKXX2Vlwx/zAGCM/dt48ybHFHHEf0hNZBdpzDjGbL5N11DINeQL6LDBi/3fvuWkHd
         ARN62iP0ZPnzYoX6nRVnitImri3c6tSPoCfuUAt38U5QtiYOQEA1r6Fkshk2cQIhOYm1
         mS1JszmB07+R9eimar25jDaX/AaZcQC5GGGo3WNINuFlWikZYzKbxwEK0XmUKbm0K2AK
         V0YmvNf2bSu5ZBqQy/BWPegdI4BgKbQEAgz8KbaLsUsO6sYPMhGxtXwPIu5mwFvA/xz+
         duiWovSvv+1+HC+t9qQfZspeJQ/I+aJtbiMgcR5VeiVooQvybJpsSJu6IezidZq0HnjU
         3iYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714389344; x=1714994144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N1WAKwxpulo/9a7288mxakZp0oX6XNI0y7Pv/KuppyE=;
        b=xTJHzhxOLsGRhOdvPgZ9P6yhzevodFiBGW3aNWt/mqgOWq6lzyh86bMa04vM2bqUm+
         0vGEFMpeWFM0SBZEUX9Ur67YKbNig3Spu+Ar78M45Pu3LvkkORU6jJkX69TBWOdnZX/e
         AvzoSP696wX5f28VNePUUsJjz4ZlnHLAAXjtRp6aL/dv1bQb/z4KUDR4Kit+YKSOpfty
         lNX7oq58sUO9P1CpCuM3ul3OIJf13c3vMbQ3nHpHJxH5tD+Bv3JRDM16l8/sjDuXzLjo
         li9GBQCfQT58S0ulrJyFWUGCKePYIw8lJjZq5ffB1Ulzesr/HFuH6fjlmwUH1fXEkhFm
         GE5Q==
X-Gm-Message-State: AOJu0Yx57KGmhUCDckWf6iFGzsiw97e1+FZwZORIXXAlEvcyRa9NnKkn
	+UryXn8eYu479/FDy9+UdXROo85Np/aAWJApSKuB9mMudWSZvAkbSdYOVvMsG3Y=
X-Google-Smtp-Source: AGHT+IEvJzhyspUyvZgekf+7N7FA03+ayXrlvlx7rF9PZ8VspjfLv75wdp9S/1Wy5cZLFnU+IA0obQ==
X-Received: by 2002:a05:600c:3acb:b0:41b:e55c:8ddd with SMTP id d11-20020a05600c3acb00b0041be55c8dddmr4741849wms.27.1714389344510;
        Mon, 29 Apr 2024 04:15:44 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:550a:b373:6b8:63ab])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0a4700b0041b434e5869sm16005337wmq.43.2024.04.29.04.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 04:15:44 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v4 3/4] arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes
Date: Mon, 29 Apr 2024 12:15:36 +0100
Message-ID: <20240429111537.2369227-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240429111537.2369227-1-peter.griffin@linaro.org>
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add the ufs controller node and phy node for gs101.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 36 ++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 09044deede63..9330d99e12df 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1277,6 +1277,42 @@ pinctrl_hsi2: pinctrl@14440000 {
 			interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		ufs_0: ufs@14700000 {
+			compatible = "google,gs101-ufs";
+			reg = <0x14700000 0x200>,
+			      <0x14701100 0x200>,
+			      <0x14780000 0xa000>,
+			      <0x14600000 0x100>;
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_ACLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_ACLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
+			clock-names = "core_clk", "sclk_unipro_main", "fmp",
+				      "aclk", "pclk", "sysreg";
+			freq-table-hz = <0 0>, <0 0>, <0 0>, <0 0>, <0 0>, <0 0>;
+			pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+			pinctrl-names = "default";
+			phys = <&ufs_0_phy>;
+			phy-names = "ufs-phy";
+			samsung,sysreg = <&sysreg_hsi2 0x710>;
+			status = "disabled";
+		};
+
+		ufs_0_phy: phy@0x14704000 {
+			compatible = "google,gs101-ufs-phy";
+			reg = <0x14704000 0x3000>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <0>;
+			clocks = <&ext_24_5m>;
+			clock-names = "ref_clk";
+			status = "disabled";
+		};
+
 		cmu_apm: clock-controller@17400000 {
 			compatible = "google,gs101-cmu-apm";
 			reg = <0x17400000 0x8000>;
-- 
2.44.0.769.g3c40516874-goog


