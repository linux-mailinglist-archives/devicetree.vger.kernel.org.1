Return-Path: <devicetree+bounces-249742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B1BCDEA70
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 12:33:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4CB630285D0
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 11:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CEA31B82C;
	Fri, 26 Dec 2025 11:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YnwXz+Cp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A1D31B13D
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 11:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766748720; cv=none; b=TZQJ8PNByMMgi/Da6MhaVmdT7etm1B9qu7jx3poo4cEPVvJdqH7A/VbuRshLaWDMWhJPJBt27e4RCdJhXIFLSdj2TDpS1WlAjH2u/hpgHVldgRTb/dIR2Z6iLfCa+1rPHDIvyQwpoqaHXq0VT1M3qIHCBfJI+byN1cOtmf9HWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766748720; c=relaxed/simple;
	bh=o8WeHXECi8dmWIr+Makak47k2m+/uQv0NNmDSOOQ07w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CfCy4pZvY0/pQIKh3lC1Rzra8p/dlFeLvUiPI8c7Lrll3xLkHx1oR11+/yF28aPwkeTFUQQ+LcCofWZVa2Rcc8GJNZ9SWAvhdSwjO0PHRoTFd3oVlcbM8w1yx17n5FZcZo/cMpuK4lZb9bToztSH/2HL3R3zwm6mRXSYL5JDg6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YnwXz+Cp; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so3002697f8f.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 03:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748717; x=1767353517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIMoNY3Aw98ZzAyD/ql7BezuP1iCnP+4r2HUN/Krfmg=;
        b=YnwXz+CpC6GcP//vWc3H9DzCjs5AbawausVuTpPnE4BVjIJf9dWrIW0vGFWIhe0FEB
         gMql43FjEHyveAcGaRCTGmJNvNFanuZ4dXWpCTGAQS6hJG/RiyJF4LJCReCobYiWMMwO
         BncRL4SEhKEaOVrrUwt7Enw3rvqSCM6tkWcnRKz97s1/BCiq4uc6lBjleU2KbCo88log
         cERi/uEjyuaGzceylgOYUmMGc66TYGjsll35+DUfSl3/hXkH8ZjX0L/GeeQ6u0W065vc
         Ewc1388Hq4AB77GLcyytGdM++zcMZ5f6FY8PMZacWivSRuaMARW9QjSKijMhOzCLz7Zi
         uImA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748717; x=1767353517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LIMoNY3Aw98ZzAyD/ql7BezuP1iCnP+4r2HUN/Krfmg=;
        b=KKQmiZW2NxVrmT7vjf2oQEDqpWx5T0tVtTrKmenFkshkTA9NldGSAte14pz/SZoOYH
         f5bB4NSnuJJbqoGAzWhtQ6z4b9liPFW8sUv51ShMfqr/lMqEA6mf2F5DicNYSGXienEP
         dauFeAgFe5xSy491gf2xtj6fbxwCzjatQU5uvq5cocY5Esr5NpuOdwusQjSesGU+aO1f
         KhjOhJPzT8jsTwVP0FSgsHDC9JvdvD/NgHl3pjNQCErHJJk4ZDgehKYv9lBvacZ1DAW8
         bXoKTlHvKqRExmFQjK51KaG2flqR0Bgx3zdPXndLJ4gvlJZ71aPyyXTrpcLhYYE6oWPG
         MMmw==
X-Forwarded-Encrypted: i=1; AJvYcCW1HuKC9eCl73zgTt1Q28+113y7N8rP9kCA39zNNMZY7m/03MzqD57hej8Ej4pvIru2zcDzmyyhFB6m@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx7pxEESpiivwq1leVivvLTCDqQb6Kqwq6sutwgpU2j6laBnnq
	EFYXNzpWOe88akSEzLERA+73G73IMGjvqCxm6I+YYLZLPevyfMH1+SII
