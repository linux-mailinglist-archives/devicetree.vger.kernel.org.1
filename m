Return-Path: <devicetree+bounces-1562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B73017A706B
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 04:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9101D1C2032C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 02:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CADE1857;
	Wed, 20 Sep 2023 02:28:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C3517FF
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 02:28:46 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B75B5C9;
	Tue, 19 Sep 2023 19:28:44 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c4586b12feso25676685ad.2;
        Tue, 19 Sep 2023 19:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695176924; x=1695781724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Ce8/QAABUl/Q3jFyxxZV+5lP94Ev40T9XLcoA3tCOQ=;
        b=H8ZEQ5jZCQfEXu/HvyGGIB0COrvXWr0AXqPF7PrhP/0upYN/ttIyMAIzApT5L51klJ
         KuUB/DNC5pCiU1iYzbx4qGZgvTHRKO+b6H3mz0oHkaT510Ta2bsfj1QimOEFBJeiupv2
         AZPa3Y+FrFHu670uLUKsTfJJZhxXL0pI05z/ZTeD+APZO3IzMCRi2V94Qdoi3b9DhydJ
         JElS0PJa/OKNGfRwI2P9uDxPAepplg1KtCCSCviwbElAViNECgfKjYy+wNAC7wilCLfR
         BwPhJCHIbM02lxLB/gEtxDXA43yBhfxFiXOqjCXQa77EQWT4TGloUvoywMhyqczYcB5R
         RY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695176924; x=1695781724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Ce8/QAABUl/Q3jFyxxZV+5lP94Ev40T9XLcoA3tCOQ=;
        b=CZ0n/YkPeOWSN6DzbYkLFthAvmdBcE7s1O1avy3FXRd7IX2NQD44/UueA5jnpTP+78
         G01+OewfUYzj0tAunF0S96p47AW7yVhutGYbBRTtZP4rDyuzcHVh4BUAlDavKOPNQoJX
         FeTsW6BqsWuExI8tWCK+LVhkShWK0r01Gxb1+1EQHbT/e2AG3dbCAma+/Nngy4w5SB4d
         S4BsCaY6IQC5yonN5JCoCmLPfvwqUXhnvP9As4397NEGYmRG85dO/AdtCZUb3rtyryB4
         B5yVq/0Zr2Nas8S0n+z3OdOKDUpG/lYDL5yq46UGyFru3CyNmE6PF/dIiZFCADLNMWxT
         53Sw==
X-Gm-Message-State: AOJu0YzqxMv9l/ytIpYVFcxqXE9pmEO48Z1tGqLpfGdhxjvIZQI45iZ6
	CnaHLT/q9nHzzM7gT9+N0ds=
X-Google-Smtp-Source: AGHT+IGNcYN5lavrcyLztbagSU1dbA/PUkRKt9koAmJGVs4XXP6FL0hoT36nowjanjoGYljC3WzDBw==
X-Received: by 2002:a17:903:245:b0:1c3:ed30:ce04 with SMTP id j5-20020a170903024500b001c3ed30ce04mr1316357plh.25.1695176924093;
        Tue, 19 Sep 2023 19:28:44 -0700 (PDT)
Received: from hcdev-d520mt2.. (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id n9-20020a170903110900b001bc930d4517sm10610009plh.42.2023.09.19.19.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 19:28:43 -0700 (PDT)
From: Marvin Lin <milkfafa@gmail.com>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	avifishman70@gmail.com,
	tmaimon77@gmail.com,
	tali.perry1@gmail.com,
	venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	andrzej.p@collabora.com
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	kwliu@nuvoton.com,
	kflin@nuvoton.com,
	Marvin Lin <milkfafa@gmail.com>
Subject: [PATCH v15 1/7] ARM: dts: nuvoton: Add node for NPCM VCD and ECE engine
Date: Wed, 20 Sep 2023 10:28:06 +0800
Message-Id: <20230920022812.601800-2-milkfafa@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230920022812.601800-1-milkfafa@gmail.com>
References: <20230920022812.601800-1-milkfafa@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add node for Video Capture/Differentiation Engine (VCD) and Encoding
Compression Engine (ECE) present on Nuvoton NPCM SoCs. Tested with
Nuvoton NPCM750 evaluation board.

Signed-off-by: Marvin Lin <milkfafa@gmail.com>
---
 .../dts/nuvoton/nuvoton-common-npcm7xx.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index 868454ae6bde..e69746948f5e 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -179,6 +179,24 @@ fiux: spi@fb001000 {
 			status = "disabled";
 		};
 
+		vcd: vcd@f0810000 {
+			compatible = "nuvoton,npcm750-vcd";
+			reg = <0xf0810000 0x10000>;
+			interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+			resets = <&rstc NPCM7XX_RESET_IPSRST2 NPCM7XX_RESET_VCD>;
+			nuvoton,sysgcr = <&gcr>;
+			nuvoton,sysgfxi = <&gfxi>;
+			nuvoton,ece = <&ece>;
+			status = "disabled";
+		};
+
+		ece: video-codec@f0820000 {
+			compatible = "nuvoton,npcm750-ece";
+			reg = <0xf0820000 0x2000>;
+			resets = <&rstc NPCM7XX_RESET_IPSRST2 NPCM7XX_RESET_ECE>;
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -563,6 +581,11 @@ i2c15: i2c@8f000 {
 				pinctrl-0 = <&smb15_pins>;
 				status = "disabled";
 			};
+
+			gfxi: gfxi@e000 {
+				compatible = "nuvoton,npcm750-gfxi", "syscon";
+				reg = <0xe000 0x100>;
+			};
 		};
 	};
 
-- 
2.34.1


