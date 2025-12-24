Return-Path: <devicetree+bounces-249577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9566DCDCF9E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 18:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F292F305222E
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDF8B33CE8A;
	Wed, 24 Dec 2025 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VSZG2wnr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD444329C65
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 17:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598743; cv=none; b=rMm5OJVqZEHtf0IA6Lc3rY7t2NxJyioxudwTYBD0Mr0/2VpEqF/otQ41dG47i5GiG9NtyS+dQhl19+vkRxRhRgK8lk9U+GImnDTcwOCMf2DSTtzuXVP0P85wl+YppjvVdkv1s02O5dEYzjeZvdvc/cEVaYJ8NmCfkVWufBdVJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598743; c=relaxed/simple;
	bh=LlqGbFYqkHWa3QYtP/wcHCp1ogL1saL7q7uK0E3W9/M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G7rB4hHOpZhXzE0JeYLf93D4X2uYUpNxDQDx9eklXlikbMnOX69gsHUHv1mNBE7QHHfcpdPyYKGOWpkFrnWhQ82HeSViiyID1BVFajepz/zbdk+iYvoDaf5tjM5wJYW08tu4+vdqWXmol9R1hzkWf4tw4Jv9dyKB+6jzKXv2zEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VSZG2wnr; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47755de027eso35824055e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766598740; x=1767203540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNJMua6ZselDA/K5jlMm3u0GStAgByuwzlktfoXO3nY=;
        b=VSZG2wnrTgocH+6ZHdBC9/QrLlrjYM8iiFXPL2ws8U2j8XL57e91jhpUueKc+pOcgj
         YAm2bc1MgIqZR+HVu6JOvYmpMyuZ2KCfla4K7PvGbom2GHCQCUtXkbk3pw/ok40mPYzw
         zVmqBZfYdU43flJNDAScol9kjr/XXrnJEZKfU+vyqJARce8gfzgQm2P4br4Y2RlLQs7o
         70XK7ws10soa9YiTf1wg1qzV1V/QcB/mZCgvUiOUquOe9YQGNT7xlgCNTv84MC93vU9s
         DXh08swPg6d1bJbPOh/4cMUPdjKljHFz17FsRdQxtWzs9SyeQaHhOYkalWGuqK772KSn
         z0LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766598740; x=1767203540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GNJMua6ZselDA/K5jlMm3u0GStAgByuwzlktfoXO3nY=;
        b=wLykMGnz4sunbx/RNyGRvOW4dkqnggBQ8C8fYbXwOx9oB5kUhP7Hyp9/HnADRPV+5w
         TPhAmljlMzA/WbDLlmQFXKKb5CUeqHQEse+KJZrkxxCH3DpW/Js8fhjFQEvxKqLgGkys
         SNZGu79ew1L81AQzIzOvIeKGuyOW2pbwdH+SMuWia2chEpyIjZTKUgFLWOTs3BCDX4UM
         QThmSTGvUM0BmMfPoQ/5C5shGDCNK1C2lGL9lU+pTjvrWA/dPtb0ErHh1w/hpHSAgZd1
         iBJlLbNAHrxCf6u+Ti5ONwv9AaYvfnVCIctOlfnyHVOPtXXfRtb0au/MjDrnNCw12ouK
         t0nw==
X-Gm-Message-State: AOJu0Yw38aKfeM7qwjpIgJAcVMx45aqqAhyte3V2JrhOAOWIe0tjBhx4
	KAY/zHKlHOXUny4ZoJu7ExraGsSxUnbCqs8FEVPk5ZQXQxPOC3gRaucO
X-Gm-Gg: AY/fxX7V/6WZQUJHUzeJedDKAiVXvhYgzo2DM+eSNScCjCs+DLUn3Bwv8NZa8C4BdTY
	8Y1tWYykWNM3UtpqjPfXLCVHJeS01qB1xAH06QFj7asApv38MoBv38tCWAJfoSBTe8VLedIp8v8
	d2ldYK6MZqgrSqxTX9jETmcX7iAkAPApkm9C6shLG2VuCkC16NvGj2xqn2Udgs9OSLwHSxLzTaE
	Ey6nWOTr9jGxKsUcuaHe/Qy8dhGii+NjU93IdhxExT/AZ4MfExcfWD0GLykWwQUl+njyXJJS6BH
	efIdQ+fS9RtnGuSm5VRVrVWoA8K3Jbr94Rpvl3Zn1LXDEy2hr1I1Zd8jaNMz/WwX9HzCDMJy3jS
	81eR+n9NxcVYYt/EGyB6FtCMXsd1av8dU0ukNCTpOpZcTia8QB3IN/75fnT00iK9ruQ7cUoD2Lz
	sOnL9MbDyLWiBAgsKtt67zR2GfTx77hVr6gGPOU7n2ylqHUJ39EnAIKfe+24F8ITBWZOLTJfgCb
	+QoqtQH1p8tG+iAst4aJXPa
X-Google-Smtp-Source: AGHT+IF8m+74SO1T3osVOQ5Ilf6+38hugUNdIgKPgxTKBP6/twvjEVteAYisjoMboSqkNJ46HICfIg==
X-Received: by 2002:a05:600c:8287:b0:477:76bf:e1fb with SMTP id 5b1f17b1804b1-47d1955578bmr220236515e9.16.1766598740097;
        Wed, 24 Dec 2025 09:52:20 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3a4651bsm140167935e9.7.2025.12.24.09.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 09:52:19 -0800 (PST)
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
Subject: [PATCH 2/6] arm64: dts: renesas: r9a09g087: Add CANFD node
Date: Wed, 24 Dec 2025 17:52:00 +0000
Message-ID: <20251224175204.3400062-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

Add support for the CANFD controller on the Renesas RZ/N2H Soc.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi | 31 ++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
index 9809a6a9c1c0..d76999377077 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
@@ -237,6 +237,37 @@ rspi3: spi@81007000 {
 			status = "disabled";
 		};
 
+		canfd: can@80040000 {
+			compatible = "renesas,r9a09g087-canfd", "renesas,r9a09g077-canfd";
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
+				 <&cpg CPG_CORE R9A09G087_CLK_PCLKH>,
+				 <&cpg CPG_CORE R9A09G087_PCLKCAN>;
+			clock-names = "fck", "ram_clk", "can_clk";
+			assigned-clocks = <&cpg CPG_CORE R9A09G087_PCLKCAN>;
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
 			compatible = "renesas,r9a09g087-wdt", "renesas,r9a09g077-wdt";
 			reg = <0 0x80082000 0 0x400>,
-- 
2.52.0


