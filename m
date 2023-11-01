Return-Path: <devicetree+bounces-13487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C95947DE434
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:53:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85FF0281121
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:53:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E068614A88;
	Wed,  1 Nov 2023 15:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="AEbphMcc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECF612B8E
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:53:25 +0000 (UTC)
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F7EE4
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 08:53:24 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3b2e44c7941so4656625b6e.2
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 08:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698854004; x=1699458804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f5ijsHSrTzTaxlFkHmCRGPyrWJzfsbcZIn4Auv8liUM=;
        b=AEbphMcc/1kYwbvUcuW8HXmZSehJcQhyetl3rYWPoZeenKBTjA4O7tc8TboZh70fMj
         tMA4fJtqHXXNd5gqLD3iZmM7Got6bI/DiIPZS+JCybTYDwPWYwa73cX16nl/N1uaLqTc
         mWODMBjByf6HwEVh9tqwmNQFUikpqsivG7bDr4EZ0/GErpvrs5djzAdj5JAU4XuCmqpM
         gAI+8l0ImJIDL4Zr38uSO2MgoST4t5V5M3LWfjTqWtH+gNlPn42an8rDP0oPVa4UD1UL
         KkgLSsaOsgVziuBlhw3sFdh78WZkHdFIIcSDuOjhmwjNoRaKU9Mwfo4EhEWHJNLRy1uI
         fQxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698854004; x=1699458804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f5ijsHSrTzTaxlFkHmCRGPyrWJzfsbcZIn4Auv8liUM=;
        b=GubnSpNBqcaKPmrpARKUNud1OedMs23W0MHC7OUiPoJ8O05bSlbRj6eGgrz8Wi0myF
         FGvEzrTULFr6y6ORq607GYIMlSKV9cDTXZwUoXZNrYLfSXXV9acPmi7I4SfN9skE+hGt
         c6JR32DtsTMiB0C9nPLYnBT47CL447m8pghBOgNNVhio2Ei4D/aJH8mDO2n3W4WyT6Fu
         AaVsy/39V8wkNv6T8et18bUqtofYy25gxYg+aSgtM1GaqgaNEX/SCbxQm6vH1X+jLsLL
         9fluisVOwBQB2nTNLwr2LCCt7yQnrJnjuUhvaJjmhmZGyVDjA4ba50SKYV9akrOjbvGN
         AK0g==
X-Gm-Message-State: AOJu0YwJ5kwkBHBVjvLEgn/b/8XpUhkZfS8HcW39bUSV5FEtwgaFj1Xz
	LQj0n0u+paiWFPNAghP6qASnTA==
X-Google-Smtp-Source: AGHT+IHmmkiKXyy1l5dnqihVt3MujYnYJ9NEfXdzQwBgQiBgEoWkDDo9dz27bVWORqna0JEi7yol+Q==
X-Received: by 2002:a05:6808:698:b0:3a1:b28f:814c with SMTP id k24-20020a056808069800b003a1b28f814cmr17366198oig.1.1698854003784;
        Wed, 01 Nov 2023 08:53:23 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id q12-20020a05620a0c8c00b00775ab978009sm1549551qki.36.2023.11.01.08.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 08:53:23 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH] ARM: dts: stm32: add STM32F746 syscfg clock
Date: Wed,  1 Nov 2023 11:51:54 -0400
Message-ID: <20231101155153.2767482-2-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The syscfg syscon was missing its clock, therefore any attempt to
read/write it after clk_disable_unused() silently failed. This was
preventing external pin interrupts from working if they were initialized
after this point.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 arch/arm/boot/dts/st/stm32f746.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
index 4942753d011e..cce6ab0e4617 100644
--- a/arch/arm/boot/dts/st/stm32f746.dtsi
+++ b/arch/arm/boot/dts/st/stm32f746.dtsi
@@ -501,6 +501,7 @@ sdio1: mmc@40012c00 {
 		syscfg: syscon@40013800 {
 			compatible = "st,stm32-syscfg", "syscon";
 			reg = <0x40013800 0x400>;
+			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SYSCFG)>;
 		};
 
 		exti: interrupt-controller@40013c00 {
-- 
2.42.0


