Return-Path: <devicetree+bounces-46514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD5A869DD8
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 18:37:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 965982883BD
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 17:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E04C14DFE0;
	Tue, 27 Feb 2024 17:35:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB44314C5AE
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 17:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709055333; cv=none; b=f6mztyKxoOcyn5iB+fR39c1oJGy3+m/FL48fxNhMEKahcHNYIvSHhI9LsP3IZS4zR6QRgPgBVUMlvf73Acm/Ppa2mizgukqWne4SuA9ALZncreV30PSbItdxnD1CVBSv8tCvUEhqDOjWvsw1hjV/SMFtZ8DW3GGdnGVj1lqFACs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709055333; c=relaxed/simple;
	bh=Q+ARibKnycGkz5s1vuu6YquTk+O9FQG9DG3kbvICSA8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CXdZ3lVRlaSZlPg/Te32J5p2+cEREftWJ53Tek2Jxe7i85IsI4KV0jjANvvwxv6RdjmEZhsL2XtDR6dhBXoiOC149TYp596pIMN4zuqLZUBHh87wDBTtYbfeKQhE18BB4xgBpnqwh5yq54KXR3NmKHz8DUxq+m/KCHW12SYsj/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf1MW-0007MJ-UZ; Tue, 27 Feb 2024 18:35:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	ukleinek@debian.org
Subject: [PATCH 2/2] arm64: dts: rockchip: fix reset-names for rk356x i2s2 controller
Date: Tue, 27 Feb 2024 18:35:26 +0100
Message-Id: <20240227173526.710056-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>
References: <20240227173526.710056-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dtbscheck reports a warning for a wrong reset-names property for
the i2s2 controller on rk356x socs.

The other controllers on the soc provide tx and rx directions and hence
two resets and separate clocks for each direction, while i2s2 only
provides one reset. This was so far named just "m" which isn't part of
the binding.

The clock-names the controller uses all end in "tx", so use the matching
"tx-m" reset-name for the i2s controller.

Fixes: 755f37010f3e ("arm64: dts: rockchip: RK356x: Add I2S2 device node")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 6a9bfb0550c04..92f96ec01385d 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1124,7 +1124,7 @@ i2s2_2ch: i2s@fe420000 {
 		dmas = <&dmac1 4>, <&dmac1 5>;
 		dma-names = "tx", "rx";
 		resets = <&cru SRST_M_I2S2_2CH>;
-		reset-names = "m";
+		reset-names = "tx-m";
 		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2m0_sclktx
-- 
2.39.2


