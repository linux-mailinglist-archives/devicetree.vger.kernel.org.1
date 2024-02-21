Return-Path: <devicetree+bounces-44117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEF485CC87
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:05:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D28B1C2266F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E4EB193;
	Wed, 21 Feb 2024 00:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFQ3Em3b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2876A1851
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708473894; cv=none; b=TY2EIJbByC/s+cr7I4MQZfSIwH/U9j5H8dpaGNwBqFa1IUSriXMIhhzooR15kJ3HA9Sdrc4NkSinS80Mo3KSF9o1c2FOyMVQ9XSjIeItwL07pyzj5hh5557dE9bUih8sKEetYJNX9A0X8MbqXTD16eLJDPGDOofVuzvBujBK6lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708473894; c=relaxed/simple;
	bh=31cCssRx2h5xOO5ZE8gPP0ZExpxILY7Ha+tAAesnw04=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FiQNaZQY249VfZ65Zj8yTS0TdyM7dxB9qznJjUKRwD5uSi0DtKbbuqPnlVakIobO+VnGx5ns/KzitAwPO3H329EMbbdYb+x6DDn9NtkED4FcJFatxfXT/uDpHcwOoMAwr0wd7d5wt9tVhoMTbY/vPQqxmk0F8claKqzwClKjg88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFQ3Em3b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E67DC433F1;
	Wed, 21 Feb 2024 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708473894;
	bh=31cCssRx2h5xOO5ZE8gPP0ZExpxILY7Ha+tAAesnw04=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UFQ3Em3bcyCAGxMIYLpCiwnNP/ycMWJNOsZWjY/mKowxEypWNsxLIFOevbhB/GghL
	 wrUPj1ijdCQDDAs5cPjYhBmgK5zX7LRC6yrWNeGNdahxwFrtettl38i2Z7uQMjsb6h
	 CQqS4j11WUNPXSLx5ccWL/BsHkEgBLrFN7iBl3Ju17eQRwBhKGnqnqevVVw3mRwcIn
	 v+MCQfT7p6yG9Ztd2haa3Zf7V03i7dgBBjw9WjktsHdFhQjGH4Blc4O/FEFNAcaI8I
	 iouzjIP9F/tEARsFcj7SpLs/m8aVvd+P1OcjZzzXRglMeyF5sBHXJZ59T04XvroOpY
	 tKeOYs5Birpvw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: lorenzo.bianconi@redhat.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	devicetree@vger.kernel.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH v2 3/4] arm64: add Airoha EN7581 platform
Date: Wed, 21 Feb 2024 01:04:29 +0100
Message-ID: <f5c987798bae710aea9ce1ece9c1a1cbd7bd3da9.1708473083.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1708473083.git.lorenzo@kernel.org>
References: <cover.1708473083.git.lorenzo@kernel.org>
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
2.43.2


