Return-Path: <devicetree+bounces-245360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79246CAF9A0
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 11:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCF11300BF96
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 10:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE0C2FC879;
	Tue,  9 Dec 2025 10:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="syUtrLsx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995FA2BE7A7;
	Tue,  9 Dec 2025 10:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765275491; cv=none; b=Q1vEJcK4L36KAxS3yocPIscJo5CPhnyFwrVS5lQ69HUX17lAqf+k9jUf21f1U9S5GGFabMIDyytZ2DjYcMqXFTWxNaypx7Luy1L+BfNgIQ1f4djb8VWTaHkjDc2HpbOSxXSkt1h6Djm6F0xeA9mLzzhs3Icekq5O10EPKgjrhCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765275491; c=relaxed/simple;
	bh=Ly4ebRb0gpH42d0rQ1S1dP3dwaRnDOIOsd6a5mGyoyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Sh6GM8KvW2ROJ9bYbROb+t2f4quzWGIKOs1pnfeYTjewUW6TAB2UIQyOIQMjaRbP/pftcPFdVGpJMzSLLbBiqfmzNsPR7fsMjCQYkf4aP7jvgZMyA/McWsilJ44xJPkR/95HpyAZdiPZ568kEA1bPfn1WdrdGIOvwu+Rgnxm9hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=syUtrLsx; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from localhost.localdomain (xcpe-178-82-120-96.dyn.res.sunrise.net [178.82.120.96])
	by mail11.truemail.it (Postfix) with ESMTPA id D18A022B27;
	Tue,  9 Dec 2025 11:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1765275485;
	bh=yvVppEk9o0CVKtieqGiuVEXEx/i7i+V7SNIMSZ5JJcM=; h=From:To:Subject;
	b=syUtrLsxp40MGO90w7xb4X58JcgsDYiDccbDvTHFautNN0wON3UlEmWEcCHXsZwXn
	 ExUJhNQ73HNZB5W7tOE91JJXvSbJ7tIgFepXKDh15+k/e4K9ScUIy30hCgMFNsHEmj
	 ljYnSQZa+toxdSNPOOKFHAPTlyR2laucFmMuxw6eoKrS3pB8yOYsWQzX4gSztr6IDl
	 7RVx/8Ej/VCKKo9QrJGCjPzgw48KmAaNtYKN41hGBMHBW+f5p+/Oted1LNbC3elkf2
	 L6x69oPe295WUsfIvsUH+MC/Fj8zP26xY+zQZDMhBCP25HwZdmYYGiazaVOLqdYitT
	 bCG6DEStTmJsw==
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
Subject: [PATCH v1 1/3] arm64: dts: freescale: imx8mp-verdin: Remove obsolete TODO comments
Date: Tue,  9 Dec 2025 11:17:49 +0100
Message-ID: <20251209101754.54067-2-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251209101754.54067-1-francesco@dolcini.it>
References: <20251209101754.54067-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Remove obsolete TODO comments, I2S interface is supported since Linux v6.6.

Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index d43ba0087126..d31f8082394f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -832,10 +832,6 @@ &pwm3 {
 	#pwm-cells = <3>;
 };
 
-/* TODO: Verdin I2S_1 */
-
-/* TODO: Verdin I2S_2 */
-
 &snvs_pwrkey {
 	status = "okay";
 };
-- 
2.47.3


