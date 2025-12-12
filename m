Return-Path: <devicetree+bounces-246204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A31CB9DFE
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2159306434C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D966B285CB4;
	Fri, 12 Dec 2025 21:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="Iivra8Qo"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F0061E5B95;
	Fri, 12 Dec 2025 21:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765574492; cv=none; b=CTXiRb7+iWPqUEb+GdMgT9WvUbloupzPyKTTyTgTpENi/ppfRIrtEb2Bh3fUny/CD9+deObocV1LcPuu0gtm1vjgQeOCoV0dAjmmm1baIFSxhC3ngZVSVGPBx7k3rp17uKgrBEfQwFW8PXrFy4Pr7N4llnARtPPRv/hxyYAzYW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765574492; c=relaxed/simple;
	bh=J5Lcq93tUW+cbY2f6zjGD7AIpIsOqAki8q3M6UNeC7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=T8mplRbwcTRq1eWjnEq5P2oen1D9eg8xPRa0OEWbCUYDzhGJFsM7DPE0xAjGpK8ms8SU34c+4fJNf0Gf0yZELI3xJ8HuKEQTFmJk3q9Lso3vt0L1f1aEsFYq8asefb4zsQ4JXNDVfRwbpxS90qmLrY/mXSkLI15z6s6CcpOY5ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=Iivra8Qo; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765574416;
	bh=3gGVTI0YI5QvXC2icpDxmS5lT2Dtp0IOC8hclERXIVs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Iivra8QoiwLbr+SZT3Twpi3gGTREMowRA7CH5IpFkUGmiabHpP/AtrwquNSkurAGo
	 3oKSKy3xpaUHA8WXJu8Y20QBCUky/CXZUwPTyzv1piGDmdiEMlXNzAgRxvXczivSHy
	 hleWfHMPopTW2iYSrkOkVcPnnsFJZGkkgRP+ae9UpRKuhGW+RUZKTCs/d19oi5Q5kH
	 WVDTZnQ/WDToatbQAYWIxi8LwaUgl/rDwItG9xj1W8g1bsrN5Mqy+dMJMDia9YVqpi
	 0lhOfD4C3uaPKxXCHUTufstIAlNi0b0mL35Gejvwe0LDteY9/Z0WCu2ndQtRlSKyqr
	 Aoo1GELZkC/yA==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 33FBEB221413;
	Fri, 12 Dec 2025 22:20:13 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Hal Feng <hal.feng@starfivetech.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: riscv: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite board
Date: Fri, 12 Dec 2025 13:19:18 -0800
Message-ID: <20251212211934.135602-2-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20251212211934.135602-1-e@freeshell.de>
References: <20251212211934.135602-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Append "starfive,jh7110" compatible to VisionFive 2 Lite and VisionFive 2
Lite eMMC boards in the least-compatible end of the list.

Appending "starfive,jh7110" reduces the number of compatible strings to
check in the OpenSBI platform driver. JH-7110S SoC on these boards is the
same as JH-7110 SoC however rated for thermal, voltage, and frequency
characteristics for a maximum of 1.25GHz operation.

Link to previous discussion suggesting this change:
https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Fixes: 7a1e15b248d6 ("dt-bindings: riscv: Add StarFive JH7110S SoC and VisionFive 2 Lite board")
Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: E Shattow <e@freeshell.de>
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
index 9253aab21518..8ba0e10b529a 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -41,6 +41,7 @@ properties:
               - starfive,visionfive-2-lite
               - starfive,visionfive-2-lite-emmc
           - const: starfive,jh7110s
+          - const: starfive,jh7110
 
 additionalProperties: true
 
-- 
2.50.0


