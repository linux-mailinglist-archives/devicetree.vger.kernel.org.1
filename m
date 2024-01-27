Return-Path: <devicetree+bounces-35807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6813B83EDF6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8BF11F2263F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 15:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185692941C;
	Sat, 27 Jan 2024 15:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="kT3PWrM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5462C1AC
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706369345; cv=none; b=s8xWl1ZFXzmv31k+cY7WTvHL8ehpW/iSufquLvevcbuCpS0Du25OOTa9yz+m24fNdqHJkyg+JHDrE85/9PmoNXDhzVy2UPfau1A6PPCczrRRzzhw0lpTEjTFMrF6QNaupgPXQ2U3qI3j0+dPBI0ltaYoJSqR+oHZLX9oOcKgvDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706369345; c=relaxed/simple;
	bh=GHo5Uu0Of2iBtObC3ZLX7wSpejqKaAA4OKsTcwbixqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RVVUkvxNc/xHsFge9GJvJQLO06brlUxyI9Xq8XaE5PdbYveC6QXAST0GY9rXJZpyvA1gFTCc0/WX0RSRcW6avrzwUQjiZYFEe6pKXiZNP2ERQpCsqQH8PGnbPTnvADHZJkfV3Y5NBnpv85/1o7yvLl/Li/JBxIa9X06MZdyEPZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=kT3PWrM4; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d03fde0bd9so591321fa.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 07:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706369341; x=1706974141; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQ9PYTfLUcfjyRJqgcRWuTdkFl4CeqFScaddJa4Lyi0=;
        b=kT3PWrM4aw5y98DV3dubCPWShsP1BOb7ro/FGA7CD5KwF/TEZpfIvENWGd7sTzwfwD
         kO3kJ/s3xjRFkclm+O5rLOlaLXytdbOQ8gZ2t2iplJg5Y6UU6sGTainoswB3QOWmG4/+
         vQFUgsC5PHfFUI6i3dYMRESpF4lUzObVCMnlg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706369341; x=1706974141;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQ9PYTfLUcfjyRJqgcRWuTdkFl4CeqFScaddJa4Lyi0=;
        b=OzpnwxPeZVuSSHaYDih6PSXLgInUx6r4dJo1AgZJptp+FRuh7kOsTzWHpzWTqugGGw
         c+x3cZfwWE3s8Q+mdfhc8LSiPWoF1tdG/qdM8A9AnwbNVz3vkiFoT/V5ck3Qt8QyeaZ9
         9FEEhISogSrQMvBztdwl8SHecY9PypSe/IExfTimzjiLzmWcZ7uXvys9R2OUWu/geETC
         1pSHhNzy+1/+AnjfRCbd2lDIPTOOcK2S8u7RJGPvGzvjwf3eZEs8b/QBQzAJBk22iRa/
         u74SGKgX2vY9iq4bJmyvKgzYQadBI6PvKN9I4k9ev8fzQBB9jP7Esy3fcqZCbpUXUihe
         iS9g==
X-Gm-Message-State: AOJu0YxFU6BnVWXyxQe3b/h8JXVT2B4QP2xKBMMVHxVUCCEf4OblnRR/
	h5vl7xNfUhC9C3W9I2cAw066Oz7UbYvIdH075GEqB4AwZ9ZfYHJlDXKn4I5AQ7U=
X-Google-Smtp-Source: AGHT+IFbqC5mI6d85g/WTmEICTQPFRXc2Q3MZ26rVAnIhbQylAq8FLk78zQxkd8AP9QrJIUphT0u1g==
X-Received: by 2002:a2e:965a:0:b0:2cd:143c:9283 with SMTP id z26-20020a2e965a000000b002cd143c9283mr1436284ljh.27.1706369341158;
        Sat, 27 Jan 2024 07:29:01 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-21-103-141.retail.telecomitalia.it. [79.21.103.141])
        by smtp.gmail.com with ESMTPSA id l5-20020a056402344500b0055974a2a2d4sm1745220edc.39.2024.01.27.07.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 07:29:00 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Lee Jones <lee@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v10 4/5] ARM: dts: stm32: add display support on stm32f769-disco
Date: Sat, 27 Jan 2024 16:28:48 +0100
Message-ID: <20240127152853.65937-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
References: <20240127152853.65937-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The patch adds display support on the stm32f769-disco board.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v10:
- Drop backlight. From a closer analysis of the schematics
  en.MB1225-F769I-B01_Schematic.pdf and en.mb1166-default-a09-schematic.pdf,
  it is noticed that the GPIO I14 is connected to an unmounted
  resistor (n/a), making the backlight functionality via GPIO unusable.

Changes in v9:
- Rename panel-dsi@0 to panel@0 to fix yaml warnings

Changes in v8:
- Remove unit name from 'ltdc/port/endpoint@0' to fix the compiling
  warning:
  ../arch/arm/boot/dts/st/stm32f769-disco.dts:189.28-191.5: Warning
  (unit_address_vs_reg): /soc/display-controller@40016800/port/endpoint@0: node
  has a unit name, but no reg or ranges property

 arch/arm/boot/dts/st/stm32f769-disco.dts | 64 +++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 660f85984164..52c5baf58ab9 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -41,7 +41,7 @@
  */
 
 /dts-v1/;
-#include "stm32f746.dtsi"
+#include "stm32f769.dtsi"
 #include "stm32f769-pinctrl.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/gpio.h>
@@ -60,6 +60,19 @@ memory@c0000000 {
 		reg = <0xC0000000 0x1000000>;
 	};
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		linux,dma {
+			compatible = "shared-dma-pool";
+			linux,dma-default;
+			no-map;
+			size = <0x100000>;
+		};
+	};
+
 	aliases {
 		serial0 = &usart1;
 	};
@@ -114,6 +127,45 @@ &clk_hse {
 	clock-frequency = <25000000>;
 };
 
+&dsi {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			dsi_in: endpoint {
+				remote-endpoint = <&ltdc_out_dsi>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			dsi_out: endpoint {
+				remote-endpoint = <&dsi_panel_in>;
+			};
+		};
+	};
+
+	panel0: panel@0 {
+		compatible = "orisetech,otm8009a";
+		reg = <0>; /* dsi virtual channel (0..3) */
+		reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
+		power-supply = <&vcc_3v3>;
+		status = "okay";
+
+		port {
+			dsi_panel_in: endpoint {
+				remote-endpoint = <&dsi_out>;
+			};
+		};
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&i2c1_pins_b>;
 	pinctrl-names = "default";
@@ -122,6 +174,16 @@ &i2c1 {
 	status = "okay";
 };
 
+&ltdc {
+	status = "okay";
+
+	port {
+		ltdc_out_dsi: endpoint {
+			remote-endpoint = <&dsi_in>;
+		};
+	};
+};
+
 &rtc {
 	status = "okay";
 };
-- 
2.43.0


