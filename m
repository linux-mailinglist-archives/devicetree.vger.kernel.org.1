Return-Path: <devicetree+bounces-178130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1066DABAADD
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 17:20:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A38F1B60759
	for <lists+devicetree@lfdr.de>; Sat, 17 May 2025 15:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29A7F204866;
	Sat, 17 May 2025 15:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+gr/mhm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0597E69D2B
	for <devicetree@vger.kernel.org>; Sat, 17 May 2025 15:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747495219; cv=none; b=VCp0Fd8eqBG7kjKF2RR5qsc63BRS50XOhmqKfdS6t4ZDvzqSTlB3Xfi3vaLl/3zKoxe4xB81aXQ3ACeVwe+VAmIKMbJW9KeJBs1XmQ34N0iwv28EQyjJ5+9FcV/qFHPy6hhxXkCSrS6zjvQNEt5o2+cij9v59+PYbqyQcIwrj5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747495219; c=relaxed/simple;
	bh=3IhosQmCLhKrfG7vs46vBLEIjQuGjyaCLT5I81CNamI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fGP5xxw6yW8wiRXLhP4Ppmbcjjm4tbp6x6yDd4Bm1SRDcV+MvQdosL0Kw5BLZKWopzzX+9dm9QoxpmNPXPfTxFWFFnGpsIfW0+ILvJPrs3i9EQEtQPmevggsSKtklmPNgQwvQsOECuL+u3DGqesPx7319x/jae8wRvyjaek//R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+gr/mhm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E84BDC4CEE3;
	Sat, 17 May 2025 15:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747495218;
	bh=3IhosQmCLhKrfG7vs46vBLEIjQuGjyaCLT5I81CNamI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H+gr/mhmtc+udx+CNtPL6uxQ3GlQDiwjbRjvmiqgSAlZ0Zddij1GfhZC3fQ+md050
	 CaI1nXEpH0uthlSKFQ8xc3FSTyUBv0TvkQ6qW1YwZPYyM6u9XVKHoEm6Tpk1UccNiR
	 NFpCijVA5dE+5mBSbRpyZtaoI2WaQKGiF8aoQ6O+WuVPUuvlAYefEgHyq7adT8fNw6
	 loS3Sr/2DpyxXTVP3wC+LDSKL5L/QVCjgalcupnQJWrkD8wdeQ1OB5srwzBCzm9XX0
	 jBYT4Y2GzNRbhXQMPqA13eLZYuaYTzslNdSMPtEKB2r//QuTMNzmPpwS+IR0ciOhMK
	 cvmuSntQ8iuUQ==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 17 May 2025 17:19:43 +0200
Subject: [PATCH 1/2] arm64: dts: airoha: en7581: Add gpio-ranges property
 for gpio controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250517-en7581-evb-pcie-v1-1-97297eb063bb@kernel.org>
References: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
In-Reply-To: <20250517-en7581-evb-pcie-v1-0-97297eb063bb@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2

Introduce missing gpio-ranges property for Airoha EN7581 gpio controller

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index d53b72d18242e3cee8b37c7b1b719d662fd6db8d..a8f8a9f0b807a2ee4fd11f8418b8e810a6945d73 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -65,6 +65,10 @@ reserved_bmt@7e00000 {
 	};
 };
 
+&en7581_pinctrl {
+	gpio-ranges = <&en7581_pinctrl 0 13 47>;
+};
+
 &i2c0 {
 	status = "okay";
 };

-- 
2.49.0


