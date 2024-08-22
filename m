Return-Path: <devicetree+bounces-95717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9FB95ADEF
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:47:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F13CA1C229BE
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 06:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0411413C807;
	Thu, 22 Aug 2024 06:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lqYrXSKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813CD4963A
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724309236; cv=none; b=JCLsObXtx6Da7eY+EddkGz8gYbG9u8PDzO6kf8fTM+2qFDqnbKvZsiyAOIJaHHK84kgAShwx1P4NW6EsmQFhupmXIB6FrAM4TAFxgh3epHccq29kmk7/ouyN/KwNeEObven8W/GqnohOxQImzTE1/eoMQHX7P84nUbS+FowF8Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724309236; c=relaxed/simple;
	bh=VEcYQT5x3766vS7r2HfAiZ5/A6Vg6Iz4KN2/9kJJTGM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AVAOn3BN2nEbqDHqvs8cR2w0Fqz7ntHu6Zoh39KKYocwrPAC8BKHrX2UKMoTCTA8VhtnZmbr+DUPEBJqVb/8EG9oR4fj3S4/zdVafWZkIPcwLWNLU+1P8AW7auJkWdUDRKIRIv25rJoDAJgD65s9lC6tH9+/t7evyQk55QDxXiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lqYrXSKe; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2702ed1056bso292726fac.3
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 23:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724309234; x=1724914034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VF9PjinJER9wjMA+9D6wXT2j5101Rcr5iAVO00wcnuk=;
        b=lqYrXSKe5aLlar5Cj0QDqPqkEDd5JQ1DusK2IMppuou7CWNbP/RA6f360KB+EVrFI2
         v+ddxtrMuL1sbDnghdGqoND6d7YNPCzOBZYKvt98Rks//RW/pJx2eBpaT8rP6er8aJag
         w98Ic7nGC44G6DQBleV7vz/VqecoXfZkYtUUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724309234; x=1724914034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VF9PjinJER9wjMA+9D6wXT2j5101Rcr5iAVO00wcnuk=;
        b=BrKN519hJD0lDiproyDIcMVdUgJHsh2NxyHmnyuVnXsQXzzkowKpPX1sccFRa1+ti6
         aKP3+UXCGitIp59hXHhWNHRRgoAXNQtYGzSY/BJ391Z3X3bApijCI5gMJqUXwK2dQQhi
         l7FJcdX5KgHVbm2RFo/TKD73Z3OA8k6WDyzDsTDJja2oibWJN+KKQ4ne4q8n5RiejLtZ
         XasFXJDfDJ9xNp7dz/S/jxrkBkbFNfq9Ei+J66r325TgNA3+ar9DgTWRhIGWz8PHSbHS
         H1GnRfgjyzG8+wZZ09PoaF3GtxT2RwmrgoKbdpOGKNL3QEawjD1832Q9pqufKNY2p3C+
         JKlA==
X-Forwarded-Encrypted: i=1; AJvYcCVeKM5iLjlD1RfoqO9GXsLqEnmrf+j24pmjzbhluo3io/YxKWy+rzzBQYzEN2Z20uxYgrkzs+pxq1Pv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5xCtgEYhjw1gIpw9JMrvto81AMfQ5W+2gsWOFu2+jyksmJNtZ
	iheeg7l3jo/1wDvHjuUQenk4potVudkJ84B/eifwyaNPVSYgU/fpbPJkaSjuTg==
X-Google-Smtp-Source: AGHT+IGrUfTOkboBsPUwPI3QFIqP0YcLyJ19ev6z6avzO4hsPA9b8UhcQhr91d3x2cfdkibvPWSpUA==
X-Received: by 2002:a05:6871:1cb:b0:25b:6d53:d294 with SMTP id 586e51a60fabf-2737ef7d20bmr5327067fac.23.1724309234476;
        Wed, 21 Aug 2024 23:47:14 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7143424a530sm698129b3a.51.2024.08.21.23.47.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 23:47:14 -0700 (PDT)
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
Subject: [PATCH v3 3/3] arm64: dts: mediatek: mt8186: Add svs node
Date: Thu, 22 Aug 2024 06:46:50 +0000
Message-ID: <20240822064650.1473930-4-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240822064650.1473930-1-rohiagar@chromium.org>
References: <20240822064650.1473930-1-rohiagar@chromium.org>
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
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index e27c69ec8bdd..a51f3d8ce745 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1361,6 +1361,18 @@ spi0: spi@1100a000 {
 			status = "disabled";
 		};
 
+		svs: svs@1100b000 {
+			compatible = "mediatek,mt8186-svs";
+			reg = <0 0x1100b000 0 0x400>;
+			interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_THERM>;
+			clock-names = "main";
+			nvmem-cells = <&svs_calibration>, <&lvts_e_data1>;
+			nvmem-cell-names = "svs-calibration-data", "t-calibration-data";
+			resets = <&infracfg_ao MT8186_INFRA_PTP_CTRL_RST>;
+			reset-names = "svs_rst";
+		};
+
 		pwm0: pwm@1100e000 {
 			compatible = "mediatek,mt8186-disp-pwm", "mediatek,mt8183-disp-pwm";
 			reg = <0 0x1100e000 0 0x1000>;
@@ -1676,6 +1688,14 @@ efuse: efuse@11cb0000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			lvts_e_data1: data@1cc {
+				reg = <0x1cc 0x14>;
+			};
+
+			svs_calibration: calib@550 {
+				reg = <0x550 0x50>;
+			};
+
 			gpu_speedbin: gpu-speedbin@59c {
 				reg = <0x59c 0x4>;
 				bits = <0 3>;
-- 
2.46.0.295.g3b9ea8a38a-goog


