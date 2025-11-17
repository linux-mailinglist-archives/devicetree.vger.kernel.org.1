Return-Path: <devicetree+bounces-239452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B762C64F41
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 32CD234D179
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 622EB299931;
	Mon, 17 Nov 2025 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRD4iuCa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38210298CC7;
	Mon, 17 Nov 2025 15:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763394453; cv=none; b=CnJWTPPdKKl4hH2FfxLv6UfSlV5SYV0pDlewu7+vgFoG4F6gmtSfF5gk3QKrEaspTQWQr5FEbeacmJBK81EZS5nVTaIyL8yw37rdjoV87ie9THdFTr85Tqpvke/y9hmGYJ18150lYMaI2mhvpKgwU8/nBzQV5ecwRGW4kXKVrf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763394453; c=relaxed/simple;
	bh=O7RWd2RNsJQ/yJb0uVw5IQViefyvHl39nqv+4xOuEPU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=so2pQT59Oi0QusidDHt73odPAtJQC/dCFGHNxE5US/6wHngSjmq/7qhjgBrL4MogctwJuX3lXdG2PcOGiLv1F+DPT8pEiVOP2m3bmcPQO1aCn40cAdLFPiQwq5RfPxgSOr38gpAGCNOkzEjf8/7YHGlIo6hZnI81LEv4jkQCrpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRD4iuCa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C280BC19423;
	Mon, 17 Nov 2025 15:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763394452;
	bh=O7RWd2RNsJQ/yJb0uVw5IQViefyvHl39nqv+4xOuEPU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZRD4iuCarUzxBRaBnuTC602o5vAuzZGq4hybHLLBHO/3a9tkbk/4a5jcaE0uaZma0
	 U+0Kt0LrVMhwEoqAYB8h34XrW6jD70lSSehVBHZzt99z+rJ/z56AfG227T72tnLVQE
	 VgiDqvzvcijJRqxTS+FpL7YDzwi34ZD/x+0W4j7G/Y8vNsK5+PjKWtRDV2ilm94JQ7
	 026QTd/KBBuGPPFx1GRHMaW6bT6cS3JpAL67BPkM4qKeLbkZwEpGY9bJeP8uNIfCbW
	 sCCPQRSQagXOvhTkRaBFw6d6kkFa+cEk3FDWB+CvvgQHfz2BASSXRCzUnx7kerSBB8
	 MGcWf33AC21Gg==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 2/2] mailbox: mpfs: drop POLARFIRE from ARCH_MICROCHIP_POLARFIRE
Date: Mon, 17 Nov 2025 15:46:56 +0000
Message-ID: <20251117-landline-grit-284cd8d6330a@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-screen-appointee-837a7296ca91@spud>
References: <20251117-screen-appointee-837a7296ca91@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1267; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=mmmDslZJHTrotXDe/3DO8bgQq1j/1loTEphrINLp7lU=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSzrkugtn3O1bvLJDap8iTsl6x33zJB1brU6+s67eYx 9wU+hnUUcrCIMbFICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIloKjD8910YM6O4LDpvxvbv O/NUT8geZ1W6/UyrzdQw3PiNpHeoJyPD+nxdycO2AnekKmdtDrDs2Hs+/H3srSyRo9PiNkacdeF iBAA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The ARCH_MICROCHIP symbol has been defined for some time on RISCV, as a
replacement for ARCH_MICROCHIP_POLARFIRE since there are now other
Microchip RISC-V products. Drop the POLARFIRE from
ARCH_MICROCHIP_POLARFIRE in the POLARFIRE_SOC_MAILBOX Kconfig entry
since the newly added pic64gx also uses the mailbox and it is one of the
few users of ARCH_MICROCHIP_POLARFIRE left in the tree.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Jassi Brar <jassisinghbrar@gmail.com>
CC: linux-riscv@lists.infradead.org
CC: linux-kernel@vger.kernel.org

 drivers/mailbox/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
index 29f16f220384..35bd402cadc9 100644
--- a/drivers/mailbox/Kconfig
+++ b/drivers/mailbox/Kconfig
@@ -199,7 +199,7 @@ config POLARFIRE_SOC_MAILBOX
 	tristate "PolarFire SoC (MPFS) Mailbox"
 	depends on HAS_IOMEM
 	depends on MFD_SYSCON
-	depends on ARCH_MICROCHIP_POLARFIRE || COMPILE_TEST
+	depends on ARCH_MICROCHIP || COMPILE_TEST
 	help
 	  This driver adds support for the PolarFire SoC (MPFS) mailbox controller.
 
-- 
2.51.0


