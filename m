Return-Path: <devicetree+bounces-256368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 69251D38D97
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 11:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 581D9300A7A2
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 10:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D826533345A;
	Sat, 17 Jan 2026 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b="OkkAesZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECC9318BBF;
	Sat, 17 Jan 2026 10:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768644743; cv=pass; b=ujFvJZgA9OygAi2UXzPLZUn7rvfLrBMHF8THuBAnCZMwvLtjV6EgrLjTxWTKY4JbdPW2zoiiqzNtf8dKYWOcU90YYsEQgfQTRrHLQJFNqXwVR1dD4klhWH4DeZNSkTDGgJyHjSbfUN/vkPOpm3feYYGlEiITaEMw//vsDdzs7Nk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768644743; c=relaxed/simple;
	bh=abEe4zvJORGN3X/yMWvKTSB5fdrqCB2zPWi6bzldic8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OBEBlQ8F92IlJGBY0/icTqgkOZZEK/4gtZC7Sl/yKDaRn/tPRfwDDWybSBb8tUXWT1ceHaylce072qJGCCwWS+YFDNcRbfX/MCL35XH6JTb8YSRhcYcAuexaJFADziqzYjiAd7xfE6QiXGKDKy/3bSjbcdpgLXTETB9e49n3j0k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech; spf=pass smtp.mailfrom=pigmoral.tech; dkim=pass (1024-bit key) header.d=pigmoral.tech header.i=junhui.liu@pigmoral.tech header.b=OkkAesZ+; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pigmoral.tech
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pigmoral.tech
ARC-Seal: i=1; a=rsa-sha256; t=1768644722; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OKJyt+wl9GRYaZNuL2HojPyQRmff3OENDlcg+FHoYVjVvoONapvECKXTc84wQwkWv23W3v4jifoQgfM72+qDgfgS/FkJff1RgX/xUslZfg9Ovu1uUF+ymo+Qsx3EIp+tSBcie/Oe84fzedPMmOAYC5YL4Z2YOT6wfMIYU9+etA4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768644722; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+PJwbsCjeL6ZMwDjx33KA6Ejndk0qEwRwBHqTWZvm3o=; 
	b=J0i5T/xA8Ks/P9yMGTP/FwicNau3JbqFrwXqQgvfgFpl2zVWjsYisZmlM36Bl6gA0q/URMDN6U6jwG6wOvQrRglY5ETcZ9fhLaGMjZT+DAt0DZbMpbF+dd7o6srUXF02+0dRGEn/BTl7p1p1s3fPjL6kn4y9mrby4CiUiJ9RamQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pigmoral.tech;
	spf=pass  smtp.mailfrom=junhui.liu@pigmoral.tech;
	dmarc=pass header.from=<junhui.liu@pigmoral.tech>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768644722;
	s=zmail; d=pigmoral.tech; i=junhui.liu@pigmoral.tech;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=+PJwbsCjeL6ZMwDjx33KA6Ejndk0qEwRwBHqTWZvm3o=;
	b=OkkAesZ+ztKKEecOcFgflwEqU1uGBX6Lq28XZxIxj/FqUsemZLipEOrHTHB22vqc
	JU6aGcDqyAuikb+TspKdkzMH6Nb9RlTJJBdaN8EexbTzMuQGSHJJju9Dm2gCo7MO9VJ
	uRH480Trmlj1xtjZxhCYT2QeI4HcL9cNkvj0zxpY=
Received: by mx.zohomail.com with SMTPS id 1768644721081835.1354482909551;
	Sat, 17 Jan 2026 02:12:01 -0800 (PST)
From: Junhui Liu <junhui.liu@pigmoral.tech>
Date: Sat, 17 Jan 2026 18:06:22 +0800
Subject: [PATCH 1/2] reset: canaan: k230: drop OF dependency and enable by
 default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260117-k230-reset-dt-v1-1-c8cbaef1e1ac@pigmoral.tech>
References: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
In-Reply-To: <20260117-k230-reset-dt-v1-0-c8cbaef1e1ac@pigmoral.tech>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Junhui Liu <junhui.liu@pigmoral.tech>, Conor Dooley <conor@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768644706; l=885;
 i=junhui.liu@pigmoral.tech; s=20251228; h=from:subject:message-id;
 bh=abEe4zvJORGN3X/yMWvKTSB5fdrqCB2zPWi6bzldic8=;
 b=o5RsGMteqrJnt1c218SGzBuWKmZHY5FB8+4eXwxjnJ4sZMCrApu9QMqDkw7LD6OKKDHBGX2lP
 kPPRuAb5CWLBgCyuw/pzaEKGjS8fX1wFcSXs5VkHMAXWS+MBIZuFdMb
X-Developer-Key: i=junhui.liu@pigmoral.tech; a=ed25519;
 pk=3vU0qIPJAH8blXmLyqBhKx+nLOjcLwwYhZXelEpw7h4=
X-ZohoMailClient: External

The driver doesn't use any symbols depending on CONFIG_OF, so drop the
dependency. Also, enable it by default when ARCH_CANAAN is selected.

Fixes: 360a7a647759 ("reset: canaan: add reset driver for Kendryte K230")
Signed-off-by: Junhui Liu <junhui.liu@pigmoral.tech>
---
 drivers/reset/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 78b7078478d4..b3b9e0f9d8c4 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -150,7 +150,7 @@ config RESET_K210
 config RESET_K230
 	tristate "Reset controller driver for Canaan Kendryte K230 SoC"
 	depends on ARCH_CANAAN || COMPILE_TEST
-	depends on OF
+	default ARCH_CANAAN
 	help
 	  Support for the Canaan Kendryte K230 RISC-V SoC reset controller.
 	  Say Y if you want to control reset signals provided by this

-- 
2.52.0


