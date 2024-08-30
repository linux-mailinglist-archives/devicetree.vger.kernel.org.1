Return-Path: <devicetree+bounces-98316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CE9965B68
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2AF122834DA
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13DCE177981;
	Fri, 30 Aug 2024 08:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sh4uZATs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9609717624C
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007570; cv=none; b=gJEkAnvO0AaYjCN6Ndpgz81utfVkptWQv52a+nx2SwKRAYs8c/Zw5W73cRhte3bTXjoVMJVI2zqL5A4ez/trCr/eMWQf48GOYZLtfjZ2aSxo2hoKUiZPATSOcUnEm14IJxrsSCxZIS85ysLOsFxkLafAcpsA6kqMuvOtU/Ucpyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007570; c=relaxed/simple;
	bh=DMAcAD39Rf1n68oqND0JwpSAkm1di0q32zBsrM5swsc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ubat1PFQjBmfoexUdUrLDWVbxtmVYORjVbQbKfmZrUR1Wp1XsB3A0V7gLMB6yha5JS1/u6Y7bDBdAiBIhMRg5g23OUX8rBLFjKrovCJLFQhm0itr9retTRNphwoqqUaiUAy9V6uTTWhSaHLuGP/QSqp5490jmZCNe+J8jgmuL7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sh4uZATs; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-714226888dfso1300026b3a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725007568; x=1725612368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c0MSD/vKECgZ6ipsqTjNJm7AvSs0y8L2jz9lADbJGXw=;
        b=Sh4uZATs1LWBusDOq3XedlwuHEcVGha21TYrDvO9sJYY9mZsAVQXhrBx3CQKWCNfmW
         /1UiBObUuSpwaHQZ+PlxVTiO8idY2l/firsYac7T0D/OtGxI9kKw9z1JXwQLGrVm8NAz
         27XthFch4ZAF47HPmAvm3SE8CHTTlJxTTjkQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007568; x=1725612368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c0MSD/vKECgZ6ipsqTjNJm7AvSs0y8L2jz9lADbJGXw=;
        b=H4frfzdZ/bSkbzLyNR8PS+PbcQ7JxcMKkCGmxjCABcFPNm8J6v7iUnh2DOdz0p4dfA
         l0oXanlo0kfnn66TJhv8yMRYExxRQLxBaLGbQHgcH5IqXqc6QuwoXo9kVJb97f9y1O6N
         sgxzzC9FXAGSzoLfFtObrHj6Bl9nExOeM7tGCua/kXfdSMIquGCOYjA2e56YuzaqsnEL
         GIs1ja/KBeqfw+uL1WE4O52MlMzDAO9w/Etm1o7Zswq82kQI/Xk49uO7UukkN00gOhNI
         V7BqfZRwEIenx3x6ob6F0sbgBn8nkluJl8+R+NmOS39d0C1XNA87I4Agcl+1+2IMedlX
         D/vg==
X-Forwarded-Encrypted: i=1; AJvYcCX7dvLZyY62xqeE3n1VmmJ4eYJoZectzfUr7XYywkU/LpIo1uysz0jLCauaQ5Cmzs0N5Lm33njY6C3O@vger.kernel.org
X-Gm-Message-State: AOJu0YyW3FJotx6I82tY4uF23pOWBqn0xbeYCCdIbiWKi+XoEm6czQi0
	mFa1hKkHpUxizLWaY2h4Ov+BUJ1AB80EqaKRPIITxshLENNRx/r5oIPic6BUuA==
X-Google-Smtp-Source: AGHT+IF/Ev+xp5G1M+ToeusxjN0ThDIfMD72jH6J5Y7yXu9dlnTUI7Td1DwM8MVKcLVb5RSdY4uPIQ==
X-Received: by 2002:a05:6a20:4386:b0:1c4:214c:cc0d with SMTP id adf61e73a8af0-1cce10ab1ccmr4853891637.36.1725007567866;
        Fri, 30 Aug 2024 01:46:07 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-715e55a3a7bsm2288304b3a.47.2024.08.30.01.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:46:07 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v4 3/3] arm64: dts: mediatek: mt8186: Add svs node
Date: Fri, 30 Aug 2024 08:45:44 +0000
Message-ID: <20240830084544.2898512-4-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240830084544.2898512-1-rohiagar@chromium.org>
References: <20240830084544.2898512-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clock/irq/efuse setting in svs nodes for mt8186 SoC.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 85b77ec033c1..3bd023cdcac0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1372,6 +1372,18 @@ lvts: thermal-sensor@1100b000 {
 			#thermal-sensor-cells = <1>;
 		};
 
+		svs: svs@1100bc00 {
+			compatible = "mediatek,mt8186-svs";
+			reg = <0 0x1100bc00 0 0x400>;
+			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calibration>, <&lvts_efuse_data1>;
+			nvmem-cell-names = "svs-calibration-data", "t-calibration-data";
+			resets = <&infracfg_ao MT8186_INFRA_PTP_CTRL_RST>;
+			reset-names = "svs_rst";
+		};
+
 		pwm0: pwm@1100e000 {
 			compatible = "mediatek,mt8186-disp-pwm", "mediatek,mt8183-disp-pwm";
 			reg = <0 0x1100e000 0 0x1000>;
@@ -1695,6 +1707,10 @@ lvts_efuse_data2: lvts2-calib@2f8 {
 				reg = <0x2f8 0x14>;
 			};
 
+			svs_calibration: calib@550 {
+				reg = <0x550 0x50>;
+			};
+
 			gpu_speedbin: gpu-speedbin@59c {
 				reg = <0x59c 0x4>;
 				bits = <0 3>;
-- 
2.46.0.469.g59c65b2a67-goog


