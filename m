Return-Path: <devicetree+bounces-74108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55352902024
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10A39287B33
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793F27BB06;
	Mon, 10 Jun 2024 11:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="iBkLdqHT"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EB47AE5D
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017820; cv=none; b=fK+HRQ2ZLw1mWZhHhoMDPd+cRYvHQuW9q5Fdr64xJN7QEOM9caZuqWmVKeZHrbRui78aghBn07tupYxD4E4SoeL12nxxLjfuC0tIgnQ5ttKDqb7MmeMJ5tk0yOgEwVeIWPZCvO5BXNG6CLpypYFNN2gfimb83yY5CR7z4MyimiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017820; c=relaxed/simple;
	bh=K/+z8VTLNuGA5cW2ehTsz1bcNhKx95w02wSEQ6xTaY4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D4Xt3/yyK4woq2D0JKJ5+9KrV10ZxT84prhOTnCTXvnJ4LwVfYqR8ipEWqhxtprFRpnmjMDjEu4msxjvAtWG/sFaB5XmS9rlcyzT3wCHoAv+MKWphJLJHf8wiiBsFW7YbjBUGav1gSu8YWMI19d2YsyIecuubVXi1IRUqpg8ZOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=iBkLdqHT; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718017819; x=1749553819;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K/+z8VTLNuGA5cW2ehTsz1bcNhKx95w02wSEQ6xTaY4=;
  b=iBkLdqHTomGHgxC8gryc0RCDMac4XLJELiATjAm+szfKlCYsNYPAEM4e
   EeYoQElBlSMQkZTwdHZMCfTv3kp7k6r7g9WsjRa5L5IREVBN/bEQI13CZ
   HR5+FHK5BD2gijSby8bkYfPkvsc4V61rh7nRZlEDwA3nLGwW3jcc4J6oF
   LQEqmDilF3T3AyOV7PR8fDg6LqS86f1gA30jOQO6Hpni/8AIY3CiwlnlJ
   YRNz9lJXd4N2Hpz7fN6uJGTLPZzDYJKxc2nIdawxT9D50nIAsAui2cwpU
   Rmqxv7ccSY7i1r+3HtFWK0itc3knhzs/l0iruaep/4uMHXdOd7S/TaQjd
   w==;
X-CSE-ConnectionGUID: jk7quZmdTreuz9niASlBPQ==
X-CSE-MsgGUID: 2i2zpMRCSdiJS1aM8SSDPQ==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="258054503"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:10:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:09:37 -0700
Received: from wendy.microchip.com (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:09:35 -0700
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, <conor.dooley@microchip.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Samuel Holland
	<samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 1/5] cache: ccache: allow building for PolarFire
Date: Mon, 10 Jun 2024 12:09:13 +0100
Message-ID: <20240610-mocker-ankle-d3ee407bb352@wendy>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=703; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=K/+z8VTLNuGA5cW2ehTsz1bcNhKx95w02wSEQ6xTaY4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlp926q8hUsOnhjSdyy83mz0sxf8Sw4PYtrgcfTiMOrJZhZ 84MmdpSyMIhxMMiKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiJ5QY/pf+WGrVf698kUmj+UuX9J NrOv45sep1Fnx9Py9kfdQNy9OMDMcs50jffOG8Umf9zhyhexYrI5LVTvse+pX5IXoZ+ydJBxYA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

There's a ccache on PolarFire SoC, so don't limit it to SIFIVE/STARFIVE
SoCs only.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/cache/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig
index 9345ce4976d76..b2d525e540212 100644
--- a/drivers/cache/Kconfig
+++ b/drivers/cache/Kconfig
@@ -10,7 +10,7 @@ config AX45MP_L2_CACHE
 
 config SIFIVE_CCACHE
 	bool "Sifive Composable Cache controller"
-	depends on ARCH_SIFIVE || ARCH_STARFIVE
+	depends on ARCH_MICROCHIP || ARCH_SIFIVE || ARCH_STARFIVE
 	help
 	  Support for the composable cache controller on SiFive platforms.
 
-- 
2.43.2


