Return-Path: <devicetree+bounces-245228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD540CAD8FE
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 201D630141C6
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 15:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016B03126B6;
	Mon,  8 Dec 2025 15:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O74j+OAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C86B2E9EAD
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765207306; cv=none; b=G+qW3ZfxplXQcKAuVQISbtIhu57Xg0usj9bquEVRD6WrMOELAcjp2QbRFBEGokfsXvsBWSrK/ebdZ2hLlCWsucqii6WVikyOEOEcyxFe9mklIUbBuQp4yBDRNqJQBvDbiewclNo6+Egvn8KgCZ1Vb7I0ud0E6IsBCOUcb78+SVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765207306; c=relaxed/simple;
	bh=qIwrE+0RozKVORPbvr1nESjJc/nQuI+j1sDPmWjT+dc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ds3aMmrAgh65QEhkaYGC/QJ5EaTZrtvJnMKAHtCcO68rHvu0PwFb5EgUHRhdTJ6XneevF1s+xSC9nn9JEKU52SrKfKKR31SLoKFX6iJFpg2zZ5/LZffXyanevV2kgDs1kTUlsnze00xhESImRgcya+UJST8nLjwFoUbQN7fUIQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O74j+OAk; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-644fcafdce9so6958085a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765207301; x=1765812101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l58DqrFdprpmfVQGkI2QGpt18880F2YSLFQGbnhEzbQ=;
        b=O74j+OAk0OREr1xh7owzeNjYPWkDLz64wGtUjY0yLOzmi0xxmGrscnxJDuDk86nQ3g
         OrglRNzuuMMbY5e5kcKzdmyeRFIeGn/ysujJ44Fv7rHWdzeH+eaoyQc5hS+PPud+GABV
         AnarP4+ptCgotCQeDsBKlgbnfmEYQzZ/9anw5FhkTIfAr1LViwo1FPNu8UzMp4u3Z9C8
         K01kI7C4cXCFwfEBo5RX1d3cpC4lW03Fz2tUUWZoQM4b/Na+tVciSr6MLXAlTmmECeRA
         2DqvCuJfrY9EXUv4eJC9Jv8MEuWkbR0l0URPSEydDM2KcJUsKx6BJ68qjs0zaLfq82zJ
         BDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765207301; x=1765812101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l58DqrFdprpmfVQGkI2QGpt18880F2YSLFQGbnhEzbQ=;
        b=eYfigTAsbGPnKZueFLxR4s+dABJpC2e3GyEVkhjftBArFwTuE5Qj7l+z/CF+0eRVZ+
         8fdTiSSVa9jS3thszU0YeQrQPuNXYxX7ys2Z4uYUYLwaNbP2ZI65AI/yz7b7Grwqx2Yx
         o4MRMUn51kb+DPJ8iYNrFOQHWkfZPX+7rLfQmDw+/4oNPHUO/qP+70FwAwiwAL9BBipX
         pqDpF3b1lq2ZkWt4luyMFcxsm5ppdjWPzVca1Es2bIxheLB9CCKm4MRifpF47TZ+/CI4
         a2AJLML3PPMvFNGqNgiXdynNlc4fKyfy2F6lAgojq2UJ6PDMGFKsZR1MTuCfwEn6eFJ4
         5LaA==
X-Forwarded-Encrypted: i=1; AJvYcCVYef+7/K46CKvM0OIU9p9ywox84xTigOF575QSa/wwpbIpjRQ/fS7gTaTYrg2cEyXzFkmSb17jOoXN@vger.kernel.org
X-Gm-Message-State: AOJu0YwWxu6b85mkMe0UNsVWFpbodVhIG3vc4QmBbJCKJJCS1wc8E2wS
	xKuszzZet38ug0FHd53wEDG/LnsLlMvmxIBczvh+CBNShbaLbpJ8Dn1R
