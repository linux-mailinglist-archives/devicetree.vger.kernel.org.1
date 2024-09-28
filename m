Return-Path: <devicetree+bounces-106030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 398CF988ED6
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 11:30:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E71C3B2155F
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2024 09:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E1418C010;
	Sat, 28 Sep 2024 09:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="ZOvb6y+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9D919E7DC
	for <devicetree@vger.kernel.org>; Sat, 28 Sep 2024 09:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727515814; cv=none; b=e5EPGZ6vfTVCsRDWygsoVQW5IlEgQaieBdqbdy2sW4GTP/hYcuSg035AzLmAsMJC3uKGF23hAiHj9i59oYT3VpqZRks8AG+8tPrxzijs283daeOlnj1bwZHh6fxZGt4PjGZdTGx8Bkyy5Gm5+t7vMJXjwwW0RejDDrpAi2sdgiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727515814; c=relaxed/simple;
	bh=U1o8zsQH9QAxRcMiSHpB8zIktIWgf43eCXACRJDEUv0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZVN8oTLEs81qzQTWma0VLSwalzcxuWzXHdIfwQ9nXEl0wA056NLt2cFQF1PcS42a5Gxsob2pWgFGAbc50ZtbpZteisdc695YqbYsq/ZTXS8L39vXPciMMtVC8rjyas4tGmRwIKnq0Gm46eYi4djB50V9tgpV43a17pgOxdeDVw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=ZOvb6y+L; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=CIOhJiEeyR5dKMh/shrdM/lwK38nHREnHJ5W+4u/LSQ=; b=ZOvb6y
	+LL1551nu/kTfI6KM3qDpblvFNvMLjSK2gd130btl+w4EtaVKODK7FuT+YJXxEj/
	qj6fjR6KPlhZUhK3WaIN8eE8Mhu4nwu367FXozUw5//Q23TAXbyswkdYyAlF++rI
	hrjejlGXznuJNnKODW2bfl++5Qn/3Yef6PYIqBTPIUBdlLyC2frKpSknJlMrrke2
	TdMKo2WRykN2D4pwcns/WyVXIi1drW1orxJklgpujZY8/zx44C9oKozbKCVP+j9c
	6h+PRTx/gs89C9by5l/3Yz30tOWYy5MuVhb4C16ZlM0PpxXoDCIjZaoWa8nJ7C9B
	YXqMW5OObU6pHQdQ==
Received: (qmail 1576715 invoked from network); 28 Sep 2024 11:30:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Sep 2024 11:30:07 +0200
X-UD-Smtp-Session: l3s3148p1@vlMOniojyuIgAQnoAHS0AAL7owIOnAiN
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] ARM: dts: renesas: r7s72100: 'bus-width' is a board property
Date: Sat, 28 Sep 2024 11:29:55 +0200
Message-ID: <20240928092953.2982-7-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240928092953.2982-5-wsa+renesas@sang-engineering.com>
References: <20240928092953.2982-5-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Do not set 'bus-width' in the SoC-include DTSI. It must be set in the
board DTS file. No regressions because MMCIF was not enabled yet for
this SoC.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm/boot/dts/renesas/r7s72100.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r7s72100.dtsi b/arch/arm/boot/dts/renesas/r7s72100.dtsi
index fa26e4a39fd7..39999468c28b 100644
--- a/arch/arm/boot/dts/renesas/r7s72100.dtsi
+++ b/arch/arm/boot/dts/renesas/r7s72100.dtsi
@@ -333,7 +333,6 @@ mmcif: mmc@e804c800 {
 				     <GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&mstp8_clks R7S72100_CLK_MMCIF>;
 			power-domains = <&cpg_clocks>;
-			bus-width = <8>;
 			status = "disabled";
 		};
 
-- 
2.45.2


