Return-Path: <devicetree+bounces-5185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EEF7B58A6
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DE1BD1C20902
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB711DDE9;
	Mon,  2 Oct 2023 17:14:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717C51A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:14:13 +0000 (UTC)
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18525B3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:14:12 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id ada2fe7eead31-4526a936dcaso12937137.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1696266851; x=1696871651; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Mtj4NCPRxZ6VOa3hAfKfXCzeZnGQjZkkPegFeXl3ak=;
        b=dcBt5dq4PmXpgwCWCtvzziGiKdoAEkVeOXd9VspMbpP8IkbsSSzzu2iHhiTEnrrdVv
         +pEJ5lZG0BbWwwAqA/8hjVy3mgvLUVvuTQyxlC1KM6ha8mUVopN9WHev8H1s6JGORj8V
         gstip1+CgTy6eIxNp9cQ7gTpzxzFa81RHyfMaC4GM7mThKJGFztUhG7RH6JO8xrAAhxN
         /TP1eSfxO9WXkJND5KtHW4VZLv9CZ8Ovnj9ga35Svm6DX5FBIONpJdd/8VMviasTGqIi
         Qz7VoQjn3El8RTPnyOHtIU4hVS73cCislSYskBuCLPBtexiG1wUNrcEmnIgCWeUAH3a/
         yuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266851; x=1696871651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Mtj4NCPRxZ6VOa3hAfKfXCzeZnGQjZkkPegFeXl3ak=;
        b=qdF+5ykX1eSphWlbJRkPwpNeYhje/cpJFHJRklsq2p7ah3bhBK38ef8x7ecPPh/l0W
         BoBjx/ozD2eYJUMlf08P3CaxUDgQxzMMXGgyIiy7u7fn6z/CxN7f3ZzJPrytMlgJ5L8b
         l3ydBP0AEGdEBmUPkufNugJtS0I0taM/k5ORTKBW1ndhH81MeagZnVTwH4xc/UpB7pbF
         /DDpO/hJO8WydN5Z/yCBX2Kkgmd3jj4lCk/SWUKmmeoT0lWrrFbRXv7VxxSrAWeIdvkV
         9pwZ3lezx4uPhMRn0uBvN9FoBydqHXIAxLtdoqCZETWSKSN4W1ib0LKFlyhdX3eGiHdr
         P21w==
X-Gm-Message-State: AOJu0Yx+I7AtLOlscjkpBSOdF7zxwKl82050baQ9dLXRr7XPs7f5CBF5
	0f6l8zcHN/cLXVqoJMh8hsbihQ==
X-Google-Smtp-Source: AGHT+IH3XNpYfmGvb7OL9Qkhu2zYZC2IvCPU6H6n+N4txNDekG4/DSCJW9S/TxcZ4yyvcTicsIFB7Q==
X-Received: by 2002:a67:e8d0:0:b0:452:8717:1fa3 with SMTP id y16-20020a67e8d0000000b0045287171fa3mr10481368vsn.3.1696266850932;
        Mon, 02 Oct 2023 10:14:10 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id dy52-20020a05620a60f400b007678973eaa1sm9132660qkb.127.2023.10.02.10.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 10:14:10 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH 1/2] ARM: dts: stm32: add stm32f7 SDIO sleep pins
Date: Mon,  2 Oct 2023 13:13:38 -0400
Message-ID: <20231002171339.1594470-2-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231002171339.1594470-1-ben.wolsieffer@hefring.com>
References: <20231002171339.1594470-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add SDIO sleep pin definitions that place the pins in analog mode to
save power.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
index 9f65403295ca..26f91ca0d458 100644
--- a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
@@ -253,6 +253,17 @@ pins2 {
 				};
 			};
 
+			sdio_pins_sleep_a: sdio-pins-sleep-a-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 8, ANALOG)>, /* SDMMC1 D0 */
+						 <STM32_PINMUX('C', 9, ANALOG)>, /* SDMMC1 D1 */
+						 <STM32_PINMUX('C', 10, ANALOG)>, /* SDMMC1 D2 */
+						 <STM32_PINMUX('C', 11, ANALOG)>, /* SDMMC1 D3 */
+						 <STM32_PINMUX('C', 12, ANALOG)>, /* SDMMC1 CLK */
+						 <STM32_PINMUX('D', 2, ANALOG)>; /* SDMMC1 CMD */
+				};
+			};
+
 			sdio_pins_b: sdio-pins-b-0 {
 				pins {
 					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
@@ -284,6 +295,17 @@ pins2 {
 				};
 			};
 
+			sdio_pins_sleep_b: sdio-pins-sleep-b-0 {
+				pins {
+					pinmux = <STM32_PINMUX('G', 9, ANALOG)>, /* SDMMC2 D0 */
+						 <STM32_PINMUX('G', 10, ANALOG)>, /* SDMMC2 D1 */
+						 <STM32_PINMUX('B', 3, ANALOG)>, /* SDMMC2 D2 */
+						 <STM32_PINMUX('B', 4, ANALOG)>, /* SDMMC2 D3 */
+						 <STM32_PINMUX('D', 6, ANALOG)>, /* SDMMC2 CLK */
+						 <STM32_PINMUX('D', 7, ANALOG)>; /* SDMMC2 CMD */
+				};
+			};
+
 			can1_pins_a: can1-0 {
 				pins1 {
 					pinmux = <STM32_PINMUX('A', 12, AF9)>; /* CAN1_TX */
-- 
2.42.0


