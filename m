Return-Path: <devicetree+bounces-244345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DBFCA3DD7
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:43:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E648D300AD9F
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F628344026;
	Thu,  4 Dec 2025 13:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="jBMICrEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B26D34166A;
	Thu,  4 Dec 2025 13:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764855757; cv=none; b=ZL4z6r4KC3IvTntzYPB/15uvcBsybd520HFPHfSB4yC9YmmD+jPXoIpOxkrBhFBDuf6eC1893rASQJOf7DYrzQBfQ0FjDIjR0sRhVs8IvsQq+qOI8fF780EcMIBZpRAOg7mkfztQmXUp1frCHFIt1KdDZGrpIPU3VitsX4AUL4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764855757; c=relaxed/simple;
	bh=RXoGR+56LPRZdgl65FtfQWXYnZEiJPGKRn1OiBlG+tE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sg7Ua9bVyl9bmIPVBiMNl2TwCbZdje/m1HzycmQ44HHa/PYep/D+Um2gsJVJg5O/HcwsVtT7Fo1rFAzktVhjcnI4wG2NdJ+N/ApazP6shcaf9tvqr+Gwz2aGuFStDAGACBB3HgcnAsT5hxYvEVunDF9gTB/y4n4wNzS0jYoot70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=jBMICrEU; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.pivistrello.it (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id EC3AA1FBD6;
	Thu,  4 Dec 2025 14:42:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1764855751;
	bh=8wQ25eK9rtOdDvZ2WDSfbjIg4nCUaaXpwfzi5L9+e/I=; h=From:To:Subject;
	b=jBMICrEUga+Tmai9JqyaffuG3B+H3RxltATzFlCLD4thSX3Wfk4YhUx1FR2xehK0o
	 QQrdq1C0gAHWMqSPye/yQAq0PEQd8vNKSS5O7W3Ibz8BttpKG7GyzeetPHmINYHU8L
	 Q8UYpNAC59WhpPb3McpnfC5tNyWTk7Co7zKp9NJj8nXyjbVkUVPi5pWqm1Qy6FUrzC
	 neBkQQWc2FTyXbsP2D2IdFvfGGVcoyYuSbyhF7CN9GpPdnBK7gy8ThQMdks6NeB03k
	 axf+hj3o8w3Du7MCKF5gho/UbxRmU5+/rNMQOtqZXlRUY5HruXOW3ED1nxe02A5ONG
	 N7hvX0HFTmFhQ==
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
Subject: [PATCH v1 1/2] arm64: dts: ti: k3-am69-aquila-dev: Fix USB-C Sink PDO
Date: Thu,  4 Dec 2025 14:42:18 +0100
Message-ID: <20251204134220.129304-2-francesco@dolcini.it>
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
Development Board is not sinking any current, it is self powered).

Fixes: 39ac6623b1d8 ("arm64: dts: ti: Add Aquila AM69 Support")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts b/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
index c7ce804eac70..f48601ae38b7 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-aquila-dev.dts
@@ -399,8 +399,8 @@ connector {
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


