Return-Path: <devicetree+bounces-253458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1339FD0D008
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 75F99301CD11
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE80340D86;
	Sat, 10 Jan 2026 05:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XQAaKIA7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E2C33FE34
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768023466; cv=none; b=a2BljVniTtVoTyshuEJRmrMhysxZWpT2nqtT161RyN+9OXcjkognb7zGkDTESnHuVjM8viRVy1zSDOoB8Cdj0RduB7M8ysHMM6Vz3dh5ulNj/p6GSVss2c/x+X1CbilR08tMqXt+q134oJPQquu8cHtjnyJyzGj5m1086PXKMOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768023466; c=relaxed/simple;
	bh=aiQH21puKQPZom1FBS2CS8wFKMYZxOyOP1j3Sjj8KqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AeoGYxbbkTeCouZ1zd+y49rd/YCVPTFxqAUMwQMekjEzHvbAQXN66x2N9+m49yGXH7pTHiqjJcuZRzlcooryUYDVOO1ixoI4GVq7iYENg9ZIDYFYfMU76E3zONsOK9wBqfiQFt/JNw/v22OzWNfAkhK54Sd1MrcdCzryHNfRj8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XQAaKIA7; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so34075785e9.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768023463; x=1768628263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBV1jttw9vA0jCOoGP99Ua6fivA5lzhlMS+1uYQ4YFE=;
        b=XQAaKIA75JzKzrthVP89Cqf5lUYtymozYmjUgktIN6oWhMG6LDtPcVKAtJesOzmZzd
         M1eE1JZF8Jcfzjwcl0DHx5khfKSOgJ8LxsKKTi7U6pJT5mAKBpwOMfWafpeZKnzLlS0o
         2Y0NeLU4dH/PZlF+NW5qR+P5SqhwCB9K0sxPAdsmquN08VNtA+X80Zd+joY3T9/cAmI9
         K/6K9Isxb2OhjY/EErvIOboTVZZUvxn6iH0hf2IicjBnCfQaoOyRlV0u3oARqW10AvOx
         s7AGi9RLbjC/9C+gKhiR383uK0GaJpuEsn+VbI5k5wG2t3DiyB0kNchxsBT7X5iXxOPW
         wbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768023463; x=1768628263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KBV1jttw9vA0jCOoGP99Ua6fivA5lzhlMS+1uYQ4YFE=;
        b=IA4EF6I/kar5tLO8UdervlMRA+RFar0UJp0jm6AM5Uunaz2/KU9bVhsA9LbjNNsSj6
         UI01jdL3DyMuGrI+Zxuw0bLQc5Y6dBOJ6Hem6LNNBfNcisWJ0xwikYBrCt7ezu58xCgg
         S5Lx6+fpQol5UrJC0dHrldvaurNyEHP+em8bem9NmiypCmJgyrJx7EMD3yO/oz1it8yp
         soqss+MkgBqACm3d1rVbHfgT8Xp2CXmGDNpGth+6ohdM9Ss+03Oji0abjq4YegwgF72t
         BCGs126ZKmETsDcwiXI8HGFaUk+CL9vtyLMfTZwxYArGVmBnEbgokfvKQlOXkJ0wkfRh
         t7pg==
X-Forwarded-Encrypted: i=1; AJvYcCXDwpKwye0gJ0dtwj9KYUqYhCTXkfx63o5MkaOYz7BAh77joKceUINT26+Z+w0kDaDr7X8Wf/U9i7u5@vger.kernel.org
X-Gm-Message-State: AOJu0YxuU2GQXn9gc7XiGfauHQ6+fKTXkDeUmidAVZlEBVjQulj+r1Qt
	1sNZUPnifgjVTUk16FP33R8cj/9CwMWWh4SBQfFh0mCOqyDLTDphbA64bA8foQ==
X-Gm-Gg: AY/fxX7Isj/WirQPCxMKxYNlT4u28yUBzBk/CSmw4nuUpKBcIqc6zVocFi+/g4wZZst
	i+zDMBDeKCkEtcejUH+Q/Y4kiibg0/M7ul5c1J0FTfYojlbwPxlkAZX1S/kV014FD+HP7HHzL3A
	6jv+rTRh3Rq4iSmm5gMJkinee+nRF0vLqZVB4yslhPGTS6iVz4S0kLYyI+/WyWHCpWGO89W8oZs
	FZNW9HlKYm2OADP9VcjKFST0iZKABKp39L7KNBhxZZm21hRtjjB4MyRdzUzmLHPK2pwzJ46Fna2
	0CikM6JOLmM8exfhXlEovp1H6ejKMSoiMIcea/OKau7XrfByqrssfcE5BXEEOC4yRcEY2C7MZGQ
	HJRms2Fy4wo6tE0jqvnpLsb5bhSYteXhH5daWBpaYtTv6SrxcVxPEbZFoUBwX+DAJ2/tViIew6+
	INDljFkkm63kpbwFw=
X-Google-Smtp-Source: AGHT+IFcfMPIrhWiXPkS98R5rwsX/ACoRCaVo+plXZiPZaElaqnswMgbw6+184Fm/K+bJwMBmWeKXg==
X-Received: by 2002:a05:6000:4287:b0:432:851d:35ef with SMTP id ffacd0b85a97d-432c37a3b62mr16501208f8f.42.1768023462952;
        Fri, 09 Jan 2026 21:37:42 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dadcfsm25973825f8f.3.2026.01.09.21.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:37:42 -0800 (PST)
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
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
Date: Sat, 10 Jan 2026 05:37:27 +0000
Message-ID: <20260110053727.2295260-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260110053727.2295260-1-christianshewitt@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
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

Suggested-by: Diederik de Haas <diederik@cknow-tech.com>
Suggested-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a2c4957a5899..11536684479b 100644
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
2.43.0


