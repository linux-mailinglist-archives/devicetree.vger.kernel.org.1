Return-Path: <devicetree+bounces-20417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 166AB7FF365
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABD5C1F20F1C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25274524AB;
	Thu, 30 Nov 2023 15:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="d0EHTKtb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E542310E0
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:19 -0800 (PST)
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8CE6E44440
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357616;
	bh=DJHVa7mIKQwhZz/JHltxB0iKVUnDkFEjfRvqGAQUx+4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=d0EHTKtbWwl3Iy2AaSzN1Aos19ZHoqh8eqsCNEB7TiGPusOiNt2sDxW9PVjcshRNH
	 j2CquydUBg1ulwavAKzj8bpIyXJhB4IjMGGAGgNC7hcRhrmCtygpr3YQ+8KedZAYhK
	 O6ovQNPlWJC69G9uvTmiyUtN5N54YEiEXjmlDWeZOdBKVn0ZQ+3BkDZqtI0Af8drCZ
	 +oPRwPZUNynzk/VGGZEZ9vF3vCPUHAzGLVAYjHfvYRWfCaXE/rot8b7KikI48tIB2C
	 eKEPmYCIiq0ciQPjFazabLQgdFjlEZcVmCLSLBRSbWDYB4CexP6IIsMTjDZwL0zo42
	 FMSx8S3JBKeog==
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-6c415e09b1bso1133534b3a.0
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357615; x=1701962415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJHVa7mIKQwhZz/JHltxB0iKVUnDkFEjfRvqGAQUx+4=;
        b=E/UB0fhkhiOkc03IuoVjJhUXZMeqpHn9vujjFw2bdixtRIQrLVrOb6/Px6tEApd1UY
         Bgva7rGU/r4AqUK6RKl8qLCD6JoogHDhv7z4Az+uZGUSO1Jem9tCyVOCqPrt8juBj5MB
         fHLTmt8f5mpdbbmrsG5hs7Mro3l0wyKeZC+Pedcdk8zCYlJyLvoY3LW9AOBkhjhSyrex
         vML5Oxcj6GIdXMdLgaG4WRdnMqTaRSYSr3cifb9mnDctGaJwVtl/UNEoQeC7XUNucOE0
         2lcmp9w+cV1N51ZyW6tlyEKX4jR7GLW9z7sHEFiTtmb3ExgVbt+VOeDZRNJF56ZAZSol
         vzRA==
X-Gm-Message-State: AOJu0YwJt7jyYaspro+cywKjL04ABiLR7zkc77/ZrgdB5Fe9+Cem3ULy
	2WlRvnSwpCYs5AJCnOowSY6LLyX/5sCPJWDWZ1cM6ODkUtqvQZ9vvLrF6i4+7j3g1CogEzTs0Ki
	tK03IROkbxUuEdP4CWrt6Re7o2MPfXhr4H3eEeqNVSv4PIHI=
X-Received: by 2002:a05:6a20:7f98:b0:188:290d:17dc with SMTP id d24-20020a056a207f9800b00188290d17dcmr23728141pzj.60.1701357614810;
        Thu, 30 Nov 2023 07:20:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7Mu2nDLembDBF+YwfqitZTioRcWFBD0XGtNJbp2zbw7AJm8Uh5SE/GyfEnowTrFxztj1irA==
X-Received: by 2002:a05:6a20:7f98:b0:188:290d:17dc with SMTP id d24-20020a056a207f9800b00188290d17dcmr23728123pzj.60.1701357614540;
        Thu, 30 Nov 2023 07:20:14 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:20:14 -0800 (PST)
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
Subject: [PATCH v2 4/8] riscv: dts: starfive: Add JH7100 cache controller
Date: Thu, 30 Nov 2023 16:19:28 +0100
Message-Id: <20231130151932.729708-5-emil.renner.berthing@canonical.com>
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

The StarFive JH7100 SoC also features the SiFive L2 cache controller,
so add the device tree nodes for it.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index 7c1009428c1f..0cafac437746 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -32,6 +32,7 @@ U74_0: cpu@0 {
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
+			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
@@ -60,6 +61,7 @@ U74_1: cpu@1 {
 			i-tlb-sets = <1>;
 			i-tlb-size = <32>;
 			mmu-type = "riscv,sv39";
+			next-level-cache = <&ccache>;
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
@@ -154,6 +156,17 @@ clint: clint@2000000 {
 					      <&cpu1_intc 3>, <&cpu1_intc 7>;
 		};
 
+		ccache: cache-controller@2010000 {
+			compatible = "starfive,jh7100-ccache", "sifive,ccache0", "cache";
+			reg = <0x0 0x2010000 0x0 0x1000>;
+			interrupts = <128>, <130>, <131>, <129>;
+			cache-block-size = <64>;
+			cache-level = <2>;
+			cache-sets = <2048>;
+			cache-size = <2097152>;
+			cache-unified;
+		};
+
 		plic: interrupt-controller@c000000 {
 			compatible = "starfive,jh7100-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
-- 
2.40.1


