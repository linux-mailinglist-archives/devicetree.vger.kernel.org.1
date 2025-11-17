Return-Path: <devicetree+bounces-239476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEAFC65456
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 3E5B9290F1
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649EB303A3B;
	Mon, 17 Nov 2025 16:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1tHN/93"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC17270541;
	Mon, 17 Nov 2025 16:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398423; cv=none; b=IIv6ulJyl7Vr+8rgKRTh284rdxTl9EmVsJEiG2aEZo1OZHM0HF9vQyT6sT+Zm+Rll83uxIhrzMdueFqmfvaGvIQlEduWGhPsT+k3VRK68dN5vkfK/aNFFY1xYyK6UdyKkmrP9fgWl5n2B0CRYI+Boh/6UBiITu5FXDTCoSoFKDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398423; c=relaxed/simple;
	bh=TqRTEy/qLFgCM+vu7DBByxdMFUChNT1Vph4iBUkSkRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hol77x9wSUQ1hnF0Nc6cgnnrwPiiu/RY5yCnKivuT2WETVV24ngu5xlFln1ZkpXPQ4+0QSiJj7m1jvUP8yLRM6u2E1Fdt9qp1MTw5Zr5vTMAqjJjpjukOIZ0tlpTwJ5GBcdk4HkUvhtKi051c1j9FGzfTA2i1ex6UAEMH4nq1s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1tHN/93; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF1C1C19425;
	Mon, 17 Nov 2025 16:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763398422;
	bh=TqRTEy/qLFgCM+vu7DBByxdMFUChNT1Vph4iBUkSkRI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p1tHN/938def847wr8qwPFAttZbh8oCcV6fRZr/qkPpheYq07ZbsotllxL8U9UswB
	 0WhzuJTdvdaBGoCEhH4aS5DcnLMxzl06yNSqzuCvVx1Qe5gpICTgazUAiCwjdbEK79
	 X8iCtFzwZXuIVCWmS0IP96uovpKDkU28tZOx/TdvJA1Rdm9mKTYMbfYdeOnRYKJdZS
	 4Y2l2MytBvZm54ecpzVV1vHeCdBK1iOaHzhrEgBR0L2JDnu5HzAfbOPjeCl8oXbNyH
	 Stj1Nu4JLEadtrDKDaw6OHMhEDt6pB3dSiIO5xAsaYs9o9wKTBBpJ0jTvrSgPxtQBX
	 NdzojMU/U0xPw==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Subject: [PATCH v3 3/3] riscv: dts: microchip: remove POLARFIRE mention in Makefile
Date: Mon, 17 Nov 2025 16:53:24 +0000
Message-ID: <20251117-spill-backup-a596b1e6e28d@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-paprika-tipping-e7bb3e211d6f@spud>
References: <20251117-paprika-tipping-e7bb3e211d6f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1650; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=wpACx2j7gstwFBMTM6Ro5FSqQVplVkbgHL8QrFVce9E=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSwQwqHN8mms0+IBY2+aS/4Hrd6DJ9vST7FBFnYZ/la /62NZd2lLIwiHExyIopsiTe7muRWv/HZYdzz1uYOaxMIEMYuDgFYCIWqgz/9G/t8hflMI39W1Vi /m13lM9dn7IJksmOD3+XhxocWGZ+heF/WFXijbltAh/6npy7ekLL4EDszhbmYheDI5mtq+fuFOh jBgA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

Substitute user hidden CONFIG_ARCH_MICROCHIP_POLARFIRE by user visible
CONFIG_ARCH_MICROCHIP.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/Makefile | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/Makefile b/arch/riscv/boot/dts/microchip/Makefile
index 3ff4a4f67dc4..43f91cbf338b 100644
--- a/arch/riscv/boot/dts/microchip/Makefile
+++ b/arch/riscv/boot/dts/microchip/Makefile
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-beaglev-fire.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-disco-kit.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-icicle-kit.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-icicle-kit-prod.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-m100pfsevp.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-polarberry.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-sev-kit.dtb
-dtb-$(CONFIG_ARCH_MICROCHIP_POLARFIRE) += mpfs-tysom-m.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-beaglev-fire.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-disco-kit.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-icicle-kit.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-icicle-kit-prod.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-m100pfsevp.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-polarberry.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-sev-kit.dtb
+dtb-$(CONFIG_ARCH_MICROCHIP) += mpfs-tysom-m.dtb
 dtb-$(CONFIG_ARCH_MICROCHIP) += pic64gx-curiosity-kit.dtb
-- 
2.51.0


