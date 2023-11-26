Return-Path: <devicetree+bounces-19007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D74697F967A
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91B50280D7A
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9071415EBE;
	Sun, 26 Nov 2023 23:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="KZi+788E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0128E132
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:27 -0800 (PST)
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B689C40C53
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041306;
	bh=ooP6PggRSm/MvoVaaWC7Qd0T8g9hHs1exEm2Idgm5Vk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=KZi+788ElKxojDUJyanMurB8Egk886Q5oA5ghrIuimxfijvBMNwS8slj1uSUYxZ0j
	 4l/l9RweaCWZxfCovcDnVGLr2ej8UEdSNP4D31AGpnTmrazCPXMgCx6n6PL3gbX80c
	 Pxv1OLkLCUyDf6Pc1oS8Jk7bZ8kM3nabhRiKeYjJqy4nkv4fNnqlPzo23VMqbQNrV+
	 B9pXjr7tzFSud4ySabUiGXxsQgPDgoh7zeqfgR8zTZIu3NMrEsClOTmHd6OWZB7NtA
	 eM23eq18Gq1rbKWoEPe9SQ04jQCZ/bqvber1NEhss2OqnajaNs4LCIrdRWH9nZ+jdk
	 WWeSV4j5mAEEw==
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-6cb9dd2ab8fso4074194b3a.0
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041305; x=1701646105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ooP6PggRSm/MvoVaaWC7Qd0T8g9hHs1exEm2Idgm5Vk=;
        b=jP2a/lRmujvTegWzDJqL2O2fuiTNw+0/trpSE2XvK4nq+hKuDH7wyQAEnNtTrsgcDo
         i70cyaq3fO1tROyi8MnhzSV/TDblCFDmhL3GfFrfa/UgT/XO7ZfYNaV4YKjAL2mcxPr2
         iJjpNZxfufOUDIfjMeUBdCNWbYmu6+Q5cwr/4qAYiE9w7N82DeO3jI+8smlXPGZKl0aR
         K32b08RkZ0vffhDNfIvpYTErfUvAMAijN99cig5zE2RnQbCEkbWDZM6Y2ptpFN2KYUTY
         1AdKXUIDZ59m5mYVL7TtiXRcqTPfINiWHAsQzcCZk6Rp0x61COTE1ihVdheit3iDEym5
         KDuQ==
X-Gm-Message-State: AOJu0Yx1UyKufcilkznMewdqU8fHZ4o+K+KmSleyJEhGZn1PghtsO+gu
	7QO73Slk4nJSIXnTrX7Biba+hS6qUBgXT68SfFJJA/muFr7BExzO7HKt+j493gSpZgpNSS7a03Q
	t6Tx7JrjulxKx5F4lKwcrCAEXi7kr0Y8sE6Ix+LZV8z+vhPE=
X-Received: by 2002:a05:6a20:d396:b0:163:5bfd:ae5b with SMTP id iq22-20020a056a20d39600b001635bfdae5bmr10808809pzb.15.1701041305137;
        Sun, 26 Nov 2023 15:28:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6/+46S+tGsJEGamPcALc1jASvPx4ZKJR3bsxdW8PeeYicEZOnptpK9l7LnyTwdz3qboVPLA==
X-Received: by 2002:a05:6a20:d396:b0:163:5bfd:ae5b with SMTP id iq22-20020a056a20d39600b001635bfdae5bmr10808799pzb.15.1701041304797;
        Sun, 26 Nov 2023 15:28:24 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:24 -0800 (PST)
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
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 4/8] riscv: dts: starfive: Add JH7100 cache controller
Date: Mon, 27 Nov 2023 00:27:42 +0100
Message-Id: <20231126232746.264302-5-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The StarFive JH7100 SoC also features the SiFive L2 cache controller.
This SoC has non-coherent DMAs, but predate the RISC-V Zicbom extension,
so we need the sifive,cache-ops property to use the cache controller for
cache flushing operations instead.

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


