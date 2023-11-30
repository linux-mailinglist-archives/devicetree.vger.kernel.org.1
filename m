Return-Path: <devicetree+bounces-20419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B11DC7FF369
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50DD5B20BA3
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323FC524A3;
	Thu, 30 Nov 2023 15:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Qfay1odA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACE010F0
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:31 -0800 (PST)
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 84E7B42237
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357630;
	bh=OuMn6YJcnYA0SdFjV5QIvrMlS1FQMrQ/PHdRB99f0NE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=Qfay1odAmPI2ThEtelo1cVm7XYA0zuOAwD63dO8pfJehiix9h7jR9TVYFwSOqcVej
	 DBUSr89DY+UUZ1K/ogy/KQNaAJWCymbcYi0eYuH4JA334o2hvnGQiZHVAjmVmFc58M
	 XXiXflIYogGsSHRDnQHCs4msfC50FGb28dIK3U6Dx7KSK83GSVs4C6b/Sy3rsl47YF
	 Z8NDjgW/OjbzoZaIa8qVGm+QXn0XjJZwbG1Lz6uYFn2ChsuLIZX5JjOB3o+c1i+5Z/
	 cAQt6Rlp64ri4IugSWRRywNTz0OeWe9VdqNTMH9rfU8lOpHRulI5JRpT+HA6/GtKNH
	 vnud3lZ6mZGAg==
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-6c334d2fd4cso1391207b3a.2
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357629; x=1701962429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OuMn6YJcnYA0SdFjV5QIvrMlS1FQMrQ/PHdRB99f0NE=;
        b=QlkSb2j7BYaHGF3/lrpmDg6wYEVXhCQcgmyYjHfcxdNnqboE+d36x48vtYtp01u/5g
         iOi1o4PcDqvRvZ5cXoYiJqkHwJQd0CGZ+4loYKc/PuPtffGDQEcan2ET96UdMF003PZi
         lbVPxN63QqBajdRvoT2+IGjfco+SpIbZmeemI1j4Zyq1VpiK0MrU/6gC5EltK7s9zr/l
         QJYJnfknwJOfWW36wnkpGHXvKZTzOsn6k+W45c+q2SwcPIujjNlPpZwz/25emfsuqdfD
         OzP++JSVnPooFFQlSEzxrqbDRNGVaXi3ooMlACxsKhIpaWJYihnX84ZEVUVRN1T0jkES
         bHaA==
X-Gm-Message-State: AOJu0YzMTqyDOHhP79KZP4Ve9Ha0NThz4AKMjJpcQEueJTH4kgg7G77m
	bas25s+Mpalb2T66rEv/DHlZoa+3bOnmeQwgnfTMGQ4AgVIVW3+R0mUNn4DD14ySCdoLYCMF0z0
	yymz8d/j2mZMjdyHgNZg8rI+g0bZ2IRd7dhzmhr4=
X-Received: by 2002:a05:6a20:6a23:b0:186:aac2:26b9 with SMTP id p35-20020a056a206a2300b00186aac226b9mr20943940pzk.30.1701357629203;
        Thu, 30 Nov 2023 07:20:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGc8h5qPGi0AL06XqejO2yd59FH5mJfnnR0twNHQ5dxExg0fBfVTX56EPNQ52lvJlQlNYmCOg==
X-Received: by 2002:a05:6a20:6a23:b0:186:aac2:26b9 with SMTP id p35-20020a056a206a2300b00186aac226b9mr20943918pzk.30.1701357628950;
        Thu, 30 Nov 2023 07:20:28 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:20:28 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v2 6/8] riscv: dts: starfive: Add JH7100 MMC nodes
Date: Thu, 30 Nov 2023 16:19:30 +0100
Message-Id: <20231130151932.729708-7-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree nodes for the Synopsis MMC controllers on the
StarFive JH7100 SoC.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 0cafac437746..c216aaecac53 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -178,6 +178,32 @@ plic: interrupt-controller@c000000 {
 			riscv,ndev = <133>;
 		};
 
+		sdio0: mmc@10000000 {
+			compatible = "snps,dw-mshc";
+			reg = <0x0 0x10000000 0x0 0x10000>;
+			clocks = <&clkgen JH7100_CLK_SDIO0_AHB>,
+				 <&clkgen JH7100_CLK_SDIO0_CCLKINT_INV>;
+			clock-names = "biu", "ciu";
+			interrupts = <4>;
+			data-addr = <0>;
+			fifo-depth = <32>;
+			fifo-watermark-aligned;
+			status = "disabled";
+		};
+
+		sdio1: mmc@10010000 {
+			compatible = "snps,dw-mshc";
+			reg = <0x0 0x10010000 0x0 0x10000>;
+			clocks = <&clkgen JH7100_CLK_SDIO1_AHB>,
+				 <&clkgen JH7100_CLK_SDIO1_CCLKINT_INV>;
+			clock-names = "biu", "ciu";
+			interrupts = <5>;
+			data-addr = <0>;
+			fifo-depth = <32>;
+			fifo-watermark-aligned;
+			status = "disabled";
+		};
+
 		clkgen: clock-controller@11800000 {
 			compatible = "starfive,jh7100-clkgen";
 			reg = <0x0 0x11800000 0x0 0x10000>;
-- 
2.40.1