X-Gm-Gg: ASbGncvGv9rvJHjCdZsoagYZomvKoqlsX5W7P5DclKYKy2bGOdVlgk/7P8cSIA8Ioe7
	k++3CMhIAtIDLzrjH3GPDKnKbZ9UPy7icbD70md8J8AsaVHxgvwoxDY0FkwOSlW1o2efmlbZ+bB
	2VokWUgmwhzUFxu33CCPryEmUBo2X5x9Tt/DjIivKorRf+H8SAoi6VzlwUOu/isP3qeVoba2T4p
	BLlxXpHtNRRenEn7/UcEnUhIVeHDAY2Q0sOsj65nDsghtSSDWElBM1kENRsq2eM+F7fWRt5ewON
	Drn5b1YogktLTBm3Vw1pX6OK+223w6RnizOEDQJM3G56DQnuHfUgy4SdyzySbBVj0JCpnvdca+s
	XEJfmm37s4ucbofnjdKUrgWEM/VM0gH5bBwcRiAPzGNbWwDSyGdZnGFJxXIRYOtyIQAtkw9axuU
	buONVDmrMV58anK8a2XzQWV8zVAxNzbymnM2qeiOyrwt5yf5CWznv8PGCpGL5l4+7tr3wwiYnlD
	u0ZndgEUIYDtHwE
X-Google-Smtp-Source: AGHT+IE6HVveRSzluVSkClmEr9k8Hi4Kof1GEkBFEWHalom5CrvvMUfGuHLGLVBRahFGCiWOxYMmLw==
X-Received: by 2002:a05:6402:518c:b0:640:ebe3:dd55 with SMTP id 4fb4d7f45d1cf-6491a3cc7d5mr6400209a12.6.1765207301273;
        Mon, 08 Dec 2025 07:21:41 -0800 (PST)
Received: from localhost.localdomain (host86-162-200-138.range86-162.btcentralplus.com. [86.162.200.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412deddsm11547484a12.31.2025.12.08.07.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:21:40 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v4 8/9] arm64: dts: renesas: r9a09g047: Add GPT nodes
Date: Mon,  8 Dec 2025 15:21:25 +0000
Message-ID: <20251208152133.269316-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251208152133.269316-1-biju.das.jz@bp.renesas.com>
References: <20251208152133.269316-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Biju Das <biju.das.jz@bp.renesas.com>

The RZ/G3E SoC has 2 GPT's.  Add GPT nodes to RZ/G3E ("R9A09G047") SoC
DTSI.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v3->v4:
 * Added Rb tag from Geert.
v2->v3:
 * No change.
v1->v2:
 * No change.
---
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi | 184 +++++++++++++++++++++
 1 file changed, 184 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
index d1bf16c6ff6b..d05abafe4b5e 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
@@ -591,6 +591,190 @@ channel5 {
 			};
 		};
 
