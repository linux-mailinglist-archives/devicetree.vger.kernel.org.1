Return-Path: <devicetree+bounces-149254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 252C2A3EDD4
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:01:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C2F3420636
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 08:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE9E1FF1AF;
	Fri, 21 Feb 2025 08:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK1RMUgL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E461FECA0
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740124915; cv=none; b=GG8mO5Q80qqfjEJzpSAnGmbyX/v8CvNuMSn5W1Vpy0BLDejXEy0DREYFxGOX8V+ghuYIieiKQdfX10gEvsY7fstA0SsuyOG8thcVOr5xqdImGhP9/YujseIvR8DbW0XXtZl/2xJQynKIeqVW1erTSUEOjdMnsddT6+0S/K76PDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740124915; c=relaxed/simple;
	bh=ydI126qNyrfXk69jbLpcK3VubbDbZV/HSA4iho0WmC0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cj0j5kROHiqxlA/pYAbAgDa4NLs6vuatQsWiyVe8QgoSBrNZtqgGOgLjRka9wfgcJPjJF42vGpJWzHxUWsiJ08+VRDjFWu36Zuivh5gFy8gBRB40lKOLX3ACfWPApPDc/vgMZ1KHu4AnhKUs5UWC8f7RDJ/5yoVXFjh22jGggy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK1RMUgL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8AA1EC4CED6;
	Fri, 21 Feb 2025 08:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740124914;
	bh=ydI126qNyrfXk69jbLpcK3VubbDbZV/HSA4iho0WmC0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BK1RMUgLpLBNgBGrekqfP34atBUvIBgFKkphxlHOA0GNrzOumWvuJ9OeH9nQM1E8D
	 ecmYW3BeCRqxx1mCNiZ6gyVsFev55o/zLPrb3TINNL6sCQs/ntmkthqgTjdKxefjrv
	 f+W4M3Hm/IeIb36H6jnTMoozKhcyy2s2+RbOzCfc83sRFG4JTWDYycQ3017zpsQHDb
	 h6YUGorpsB62WwuBle9rJXPfucW0x6g82U1S5Ftsot4Yry0YX9g4VVYo8Kq7DijuS0
	 C+mPX4usw8WBkoVGXTaK6kMD8Een3DLB4+mR4MABh0aNf5KtMbMDw4QX3IQXjf5nrt
	 f/YTtIB2eTAGw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 21 Feb 2025 09:01:16 +0100
Subject: [PATCH v3 2/2] arm64: dts: airoha: en7581: Fix clock-controller
 address
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-en7581-dts-spi-pinctrl-v3-2-4719e2d01555@kernel.org>
References: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
In-Reply-To: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Christian Marangi <ansuelsmth@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Fix the following warning for clock-controller node:

DTC [C] arch/arm64/boot/dts/airoha/en7581-evb.dtb
arch/arm64/boot/dts/airoha/en7581.dtsi:176.37-181.5: Warning (simple_bus_reg): /soc/clock-controller@1fa20000: simple-bus unit address format error, expected "1fb00000"

Fixes: 7693017580e9 ("arm64: dts: airoha: en7581: Add Clock Controller node")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index 9a419796594d3a99e1187dcca622469bf5a888c3..26b13694091735da7af977e42f8f546d7d5cb078 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -173,7 +173,7 @@ spi_nand: nand@0 {
 			};
 		};
 
-		scuclk: clock-controller@1fa20000 {
+		scuclk: clock-controller@1fb00000 {
 			compatible = "airoha,en7581-scu";
 			reg = <0x0 0x1fb00000 0x0 0x970>;
 			#clock-cells = <1>;

-- 
2.48.1


