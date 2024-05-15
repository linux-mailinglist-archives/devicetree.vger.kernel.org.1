Return-Path: <devicetree+bounces-67026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DB08C6512
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 12:45:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F4DDB217DD
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 10:45:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78FD5EE80;
	Wed, 15 May 2024 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ3h9RVD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BF75A7AB
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 10:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715769913; cv=none; b=kVesfawmmStGGh/LOruvs8JkPAHP4+83Kl1Gp/F7Sb2xLsBjbikp1RqaKZjwAyrOohik4iLsV4g8Gp88IzW1yW2VLPZLueOD4cU0MLI0jLdxfDSgNWBhQJgy1DOXy0RHwgceVa7PkJmaBuK7yV2ZY7lBGKln3kUxKcvrfjLazzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715769913; c=relaxed/simple;
	bh=AnFR5qPMw1kGgoI87g6NMIoNqxYv5v092iW1SnSHyZQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h1O/lDeGwowXqL87O6yGg/9atgSpMkhugqKVM/kvP3Rxuud2YmoLLgonWhhZQjuvFG1Tmr164ya80Of27wmj+EtE1MgapIrGSPNFG6i0nnkN/YSjmSwRMnMaiaE71JysCtRrYWy6QHpYcm5W2xlBhbQ3et/fdeYSZtu2Y92Ido0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ3h9RVD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D27C4AF07;
	Wed, 15 May 2024 10:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769913;
	bh=AnFR5qPMw1kGgoI87g6NMIoNqxYv5v092iW1SnSHyZQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IZ3h9RVDYBhTzKYoKc/15mPM6Hes+FDavK8RSGpw2z5+8XsT8Sgaz9MoE2dVjS6/w
	 LucpZo8VjpPgMvWnwAhZAziQmVDKbyxCq7EHBny4Xv/BVOmys4RScn3Xl5FAR5B5b9
	 9Qw4v9KokC9ozlU4JGgVzCrxqqu6iJpK2EgmtOQOdju3JJ0iloTgAL2+DDo5Syvthc
	 p5Aai7k9hHnTjwVyyy1ftUVKrqwhVo1MEHRmDQdvS2Dwg98M6Vr3RtfhRAtQJ07qQf
	 hYziQHQxc1cefOMgidPSwEVUw4fCbmAWhUW5Uvn3xIgYDXYXMC8glG33uyiYDYdWDA
	 vAZTi+NA7UMGw==
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
Subject: [PATCH v2 4/4] arm64: defconfig: Enable Airoha pcie phy driver
Date: Wed, 15 May 2024 12:44:48 +0200
Message-ID: <3ed6056ff5aa71312e5e60d70267ea9663bbf2c8.1715769325.git.lorenzo@kernel.org>
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

Enables the PHY_AIROHA_PCIE config by default.

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a53c58584bcf..c0eacced5d41 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
 CONFIG_RESET_QCOM_PDC=m
 CONFIG_RESET_RZG2L_USBPHY_CTRL=y
 CONFIG_RESET_TI_SCI=y
+CONFIG_PHY_AIROHA_PCIE=y
 CONFIG_PHY_XGENE=y
 CONFIG_PHY_CAN_TRANSCEIVER=m
 CONFIG_PHY_SUN4I_USB=y
-- 
2.45.0


