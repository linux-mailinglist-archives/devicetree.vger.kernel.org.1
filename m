Return-Path: <devicetree+bounces-121927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C6E9C906F
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 18:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 366F5B44B3F
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 16:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA244149C53;
	Thu, 14 Nov 2024 15:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="HzOqlOPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FCF36AF5
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 15:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731599889; cv=none; b=Od4njNrfZAPXK7jIw6gdY9Bum/x84AHd9aKuV0EAOktCp5/A0NQJbIH6v3IFTvz8PR0XsYVvUXBp/sKG5X5XlugV8WQf6E3yiJ5kzEJFwLCMaBIZqVm+d76eRmVVynP306IKMF8zWHxUrO1h1iJFzBXwsrcSUzWOm3OCjzq31yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731599889; c=relaxed/simple;
	bh=loYyIhkcMzrj4FrIFazJG79N9/dYjbyz3v3AmtePc/4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iUxpYMgyQsLU8z9vJJ1gKXN2U8btuHfbn1UP5UzH/PaoBkcuOO5n6XOzYJAqiRRv5YXQlfoPuT6n9pHQa6V8ZOV3fIsGU9Tmghmj24Dkp5H1V8Iq1gw2Slg0OoZRJafM5by7ehtDPhCE1smMIt/LHnw44v/783p36djnTgqBWM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=HzOqlOPW; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38207c86695so636845f8f.2
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 07:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1731599885; x=1732204685; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=59ImsGZkfVxpjJlL9PSuH5u6HB8iBQyLvRwMZn/Szcg=;
        b=HzOqlOPWMK/p/CbenEDtC5xdUta/3bVlMG2hWID6j3PHElnuFd+UqogmL6YQAQsAhH
         M5Dis/NtvShgoD38XX1h5MJOMJuB1Ld/LPUlThNvzem0g0VUWWpJD9aDuCNt+cFPkN/X
         FlvKa1+labNELALzUF5nKywiz29jr53tmFinA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731599885; x=1732204685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59ImsGZkfVxpjJlL9PSuH5u6HB8iBQyLvRwMZn/Szcg=;
        b=gnRfUuJFGAvutQe5xB+l4VlqxbZ6EUmT7CmJTP62KMi0tn7I4cHFbf5rGtP72FvTjv
         anFjC4/ReeXTW8O+7Wmcs1tClWrOBq6dus391Gw34KPiT4ql9ZpOjrVsDljMB88bVFi6
         fFG6wBGri0ezL20qnqV3Fv4E81JhEhsV8AqmclNJ9LMHgNOoUg25ZTpVbAxA3ZHcZHvv
         X0IjZCAGXu5Nss2RVlQyASq5nJ5+CswXt1NYDEXYPfbLOTg07mzQJOE+N485vdEHX/nX
         EacddMwCQm1WJKKgLNCpBN5BL8g92224DFqeOWGjYceTmug5HNHWn79yuUuaBNOuAP05
         7bhA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Lw5FwZRp8ZKgZZ5uI7R3W/OKjagCf4BUQ4ragQ1w+4Sy9QO5Q654Xn/jh73Zo3xJpp7ozq3C+cRE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+7Rd7P7yguG2njMJKE8e9CqLziuhYw8L0jIlgFoDSZmkpQVj3
	phiy7fzwLH2mmjT0Fhn87yo8A2n7lTgc4pcSg3F7wA8dHFGgzZOe12+dLedN2tI=
X-Google-Smtp-Source: AGHT+IFWVJNCG+dVoLsDTTl8wMytxtB6CbOGvqE4CWVjbjT3Y0d5NYCAqbWpiGhFMnSmT0QgusM6xw==
X-Received: by 2002:a05:6000:1449:b0:37d:452b:478f with SMTP id ffacd0b85a97d-381f1867330mr20364993f8f.4.1731599885267;
        Thu, 14 Nov 2024 07:58:05 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3821ae161d8sm1852579f8f.78.2024.11.14.07.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 07:58:04 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	stable@kernel.org,
	Romain Naour <romain.naour@skf.com>
Subject: [PATCH] ARM: dts: dra7: Add bus_dma_limit for l4 cfg bus
Date: Thu, 14 Nov 2024 16:57:59 +0100
Message-ID: <20241114155759.1155567-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

A bus_dma_limit was added for l3 bus by commit cfb5d65f2595
("ARM: dts: dra7: Add bus_dma_limit for L3 bus") to fix an issue
observed only with SATA on DRA7-EVM with 4GB RAM and CONFIG_ARM_LPAE
enabled.

Since kernel 5.13, the SATA issue can be reproduced again following
the SATA node move from L3 bus to L4_cfg in commit 8af15365a368
("ARM: dts: Configure interconnect target module for dra7 sata").

Fix it by adding an empty dma-ranges property to l4_cfg and
segment@100000 nodes (parent device tree node of SATA controller) to
inherit the 2GB dma ranges limit from l3 bus node.

Note: A similar fix was applied for PCIe controller by commit
90d4d3f4ea45 ("ARM: dts: dra7: Fix bus_dma_limit for PCIe").

Fixes: 8af15365a368 ("ARM: dts: Configure interconnect target module for dra7 sata").
Link: https://lore.kernel.org/linux-omap/c583e1bb-f56b-4489-8012-ce742e85f233@smile.fr/
Signed-off-by: Romain Naour <romain.naour@skf.com>
---
 arch/arm/boot/dts/ti/omap/dra7-l4.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
index 6e67d99832ac..ba7fdaae9c6e 100644
--- a/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/ti/omap/dra7-l4.dtsi
@@ -12,6 +12,7 @@ &l4_cfg {						/* 0x4a000000 */
 	ranges = <0x00000000 0x4a000000 0x100000>,	/* segment 0 */
 		 <0x00100000 0x4a100000 0x100000>,	/* segment 1 */
 		 <0x00200000 0x4a200000 0x100000>;	/* segment 2 */
+	dma-ranges;
 
 	segment@0 {					/* 0x4a000000 */
 		compatible = "simple-pm-bus";
@@ -557,6 +558,7 @@ segment@100000 {					/* 0x4a100000 */
 			 <0x0007e000 0x0017e000 0x001000>,	/* ap 124 */
 			 <0x00059000 0x00159000 0x001000>,	/* ap 125 */
 			 <0x0005a000 0x0015a000 0x001000>;	/* ap 126 */
+		dma-ranges;
 
 		target-module@2000 {			/* 0x4a102000, ap 27 3c.0 */
 			compatible = "ti,sysc";
-- 
2.45.0