X-Gm-Gg: AY/fxX6VVrsimnCbMSekDlTBOr6b79bNQ187cGWzuc96nQX81xzWMDysbTEHYQu6hd7
	taBvbKy7ndNL1wQoz6YCgWPz2Ua78b+jHwndcMF55MSeF8HhfUACyj7F+UZVxy7DT50ArW+fZSG
	2BmZC4NmbxmD2/QUJWAiD/hwpfI5OKrzU00bnsGylrhOjR6UGxv60srMgy9hgDRNMvLz0bgP+48
	okzKfnXiJrFPjArsZ+7fQouDLfcLl/9//YDApJ3ZO6LJW+xT54nG93I1Te+CUd6nK7HaeMRFrlh
	HaVEcN9kGDvVVaQqMFh0qE9Tc+Wbc8otRuRX87D7BiaKwa3at0mE/PF9ZFEkUyOtMde9fy9GmF2
	swmfnzLbPXM8DU3srGCdSJxd+MInysMAbaKHfIhdiUl2xVuz2gfJ60GSZ2uoKwHO7qUJlLagn/N
	C2gsixDfrKrL8GE6I=
X-Google-Smtp-Source: AGHT+IFFOJzfU27KrqGH3nfRwzkjvpp/3lBr9q9F1dbqFSb0UGV9ka2fDQLSk0GuKEIBX51sO7Kfhw==
X-Received: by 2002:a05:6000:24c8:b0:431:808:2d58 with SMTP id ffacd0b85a97d-4324e50d219mr27294070f8f.51.1766748716486;
        Fri, 26 Dec 2025 03:31:56 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:56 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
Date: Fri, 26 Dec 2025 11:31:40 +0000
Message-Id: <20251226113140.573759-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the vdpu346 Video Decoders to the rk356x-base devicetree to
enable support on RK3566 and RK3568 boards. Also add the needed
sram and vdec_mmu nodes.

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Suggested-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 8893b7b6cc9f..b37eea56c221 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -383,6 +383,19 @@ usb2phy1_grf: syscon@fdca8000 {
 		reg = <0x0 0xfdca8000 0x0 0x8000>;
 	};
 
+	sram@fdcc0000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0xfdcc0000 0x0 0xb000>;
+		ranges = <0x0 0x0 0xfdcc0000 0xb000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		vdec_sram: rkvdec-sram@0 {
+			reg = <0x0 0xb000>;
+			pool;
+		};
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -619,6 +632,42 @@ vepu_mmu: iommu@fdee0800 {
 		#iommu-cells = <0>;
 	};
 
+	vdec: video-codec@fdf80100 {
+		compatible = "rockchip,rk3568-vdec";
+		reg = <0x0 0xfdf80200 0x0 0x500>,
+		      <0x0 0xfdf80100 0x0 0x100>,
+		      <0x0 0xfdf80700 0x0 0x100>;
+		reg-names = "function", "link", "cache";
+		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
+			 <&cru CLK_RKVDEC_CA>, <&cru CLK_RKVDEC_CORE>,
+			 <&cru CLK_RKVDEC_HEVC_CA>;
+		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		assigned-clocks = <&cru ACLK_RKVDEC>,
+				  <&cru CLK_RKVDEC_CORE>,
+				  <&cru CLK_RKVDEC_CA>,
+				  <&cru CLK_RKVDEC_HEVC_CA>;
+		assigned-clock-rates = <297000000>, <297000000>,
+				       <297000000>, <600000000>;
+		iommus = <&vdec_mmu>;
+		power-domains = <&power RK3568_PD_RKVDEC>;
+		resets = <&cru SRST_A_RKVDEC>, <&cru SRST_H_RKVDEC>,
+			 <&cru SRST_RKVDEC_CA>, <&cru SRST_RKVDEC_CORE>,
+			 <&cru SRST_RKVDEC_HEVC_CA>;
+		reset-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		sram = <&vdec_sram>;
+	};
+
+	vdec_mmu: iommu@fdf80800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdf80800 0x0 0x40>, <0x0 0xfdf80840 0x0 0x40>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RKVDEC>;
+		#iommu-cells = <0>;
+	};
+
 	vicap: video-capture@fdfe0000 {
 		compatible = "rockchip,rk3568-vicap";
 		reg = <0x0 0xfdfe0000 0x0 0x200>;
-- 
2.34.1


