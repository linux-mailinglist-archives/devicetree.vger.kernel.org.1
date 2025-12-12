Return-Path: <devicetree+bounces-246207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A65CB9E6C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 23:02:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A439E307CDD6
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E9C20C463;
	Fri, 12 Dec 2025 22:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b="bzVvM2e8"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE6D14F125
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 22:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765576948; cv=none; b=K3J9gqKL3pTXoSTXKtAFKmPWl1imhoaz3QfExwVp3Rh1CO6FoenktRXsN4tMyGdCPjXOYU9RMU3nVJ+fFBtEMK4bbLyaD9I7O448VwtlRhymSgGqvV0jMBLGIewVPTc84HY6jo1tjpHdLtKeQkGXtUxX4KDZ+xGjPE1wUsXdUNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765576948; c=relaxed/simple;
	bh=Rk07fN+keSwEuE0/GjnLh+Wu8+V9WvTvrMsz6G+wAhU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XMdChSrCTh+/rEx01Gq87fdcxEfCPE4zRy6fFGkkeToCC9nOdn0UMZQkjd62BVhFeRsOaIJy3WyNeIPld0HymMmysOHnLbYsGtCBtlUIbTPUevaW6LHA1g9dtu26Kd3ZLpkJloIqyMFRsxZ/jhV+dmut7iQpdLjJV6LZzCz66q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de; spf=pass smtp.mailfrom=posteo.de; dkim=pass (2048-bit key) header.d=posteo.de header.i=@posteo.de header.b=bzVvM2e8; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.de
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id B1254240101
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 23:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1765576944; bh=750ln4d5IZ+5twsG5klcrtotTQHvrYbgJe5RP9Qdpfk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=bzVvM2e8Gea+qx5rdLE5QGllabmTMstWgWUcVFNe3oqv9SBq6UB54wNhxC8LIsqza
	 v8Ai3PIOtsEmze425tkEFdLgM/gEHd18OEdwJTluPqWATXiSJ3bHBYJKMV6j+kewWu
	 fRjYu931PtKNRK69lAmpkyHVe8Yp//i5ffMG4REaL3dox4QYXuUEUn/KmkvWfDhzJl
	 lhZwzvUDoCzRQvELQPbt2zCwXazAPo2hcJyIRFeAMH4mdK/hcgqc5k+K7TOp/nGkMq
	 G6tm9pnPkW8a54EOu/2hSP2XnFErAh36niRdBH9zIdT9xWZpRB57NjKr0t3nRJ/mxr
	 GTzQo7sZZF7wA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dSk2l69Nsz9rxL;
	Fri, 12 Dec 2025 23:02:23 +0100 (CET)
From: Adrian Kossmann <adrian.kossmann@posteo.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Adrian Kossmann <adrian.kossmann@posteo.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Adjust RGMII TXD/RXD delays for the Rock Pi E
Date: Fri, 12 Dec 2025 22:02:24 +0000
Message-ID: <20251212220151.574860-1-adrian.kossmann@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Current RGMII TXD/RXD delay results in link instability
under load, with throughput eventually dropping to zero.
Adjust the RGMII TXD/RXD delay values for stable link
under load and stable Gigabit throughput

Signed-off-by: Adrian Kossmann <adrian.kossmann@posteo.de>
---
Changes in v2:
- Changed the patch subject as the last one contained
  incorrect changes
- Drop incorrect PHY compatible string change from v1
- Adjustments to RGMII RX/TX delay values
- Link to v1: https://lore.kernel.org/linux-rockchip/20251209210658.458506-2-adrian.kossmann@posteo.de/

 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a4bdd87d0729..29ff0b8b8f18 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -153,8 +153,8 @@ &gmac2io {
 	phy-supply = <&vcc_io>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	tx_delay = <0x26>;
-	rx_delay = <0x11>;
+	tx_delay = <0x1a>;
+	rx_delay = <0x14>;
 	status = "okay";
 
 	mdio {
-- 
2.52.0


