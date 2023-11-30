Return-Path: <devicetree+bounces-20414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC787FF360
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB7A428194C
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C6BD51C5F;
	Thu, 30 Nov 2023 15:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="FIp9e0wD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A851700
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:07 -0800 (PST)
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B1AF83FA55
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357606;
	bh=tj9HPh6BvRLNZqMKySfyhhevyeW6ZzHpiXvh8Tdk9iY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=FIp9e0wD8k6I2Ba9Efn2UYzz/NdA2SdRlpn16jRq7PmZLqpUgA2Wb8HKs4Hyc+5Rd
	 Rt6PoOY404dNKALUzQ+tLvlol8UgbxgxfsaygUTS9pW0AGaE9VjeiVu1SP21dCBFac
	 vRfppGeWOJ3zw58p7+Vxo+8484y7jQEXG5e0Xd/jWSFvi4qqriZW/aw2qRADFNqRYb
	 IpERqA6ggNQIRRyCA6nv38NMxAjRoV+XWp3PODe7XSlqrwFsxYdzUNv4oCjeUFYLRb
	 iZg0HVGh/ra+XXBEUUwHZTAe08/jXWXNmnqCCpuQ0lxavOAEGDSUu+98rTsQ96EnOq
	 8C3J5ewh7WLyQ==
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-6cde4342fe9so1114123b3a.2
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:20:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357600; x=1701962400;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tj9HPh6BvRLNZqMKySfyhhevyeW6ZzHpiXvh8Tdk9iY=;
        b=BYZaLs3GGe6sKxyEABBdBjFurPC5GxtFX7YYFLb0SG6HNdeYqUC/B+6iLVhZZq2tSw
         2R31fsNZJCr4odu2jKc2q7p7Zg+1KaIf3ydrEQXE6MPVLYXNCltL4Dx8U4KN2XMkIDU8
         ccQWCtPvb6Ta6nt7HoS0eRhRiTJKH3mRbjkeCplpySe1blhcdO6hm0kM9P20Ww4sve8r
         rWtsv6Mjx7L+0JW6py+d5ij+jmPxAHlN40PghhXxErDYdKw63AVug0L3qZglBOJMRC7H
         9PgKjLMiMOLKvdZvIZe5VtZY0wWDQd0mLSZ7W5jDggK5A+CihBZiJtQns9j2Q9zYjy4U
         G2PQ==
X-Gm-Message-State: AOJu0Yzn7bUD4HeFkIKnKYelZ+rhGU7ayQ/Izesa7ddosawo0LD3xjk3
	L8R50C8toBf8Pl4ed8CPFNpinaoZ9F7Ogkzb4NMTCXtVxlBe+Lk9KJJlE3/8sHqcCSF2UGwjL/f
	7taCmeBCC2PIVCBJk2g5DmjW5yG5EuwvKk6dYPg4=
X-Received: by 2002:a05:6a20:2445:b0:187:f7d3:fe4 with SMTP id t5-20020a056a20244500b00187f7d30fe4mr23989913pzc.11.1701357600043;
        Thu, 30 Nov 2023 07:20:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1mvOn1/uJNCv0eb4azsQCzjyj+9l3Hl/zvOgcVmnx6qLHRyWHQAlXD/AuQrB0F0f5KVnWrA==
X-Received: by 2002:a05:6a20:2445:b0:187:f7d3:fe4 with SMTP id t5-20020a056a20244500b00187f7d30fe4mr23989897pzc.11.1701357599785;
        Thu, 30 Nov 2023 07:19:59 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:19:59 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 2/8] riscv: dts: starfive: Group tuples in interrupt properties
Date: Thu, 30 Nov 2023 16:19:26 +0100
Message-Id: <20231130151932.729708-3-emil.renner.berthing@canonical.com>
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

From: Geert Uytterhoeven <geert@linux-m68k.org>

To improve human readability and enable automatic validation, the tuples
in the various properties containing interrupt specifiers should be
grouped.

Fix this by grouping the tuples of "interrupts-extended" properties
using angle brackets.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/boot/dts/starfive/jh7100.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
index e68cafe7545f..a40a8544b860 100644
--- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
@@ -149,15 +149,15 @@ soc {
 		clint: clint@2000000 {
 			compatible = "starfive,jh7100-clint", "sifive,clint0";
 			reg = <0x0 0x2000000 0x0 0x10000>;
-			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
-					       &cpu1_intc 3 &cpu1_intc 7>;
+			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>,
+					      <&cpu1_intc 3>, <&cpu1_intc 7>;
 		};
 
 		plic: interrupt-controller@c000000 {
 			compatible = "starfive,jh7100-plic", "sifive,plic-1.0.0";
 			reg = <0x0 0xc000000 0x0 0x4000000>;
-			interrupts-extended = <&cpu0_intc 11 &cpu0_intc 9
-					       &cpu1_intc 11 &cpu1_intc 9>;
+			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>,
+					      <&cpu1_intc 11>, <&cpu1_intc 9>;
 			interrupt-controller;
 			#address-cells = <0>;
 			#interrupt-cells = <1>;
-- 
2.40.1


