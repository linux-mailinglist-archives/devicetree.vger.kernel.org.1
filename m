Return-Path: <devicetree+bounces-98181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B179650E8
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 22:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3783F1C23F39
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 20:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B54718B463;
	Thu, 29 Aug 2024 20:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QL6gmsQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B8E17799F
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 20:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724964463; cv=none; b=r3wWJtuXkTZWFJeTxj9Qg2aEQN7rlx/JKtRLMfDwrQPOSSL+fYFH0AJr/OKP85TllaCwjh6hK8rmZgG7b6I1s5KgFeACJzCVZuR742xOTN1P262a5v/I95EPm9dxINiHYTU4Uq6iFPK8VdnYXLNTlY43kC6jB0dhdpkNNcHgcKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724964463; c=relaxed/simple;
	bh=cjphF9DzikMjBmCWAROamiZh6yxSEZAssVXstjL1XWk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pg7EYnTCGIMEbZ9wqZERJArBfTKwJUNaUbVZMXyPNb+jA2EguFQ7PiQWszZ3XRldjUH90hhQSb1frR7IFhlDSquzGT1HQlYmOr2GHudUSRvXO2Um5sfLlhYYO9/G9wPgEn1RdcMQR1Rp7wuuiBtBgOwh5KGmbesTL5ZgYvGZNbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QL6gmsQz; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2701824beeeso587485fac.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 13:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724964461; x=1725569261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULyg5DrbE83MLt5D02Opd3Meiyosp7X0ayJMd3uEYO0=;
        b=QL6gmsQz43ASyq8w4tfOqchkqEU4qisjMbhzjF5UPzxY37ksMg7w5NeNoR4089uLl7
         uTg5lEXvgjriTbQ/fgNQqdLOdkMezWEasrBUDAzOuwmaiDv6LP2EHNVDV20AWPrEnnS2
         fnNAGb0jKASUNNgRvbktfg7SKnZi7nh/Ni+h9emlx0QA4Q0sQHsp5px0+Sziq924fUCS
         od6rhpQWBsSQTVdtUCeYzDwLmEX+j/OiYPIKJHUiSy8RXGglLL0tRJHxJw+Z4dVbNPRd
         4VRNdBZDElS2NzeV3FQGQayNBuBtvjlxwmjfaBIygHABY89WnE+axkxhbPs9yXCJv+CI
         H+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724964461; x=1725569261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULyg5DrbE83MLt5D02Opd3Meiyosp7X0ayJMd3uEYO0=;
        b=rNPcM9m0TcuZFabItbjiWQ/fCQh4ZihPIgg0OVnD4EQuHClUeELzUdXsSB+CuFrebf
         I50rVMJWHljCHqOveHfiBOemghS4giS8TPJL5fcoRqnNsR1j8NPFzT3zBHyNX0iRDGNM
         ZMH5vg2aogbVuDoqWl2fxmEVnAaVCDFlRPWh20WTjN50r8wtnE6POmGqH6KUMnji68uJ
         bci+D0Sh+FgzTzVS0AP13RQiC8TwPOCfyRK1PmumjeXXV5JYjcj1xWTLogJp9/pf6ggp
         qa1crsE35vXJ+iE+lLb8DJrwAvCMUyiey3sTS63gM1FRWniNJsGVOHSJp5+GotwikZsk
         64KA==
X-Gm-Message-State: AOJu0YzD6l60yD8J33FIjPG+4SdIBfqQP9zuArGfsoHDp84WqVcRDNUz
	UjTGhBoqIdQwOXdyMBVU6PVC4kHcLbucaYmPBBAbmbOQAK0MyAVnmpzgZg==
X-Google-Smtp-Source: AGHT+IHmIPH6CKY2gYhk8AMVA3OpKNbjbEebrMb3msVXFjyKdrKA2uQ0ty+cY1oz0fgWBcF+/a0PKw==
X-Received: by 2002:a05:6871:ca0f:b0:260:e2ea:e67f with SMTP id 586e51a60fabf-27790080fbemr4069376fac.10.1724964460941;
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abd13b1esm86639fac.42.2024.08.29.13.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 13:47:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	zzc@rock-chips.com,
	andyshrk@163.com,
	jonas@kwiboo.se,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] arm64: dts: rockchip: rk3588s fix sdio pins to pull up
Date: Thu, 29 Aug 2024 15:45:15 -0500
Message-Id: <20240829204517.398669-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Alex Zhao <zzc@rock-chips.com>

The sdio requires the cmd and data pins to pull up by soc.

Signed-off-by: Alex Zhao <zzc@rock-chips.com>
[adapted to pinctrl filename change]
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index 30db12c4fc82..d1368418502a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -2449,15 +2449,15 @@ sdiom1_pins: sdiom1-pins {
 				/* sdio_clk_m1 */
 				<3 RK_PA5 2 &pcfg_pull_none>,
 				/* sdio_cmd_m1 */
-				<3 RK_PA4 2 &pcfg_pull_none>,
+				<3 RK_PA4 2 &pcfg_pull_up>,
 				/* sdio_d0_m1 */
-				<3 RK_PA0 2 &pcfg_pull_none>,
+				<3 RK_PA0 2 &pcfg_pull_up>,
 				/* sdio_d1_m1 */
-				<3 RK_PA1 2 &pcfg_pull_none>,
+				<3 RK_PA1 2 &pcfg_pull_up>,
 				/* sdio_d2_m1 */
-				<3 RK_PA2 2 &pcfg_pull_none>,
+				<3 RK_PA2 2 &pcfg_pull_up>,
 				/* sdio_d3_m1 */
-				<3 RK_PA3 2 &pcfg_pull_none>;
+				<3 RK_PA3 2 &pcfg_pull_up>;
 		};
 	};
 
-- 
2.34.1


