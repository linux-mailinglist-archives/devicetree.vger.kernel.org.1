Return-Path: <devicetree+bounces-245335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93898CAF5C6
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 09:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A66E73025322
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 08:57:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102532D662D;
	Tue,  9 Dec 2025 08:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="nzL5fq2N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B28F273810;
	Tue,  9 Dec 2025 08:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765270678; cv=none; b=aCIUn72QN0UYox53Cfs0pF3VQKdQJvg0pgNe7u0Te/QhQLRw/XXFePHSobq3gk0JQNFnG3thJpgJyo07QZQGwtHOLMMmDXh0dYSKjaX3EfwZA0oiIDae/2qIw8vV4TAIaAfoKWrfPJtjwhE07wkYc5YHJhf4Qcjsw3U/Z6fyeVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765270678; c=relaxed/simple;
	bh=jc0xZG1ao3WGJ9fwbICCd/WyXrcvuCLFP7ufvZgmT/U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KwxsLjT0bHOL5lOM+/5mjfTwQmzqLgVnt5u1+g8ZEgu5ANb0XXHPoJxKEgruNwEbxjRmEVCTniDPGTuf+Lu0XlUfuC7ON0a1T1IZsJv2Z3dJiHku3mHKFbKiKnl6AtUCN+YB/1zuv0w7rz29A2s+RBn1c1abBRGk+Wz7HODhIYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=nzL5fq2N; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from localhost.localdomain (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id 5F7F91FD2A;
	Tue,  9 Dec 2025 09:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1765270672;
	bh=NqyhWdtOKMTjo3D66DgZuH8PnsU6W6516xPtdN0UaOs=; h=From:To:Subject;
	b=nzL5fq2NfqqpVsdB7AxEa4oX+jLYUFf/jvxlFWTnhvuaisFNXeDHCJjIJGKhSze6x
	 AsTM4prYesQNBY8cjJHy+vVovD3oSDbgMmqvgwG5+tfCik3EwNl1uN1ySGDEIJl7K4
	 G4shyT2K3aXeomV3uV7Hmlp1W64bpVR+JDZtIJxvgiDWyHv2lBfdiE1SkuVqRQ2CjP
	 JWow4GI7Kgls7FbtjnRB9yXGbJtJI2ps5o6uZoJi6xys/wPcehAc2qEZ2IuD7Sxp5S
	 yLilIaSnZxzQrb9XdM+1rCC7+U0ExvWVJNqCfM8ZY2yFuwVvHGDkf3k0SYfSKW8yiV
	 sDO1t0R4ETL0A==
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: freescale: imx8-apalis: Add ethernet alias
Date: Tue,  9 Dec 2025 09:57:46 +0100
Message-ID: <20251209085747.39009-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add alias for the apalis first ethernet interface, this ensures
consistent interface naming (e.g. `end0`) and this is used by the
firmware to correctly set the MAC address.

Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 9153dddfd3b8..6fc82b5eb58c 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -6,6 +6,10 @@
 #include <dt-bindings/pwm/pwm.h>
 
 / {
+	aliases {
+		ethernet0 = &fec1;
+	};
+
 	chosen {
 		stdout-path = &lpuart1;
 	};
-- 
2.47.3


