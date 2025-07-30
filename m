Return-Path: <devicetree+bounces-200881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C67E0B1672C
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57DF154155E
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6BB2236F3;
	Wed, 30 Jul 2025 19:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iXgmZUOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D3D206F2A
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905194; cv=none; b=jjcnJ6zXOgHil4yIEi+Hsqp7syQTqtxCkbxw5DuWJsEiYCuXB/rUyJmRfR2mbeHWQaQeBYrRXDiDB3nul1eWCijZdI61i1WlJjT0jsDqc1OZiRLVYzffwNtWrF/WbtQ3S9fDTvj3c3cht9ngAhDdmbFxoQIlaYBve6NuZmvr8aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905194; c=relaxed/simple;
	bh=+L6M+3/g1Jg0R2zaIa85KoEqKt14CHxdoVxCsLgcBVc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I/Chf32CMCrVKVMoT7cKMhktR7y2Y+EpzvSCJP1d4eNbRq2dkY4KrtuInNvgMjYsLi85lmW3GOu1CZgOyO8aApA5yTq/KgbP4+Wy0k/GxC6OU5st0TXLW1uBQcfJdr/O5CKA5w7bQ0FuGEiQ2kn7AzzJ724emxlpgLVRKRS+IA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iXgmZUOc; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b794a013bcso223910f8f.2
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905190; x=1754509990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRV/p/LfMjQVL8Vp7f4I6Y+3ln23q8MmT2AnWttCTvQ=;
        b=iXgmZUOc+pu9DvLsr2PaL3gukIMhOdlMgsGWZryMTJa5c1pkDsbCaiEwbpr8+M+cFp
         Kjuwwaenbnbo1uYcRx5ItM/VmKyfKym5JOWoZgKj4p8QxV0A/uPrIHuUvS9A8o2C+Ym2
         AGFZOSgwrU6oN4QoFHne+6BmpYv0LVwGlDTmKAvDv+xYb8T5iInt4E7I5/ovnRRTEm72
         MTMX4bCNcyGQ+evH7wm9gO8FxejBAQEaQiyjUWI2qpGpC7PXrt2XLA7JY04hWDOxh1sC
         8nv/DuFURxKLkrOON2jvMwsoSt2iLGDJt8UiQPiMbTaSGXm1K8wzGzBelhxte+e64LOK
         41rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905190; x=1754509990;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uRV/p/LfMjQVL8Vp7f4I6Y+3ln23q8MmT2AnWttCTvQ=;
        b=e1g7q9AIBEtVTKYILh+uXgF9T9mymgNiCsmktAlHBpAlBQexaEmpKxgDRTcmYnhksg
         kMQZmQHkomg+PTh2os6gcQ87WTA6ntOGHw7f4bRH+7mc2mQ3hbXk3r2FYlvwNn7nW09z
         fZYUMjbi5uhr1dTOq5+hOD9Fc2DARpCRkHf8mPH/FC09mnWddbKs1RE1rCd2ToXjEwrM
         G1YVyBQ6scyDT2pj3qWD1TrHpCNsDlIpMtqjwBHMxk5nu2a3d3bnRDWoAhR48M8hIRKm
         3cZekoGNyqrVrfq4De4sMRQNZ0vEXuH8hfnEomYURdqPCzLL1Bm4pmAfcR8DyMbKCzLe
         DWjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFxKTtvrLpl8UG54OIlgOiyyLYE6Cl2Nx98jOXVLKd0oUoVc1zUVRZXejK71cHpD1TMOvalX51C48u@vger.kernel.org
X-Gm-Message-State: AOJu0YxGP0bjxrpcwCeYODUHrcccgsRWW2MdBkKLg3rzdmfRMyD1YsWZ
	vu+aMYcphh2aoKLz5E3LbsvU+moLUSTjDkqmzR2oCz36KZoDwzUZutNYFxtljXzpcw8=
X-Gm-Gg: ASbGnct4pmD6CHGKhJTllGkcExsZilTqFE2AY04+APGgi6L7Eq26UWb5u/uVIJYf37n
	F+bzfBJKE5zyThC3n7US16BuPRtJJ3Izq4S5BMupfa5ScUyeejx0CkyjbLZi3iZ3ICHMkxg5baO
	ys1O6bU4N3vi7GsOVh9tzDe2rEby7KT4jgR6Sy4RxE+6e0LilrsWsQh/iMj4j25UuOVenoJyrsi
	WsLWeUfffDkqr4O1Bb7eHC6tOWq3jxSVYnXE60xYOBG1KsROu2zODPuO7+Y59gIev+vPV3BBZVS
	FW7CrGuFMcscv4svzPhzz4xMI475bFLrATBscPWnNzmkVprKKNld2MtgB3s+/wsi/jCk6Z+13tn
	o6Lz0He+zgOdpdjRdpwnwqwkxdFXGg4XkhWkqDfDzJtAQfBPJ
X-Google-Smtp-Source: AGHT+IHoW22IWQzWG2jTmsD5K8X0np0CnF0fBnETsAeghpGo8KlFwVLAjLsmEoVsuIGvC5ZXjhu4SA==
X-Received: by 2002:a5d:64e5:0:b0:3b7:94a2:87e8 with SMTP id ffacd0b85a97d-3b794fd5810mr3799184f8f.18.1753905190439;
        Wed, 30 Jul 2025 12:53:10 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:09 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH 7/8] arm64: dts: s32g3: Add the Software Timer Watchdog (SWT) description
Date: Wed, 30 Jul 2025 21:50:20 +0200
Message-ID: <20250730195022.449894-8-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Referred in the documentation as the Software Timer Watchdog (SWT),
the s32g3 has 12 watchdogs. The number of watchdogs is designed to
allow dedicating one watchdog per Cortex-M7/A53 present on the SoC.

Describe them in the device tree.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g3.dtsi | 96 ++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g3.dtsi b/arch/arm64/boot/dts/freescale/s32g3.dtsi
index 77ef75bad4be..dabad071bf81 100644
--- a/arch/arm64/boot/dts/freescale/s32g3.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g3.dtsi
@@ -670,6 +670,102 @@ stm11: timer@4052c000 {
 			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 		};
+
+		swt0: watchdog@40100000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40100000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt1: watchdog@40104000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40104000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt2: watchdog@40108000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40108000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt3: watchdog@4010c000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x4010c000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt4: watchdog@40200000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40200000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt5: watchdog@40204000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40204000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt6: watchdog@40208000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40208000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt7: watchdog@4020C000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x4020C000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt8: watchdog@40500000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <40500000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt9: watchdog@40504000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40504000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt10: watchdog@40508000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x40508000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
+
+		swt11: watchdog@4050c000 {
+			compatible = "nxp,s32g3-swt", "nxp,s32g2-swt";
+			reg = <0x4050c000 0x1000>;
+			clocks = <&clks 0x3a>, <&clks 0x3b>, <&clks 0x3b>;
+			clock-names = "counter", "module", "register";
+			status = "disabled";
+		};
 	};
 
 	timer {
-- 
2.43.0


