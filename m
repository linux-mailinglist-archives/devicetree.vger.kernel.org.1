Return-Path: <devicetree+bounces-190833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E07AECC8E
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 14:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BCE7170BD8
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 12:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465BD226CFF;
	Sun, 29 Jun 2025 12:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="ku9QBEle"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB7C2253FF
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751200742; cv=none; b=SMxnYDrS36f+sa5GMJnUkVkqJK4SFfolbxrkpWXb9Y3P0ZJiTnP5DaPg29K4c+G37Fz+OEKeuvTlHdye4+J6qsDyaxh7tl4BeMIMBQZ47n+NRmdtuOK5ZMOq/EKroeR9CMSDJ99tUVqi0GVID7QPq1wwIiE6Z5kWMfX4sHNAo0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751200742; c=relaxed/simple;
	bh=QDduJvC/5cNs1aCofqNCkLX2UcDB8NxT18fZG9lmPDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nkKnzd6bB/Q1RO3rJLO2722j1n9MNt5WMPFKOLzFd23H23wJxockaHW3no3VKD3Dw7jO1FBtOxuwmrEvsA2M3LqOaHUKvVykVTkr7BZVrv/Isx5WCRFumpUYV/R5hN4DVmz2F5x1p4NtfR7RczxAF+KDNq0xspQspgf2m6g7GqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=ku9QBEle; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751200738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uYtxvQntJrQzDe3coaU4yovvxAekHNN2pEKLjqZB3iA=;
	b=ku9QBElezaC8iMeFayCQCN+WSJTuojq8hLZiGXOMj8zmBcwSvGaMwzat56/lAXO3gZAgL0
	B4VrXNFIUSsWedS4C2B31KIxZHgJ2+SozuzTQNA/fmlYJFa+x8L3JKssXJ8FlfoP4ITWnF
	y+jv1kAs81+EJXgzcgj1EF5/kU0uw7X53cJrZ2L5v09PGLIcfTo7OKyg5fv378G7IkePPt
	g33ZKOoN8sJD5yp8R986MXM89ynJoogwaxvUlBLWbQ7EoQnsU6TbFpeeCxxTJ4PakbnDNg
	G6n0xtB2rHfj+pGNxQGXDA878W5z06R9AWErGu7rByB737LdbEXtCR0/wtvpgw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 08/10] arm64: dts: rockchip: Fix LCD panel port on rk3566-pinetab2
Date: Sun, 29 Jun 2025 14:34:49 +0200
Message-ID: <20250629123840.34948-9-didi.debian@cknow.org>
In-Reply-To: <20250629123840.34948-1-didi.debian@cknow.org>
References: <20250629123840.34948-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The MIPI DSI connector on the PineTab2 only has 1 port with 1 endpoint,
so drop the unit-address properties.

While at it, move 'rotation' property to its proper sorting position.

This fixes the following DTB validation warnings:

  node has a unit name, but no reg or ranges property

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index 3473b1eef5cd..d0e38412d56a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -282,11 +282,11 @@ lcd: panel@0 {
 		reg = <0>;
 		backlight = <&backlight>;
 		enable-gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
-		rotation = <90>;
 		power-supply = <&vcc_3v3>;
+		rotation = <90>;
 
-		port@0 {
-			panel_in_dsi: endpoint@0 {
+		port {
+			panel_in_dsi: endpoint {
 				remote-endpoint = <&dsi0_out_con>;
 			};
 		};
-- 
2.50.0


