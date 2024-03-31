Return-Path: <devicetree+bounces-54971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAEF893656
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 00:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14409281B2B
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 22:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6FE147C7D;
	Sun, 31 Mar 2024 22:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="gRw5hUAw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0584814532A
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 22:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711923667; cv=none; b=RclgtgTnycLyFklCVQGG8jS3tvpKu0afXBVoHQ2Pw1wctkwOrY9jN47skaJFTaR5HdnjBGPgVH+NMa/GJ7MimV8W0p9H+x4isiycNmnUWbwn5bHvWEK73Js7dk9JsFQAHzdzgQoHuu/Dh9a5+McJgyYhMu7MR+pF3Kyf3dE6L1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711923667; c=relaxed/simple;
	bh=TUhlKARPjRGUEPwREvmgJf8xS3g8Y/eOCfEoA+nDpcw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FbqaRL4L9s4s3ZyJpjqRZTEwntQeB0LjB7FcirFwsK06UNj/he179w8r2teQHvOFaEcy2ng6TPwb4SvFcFirrJwxvZUQy4H8K1RjRqWVf/K3Ah+PFRl9NfTkWBvboZkl5kWJLtE1r9KBNeVQKQnIpORLQacekNGz6/Mm7zLPMy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=gRw5hUAw; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711923660;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UcTQxLJRrCmCev8Rrf+Wteer/pHxBoVYDfU24cKirEE=;
	b=gRw5hUAwXLn5VB+YC3u9DcN6qmeH11vXyTDWAzX2JEtiggaokVWTt1EJqA4J82s3MBicML
	hm0FVw8e44piWUE0Uwn6m6CiR/0CGUqVuj1cwoHQ4+t8zogu4v5i6CtzFBs8z6/DcuJUbM
	A3yZnsSCINwMYOpCuIAuvICAikfJvQnjYpk/eri5Yiym5zUkZD5UXIRIYJGSPCe5ZaoQ33
	cTPRjIfKnhtKcCsWIrFEwdcHIMhD7EmNSq0dXJPUKp2IzieBhO8WxeWG4q+ZoU866ki/ZE
	E1ImfVKhe/WBbDOV4gWU8UBqBtiZX8ZGYDYgWF5neEzgFFmuUkk/4X9SCRPszQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Remove unsupported node from the Pinebook Pro dts
Date: Mon,  1 Apr 2024 00:20:56 +0200
Message-Id: <0f82c3f97cb798d012270d13b34d8d15305ef293.1711923520.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Remove a redundant node from the Pine64 Pinebook Pro dts, which is intended
to provide a value for the delay in PCI Express enumeration, but that isn't
supported without additional out-of-tree kernel patches.

There were already efforts to upstream those kernel patches, because they
reportedly make some PCI Express cards (such as LSI SAS HBAs) usable in
Pine64 RockPro64 (which is also based on the RK3399);  otherwise, those PCI
Express cards fail to enumerate.  However, providing the required background
and explanations proved to be a tough nut to crack, which is the reason why
those patches remain outside of the kernel mainline for now.

If those out-of-tree patches eventually become upstreamed, the resulting
device-tree changes will almost surely belong to the RK3399 SoC dtsi.  Also,
the above-mentioned unusable-without-out-of-tree-patches PCI Express devices
are in all fairness not usable in a Pinebook Pro without some extensive
hardware modifications, which is another reason to delete this redundant
node.  When it comes to the Pinebook Pro, only M.2 NVMe SSDs can be installed
out of the box (using an additional passive adapter PCB sold separately by
Pine64), which reportedly works fine with no additional patches.

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 054c6a4d1a45..294eb2de263d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -779,7 +779,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	bus-scan-delay-ms = <1000>;
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";

