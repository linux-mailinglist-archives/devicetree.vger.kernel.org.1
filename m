Return-Path: <devicetree+bounces-246374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 412A1CBC4C4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 04:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 215A23007E40
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 03:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9334B1D7995;
	Mon, 15 Dec 2025 03:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FXdjBcfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF76126C03
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765768470; cv=none; b=WQybMvQW1wC7KnjQgw9AT4OEtrk3TVxhc5Lb8Ihu7ldhHYYxM6BVgV9RV/ZhaGpp8HKVDmvscOICrfSauffyR/weu682DwmIBrTpgHW70dY2w/ykNDFOcXQYBTFoZHyEPchnK8zKK51kjh2HabCa0hRyjectT4nITxGuSUbk8P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765768470; c=relaxed/simple;
	bh=CQbFaF8pO0VDrwDIWhBkosVfaGztflZA/KlmOO6M38Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ja9kWCwaq8VQigXuvwvMKjNs2RAapkPIevXS9r1XObaCD0Kei+c4TQ/5lmV6kNJFjXCb3zATKeB9Crrx14fTfTfmLEunLCnwYgK0kSdfvrpc77ScR36RkITzp3+O0lMRiY+6P7DP/w4ZsLWmZ618fG22kFLSuIUrCZItxKJ3DhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FXdjBcfy; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=NADd+nJh00FaiGsHv19FlVyt/sogui6XFsGlCSWmlxc=; b=FXdjBc
	fyEWpL4nkvdZBU61ndy940+HCY2mmZu98GLzlqB80GM78Kj5lUtTrO3wdSmK/wda
	bj4g97OIXU/fm5363tcRfvZ0E6DObSrhledP6uQk0FDB9aJdULAgqmCb9GOYQD+z
	9edv4vbl83g15RaX5Wf4xWOc/w0CMVwitrGFPl7s1Jzx4Y4poZljUHdGhaxi9suK
	3ZdrIE8bURPBO6uZiEbyu/v7aQyBnDfuuq4/Cl93YGFguOK+Ss5ZxLEQe+5CghG+
	2m3AsKb1UoGGn2jqRZD5gjY1BeFSr/aGFiQNx/SGODgiwnVKS0e2VmscYbwIti8L
	vbiQh38cBHjxbs6g==
Received: (qmail 801713 invoked from network); 15 Dec 2025 04:14:22 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 15 Dec 2025 04:14:22 +0100
X-UD-Smtp-Session: l3s3148p1@PXs8AfVFpovN3IHs
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: renesas: r8a77980: add SWDT node
Date: Mon, 15 Dec 2025 12:13:18 +0900
Message-ID: <20251215031318.2219-5-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215031318.2219-4-wsa+renesas@sang-engineering.com>
References: <20251215031318.2219-4-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/r8a77980.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77980.dtsi b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
index 8cd7f68d026b..0e81bef180a0 100644
--- a/arch/arm64/boot/dts/renesas/r8a77980.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
@@ -139,6 +139,15 @@ rwdt: watchdog@e6020000 {
 			status = "disabled";
 		};
 
+		swdt: watchdog@e6030000 {
+			compatible = "renesas,r8a77980-wdt", "renesas,rcar-gen3-wdt";
+			reg = <0 0xe6030000 0 0x0c>;
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_CORE R8A77980_CLK_OSC>;
+			power-domains = <&sysc R8A77980_PD_ALWAYS_ON>;
+			status = "disabled";
+		};
+
 		gpio0: gpio@e6050000 {
 			compatible = "renesas,gpio-r8a77980",
 				     "renesas,rcar-gen3-gpio";
-- 
2.47.3


