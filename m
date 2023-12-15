Return-Path: <devicetree+bounces-25825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71A814ABA
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 15:41:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56AB8285EC9
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 14:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF7083C460;
	Fri, 15 Dec 2023 14:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="q9xpxE4w"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5D53A8E7
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 14:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EC0C53F2CF
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 14:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702651158;
	bh=KeS7bAuIUzMlkgCBNZb8n3wxD/29BdX0GI6KJUISBPU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=q9xpxE4w8QHRDLbWBwh7Kox/tRLUNaCHOMzZS+SnKOOeby+RYJSkIbUAiE3qfeE6M
	 E2AbrZv46hzciIVRLBDwMFFk1KWOkkdVBE7097iBCILEAB7AvgxjFL03mLKQbO7Mva
	 WykKNx3ocOWtiSuHnHGD5ADo+rYDey1J2FW/I82wGiG1TCEC5lkVq/aakj8YpqPUTg
	 OBXEBmunFNlCtcR8WwkwlVz0hJDqYG5KZSQfGU72UQtaU5Tndm4aVLxr+bV6XHYF7W
	 HRMlXKheJtk13gH+tiHvLFrWAPJN6twpoZGO2Dpcm8fNDP0Q46V5pHLvo/rHHlhjrw
	 8sJzUHdbGgTcg==
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-a230f3b3599so42842766b.3
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 06:39:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702651158; x=1703255958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeS7bAuIUzMlkgCBNZb8n3wxD/29BdX0GI6KJUISBPU=;
        b=nlard5iIXnHO57YUtEkr1b9Wrq3qoBA3+6hcVyt73yldxgAIB1ekT0sOD9vQizMNX4
         bLsdkZNK7+07r6yOaxf2LY0nMg0CYE9Xzy70T0oM9sE63DV9Az07MBEhvRMYluPNZGFW
         pb6ifWOfqd+JLhOrMhnFbEdHoOera52gReXmGp4yFawvmY23zjhELBI/FjouzNcKMnNK
         yE0NgdMByOrsTiJrZ1z1HYHrePGvK8yVtbYDFcj/ihW12M6c0Ri935kcdqe4aZr+ppdQ
         gLTLfmIrqRlbkCNUrYZ9HaEXC2jhfFdmUYaH+ns9CMO6UvMj3GP9jTjeWrwkMQUb+ZLh
         ohQw==
X-Gm-Message-State: AOJu0YzdKnu77ZRePHO6SIrsNLXEMHFpHeCeeI9eyTA8ldtJ6y7lnZ5X
	lKY1TI6bOcn9SkWuJbKEDiRqsmcFKOy2y5sO9CAN3dGUGIvYE5C6pmGGV1I7QjklMw9ObOnGy39
	p/wUCvQfL0+cyYu4U8qroLF1cS5E2qlul7ohFPJ0=
X-Received: by 2002:a17:907:9815:b0:a1e:5ea5:c5db with SMTP id ji21-20020a170907981500b00a1e5ea5c5dbmr7355319ejc.83.1702651158525;
        Fri, 15 Dec 2023 06:39:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHYp9pwfbZkq5mfgtJhASrZeR58D28PvdjDO0/bhC5ViEz08OWOBS4jzY7w2oHtlQRgSLS9Lw==
X-Received: by 2002:a17:907:9815:b0:a1e:5ea5:c5db with SMTP id ji21-20020a170907981500b00a1e5ea5c5dbmr7355304ejc.83.1702651158328;
        Fri, 15 Dec 2023 06:39:18 -0800 (PST)
Received: from stitch.. ([152.115.213.158])
        by smtp.gmail.com with ESMTPSA id tm6-20020a170907c38600b00a1db955c809sm10789122ejc.73.2023.12.15.06.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 06:39:17 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Hoan Tran <hoan@os.amperecomputing.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH v1 7/8] riscv: dts: thead: Add TH1520 pinctrl settings for UART0
Date: Fri, 15 Dec 2023 15:39:05 +0100
Message-Id: <20231215143906.3651122-8-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pinctrl settings for UART0 used as the default debug console on
both the Lichee Pi 4A and BeagleV Ahead boards.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../boot/dts/thead/th1520-beaglev-ahead.dts   | 26 +++++++++++++++++++
 .../boot/dts/thead/th1520-lichee-pi-4a.dts    | 26 +++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 91ba96588ae8..54d86aab6656 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -58,6 +58,32 @@ &dmac0 {
 	status = "okay";
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "0";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "0";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 0ae2c20d5641..260aa5e0769f 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -29,6 +29,32 @@ chosen {
 	};
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "0";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "0";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
-- 
2.40.1


