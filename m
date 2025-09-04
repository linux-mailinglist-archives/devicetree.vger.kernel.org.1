Return-Path: <devicetree+bounces-212990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 123EEB445B7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D21EE1CC122A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F69A229B2E;
	Thu,  4 Sep 2025 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="DkdykGaH";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="KSgeJP7r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908C721885A
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011625; cv=none; b=hAZ60Rjh7xvVADb62hHpFquxgVi2sG3nSyoYiTtXrFuXZ90Kd2u4ZcbyMbXwMPnn/ctoXTEU5xcCVDrPLq63jsc/eGm7Wse+h0QtjfHVtlMPsoj4hHqCbBOEmhrxNRKTFQpLsYE+dVm7CucatOnZV987b8Tfv+QOb7pMhBtqUwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011625; c=relaxed/simple;
	bh=+DIPCOfdi3/lgp7sVgAqqtTOYSfs5oNo4lw7KtfH1YQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EfzXJxSU6BjWjo5BgHtDp4SRBumXFTk6QmxT/sRZG5f6D+EjL0Ec/71YpW1FIH4vpciIAfu5qX0guP4KC6MQNCBvKOgMHQPje5vuu6aIwqXZbswJc8wgFpuF4ky4+OsaEwpcm1SkfDja8WVi5csqvILoB7rwsZJ3MHgpK5JNj40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=DkdykGaH; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=KSgeJP7r; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011622; bh=+DIPCOfdi3/lgp7sVgAqqtTOYSfs5oNo4lw7KtfH1YQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DkdykGaHsU1AESIbpWLYI+d7OhfGsxCpYC41djcENfQXf4Vv7ywNIrOuMLko6iuwl
	 B0jrsRu4oUhDrqX1u46wktOlLO4J95nitrjpBphiH4UI5+pUf7D/iBEraoTiEj9LmG
	 oIdg1GL740Z6K2QsFy+pFustMkVaG5akDvsHqw2+JKg+W6B9+CvpE5R5CH0E27BG3h
	 zw1HK4iaBzv064BoaR+f5LPt+/UB6aGp7bcsIeFtg9p9l387k4naHnzULTWsBWwtk/
	 9STzfEZHL/k9bfBL+jwCprCvGF/aj9qvaXQNBvs15tQ7oD3yn46pecQw6cPbRrlETf
	 29/YV2GRGTI2A==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 0A03A3D2182;
	Thu,  4 Sep 2025 18:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011621; bh=+DIPCOfdi3/lgp7sVgAqqtTOYSfs5oNo4lw7KtfH1YQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KSgeJP7reqmgxzw51cfbl9C3Tgvr+oIN8atuhKSZRmsoK1z+4LB84LyyhiP4m+PjN
	 v8+sVt1HqzHt2Nnq2hpa22oJBcz3BYp8/QmHiHKjBM1CmADKdTE5vM++cKeZNulyQP
	 ggO7WLk0Lj8k95Sru1mfyGptMmqYAsX79L5vsbBodTub9r9pi9MrAfxQ4xYZygcD2D
	 urn9EYg6mLTZhQTFk9F6DyeuyL1SWilWif4lvyjq3Gl028Kv3nvZoIIxRuWP0YgxPu
	 HMjwQ155d9THjxOp3VrimMj2CLoNl8rWqnyBH/JWuVJYZHM5BB09pdcFOYSX93Y2xG
	 rcNqkxU5/LgKg==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: [PATCH 2/7] ARM: dts: lpc32xx: Set motor PWM #pwm-cells property value to 3 cells
Date: Thu,  4 Sep 2025 21:46:42 +0300
Message-ID: <20250904184647.397104-3-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184702_070699_622B4FCC 
X-CRM114-Status: GOOD (  11.81  )

Since commit 4cd2f417a0ac ("dt-bindings: pwm: Convert lpc32xx-pwm.txt
to yaml format") both types of PWM controlles on NXP LPC32xx SoC
fairly gained 3 cells, reflect it in the platform dtsi file.

The change removes a dt binding checker warning:

    mpwm@400e8000: #pwm-cells:0:0: 3 was expected

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
Cc: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 6cf405e9b082..916ab38f0a4c 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -301,8 +301,8 @@ i2c2: i2c@400a8000 {
 			mpwm: mpwm@400e8000 {
 				compatible = "nxp,lpc3220-motor-pwm";
 				reg = <0x400e8000 0x78>;
+				#pwm-cells = <3>;
 				status = "disabled";
-				#pwm-cells = <2>;
 			};
 		};
 
-- 
2.49.0


