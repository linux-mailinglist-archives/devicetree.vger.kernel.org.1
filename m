Return-Path: <devicetree+bounces-74110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD1902027
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D072B287EC1
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:10:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FBD7BB0A;
	Mon, 10 Jun 2024 11:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="rRnkNiol"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB34A7A702
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017826; cv=none; b=vAYrGfvyvle77JsFriuhij7x/OcivTZTV1fU3V1jW4EhllhJn57qmtc4ESQeTTXJNqa2t8/VbasJtKI0jbA0mgAUbTdWeLhQOodXGknS1P0B/aXkBxrhR0qu4jOh0xSChvmr/9ghpDd4ujulzyy+jq/zyO284JgfmecmIX8nfEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017826; c=relaxed/simple;
	bh=vSvSduSdlE5klA6zgVVnIIfs+4m+OglLLkCW0vt9e5c=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Oskkb+huLJB4d99Jh7rpDpe5IIfFkC/e8/dBLfLnsGpkZH8xyU8HJtuj6kLMgXW6DdRbb/rVQfprZri0Z3i1vjO8vbAbN5vQcOF6dRilDBWOW0NecGmwOtsrTLxNR1KDNPmuuuVqdlUqXIf+sD41nUeVwybRnXXsEG+u5nLXpF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=rRnkNiol; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718017825; x=1749553825;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vSvSduSdlE5klA6zgVVnIIfs+4m+OglLLkCW0vt9e5c=;
  b=rRnkNiolLXw7r/ruLISbvp2bt3gCvrBNMLZJE9dKa6/kwrtSg0Slu7om
   hm0gLyf+wvfOvGED8iL8CbHHiKM31Wv4y9BR/mEiVtBEvCiytEGSkCITN
   fS2zw0+D/kbusXOCB4vmRHw71gPMxtpy96yrGkfQb4ayli9sC+bgpgJYX
   d+gSEQDSgIRnB9LXeOq0+bJdyTAdSru6y/p0K9wOsUOJNEUAVayah7oVT
   +jF8D9rDAcY/zA/9BAkP7h8xASoc7CXOdR4Ntsc0B6tDd+7Dx/vbmNWuE
   LjJmRnTlJt4//s5ry2BPgqvkw7Bbuiu3vdQLl+EPomUTl5M7WIPQNK3wr
   Q==;
X-CSE-ConnectionGUID: lNoOtL5sTs6vJxiNFFwsDA==
X-CSE-MsgGUID: URZVaOARQKKJLc7sUBGxdw==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="27204229"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:10:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:09:39 -0700
Received: from wendy.microchip.com (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:09:37 -0700
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, <conor.dooley@microchip.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Samuel Holland
	<samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 2/5] cache: ccache: add mpfs to nonstandard cache ops list
Date: Mon, 10 Jun 2024 12:09:14 +0100
Message-ID: <20240610-reenact-amicably-bd088724b3cb@wendy>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240610-vertical-frugally-a92a55427dd9@wendy>
References: <20240610-vertical-frugally-a92a55427dd9@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=930; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=vSvSduSdlE5klA6zgVVnIIfs+4m+OglLLkCW0vt9e5c=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlp925NCr74tNrk8tFqz6wS1b3LN8h+b/LeuuLAlplKp6yr /p061VHKwiDGwSArpsiSeLuvRWr9H5cdzj1vYeawMoEMYeDiFICJvHnC8M9c+5/G/R9v87vTNgic/l ymdGb6Rzc/aR+Wu7ccjl5ln1HOyHB9c3TqfcWr5n/3tYcyKihp9dZt5tEL+aat5XusUk4vlgsA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

On PolarFire SoC, for performance reasons, we want to use non-coherent
DMA. Add it to the match table with the non-standard non-coherent
cache ops requirement.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 drivers/cache/sifive_ccache.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/cache/sifive_ccache.c b/drivers/cache/sifive_ccache.c
index 6874b72ec59d8..277e66a61efdc 100644
--- a/drivers/cache/sifive_ccache.c
+++ b/drivers/cache/sifive_ccache.c
@@ -122,6 +122,8 @@ static const struct of_device_id sifive_ccache_ids[] = {
 	{ .compatible = "sifive,fu740-c000-ccache" },
 	{ .compatible = "starfive,jh7100-ccache",
 	  .data = (void *)(QUIRK_NONSTANDARD_CACHE_OPS | QUIRK_BROKEN_DATA_UNCORR) },
+	{ .compatible = "microchip,mpfs-ccache",
+	  .data = (void *)(QUIRK_NONSTANDARD_CACHE_OPS) },
 	{ .compatible = "sifive,ccache0" },
 	{ /* end of table */ }
 };
-- 
2.43.2