+		gpt0: pwm@13010000 {
+			compatible = "renesas,r9a09g047-gpt";
+			reg = <0 0x13010000 0 0x10000>;
+			#pwm-cells = <3>;
+			interrupts = <GIC_SPI 538 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 546 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 554 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 562 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 570 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 586 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 594 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 539 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 547 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 555 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 563 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 571 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 579 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 587 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 595 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 540 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 548 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 556 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 564 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 572 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 580 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 588 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 596 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 541 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 549 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 557 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 565 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 573 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 581 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 589 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 597 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 542 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 550 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 558 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 566 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 574 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 582 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 590 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 598 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 543 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 551 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 559 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 567 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 575 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 583 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 591 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 599 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 544 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 552 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 560 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 568 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 576 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 584 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 592 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 600 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 545 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 553 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 561 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 569 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 577 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 585 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 593 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "gtcia0", "gtcib0", "gtcic0", "gtcid0",
+					  "gtcie0", "gtcif0", "gtcih0", "gtcil0",
+					  "gtcia1", "gtcib1", "gtcic1", "gtcid1",
+					  "gtcie1", "gtcif1", "gtcih1", "gtcil1",
+					  "gtcia2", "gtcib2", "gtcic2", "gtcid2",
+					  "gtcie2", "gtcif2", "gtcih2", "gtcil2",
+					  "gtcia3", "gtcib3", "gtcic3", "gtcid3",
+					  "gtcie3", "gtcif3", "gtcih3", "gtcil3",
+					  "gtcia4", "gtcib4", "gtcic4", "gtcid4",
+					  "gtcie4", "gtcif4", "gtcih4", "gtcil4",
+					  "gtcia5", "gtcib5", "gtcic5", "gtcid5",
+					  "gtcie5", "gtcif5", "gtcih5", "gtcil5",
+					  "gtcia6", "gtcib6", "gtcic6", "gtcid6",
+					  "gtcie6", "gtcif6", "gtcih6", "gtcil6",
+					  "gtcia7", "gtcib7", "gtcic7", "gtcid7",
+					  "gtcie7", "gtcif7", "gtcih7", "gtcil7";
+			clocks = <&cpg CPG_MOD 0x31>, <&cpg CPG_MOD 0x31>;
+			clock-names = "core", "bus";
+			resets = <&cpg 0x59>, <&cpg 0x5a>;
+			reset-names = "rst_p", "rst_s";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		gpt1: pwm@13020000 {
+			compatible = "renesas,r9a09g047-gpt";
+			reg = <0 0x13020000 0 0x10000>;
+			#pwm-cells = <3>;
+			interrupts = <GIC_SPI 602 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 610 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 618 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 626 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 634 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 642 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 650 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 658 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 611 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 619 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 627 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 635 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 643 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 651 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 659 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 604 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 612 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 620 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 628 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 636 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 644 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 652 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 660 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 605 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 613 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 621 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 629 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 637 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 645 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 653 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 661 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 606 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 614 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 622 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 630 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 638 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 646 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 654 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 662 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 607 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 615 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 623 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 631 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 639 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 647 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 655 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 663 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 608 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 616 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 624 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 632 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 640 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 648 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 656 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 664 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 609 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 617 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 625 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 633 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 641 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 649 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 657 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 665 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "gtcia0", "gtcib0", "gtcic0", "gtcid0",
+					  "gtcie0", "gtcif0", "gtcih0", "gtcil0",
+					  "gtcia1", "gtcib1", "gtcic1", "gtcid1",
+					  "gtcie1", "gtcif1", "gtcih1", "gtcil1",
+					  "gtcia2", "gtcib2", "gtcic2", "gtcid2",
+					  "gtcie2", "gtcif2", "gtcih2", "gtcil2",
+					  "gtcia3", "gtcib3", "gtcic3", "gtcid3",
+					  "gtcie3", "gtcif3", "gtcih3", "gtcil3",
+					  "gtcia4", "gtcib4", "gtcic4", "gtcid4",
+					  "gtcie4", "gtcif4", "gtcih4", "gtcil4",
+					  "gtcia5", "gtcib5", "gtcic5", "gtcid5",
+					  "gtcie5", "gtcif5", "gtcih5", "gtcil5",
+					  "gtcia6", "gtcib6", "gtcic6", "gtcid6",
+					  "gtcie6", "gtcif6", "gtcih6", "gtcil6",
+					  "gtcia7", "gtcib7", "gtcic7", "gtcid7",
+					  "gtcie7", "gtcif7", "gtcih7", "gtcil7";
+			clocks = <&cpg CPG_MOD 0x32>, <&cpg CPG_MOD 0x32>;
+			clock-names = "core", "bus";
+			resets = <&cpg 0x5b>, <&cpg 0x5c>;
+			reset-names = "rst_p", "rst_s";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
 		wdt1: watchdog@14400000 {
 			compatible = "renesas,r9a09g047-wdt", "renesas,r9a09g057-wdt";
 			reg = <0 0x14400000 0 0x400>;
-- 
2.43.0


