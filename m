Return-Path: <devicetree+bounces-157776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 455F5A62C48
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 13:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74AD53B8E4B
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 12:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CF01F4169;
	Sat, 15 Mar 2025 12:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KHH33+rg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECF52E337A
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 12:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742040530; cv=none; b=OluUuK5KAhy8lDgnZ8N+5fK+Ut/UvEe75/FUixgEnr2JWr078h5DDZp03Gz0qOUWlgijLBqnnLbI679owMJ8Nxo8hLxY+0Jf0H3UNBE2V4pW2NiWhJ1X5rA/Vk7Utcw9eaN0W7v46kwjLac9BepU42X6aHNiH9gqztZJKBNLKHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742040530; c=relaxed/simple;
	bh=58GjagsMv9mUEpBMawX4l8WmZYI/NpX8wopQu7QHHOU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GUeT1f6VqJl0VslqwVXjUT7VC3Mbstf6lqF44qHPV3JKp2I+M0CAwqEqrs+XjIzG/UtZU18eMhBuhO/rVp57Ew4IgzC4Pj1hre2M4BHzsiWfvKsKByGP9oEfZi5nLrMo+YqEHzJVloNYY5L9T7ACsjn1T5q+Cpn9zWeZrg0kY6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KHH33+rg; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-225fbdfc17dso2279475ad.3
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 05:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742040528; x=1742645328; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Gh3QUyiOPP/PspLDIgE2PK/QvR0dyXvPHAT6Rp95d8c=;
        b=KHH33+rgKQ3PSzdJMN5Qso7JwC4nkW2l4+QP+W4M1yFUGbcnZimYeOX+cIFV/FCbL+
         YAqMOVXNX8lTycFU4usioEOl85v31iAOTyaCq5kee4Y7dmWReMD/I5/nXdwUt7y/q7SI
         RvI4mNHz1GzJS7JFuydqm9SHUaYPx5zN5axGLMPCJJ1oV+Rg76YEYhYH/E5nOGfaoXrP
         6e1TE8SgFuJHlrAu9S4iZWmrh/ozetUIgqsZreqx11KIsQFqgRX3L4OBWmrfauzz9dZM
         Z7N1FNUIo+NU17NisZWdIT19ukcfJkaEFLJbYFxHJ007nOSkNjG5cgW15PZxQSg59kRj
         1jpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742040528; x=1742645328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gh3QUyiOPP/PspLDIgE2PK/QvR0dyXvPHAT6Rp95d8c=;
        b=wg4RUTb1oXSRtXjf/XnM5+W4UbnTAxP6KBu2u5KnET7NK8NI98tjA9+wA2tT5m7O4O
         Sh21ROk3Cy2mCGoRITDo2cHQI0WDvrQ9OFAGU+2DDmbjMMNFhnQ0Sv4y9b6EWEDUtPKB
         UtgFszB7Mas+nw3ENX5YnuYe6HTh2ks+DsJUInizmixc5+HwjpU114sENhidhgg7Sm5t
         umwKxRgboD3XRB9sWuviGsFqJayAYmR+DxkdFDaFbq7c+yuaVNmB5+VJY+K5o1gxdkNm
         uTmP48ao+JQLjXjx5r7X7kYSlEDjNL7sT76+VCqO13A6m2drbthkmS7Nm8gmCJRL9lmJ
         BcaA==
X-Forwarded-Encrypted: i=1; AJvYcCWUF9N6hPeu/tL03np1Bhdk2FsJExYxiVzEra/J8Y7pGWFhy+P9paPUHeFawGqvX9c4YEWYL7ytQl/n@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ0iQ7C0T2mqW8FAIyQKJSud9LL4rCrEdzhtZ0pF4wzN+bH1Bf
	KWj+TxjO8rQY68HANyf3511Y1ShWnqtTzydHNk+rJhd7zRJCg1LzSkBbjQ==
X-Gm-Gg: ASbGncukLwIrMogbU6LfrjLBeRpDtz9AA6QXiWtL03NNwswC0Z8P39/19verlOiup0K
	gReLKtPoDvCtyHwDKGYLag/MjADHfzrmMMw2GzfW1mnOiw0JtR33SERbsG2OiKQ3aUt/EYOp/H6
	+BNxMgCehe1RW2PPlLHI6kwwtx/3vn2IdsynP+vJnC/1fCNa7FfmJcYvIjMNXhrn8WUF7pk0W6I
	Hi9FCgAqm2AR48oWtcV951n6dSMG7sBMJvKpSZM1thyecdeqYL06SlIX28YIpGviweqSPHHL62t
	fhdDOt93OhE3xZC/Ox92OcQdmmMuJpc2dnE8EbaJ/8PO9FdpzRCAnoiaLjo=
X-Google-Smtp-Source: AGHT+IF0eKUU5b7C4gS520TnleAFf5PI5qABtaudJMqtzsfOMNPKTlZNANfAMzNeFK4EP5joNbXczg==
X-Received: by 2002:aa7:88ca:0:b0:736:39d4:ccf6 with SMTP id d2e1a72fcca58-73722391515mr8708599b3a.8.1742040527945;
        Sat, 15 Mar 2025 05:08:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:bb6a:1a3e:36e4:cce7])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737116944ddsm4325435b3a.123.2025.03.15.05.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 05:08:47 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx51-digi-connectcore-som: Fix MMX7455 compatible
Date: Sat, 15 Mar 2025 09:08:41 -0300
Message-Id: <20250315120841.1836214-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,mma7455.yaml, the correct compatible string is
"fsl,mma7455".

Change it accordingly to fix the following dt-schema warning:

failed to match any schema with compatible: ['fsl,mma7455l']

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
index dc72a2d14960..1980f751f161 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51-digi-connectcore-som.dtsi
@@ -165,7 +165,7 @@ &i2c2 {
 	mma7455l@1d {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_mma7455l>;
-		compatible = "fsl,mma7455l";
+		compatible = "fsl,mma7455";
 		reg = <0x1d>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>, <6 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


