Return-Path: <devicetree+bounces-55075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA340893BF6
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 16:12:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F6791F2171E
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 14:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1131481D0;
	Mon,  1 Apr 2024 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSx+y65E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C861A481C4;
	Mon,  1 Apr 2024 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711980635; cv=none; b=mxHQjK6A0pK0as67LOMQ0bzMauuvR/3jnEbiuVGuWwDPke5uz7CL/DdXGhGK4471kUHnQ1GRubGy2STBXK3fdGZp8H0TtA/Dn9e//IEasMyBP/eCOS0K21Rb3j1v6HNI/rbsxRLycGRPonyo+EDTqxmfv6kqx2ebXcL6dm0U6tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711980635; c=relaxed/simple;
	bh=rF3G/J0eU0DgxMWivEwEC1LIEn/AUnhTq0d7YYaha8s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NN3dq6kxWr2xdOc1cAKqZOuA694WuUA7xy/FZyD8ZmolZc1YauzGG8fp/wtp1ZkVxR16hXrSN6qvR9vmbutykrtTSCOHpX2WZA48p+GDkIFGhU99rhSY4KZp/nM2N0iIflsbf0GmATbehyPGvndcbtJhu0M7Ya/8G2E4bNz7+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSx+y65E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D82EC43390;
	Mon,  1 Apr 2024 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711980635;
	bh=rF3G/J0eU0DgxMWivEwEC1LIEn/AUnhTq0d7YYaha8s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fSx+y65E8WXNWaNF4hHWRMLVkq9LqOu19tl2K85sbzGnvsV5PpdKLWasmGuRUbgII
	 tgdPsPapyRoX7gCLTTAkpeuWi9Zm3MOboosoe8fiGeuCCmXOjhDeGjfmmalEsRo4JX
	 Es9085WBKt07ujx0OIuJM80skot1l6FNJWWBftecdDst+BwNCjczQYVZTAkInaM6Ds
	 ML9RK/3UJgCHqeMv54skbBShg/O0wwHPLYKa/ANvJteGi9rTGYzTbr6AyC6jjE9pMV
	 uEDVs29B9SuWNYe/IVStRoPsb7plrQ0ULbishANnJ026GZKbik7J49m20hMQvMn6bN
	 cWxEveEly2zhw==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 3/4] arm64: dts: agilex: socdk: drop unneeded flash address/size-cells
Date: Mon,  1 Apr 2024 16:10:24 +0200
Message-Id: <20240401141025.98125-3-krzk@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240401141025.98125-1-krzk@kernel.org>
References: <20240401141025.98125-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Flash node uses single "partition" node to describe partitions, so
remove deprecated address/size-cells properties to also fix dtc W=1
warnings:

  socfpga_agilex_socdk.dts:108.10-137.4: Warning (avoid_unnecessary_addr_size): /soc@0/spi@ff8d2000/flash@0: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index ad99aefeb185..b31cfa6b802d 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -106,8 +106,6 @@ &watchdog0 {
 &qspi {
 	status = "okay";
 	flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
 		compatible = "micron,mt25qu02g", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
-- 
2.34.1


