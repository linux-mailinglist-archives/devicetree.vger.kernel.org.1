Return-Path: <devicetree+bounces-48924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9168E87450B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 01:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D29B285103
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 00:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C790161;
	Thu,  7 Mar 2024 00:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nqk6OteB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372D74689
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 00:11:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709770299; cv=none; b=c+8IAP9Dj8Fu5JcBeGW7scAO9VWKnhihiZ9yOgUgkCSI2VSl6QIZQYMQNZNl4FSRUAn5gsxbwe5C6FMh5XBFjyZ1bZRreI6NDHAk8k/fK0PW/LxYrgRH91GMfFTRngC7WMk0xHew1vogJrcDgZLYnNjiikOlbVHYSlrDgGgGgvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709770299; c=relaxed/simple;
	bh=tkgMvmfM4Ev+quUP/UBgA3JD1BvYmD9imiGAqjSU3c8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dDThECwY1P+1CwHYi+qEl+Qaou9S/r8hoswgKStlsDbWz1tErbsdEgOI+GdG1oipESioWkGvRZ14+eatrjwMIR3G9Da2g70WtbtMafdTgEXfMNFiZhXusGtY3kGSkkRoM7h4HK5eh+AtkktU+7wEqDtzo8E0n89d6hFe9q8y54s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nqk6OteB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6945EC433F1;
	Thu,  7 Mar 2024 00:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709770298;
	bh=tkgMvmfM4Ev+quUP/UBgA3JD1BvYmD9imiGAqjSU3c8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Nqk6OteB4fnGN6ueyhP9k6GA26DzxWd1gpkk7TQxM1YCcmUv5zXPCY91BHvWm1uWz
	 ExPua0AtIIXdJgxyiuXf1c7Ea1vqp7GSYJFWhdAiHyVOT3T4NyWubE4HUSPBQdBm3o
	 smszIzlafXLERNa8fbm7c6MXik1fnaRzJCU2BpHggTYcR+2AA6UFNRYq/BhWThOy3c
	 e2/sLbtQRDVbn3NFYlvClwfubCfV8AAbk4GYSOyaXyjipfkzka62ThNPrf7ld57YcL
	 mqwJzwgtHUoGozqqXCg4BvSC4ppBawbM5U1zqTelCAM4s1B8u+cFPIUes/Vw61VLgm
	 O6fDbYLttY5FA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	lorenzo.bianconi83@gmail.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v3 3/4] arm64: add Airoha EN7581 platform
Date: Thu,  7 Mar 2024 01:11:12 +0100
Message-ID: <b50faa94923389d435ac37c3094c269a46bddaea.1709768157.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1709768157.git.lorenzo@kernel.org>
References: <cover.1709768157.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Daniel Danzberger <dd@embedd.com>

Introduce the Kconfig entry for the Airoha EN7581 multicore architecture
available in the Airoha EN7581 evaluation board.

Signed-off-by: Daniel Danzberger <dd@embedd.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/Kconfig.platforms | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 24335565bad5..bbe61e233034 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -8,6 +8,19 @@ config ARCH_ACTIONS
 	help
 	  This enables support for the Actions Semiconductor S900 SoC family.
 
+config ARCH_AIROHA
+	bool "Airoha SoC Support"
+	select ARM_AMBA
+	select ARM_GIC
+	select ARM_GIC_V3
+	select ARM_PSCI
+	select HAVE_ARM_ARCH_TIMER
+	select COMMON_CLK
+	help
+	  This enables support for Airoha EN7581 multicore architecture
+	  available on the following SoCs:
+	   - Airoha EN7581 Evaluation Board
+
 config ARCH_SUNXI
 	bool "Allwinner sunxi 64-bit SoC Family"
 	select ARCH_HAS_RESET_CONTROLLER
-- 
2.44.0


