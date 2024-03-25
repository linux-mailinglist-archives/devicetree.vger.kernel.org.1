Return-Path: <devicetree+bounces-52827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3EE88A26E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 848C72A7DFD
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 13:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF43144D1D;
	Mon, 25 Mar 2024 10:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="l3uGXkjs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225DB1442E2
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711353407; cv=none; b=kYSfPpSqYMJZWsqq7pKwxX6MSalLmkf+YdKcw9XqovmWz/gf3qgFbYfpcxmOcstgaeDlkazOCFd+iiOntuwWBC8MIMK07Ah0BuXqp2Pb3kR7N7v5WpJIW+raeKCRbHh/OOWf8Mn7wy1GReAfxsjPxO8LQN0Mj1Is0rseIPz4grw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711353407; c=relaxed/simple;
	bh=A1g9JztB5Pywe1EJsKY+CQBGaXRMW2hC6ZpyWTRjSnE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=gCLZnC/bjx/SzkzaA59ocTuwN9rAx1J2NTxwFxeKD/PP3UGtqCd7ZhICagGcD1YnxogihJyV819W3NLwsF5Ex655E9tZCs3N+tdkHcYg+iG157GJAMoKE9PMt5LHvpvl6Tsbv3ogIH3vsvJmpCsaUgerpaANeXyBjj1c+hNbByM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=l3uGXkjs; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a46ea03c2a5so696982066b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 00:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1711353404; x=1711958204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a89LEVm7xD3V3aipTuTByCc7qaD6TInwfvfX/3rmr3k=;
        b=l3uGXkjscBHFukOlvOmsm8G4dS35a3QXA5h9XUa6LvhZiksqPGbbNKLfVmrMmLjX8l
         adCbtJ9weEP1OC0HqkiCtwVGXF5itcEJUREuPsQbfiXHEorfTrEZTH73K4iWwWGtHuIm
         V2hTEAT7aZK5LcoNAltI+WDxz4oVhugnzk60g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711353404; x=1711958204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a89LEVm7xD3V3aipTuTByCc7qaD6TInwfvfX/3rmr3k=;
        b=noHtsnRTOsqSEWNgaq7VYKMtqo7vunHDAr9wsOqoZmesGk7OxozBUOcf1LGpcKoJQ+
         qUqCvMKdhokpMLmiIDMPSwhfGOWmHASBhVeKoKmdatEsKKN1TWN2zKXQXACRqMZ25UKv
         XiiLaB+Dcb/gpp4kF4rovopnbtNqYujSP4jsCHDtGxdUWbE3/bUy883/+M7X4L5mjFhr
         +Ag3JyMWT1kQNnnZqQUz1WwIG2PL4W286n1Hoxp2+gw6s0pHl0yfpX7XV4XyORHFmc8T
         o/mFyNt7rsU5PFlKNVSInrVVj3fsasFyILQPjudqfxFxDx0TQO3LCmVi6G31pmt+qpl5
         OU5Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0icLX2yb6kmUp/mANJFjawDiqp2ckK3MbzFITzI3qcGNli4hgmbxcX2D08IwoOQHOmHFLZYnJO778PBnYnmOlKenVkvIqWAYrgg==
X-Gm-Message-State: AOJu0Yzfps5RNVaexHqTw2aynYYosgdp9dGGQFoGxNS+biANy3aCt3GP
	QuajvzOAHKlbewVdif7IW/ZjItx+A4WE8JbcqGvyz/v8pv3miRUZb5NSK3coSzU9fS9G1TwKig+
	dsKg=
X-Google-Smtp-Source: AGHT+IEeee43tChvxvBZH14MFQxubrof2GweXWpHdJI4TLqNPXlTq1m6/KkDZ6ZtyycHFcrYpdLjtg==
X-Received: by 2002:a17:906:b786:b0:a47:4145:3598 with SMTP id dt6-20020a170906b78600b00a4741453598mr4172639ejb.20.1711353404443;
        Mon, 25 Mar 2024 00:56:44 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-8-99-67.retail.telecomitalia.it. [87.8.99.67])
        by smtp.gmail.com with ESMTPSA id lb13-20020a170906adcd00b00a4750131edasm1661001ejb.206.2024.03.25.00.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 00:56:44 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: move can3 node from stm32f746 to stm32f769
Date: Mon, 25 Mar 2024 08:56:28 +0100
Message-ID: <20240325075635.1382911-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

According to documents [1], [2] and [3], we have 2 CAN devices on the
stm32f746 platform and 3 on the stm32f769 platform. So let's move the
can3 node from stm32f746.dtsi to stm32f769.dtsi.

[1] https://www.st.com/en/microcontrollers-microprocessors/stm32f7-series.html
[2] RM0385: STM32F75xxx and STM32F74xxx advanced Arm®-based 32-bit MCUs
[3] RM0410: STM32F76xxx and STM32F77xxx advanced Arm®-based 32-bit MCUs
Fixes: df362914eead ("ARM: dts: stm32: re-add CAN support on stm32f746")
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/st/stm32f746.dtsi | 17 -----------------
 arch/arm/boot/dts/st/stm32f769.dtsi | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
index 65c72b6fcc83..2537b3d47e6f 100644
--- a/arch/arm/boot/dts/st/stm32f746.dtsi
+++ b/arch/arm/boot/dts/st/stm32f746.dtsi
@@ -257,23 +257,6 @@ rtc: rtc@40002800 {
 			status = "disabled";
 		};
 
-		can3: can@40003400 {
-			compatible = "st,stm32f4-bxcan";
-			reg = <0x40003400 0x200>;
-			interrupts = <104>, <105>, <106>, <107>;
-			interrupt-names = "tx", "rx0", "rx1", "sce";
-			resets = <&rcc STM32F7_APB1_RESET(CAN3)>;
-			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
-			st,gcan = <&gcan3>;
-			status = "disabled";
-		};
-
-		gcan3: gcan@40003600 {
-			compatible = "st,stm32f4-gcan", "syscon";
-			reg = <0x40003600 0x200>;
-			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
-		};
-
 		spi2: spi@40003800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
diff --git a/arch/arm/boot/dts/st/stm32f769.dtsi b/arch/arm/boot/dts/st/stm32f769.dtsi
index 4e7d9032149c..e8cbb99e81a6 100644
--- a/arch/arm/boot/dts/st/stm32f769.dtsi
+++ b/arch/arm/boot/dts/st/stm32f769.dtsi
@@ -7,6 +7,23 @@
 
 / {
 	soc {
+		can3: can@40003400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40003400 0x200>;
+			interrupts = <104>, <105>, <106>, <107>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F7_APB1_RESET(CAN3)>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
+			st,gcan = <&gcan3>;
+			status = "disabled";
+		};
+
+		gcan3: gcan@40003600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40003600 0x200>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
+		};
+
 		dsi: dsi@40016c00 {
 			compatible = "st,stm32-dsi";
 			reg = <0x40016c00 0x800>;
-- 
2.43.0


