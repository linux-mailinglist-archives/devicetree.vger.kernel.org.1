Return-Path: <devicetree+bounces-249575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2D5CDCF8F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51B87301FF4B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C10D3329C5B;
	Wed, 24 Dec 2025 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T2II4aUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF8C32938E
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598742; cv=none; b=Js8ZaN3DLOsGRrHh5nR7fP3vut6O9iyJU0PKoBYcDQ/tBgXeE8a97kVpcjLZot77pIflkIAgpgHn/rRcJaUng2z6yVmUekGDwLF1FgXuBxjkts87tWs/7oqm+WnfSMSkp8Qeyh2Re1iKgoJavTNogoPFnpRP/yRLfuV0D7P+q54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598742; c=relaxed/simple;
	bh=8Uoqcgrwf5qL0Yfgq3crvcywtGYwLf0Ku71TonoXroA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ex7FcnJNwAZeDYmb+AY0PNy56MDXAu0tpV45epmQrj0oxcKteXG4ZXmKJ+tUtKBgLBCpCfU5O9LHMqvROg8k3/xWz2AB2IsVLLCoCZdOaVSuaFwST/1Dn7Icbi+7O9dlabruky7fV5wkPQSJ8G1/F6zMEIxqnrttSwwA/gzrBCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T2II4aUA; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47774d3536dso48052485e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598739; x=1767203539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8GNYWY73TI1Xhvsf5HSI9OWAeta0wWUObecrUir2UY=;
        b=T2II4aUAyoNjCBmAAy6ZX07OGsIRaZZet+/kL1xt1jjQdp9VMJJirZCeiLWpnEPbf8
         hQfcyUHm/TgFF8K/t1+Hs7RPLPLnSQ9P34OgRLFlMVh/OHbX/n5xO1cjJQ5dfRe7teGJ
         H/KS7cC/Rt2evXdgKUdcgPDmCyM/2HsylUOr3zGKiMoi058Kr6paf9s88Aovtmh7kI8A
         ckDcoaxs5PLk1D1xdypeVZ8rD9pVUy31lCEEBCAW1ZxGgNL9/oHQB+71xjum6RJIMM14
         VcgdmKzb2LrxvE3T2Sk37FxVUYPatjmfLf4ZRUuL3nucoz4HNjUJ4dxbm50wZ7UhbkV0
         Yovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598739; x=1767203539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8GNYWY73TI1Xhvsf5HSI9OWAeta0wWUObecrUir2UY=;
        b=LBRdfu7fZNTRu9YoJzmQe5jBKFocx03qKBCLjxhwUahrG1vCX6MUkNMv+ubs5jUOhy
         /Mm+U5oaenKzmcsKplf78873BWGqJ1Q3/zouUgxh3ZZVG0dfo/nsPdzcxmB+tJEmvqvD
         y54TuVncC4SfunTLPnKjb6cqjSe7qHMvIuIoQrQv9sSXbaqNtHUJCGu3jaWqNGImwf3h
         CVui+c6nun4FLOmwNXGx+bpDqOIyOt6YiHIpBIYysOjhO7rJqV4hWLtrPtThciQjDeH3
         15vVOJiNG9m7AcSFxLSdenKUOVkRePUmk3nRvOAY1un3P6Cdq9nhA9IPt1UiYACN8cxg
         Vrsw==
X-Gm-Message-State: AOJu0YxD00kgFEK0oTqxGRaOLQEnGQ2r0dV3LtQArATeqCfRepuC5W5V
	fEpu/RUEtkkeSilMlmuB4DKNxCcez9okoC496ejTlmq42EgqIxQAAmVE
X-Gm-Gg: AY/fxX7EjCvAZ2hMA1b3H0g2xPbuwB0QoiKG9qCHg/sLFJsmf3k1GqWqMUp28J5MTYD
	97XMUlIquwdGuy7GumEcfGkJHO0FjaT70Ksu5xTUjyLK+UH9xgb8rLtwmAMX8j0sT7HYRh/FDmv
	8Yuw9nd1hrYONa6GGnBsqsuw+kNMuFsM6DHKgySZffeKbbQKmyMlDzraieAddWfVVdYvdxxy+5j
	2vIR057cTcSinssMDDKKlsvikLUReumyJkuNyN5+OVyqKCS32XfIbriMnJhzFiG3QcqEdPNYBc2
	PnSVBEDDebf3Euqu+sTUzgGbTlYoo6I1Uq3w3uI3JOjZyaMbZKJRNKS+Xj3CBg6uleUIilpXRAw
	aMp0IBYMOwkH0n9hO1/ER7y4a/uKT0kWEbI+nbfq9tEUXU2U4v3JRJYdiE0RgC673OhlUlrz2KC
	KYzBmeZ2tzcXed6iMp8FStW+rxIa21zMlUSKhHRLz9qM7WYLx8xnqgyDE+kRm5spfWlJAOX6E/e
	UYbHLSd019GZ6wSuag6DvxI
X-Google-Smtp-Source: AGHT+IHGhuu93iB9+Iu+92Z7s8P/1XYLIbGEAv3KqcgKPJ7h0I4QlZ2a0T4wLL1di9N4ZpEcKl/sFQ==
X-Received: by 2002:a05:600c:6610:b0:477:a219:cdc3 with SMTP id 5b1f17b1804b1-47d18bd56b8mr182241985e9.12.1766598739089;
        Wed, 24 Dec 2025 09:52:19 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:18 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/6] arm64: dts: renesas: r9a09g077: Add CANFD node
Date: Wed, 24 Dec 2025 17:51:59 +0000
Message-ID: <20251224175204.3400062-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add support for the CANFD controller on the Renesas RZ/T2H Soc.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
index 63de8271f47c..19ace8d86160 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
@@ -237,6 +237,37 @@ rspi3: spi@81007000 {
 			status = "disabled";
 		};
 
+		canfd: can@80040000 {
+			compatible = "renesas,r9a09g077-canfd";
+			reg = <0 0x80040000 0 0x20000>;
+			interrupts = <GIC_SPI 633 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 632 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 627 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 628 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 626 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 631 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 629 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "g_err", "g_recc",
+					  "ch0_err", "ch0_rec", "ch0_trx",
+					  "ch1_err", "ch1_rec", "ch1_trx";
+			clocks = <&cpg CPG_MOD 310>,
+				 <&cpg CPG_CORE R9A09G077_CLK_PCLKH>,
+				 <&cpg CPG_CORE R9A09G077_PCLKCAN>;
+			clock-names = "fck", "ram_clk", "can_clk";
+			assigned-clocks = <&cpg CPG_CORE R9A09G077_PCLKCAN>;
+			assigned-clock-rates = <80000000>;
+			power-domains = <&cpg>;
+			status = "disabled";
+
+			channel0 {
+				status = "disabled";
+			};
+			channel1 {
+				status = "disabled";
+			};
+		};
+
 		wdt0: watchdog@80082000 {
 			compatible = "renesas,r9a09g077-wdt";
 			reg = <0 0x80082000 0 0x400>,
-- 
2.52.0


