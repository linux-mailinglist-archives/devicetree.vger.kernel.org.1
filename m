Return-Path: <devicetree+bounces-67024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C959D8C6510
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 12:45:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D0BAB20EE0
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 10:45:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713BC5A7AB;
	Wed, 15 May 2024 10:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLV7HrdX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03C17578
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 10:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715769905; cv=none; b=D4R8qHyOKcJ8/mn8L1VCp3DgNdxtvt6OGSjR1dETIbicNa9QZ9z5+9EbfQE484HcMSy0gkSuHNgjFAlnM/ICzTPM1Fj/rLUenPgrfevaC72ub07FTMFW7G5+uowWdktdFCRMBiYvUGDoHUkiACmyUeOidaZJWpwZCGUsnHgvX5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715769905; c=relaxed/simple;
	bh=0AqwnoWg0qUWqYivq786ftCWg2bKprgrRsPpbZwKRW0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=forn/gS3YGbTO4LZOETO/huBHbGrcuRcf2HuS3Y++yN+EI/ykEPgQTMFg8ju8ZnuFFL99AhNSjjA8BLLfIpfRAi0frHzJKpOx6xwCfKpg7maFKswPXYvEd13Pfuo23nvjkCC86fuEOIg9QnjgqSFhOg4LoBmsZ/if+d2fetaDuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLV7HrdX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42C9EC116B1;
	Wed, 15 May 2024 10:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769904;
	bh=0AqwnoWg0qUWqYivq786ftCWg2bKprgrRsPpbZwKRW0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RLV7HrdXeZR8YIXwRg1HiSbRTKx5sOvJ+emKIyn2tbVVSFquh1kIkW1dT0WqKYpT4
	 9uSf/3CuVwP+47liCpZYPthhO/TWClSxFwDNW+U8r3/dVWMz26cMHTTqmZU4WOYzNB
	 mWHVXRyqNtW7LhFKOuYT6YcoZDCs6cC893v+1DPwiuGh91QpartZVnJd1QTHYfZDdO
	 1JgtVTn6pI0dZ7ObnGTFwWdTLRhEIF3j4XKK4FwijVN3F/nI7kGtv60GsWaMKKGGf3
	 i1abpFd2nXi6vCwG4VLFIkZVGKnmbr1eHrOPEhSct4+JkYd6ls2IYSrad1rNhr3ggE
	 cqsTKjw65gr2Q==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v2 2/4] arm64: dts: airoha: Add EN7581 pcie-phy node
Date: Wed, 15 May 2024 12:44:46 +0200
Message-ID: <9bde509426a0c74230a237e64be2381c986da23c.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715769325.git.lorenzo@kernel.org>
References: <cover.1715769325.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce the Airoha EN7581 PCIe-phy node in Airoha EN7581 dtsi

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 98c2a86086e1..77fd37222a6a 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -178,5 +178,14 @@ spi_nand: nand@0 {
 				spi-rx-bus-width = <2>;
 			};
 		};
+
+		pciephy: phy@1fa5a000 {
+			compatible = "airoha,en7581-pcie-phy";
+			reg = <0x0 0x1fa5a000 0x0 0xfff>,
+			      <0x0 0x1fa5b000 0x0 0xfff>,
+			      <0x0 0x1fa5c000 0x0 0xfff>;
+			reg-names = "csr_2l", "pma0", "pma1";
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.45.0


