Return-Path: <devicetree+bounces-229563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AA27BBF9AE7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A8092355D4D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 02:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCBE20E704;
	Wed, 22 Oct 2025 02:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jr4LlBNz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383DE1D63C7
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761099050; cv=none; b=fy6qZbBfpcBNVd2me0hJiafxQRJvsLVs9adqbWDN2p5X1/1xSSNSPhcq9CkA3Dn8/0LbnQ3vtLu94PeqxhqDNFcod0jWaWTIO+ZUtGtI9VW90kac7wwslyC/Jq5zW++qxI9/qK79BN3uWJ+KEa7jDMcccnOr7P1+zMcSPOiBR3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761099050; c=relaxed/simple;
	bh=5FfOn8u5HcondGc6TGFzbGTDX0lXc+1Ab30moLvKRqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ufwPj6Xw0scq84Knv9+cpQccvnFLJ2yC3VLG7o6znS0Mg9G6JRg7MleN5v4IPeNfmE0UhkOJBh+84P8WQkSCkTJBWXs1KL7MJMOCgQ/hPmMWq+Z9Wlhegg1GSdxBHbkqIbtAQxdbcOTQWXHavSGziy+I4sdr6uB5K3gS99rWB2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jr4LlBNz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 707B4C4CEF1;
	Wed, 22 Oct 2025 02:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761099049;
	bh=5FfOn8u5HcondGc6TGFzbGTDX0lXc+1Ab30moLvKRqY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Jr4LlBNz+Lfjc9XOK4fSVwCuCaBbUgOC0rw2R3EScb4rC0d9Pg/FFSY2P3qZXzQ3X
	 uRuC8QoWODKj2mvEbojvd8vU6M44HnwUL0iKuQliAO/ZdDkGlJFSQah55S3E5v7dZy
	 i2pv74a4hskXicB/2efuPtbh0J6ArqJeO4NnLeQOKX70SRGJ/N16jTDUVTNyVOVMcn
	 mE7KmoDC/sH1DvyuDZ6IbNY6JkMEyC8HBl+Cg1HnNpcZ09DTA3M1lXDRElsFyaeHlz
	 67UhRn/R055NzVL+DidjJyoVvcPfj7O5LBUhL5D1oD26yjrfxDjDph6Dpsk6KQOQHU
	 CKeqqIIvbf1gw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 3/3] arm64: dts: socfpga: agilex: fix dtbs_check warning for NAND
Date: Tue, 21 Oct 2025 21:10:30 -0500
Message-ID: <20251022021030.171216-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251022021030.171216-1-dinguyen@kernel.org>
References: <20251022021030.171216-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

nand-controller@ffb90000 (altr,socfpga-denali-nand): Unevaluated
properties are not allowed ('flash@0' was unexpected)

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
index 0f9020bd0c52..98900cb410dc 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
@@ -81,7 +81,7 @@ phy0: ethernet-phy@0 {
 &nand {
 	status = "okay";
 
-	flash@0 {
+	nand@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		reg = <0>;
-- 
2.42.0.411.g813d9a9188


