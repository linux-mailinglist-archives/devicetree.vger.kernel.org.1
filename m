Return-Path: <devicetree+bounces-30858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 727588294C2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 09:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 004DD1F27532
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 08:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDA43EA7C;
	Wed, 10 Jan 2024 08:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="UvJdDD9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB623E461
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 08:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-555e07761acso4585954a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 00:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704874069; x=1705478869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=UvJdDD9tOOwB+G7OLbNXkpqFhvmhl6/v3IyjcRag8yBgJnjbomftn4EkdFZtyTbvcx
         NB5Z9bLSWWQa2txs5PWCCZsImttmucVAse4hDEA3nwAS4ln0u8vo5yPBZpfLjWC/fwhi
         AkxorSANi0p2/kBsHCr9f9JOvq2g58yG6fbmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704874069; x=1705478869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/mPDNXnb7QOonc0RYCjpM23Kv+HuP4dW7ug+KwP2qeg=;
        b=QdUONRzuIm7GqF5YPTe1O8r0A8e+UsBMKVGqMUmCZgW2hFuXKq4yUxji2sfLW2FoqW
         xuvranlMP6A+sVLyKZsrBwqYwtREyYdVd6lUrfO8wa2Tr7bwbC1wiy1OErTFjyh9UUij
         T5XQfrfAIeDC7NZ3c0YXUg6xlvQtJrL4S89grl0V9xtoii/I4i+7wAAg+eZ/p5lPR+iw
         j90+vSGHWkj06vtwOv3iocpKoM5Xp//bq28yd18pwyWde5x2a8iHT6RTygnOg7ltzL3V
         BLCe5m8X+YL2V1otE2/Vv29rHPht/Hhvf7L7xOvWpnTt+/8Dyl+IN+8EMLxWFl1c+vy0
         QWaQ==
X-Gm-Message-State: AOJu0Yzb1EW8CkzvbA6COrJgUViLGtI/Kf0KpM3q1wZwm520kdpBH5HE
	TmJ6CMxdNZ050oJRR2OD84U4SS4AnEUjvw==
X-Google-Smtp-Source: AGHT+IGJgXR0yCASAx8ETNgEBI8g/NwNEjKYbA4ODw9DXGpWwBGJULwGbKR70UyuyQjAFZAccYG+ZQ==
X-Received: by 2002:a17:907:619d:b0:a2b:643:322 with SMTP id mt29-20020a170907619d00b00a2b06430322mr206090ejc.138.1704874069292;
        Wed, 10 Jan 2024 00:07:49 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-2-38-81.retail.telecomitalia.it. [87.2.38.81])
        by smtp.gmail.com with ESMTPSA id v12-20020a1709061dcc00b00a2af672cdd8sm1833341ejh.161.2024.01.10.00.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 00:07:49 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v6 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
Date: Wed, 10 Jan 2024 09:05:49 +0100
Message-ID: <20240110080729.3238251-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240110080729.3238251-1-dario.binacchi@amarulasolutions.com>
References: <20240110080729.3238251-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In the schematics of document UM2033, the power supply for the micro SD
card is the same 3v3 voltage that is used to power other devices on the
board. By generalizing the name of the voltage regulator, it can be
referenced by other nodes in the device tree without creating
misunderstandings.

This patch is preparatory for future developments.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/dts/st/stm32f769-disco.dts
index 5d12ae25b327..8632bd866272 100644
--- a/arch/arm/boot/dts/st/stm32f769-disco.dts
+++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
@@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
 		clock-names = "main_clk";
 	};
 
-	mmc_vcard: mmc_vcard {
+	vcc_3v3: vcc_3v3 {
 		compatible = "regulator-fixed";
-		regulator-name = "mmc_vcard";
+		regulator-name = "vcc_3v3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
@@ -128,7 +128,7 @@ &rtc {
 
 &sdio2 {
 	status = "okay";
-	vmmc-supply = <&mmc_vcard>;
+	vmmc-supply = <&vcc_3v3>;
 	cd-gpios = <&gpioi 15 GPIO_ACTIVE_LOW>;
 	broken-cd;
 	pinctrl-names = "default", "opendrain", "sleep";
-- 
2.43.0


