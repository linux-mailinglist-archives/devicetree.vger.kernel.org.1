Return-Path: <devicetree+bounces-110115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE619994E6
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41B8B1F241A1
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B6A1E47BE;
	Thu, 10 Oct 2024 22:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rwTIN7ST"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33111E47BB
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598028; cv=none; b=KE1izKvcmbH19JXinP7GxteWKdkc2E082yBDTTtQ2EEVYRf+sKwSvn1c1RA4I1/AcUwkn6REP/71TSzwURvZBrj2CRoNx9ZRp509/HpY1fDZqGN+yqEKJNcTcJJmYpNdc+hIm8J/7QYH+GrjBxkcWDjfcHN6KI58m6pEvLLFGFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598028; c=relaxed/simple;
	bh=ajsIbcMpZ62xaT/u/QBdBgJs1NaMgx0zZ8B0lnfHK+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PhiE0yAiieMmIVEe+07xlWHT2nVXvBuTBo99sAZ03pHTJviPDfzKVLpJp1cZ6Yi9eC7QBLsAGPQSFud+YfCSLhXw7ELn0jw/EKdT68OU4YuxnhvnFpaXSKXWUSLyGv1nxvdDmeY/wLFwv6uKK7R7CmpipWwHDAUuSkuth2JfTTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rwTIN7ST; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a997736106fso180691866b.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598025; x=1729202825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=rwTIN7ST+5419tUHhm5jtpWLBQmnHECX2JgaSnuV97cdAu7ki9rlaq6MPmfmR3ivcL
         ZEoOy1Ygz/wn3BzWqoWr9kIoRvLcs95KQ4S2pib42u9k9HnblSZTPBRcsiGCkF0xDpzO
         KagRYovvhemdFUMunlPUFATL2YLdDPwIU29vzBUn8a+cTVsyfZ06SN0W3zo/gkVGwXgM
         cbDQJ6D+MMAE9TD5MAJ0a3cx+u8VBpZLLZ9y7RmiEFjdYNPDzX/xRkV4GoZM54TAcdPM
         ZrDr46jkuDypHp3GTNxN95GJut7yCOiTxl0jZfFcowXmMpz+K1qjAO4gk9wVdV4laCfl
         GwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598025; x=1729202825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=76iS9IrOL+avAFMLHux4lzigT6bPCj+idYdT2QESLs4=;
        b=EmQ1g5jqCjamN02dof9pgEjriG9e/AmEjaCwjwVJzXu3C/PX9Rmq4bt64NdbqKAGtp
         blSagtcUYmn0ivRlQ+MgOLjqj1t4MNfrbq6vtF3nG/zaUfrQ7/oAKc8sdZF4mcNtw9E7
         dVNCbv+xjO2+Sm8FTOEpyOu8SaPqJH6UcJlwCc7UCVJkseNMKbo2FY2kmFcAs1bWzzoa
         t9GnjTWz/P1+rGn1Zga+8F9DxJw00isI2EmeFVmDP5fnVW0toV2LMqXuLKkGbotiUip0
         JnWytkOI6zG9PHr/lj5V0YqG1UDpi6JZei3vEOI6hKQWlI1z2A5tmFdJZ/3zg1K9kSRV
         jfUw==
X-Gm-Message-State: AOJu0YyqLCrC3aE+1+vry8LuEy+yYvx5FByrU7BiqW4JyridcGgK46+t
	x3bS6H2WmfEQgsVp8tpb2DUKOeqjQ2ofwnrPzPhfJZTd2dt+Pr3fNaSoXpoHACY=
X-Google-Smtp-Source: AGHT+IF1qQnmsb2EOeAzznfz4w8Pf/RBuBvhphvTLDrjh4Xlch9nN454LPRhZIMwsgeQQFxlqh7cNQ==
X-Received: by 2002:a17:907:e650:b0:a99:8edf:a52c with SMTP id a640c23a62f3a-a99b9582e09mr31583666b.48.1728598025342;
        Thu, 10 Oct 2024 15:07:05 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:01 +0200
Subject: [PATCH 3/8] ARM: dts: bcm6846: Add GPIO blocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-3-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The BCM6846 has the same simplistic GPIOs as some other
Broadcom SoCs: plain memory-mapped registers with up to
8 blocks of 32 GPIOs each totalling 256 GPIOs.

Users of the SoC can selectively enable the GPIO blocks
actually used with a certain design.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 80 +++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index f4f1f3a06eac..dc0c87c79569 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -104,6 +104,86 @@ watchdog@480 {
 			reg = <0x480 0x10>;
 		};
 
+		/* GPIOs 0 .. 31 */
+		gpio0: gpio@500 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x500 0x04>, <0x520 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 32 .. 63 */
+		gpio1: gpio@504 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x504 0x04>, <0x524 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 64 .. 95 */
+		gpio2: gpio@508 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x508 0x04>, <0x528 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 96 .. 127 */
+		gpio3: gpio@50c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x50c 0x04>, <0x52c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 128 .. 159 */
+		gpio4: gpio@510 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x510 0x04>, <0x530 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 160 .. 191 */
+		gpio5: gpio@514 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x514 0x04>, <0x534 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 192 .. 223 */
+		gpio6: gpio@518 {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x518 0x04>, <0x538 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
+		/* GPIOs 224 .. 255 */
+		gpio7: gpio@51c {
+			compatible = "brcm,bcm6345-gpio";
+			reg = <0x51c 0x04>, <0x53c 0x04>;
+			reg-names = "dirout", "dat";
+			gpio-controller;
+			#gpio-cells = <2>;
+			status = "disabled";
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x1b>;

-- 
2.46.2


