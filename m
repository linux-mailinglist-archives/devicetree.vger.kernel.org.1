Return-Path: <devicetree+bounces-65722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FF98BFBAE
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 13:16:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1F751C21730
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC74F8288A;
	Wed,  8 May 2024 11:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="tVtqRl29"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C4A8249E
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 11:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715166974; cv=none; b=rwrhLV82G/2cLRCdx5BqvwVHBiSkovf7/BWPbdyTZ75MNIt1eah8HTFmqybwupjP56H+yarCzw1R5/0WM45jT+RhtwxtbFLvoPX2mjS1qM+04bsRQwmaM44sbTh83xN48eK3IUQiEUhBJwyFe9V4O/78uVJEA9AqNdbUGzcVSz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715166974; c=relaxed/simple;
	bh=RPie27IklaRFn+/JiKJQkM0UDLWbdd1RvmETEowVFe4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SuWGcFdqWEph4yv8tYoZN6FWApOZ1uJyHZvu22VOu2N0lFTMIMhnjAuhzd3PW2L/A6MEQNIyTmA6+bO3+sMd2JUeevcdzNff3Tr10dTzUNbRLyL+Yvci9N8pyXU0ouU4aaxcXHnkEkQYEbvte+9J1KO+A8zdVCrYNlp9ZRpfcSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=tVtqRl29; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2F76E413FC
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 11:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1715166969;
	bh=/V1XrjVIykV/6kKtO7hT6IY0af9h2AXu+LfSqihAnro=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=tVtqRl29Ju33aJaT6Of1oF1cSmzbdnluNLoJ+tX6YCpz28ip3lQ/+wU1jqjGSBMPW
	 AotufuE9F2mC7I2arH9neL8B7L5/cAlQ6x2IB4SfAoPEb5+0+IRiXvByH8ILYypNqA
	 4EPDpzvipkkxSVr4RrfnH+m1RIscM68adsVcGsSQaSMi1ywNzeymxdzjnT8qNS0xT6
	 nKd3XXTdFoTXgmMJSh/PvaLY+a2lhD8qeYvGq6gNtfT7qekwD3NfNGYASF63Ef9bxA
	 fqEQJeURtHgpkclY7097y7jlamMRbn/ylQELFlDBE1z5kueDi8LpuyO3fMeZHbnwrX
	 e7GaXP3Op07hg==
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-5729ec37366so2485996a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 04:16:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715166968; x=1715771768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/V1XrjVIykV/6kKtO7hT6IY0af9h2AXu+LfSqihAnro=;
        b=U7PSEETP+ytXSegHeJQHdtbxqtUiA7vjD/wD/ooTFVtoJulxdomzZBuvGrxDZMNH/p
         4H2h/c13A/ty/Xtsaq747FIOclA2bDp1cPNxyaOtTRhDz7jmljCWer1WDgLou3hPaNQ+
         Fs0vVRDJ1psBl7Ej0w7vUF8P88pq/gvw0chb8FWqgS24817dIs+V6ALl9Cu4GyKD4jnj
         UtotjeJDB93K/spoQkFTWOOcrPHs7YNl7mJk9T2w/kTjSKOzvzVNT7jyMecKcF8f2hIc
         f78E855rKb0pLCyG6ZM798rS103Ea4NiKKrduRhrvd3VXmxfmth2a4OUKTEvj+Jvv6Id
         s/2Q==
X-Gm-Message-State: AOJu0YxBRfaC0tZtl7OSUgHchqtARQZHEH6JOk1ai+IUU5qB7EZDeYNr
	G91WqPY1ojQ6Fqp/KrjDPbhpUt7DOh14O8b3XBPkitaVEYi2nPUSAvDVirJ6UilPLxPJTUvzSWn
	8FUkdpB/QumSb7EdYRDAFM5TWW3xXClAjMLt84dYZJksiApf6N1lyhoJ6qg3AKljQ5/Te93WxsM
	x3WiJzYmY=
X-Received: by 2002:a50:8750:0:b0:571:cb02:418a with SMTP id 4fb4d7f45d1cf-5731daa2c96mr1402044a12.40.1715166968340;
        Wed, 08 May 2024 04:16:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6TPvf3Ivj5W/nYnn3IO32jmZvtFJ0qUyRLDwfBkqqGUcetVJihJg5ZpM/8Zui9NrEJ+6fzg==
X-Received: by 2002:a50:8750:0:b0:571:cb02:418a with SMTP id 4fb4d7f45d1cf-5731daa2c96mr1402037a12.40.1715166968077;
        Wed, 08 May 2024 04:16:08 -0700 (PDT)
Received: from stitch.. ([2a01:4262:1ab:c:8ce6:9eb:cd7b:fcdd])
        by smtp.gmail.com with ESMTPSA id co22-20020a0564020c1600b00572a865af10sm7513556edb.44.2024.05.08.04.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 04:16:07 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH v1 2/2] riscv: dts: starfive: Enable Bluetooth on JH7100 boards
Date: Wed,  8 May 2024 13:15:55 +0200
Message-ID: <20240508111604.887466-3-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
References: <20240508111604.887466-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Emil Renner Berthing <kernel@esmil.dk>

Add pinctrl and UART nodes for the Broadcom Wifi/Bluetooth module on the
BeagleV Starlight and StarFive VisionFive V1 boards.

Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
---
 .../boot/dts/starfive/jh7100-common.dtsi      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
index ae1a6aeb0aea..1f79481bfd96 100644
--- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
@@ -289,6 +289,41 @@ GPO_SDIO1_PAD_CDATA_OEN_BIT3,
 		};
 	};
 
+	uart0_pins: uart0-0 {
+		rx-pins {
+			pinmux = <GPIOMUX(40, GPO_LOW, GPO_DISABLE,
+				  GPI_UART0_PAD_SIN)>;
+			bias-pull-up;
+			drive-strength = <14>;
+			input-enable;
+			input-schmitt-enable;
+		};
+		tx-pins {
+			pinmux = <GPIOMUX(41, GPO_UART0_PAD_SOUT,
+				  GPO_ENABLE, GPI_NONE)>;
+			bias-disable;
+			drive-strength = <35>;
+			input-disable;
+			input-schmitt-disable;
+		};
+		cts-pins {
+			pinmux = <GPIOMUX(39, GPO_LOW, GPO_DISABLE,
+				  GPI_UART0_PAD_CTSN)>;
+			bias-pull-down;
+			drive-strength = <14>;
+			input-enable;
+			input-schmitt-enable;
+		};
+		rts-pins {
+			pinmux = <GPIOMUX(42, GPO_UART0_PAD_RTSN,
+				  GPO_ENABLE, GPI_NONE)>;
+			bias-disable;
+			drive-strength = <35>;
+			input-disable;
+			input-schmitt-disable;
+		};
+	};
+
 	uart3_pins: uart3-0 {
 		rx-pins {
 			pinmux = <GPIOMUX(13, GPO_LOW, GPO_DISABLE,
@@ -393,6 +428,20 @@ wifi@1 {
 	};
 };
 
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4330-bt";
+		max-speed = <4000000>;
+		device-wakeup-gpios = <&gpio 38 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio 35 GPIO_ACTIVE_LOW>;
+	};
+};
+
 &uart3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart3_pins>;
-- 
2.43.0


