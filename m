Return-Path: <devicetree+bounces-244344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D6794CA3E31
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C202A3051E85
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2736343D62;
	Thu,  4 Dec 2025 13:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="UpPDhNBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99C3341678;
	Thu,  4 Dec 2025 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855756; cv=none; b=i2Vd9LaOtURGxI45wVj+aOATpBHH2gtUrsEQKDpkUFEAQ8ZLFDx9qsCWxF7Dt5g0t872VksTfaTYcoALEHHgawFkF3KWpPZIzk049P14xmiNWL0gcTC6vPqrRropxzb+ofblF+NK1WNyDGSZnSJ/1AC9koQ216MwCqKjoFwlWAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855756; c=relaxed/simple;
	bh=gS2LWiWJYeHKf3nLpRFdKWcuTMuraYAi5i5AuRXrGAA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Otx8Rla7eDFnanvtVBwM0E6cPr5y984KL+f65GBe0NiXsSQt4dYyANfCz19arHAfbpJZokbkH4h0DPLhwzNBmkgd5zvyDgPuaNP2dLrCM+gfjKjRhN29YqpI/DzgyaF7wLY4o9ftqsHjTV5F8faINhT/32HOLXIMHOgpLuhqp88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=UpPDhNBC; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 74F281FBDB;
	Thu,  4 Dec 2025 14:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1764855751;
	bh=r8CGdx4QbymWZMNrQfPhb0eO4ThzNB+W0rAATdSxR+I=; h=From:To:Subject;
	b=UpPDhNBCQhtg2bs2kuMwpYRREVEFcKayep4BNdBo/7byUB4EGoKCVmEMXPgmDWXha
	 us5Fb/RGBTIdzGF73wAW0R5aWFufhb+uQ+4VNth/WSBAXJgbwPSPUumESuafSHw90+
	 qOvRD3ji3x+r7lizZKvm8El/8y1qSyuHGFJKO2WwMAp4OQXr/MMfppRbxyuoiIeMV3
	 8jlIdl7OypT2iPpzdr2lMaJoQhT725kBLGd6DAiGpe6UXJbsaoXHI1p69zP6Kx16mY
	 km8GeiBkZDBDRowbt9MJDheHcHfTDh9odRgPcBtcrCriebw4CsarWAjjnOK3+pZF1b
	 Z7Y+E0JzGszaw==
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: ti: k3-am69-aquila-clover: Fix USB-C Sink PDO
Date: Thu,  4 Dec 2025 14:42:19 +0100
Message-ID: <20251204134220.129304-3-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251204134220.129304-1-francesco@dolcini.it>
References: <20251204134220.129304-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Change USB-C Sink PDO and the amount of power that the device can sink
to zero to maximize compatibility with other USB peers (the Aquila
Clover Board is not sinking any current, it is self powered).

Fixes: 9f748a6177e1 ("arm64: dts: ti: am69-aquila: Add Clover")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts b/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
index 55fd214a82e4..c816ba3bfbdf 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-aquila-clover.dts
@@ -280,8 +280,8 @@ connector {
 			try-power-role = "sink";
 			self-powered;
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
-			op-sink-microwatt = <1000000>;
+			sink-pdos = <PDO_FIXED(5000, 0, PDO_FIXED_USB_COMM)>;
+			op-sink-microwatt = <0>;
 
 			ports {
 				#address-cells = <1>;
-- 
2.47.3


