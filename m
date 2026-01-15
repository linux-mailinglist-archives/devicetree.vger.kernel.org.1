Return-Path: <devicetree+bounces-255607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7600BD24B13
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47E81301B120
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036A739E6E5;
	Thu, 15 Jan 2026 13:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DToHEBzU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D511039E6CC;
	Thu, 15 Jan 2026 13:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482882; cv=none; b=jzJ36Kex+LtG4CH6QncfuX5bLCFD64ogKTgXLctOtiwZFHiDg98SYXe73DHaR0uoeKeX/dPBn/kHYEfYDPuwFc8MoH2VI0C6FNeaqHIk4sakWeBeWXpuWzC9SSG6bChbJGvPOf5pJU99ClRAt0UuiNqQuAGYbP/TDi11aVjpcZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482882; c=relaxed/simple;
	bh=FX7UALIJ02YDk/RVkAgS2vLE+EOriIUhy1KqEypqK/Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sdQID8I4pQd7QJR+hlGZ1x67FhbVScPVmvwRq7s7lJlXAruHGKdxz8OVcmUbNeOr8v1tWNd+M+Go0iafMV6PkRfQ5934n1g2R0LNamf1lx3vqSrXuvodh5YbxHe0/XZiOhN45ll4tdZSb/w5TQgw8F+s1qRxiJQqt7isxqjOHvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DToHEBzU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FD4DC16AAE;
	Thu, 15 Jan 2026 13:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768482882;
	bh=FX7UALIJ02YDk/RVkAgS2vLE+EOriIUhy1KqEypqK/Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DToHEBzUwASaQ+P+1vGn+Vnl7oCYyzozzctZdLZkBUOKu1IZZ2XbAZzhFKBj2NHAr
	 BGiQhqPuZRXtM37XDBJsXF9HD/GWLQuMA1onx5Q8e+s4fqZYqXVTRQ2dQjQjDX5GiC
	 bBIWZoLoM6WFrot/DGVr6KGpxdkrO4c8lKftDXLQKD1qUlILfWJYNRc1V4klq+CLx4
	 AVdkLZIQOpXYnGS0ClY0PmoaXh0gWqM1OaROW+5D/U2LPQ4a++pWxQ9+sap9BuO4OH
	 6CuJYvwNPzY/DJC7lRsqPNj+wS9AR44Y3K9/YAZ1ft5hlI7vhrvOEyMaZTM+snqR8i
	 eU3QveMFEYmiw==
From: Michael Walle <mwalle@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Udit Kumar <u-kumar1@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 1/2] arm64: dts: ti: sa67: fix CMA node
Date: Thu, 15 Jan 2026 14:14:18 +0100
Message-ID: <20260115131431.1521102-2-mwalle@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115131431.1521102-1-mwalle@kernel.org>
References: <20260115131431.1521102-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix the size of the CMA node by making it a 64bit size. This was
probably a copy&paste mistake. Also drop the unneeded alignment.

Fixes: 1c3c4df06f9d ("arm64: dts: ti: Add support for Kontron SMARC-sAM67")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
index bfcbecd8ef33..db59ec4e4106 100644
--- a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
+++ b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
@@ -85,8 +85,7 @@ reserved_memory: reserved-memory {
 		linux,cma {
 			compatible = "shared-dma-pool";
 			reusable;
-			size = <0x10000000>;
-			alignment = <0x2000>;
+			size = <0x0 0x10000000>;
 			linux,cma-default;
 		};
 
-- 
2.47.3


