Return-Path: <devicetree+bounces-255608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28114D24B44
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C380D3090A55
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E97039E6F6;
	Thu, 15 Jan 2026 13:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo9TPi4W"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C31527BF7D;
	Thu, 15 Jan 2026 13:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482885; cv=none; b=WAiYowkUzCLcBqG4ZeFhcM1N6EDmRGXGPZNjZ7MtbRbdW2l1/6+PcF5AZJc8xCyNgbwIiTj6RD4S5LrIjAB4eks0GBY04Q+9ABazIzGPIYyz/wDUhtmEljY0jDoSUfnP637MF2Y4ORCWSYw/OGuSf6joMLdB4LHsHQzZcAskV4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482885; c=relaxed/simple;
	bh=mLTcptWXyr1/Db9RrQ1ia4qI5zICdIrZwyP7oNHoRcI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LTh2wCUdDj4Cisnse96fjQDu8bA37T+jMfxi6va2Q6+7OGkV/hFjie8RfklqBh0tpRsehZTqNfYsI5ObwzF/GmpJYNVX6Thl6RPRkh/bpO8xWXKCgR/MaW87OkwnvlnAGuco9n5UhbgBpsTwASSRaswbqoNencaqaPCbEVu5yWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo9TPi4W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9968C19422;
	Thu, 15 Jan 2026 13:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768482885;
	bh=mLTcptWXyr1/Db9RrQ1ia4qI5zICdIrZwyP7oNHoRcI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jo9TPi4WqX+41PKyn1MoEr2r5hTEPkfbNbg6GxFK7MIZUW5ODvKazfrPdp+B7fbNn
	 lesPiZrdPd2uaeke9RKMoGThCSEyTUUA4HYaGmr9u1KXh7Mr8ADJ/k2tvy/9RjfJjY
	 YcWjPyaXF1RNwKM+pk5H1olRHJY1r2A4MFxTLaHpK6cZsgmV4iS+KSXrdwd5am22yc
	 sv4Wg34gS1pdrgGAoBGNSvW4DZwZe1UghAwH/SSGHrmay84LbxFOZbmQFEh5evFiSK
	 QEqcX5ssmyB99jP4bVxXJvA0tBtvPNazaaEFOY4FteSAmTyRJxHI044EOhRpgeKX3y
	 zZ/MFio5IeFDg==
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
Subject: [PATCH 2/2] arm64: dts: ti: sa67: fix SD card regulator
Date: Thu, 15 Jan 2026 14:14:19 +0100
Message-ID: <20260115131431.1521102-3-mwalle@kernel.org>
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

The property "enable-active-high" was missing, as the default is
active-low. Add it.

Fixes: 1c3c4df06f9d ("arm64: dts: ti: Add support for Kontron SMARC-sAM67")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
index db59ec4e4106..ffc95bb32551 100644
--- a/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
+++ b/arch/arm64/boot/dts/ti/k3-am67a-kontron-sa67-base.dts
@@ -173,6 +173,7 @@ vcc_3p3_sd_vio_s0: regulator-6 {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_3p3_s0>;
 		regulator-boot-on;
+		enable-active-high;
 		enable-gpios = <&main_gpio0 7 GPIO_ACTIVE_HIGH>;
 		gpios = <&main_gpio0 8 GPIO_ACTIVE_HIGH>;
 		states = <3300000 0x0>,
-- 
2.47.3


