Return-Path: <devicetree+bounces-63049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B518B38A3
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 15:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F335288C09
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 13:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EA50148835;
	Fri, 26 Apr 2024 13:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S1rhvupy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45601148307
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 13:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714138718; cv=none; b=hF0d3GXBGo8ZAGAInDF9n7lTuHiEAo9nYJE3NAUCVxOUwkV0u/C3OTt2ubPqUvUhkm6jkxrVPqXSZYLH7r/BuAESeERLeoK9ak+qGzgQlYuojtUeNQ+R7IdIwBzDdOzXvuh8IHCehgAYbtHVNYs6sB3Ad6oQoG51LuRYHrNDD3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714138718; c=relaxed/simple;
	bh=MnvkoP96ETwyzM7/zS913M9b2W7iLYDRzbOwtkS5MV8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U/yr3L//PxenDW44vrh9jD2ZoJWYz9xsyuXLhl+5ndNHeZhUm6NBUBQo8WTd32V+N4PDbJHm72nbwd3WaZpvMPvCPfgSlnN01tnx1vo/p/CSmEmiILVoOCLEJG6ZbsOMLi1UXFonFs4Xo9SeJlqY13xWBpr/KbGRRWZGdy8QoaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S1rhvupy; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3499f1bed15so1928121f8f.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 06:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714138714; x=1714743514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uH+qHwJN2mCxyTFNfSJEDrH1StJ86nloa+of3UztIac=;
        b=S1rhvupyupesRYfdEI3MwlW+cDozOdLDCIwcTOg/OggL1KJYUMYSMi1ZDuy3WHhx5P
         2G4hpCwKShLk6uRuIgUACegh66jYBf2nkRVuo3bwGGKuSsry9L60BtCioTRvt7WGVDdK
         KE+uTDvOXE/+5ox2h0Q44kDWmCaJpcTQJqVkYgryafz3AnydA2J9hxxHTOCBp9o6fAIM
         EQpHTZRPbMH59bvKLQNNofXZidSF3H7jTiZ9O5rG0XjK39Imx4j59pU1Gke2pmU4ZgU3
         MMjXtuuJsF65hAaH9PeQGINa+8+TWDen9Xhoht0LDZU8iGiX/3NgwfGBqmiWBjiFcyxy
         sN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714138714; x=1714743514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uH+qHwJN2mCxyTFNfSJEDrH1StJ86nloa+of3UztIac=;
        b=o0MzPGesu3M7RaMqaI6YAhaPh8KdiDEDPS5DuoZ4LsfeTe3Uzr24Z082nFcPM771CK
         FkgKRXY/uGzj3mqRaan8+LuVGxz9xQLZ4zDh5zUcXMBCHRDdMgrzkINGOFR0f1QHwCSX
         l6YYHxZ8TWv8NP2V2/oXptLCu9KNiKEl5M26HD1SRwsWxjTNJvJBWReQL+y1hoffaBCA
         IuoiAhyrj8p1MrOHKjvWBVqrpwNw3bg4CV6/nbqI1q99JXLOLojwbKqgo4xmReLn3P4t
         y8EbzS42zqYSebJAoI9QfaBM/jywv4BUvkCc2nYdndWMW6X97mHDL0z+S4T7KXyWf1ip
         laDw==
X-Gm-Message-State: AOJu0YzEYf2TgOHA+BTHlne2nf7R15OLJ03k4c5dYTOrlTapapcYj/1h
	RpeaABkPS2ptSs7Iv+daEf4BiHSlR7Zxhp5D/nJk1I8o93kB+exC5gaVzoahXOI=
X-Google-Smtp-Source: AGHT+IFm+sPiQDs7FxsoddzmGcb5i4tZc2v1N/h+hnpqJdNZnJd4NgTvZqKCbojGXOgRYrkPQiVqiQ==
X-Received: by 2002:a5d:47a3:0:b0:346:41a7:2fc2 with SMTP id 3-20020a5d47a3000000b0034641a72fc2mr2953583wrb.32.1714138713599;
        Fri, 26 Apr 2024 06:38:33 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id p3-20020a5d6383000000b00341b451a31asm22327689wru.36.2024.04.26.06.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 06:38:33 -0700 (PDT)
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
Subject: [PATCH v3 3/4] arm64: dts: exynos: gs101: Add ufs and ufs-phy dt nodes
Date: Fri, 26 Apr 2024 14:38:23 +0100
Message-ID: <20240426133824.2283144-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426133824.2283144-1-peter.griffin@linaro.org>
References: <20240426133824.2283144-1-peter.griffin@linaro.org>
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
index 09044deede63..4679ca33c6a0 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1277,6 +1277,42 @@ pinctrl_hsi2: pinctrl@14440000 {
 			interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		ufs_0_phy: phy@17e04000 {
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
 		cmu_apm: clock-controller@17400000 {
 			compatible = "google,gs101-cmu-apm";
 			reg = <0x17400000 0x8000>;
-- 
2.44.0.769.g3c40516874-goog


