Return-Path: <devicetree+bounces-158742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C26A67E7B
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B26319C4525
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4795206F02;
	Tue, 18 Mar 2025 21:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b="jrYsdF20"
X-Original-To: devicetree@vger.kernel.org
Received: from algol.kleine-koenig.org (algol.kleine-koenig.org [162.55.41.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0961D9A49
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.55.41.232
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742332145; cv=none; b=O/IaMH+NdwruZ3yu1db9pcaruuiAdK2dsMU5pqWeCwe3+EeYjMGzyiUAJWMxPnp+Z9kuSjehf4QDiyAdDxJ9L4ELN/+LZ3+Hyi+AGiEEBZZIpBHDNlmdvIBkocvCJkR7PABd0m1qdjxj2Z+DNzT8vbuDtBCy8NQ2AA2b4jsJ/3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742332145; c=relaxed/simple;
	bh=2HK9IF+akkeuRsTijfaoaW9JXFacNDKLeDLibhYgLkg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K2K7xQrdpj23s8rjQt4XYGPWQapu+JdEzg1MDeHBdZl3WmrK3irelIBo9RT1gyiL0A5rp2JIaVQK/uLAv0MzBSI0U4HNRbnbk88Lbzz0JiKunHh8y2+//kOD19uO55blLgpHE7wTdTQfx6JP8LjGf8aPBVKeIfytsh/2M4zw8X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org; spf=pass smtp.mailfrom=kleine-koenig.org; dkim=pass (2048-bit key) header.d=kleine-koenig.org header.i=@kleine-koenig.org header.b=jrYsdF20; arc=none smtp.client-ip=162.55.41.232
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kleine-koenig.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332140;
	bh=2HK9IF+akkeuRsTijfaoaW9JXFacNDKLeDLibhYgLkg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jrYsdF20um1Z/S1pc6mMQNAdNXnVFC5IViGthUP67uj7YFI42MIZOdFRc4VPK+0R9
	 8v0pB++/Vtm7nyUrwSLqxHpl9LqNb7XzL11D3gQcdJa5miU7FWX3IW4dW4h0rvjR/N
	 GaFDKj05sqnDHQNm48y4TH0SHbCaNOi4y+9AQmpiv8JTK/X5ijzPgvnAyC4E0KM+6F
	 uYcGD11EgqXdj5jVzlWxv4urGwl5Zz/DuioJKhX6obV1ZzM2AhZHFWkl7INoNS2PJe
	 7K80SAzQtPjYAVZM7QPyfSh9fi7CUzB0yXCNxM+mmDSXg25g4o1vMJ7b1C2zIfPmBX
	 TaeBrLEz2UBHQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id F33AAFC59B3; Tue, 18 Mar 2025 22:09:00 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Correct gmac phy address
Date: Tue, 18 Mar 2025 22:08:45 +0100
Message-ID:  <6b8ef7e37e646f4cd399ceb2f46017644d76da9d.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=857; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=2HK9IF+akkeuRsTijfaoaW9JXFacNDKLeDLibhYgLkg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDgCA8hjGYQffJnJk4imvIDUZ/G4YlTrfvun cBiJ595uCuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng4AAKCRCPgPtYfRL+ TiGYCACl4ARWpmgEnSX7vX8yLNRMwbUVrv5AQHzBKBvj6wIEXSp1r3WtgNECRXTapeTlOsWig6T 1LyqbUeCRX7ECmZUFSUQMp4iGztVmahm7VyuZ71O8sO3GLsasAudArdUiCoUmRg1sqxPU/7yRq0 Tu38BXnLq21WM+DKDpTQaFzi14PyVqGYe/VqyGKhkxN26pVneRnYHqJFwNaZtuOVaRBaPJQFcoz HdT3NZrIXkkx3Dp8XXMirWwoNUZkMkpiEk2olWb//L4JyBc8d2R/QF29mfPDbt/Xg18DsvajTWV VQjg1AaQiWWcKSMsTcp26FX7Xzz+nbvrTRyRClhyCObqYLc4
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The Motorcomm Phy can be talked to on mdio broadcast address 0, but the
actuall address is 3. Adapt the reg property and node name accordingly.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 7bd32d230ad2..70e88769e21c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -481,9 +481,10 @@ eeprom@56 {
 };
 
 &mdio0 {
-	rgmii_phy0: ethernet-phy@0 {
+	rgmii_phy0: ethernet-phy@3 {
+		/* Motorcomm YT8521 phy */
 		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <0x0>;
+		reg = <0x3>;
 	};
 };
 
-- 
2.47.1


