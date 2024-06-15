Return-Path: <devicetree+bounces-76083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E355D9099FC
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 23:16:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E2AA1F21DBD
	for <lists+devicetree@lfdr.de>; Sat, 15 Jun 2024 21:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE091C68E;
	Sat, 15 Jun 2024 21:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuKySHuw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2DD637
	for <devicetree@vger.kernel.org>; Sat, 15 Jun 2024 21:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718486181; cv=none; b=m9uCgwD09aigB7AUmMhHqiraVvvBB3r6YxdQVDu5Yfnx4CMrJdB8/HShBKdEu5Wgx01zLaCeGe4r2wQx262MZNuozI2hqMTYmvPyvGZ+/uGvjry8jw+mFr2gsMOfxJUESPi14gsUIxOhgxg6ITXRJyaE+m/fV/80Y5F2m4Q2yk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718486181; c=relaxed/simple;
	bh=Ei3xb2tn6MotVLfGlVMycCcgvxSaZ1QDM3tqgfK9vv4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j+4K6d+3kktmNUmfSNxULyudm5KPrc2GFuDg3IE96rDb7f5GZDC56j/TaeB+IY1TV3RoH+dD74xB3gcwhGQMZoW4OWSbxUwOZPBJTHpqH9RXZ+swvir8OcyoKdpGVbe7NOKF+iPkpZBSaDlVXXUuEurJ2PuNEyzJM8e7iHISWcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuKySHuw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB5D7C116B1;
	Sat, 15 Jun 2024 21:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486181;
	bh=Ei3xb2tn6MotVLfGlVMycCcgvxSaZ1QDM3tqgfK9vv4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fuKySHuwo0SuLMdlFAgF+bRSK9aaPI8KKMW86GrjvETVYvI0aUYdJ/3FjcU56wKwz
	 ySyHTFRpPQOwP3s6WX0Tt9V0WKrWTrzG40FboeMF3kumRxN+N9RJWY8OwsyF3rTo6X
	 tsxvRIYsNJEZOrYVhfdwNxhe5MS2Ktsxc5HzdUQXWBCJsPVFSbKd3FwkaSOU2W7BEn
	 FtzZave/KdLINN/t+3VW+TAwkvd+ZJV88UKjrZSdU7I9k2EPhRrdsfiQxh1LQVIjWa
	 pUHUQQdz3R6pVaxXe4UyhRAz7oH8lSPKspybnshGddizCpJ9/YUlW38ldpOCFskv0N
	 AMsvmUpLc6U8w==
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
Subject: [PATCH v4 3/3] arm64: defconfig: Enable Airoha pcie phy driver
Date: Sat, 15 Jun 2024 23:15:43 +0200
Message-ID: <ecd38790c8cf5193507421458f0eda853ff58609.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enables the PHY_AIROHA_PCIE config by default.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 57a9abe78ee4..b338a9675c34 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1497,6 +1497,7 @@ CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
+CONFIG_PHY_AIROHA_PCIE=m
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
-- 
2.45.1


