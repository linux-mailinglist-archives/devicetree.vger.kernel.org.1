Return-Path: <devicetree+bounces-227344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A1992BE0B13
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4A90C358296
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C5A2C3244;
	Wed, 15 Oct 2025 20:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D9qC8cEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12A2BD001
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760561330; cv=none; b=q9K00eLnoUhnIpJ2c48dSpkEa+/LdBLBasnnUtjBsbQgQUGOlDkVILMZ0VatpwmPvdSx4CsSpifdyura/Cg7MNFyEhnu418S9wwjxQV/KOsLzAJSpSZeszKwTf9St1AzXXKp2XPw9gYn0e0QmX1qGx/8eJrVBD9r2PSaXdMExjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760561330; c=relaxed/simple;
	bh=vUIxl7T1aFFY841D6RXR2iY+FLNTTZBIHcabvfZOaO0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=czAhzv+LxIztjkXjonEcKv1V5Q3gOVG4Wa3AhgXZ+BBMyzlDsjVNpcjOpff0MOPH6Ez69YV3IIH9IK2X3FiqDtaQfXqnKwMsg3KrGGG77trXPxLZFGrnnG9Vk8o/xWYXf/KFKGgoA9d+lLl7ACPLhrRVdkFlaS8hD2AVdDWKN20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D9qC8cEL; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-33082c95fd0so56310a91.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760561328; x=1761166128; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ECq6v5kjS4I+m9N3qtX70S6BCp1pZjjE4JAhJFsm0ZM=;
        b=D9qC8cELDPhlVYw3Y7F3s5rpoNnKdmWx2F26H2VbPDXROe+cHmhL/FuwaqlzHFRAsD
         mztOeP84058T75rRNYA4vRBVgOHBItRRqzaUfPo26XWdzx6SVMlrPfagfoHSQnhPVYF1
         R1V06pZyxCfoQXaXKsGEY5TVNwwg5nKCwOSnqAoKsBOrzj/h+IA7A+jv8IhBg3KRxkFu
         xUNLleYeK/0/dnlhpt6+ykqvaYduWneII1Vzk5C6+AFMarbHJMDemqkxVXA1GE7TxQvK
         lAm79ZBLEQ856L2IupQflgBSAZXyeJVhME/InO+LZtOO99inRKQD0+9ndzu29y/U4hre
         s4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760561328; x=1761166128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ECq6v5kjS4I+m9N3qtX70S6BCp1pZjjE4JAhJFsm0ZM=;
        b=wAPM6HnkUrKKV44hhl4omR/dFJhwkFzeH9bzNlkAtS1waSMzRZQy/zNrA9EuWi23AF
         4DpCd6Tii93qTWGwsaNQdzQE+vus7xMwaM1im7WB15wKrW48WShlEETXJeC1QwoztnTk
         5gHRrDv5YesQB8ob23BGhzOuijnnQBmaqpaMtdLpkMtelhHt5oHKi9WQZNiinkWPBYKe
         G/ZDEKtu/uduyTAkVNtzx04McfpsdE3uHV6+GezGVP1yPlQp3rQ/gC3jO01HLgxsS6Vg
         iCX3Kx6Rvmon4kiRKJXXQS1B+lSUgUe3DDw36pIvt3F/Q0vfBUQXlBq20eJT0S/VSH4I
         I6Zg==
X-Forwarded-Encrypted: i=1; AJvYcCW1OrIRPJ/Bxh42+m5bGMsMdc+DD5VRaVALs/ayaAzIu5hPi157F/bG4cN3aOB1zkmzBzVtcVZ7gA6l@vger.kernel.org
X-Gm-Message-State: AOJu0YwuxgGA/Jv1h+WW/rDVfxis2q3fUTI8D9U95mfW0pG+ezO8U34j
	f/v1CmNHKr71OtGnT0gW/IeUV3+UKwc1/U/k8bE3nXvJGcmwZ+ICGRUR
X-Gm-Gg: ASbGncsin+ON9q53gQ8TdU9JWgnfgQbs7/G4+nZDhvvdJfmS6dkQN0lCMMowaQll9Mr
	fRAgLfOPhTMwWJdtVuXThiv/8IKjrvSuJJvQKdZNLYRvDlUQ6JAQms5N+P93pV/Fqz94kJlOTuT
	4QFPXfPLcpB6llJk1E31VZb+FohRldKHeQL833vySJCcW2DUMiAokJaRM/cJTFVBf5TIWEV7j46
	8QNVrHpwpqnFZ3e+5LWi7Y9VIc5ePXQFR6PwDewuDEAk4kavW4evOJYojRsY/PHbZwXcxRsJKhw
	mesrWGLqm4zWLf8jN/fBKO0ZIARofGKXNRxW2ATm/IOZzUX1b1Et+n5a5Isg8qYxKQ3G90rkZ70
	880z9DWalPjVKKUb7wK1Z/IJ63gAH/ANkN2fh0hjwX9ribPs=
X-Google-Smtp-Source: AGHT+IGN+lN9vicyM0JMq1Ocm6RG8YfGzytjeBBr/s+6dWoWkU/VmH7/8zJwDfHCWTW90MulWcmRHw==
X-Received: by 2002:a17:90b:17ca:b0:32b:a332:7a0a with SMTP id 98e67ed59e1d1-33b5114b648mr39129699a91.1.1760561328178;
        Wed, 15 Oct 2025 13:48:48 -0700 (PDT)
Received: from localhost.localdomain.com ([2620:10d:c090:600::1:d6f0])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a2288bd55sm523896a12.9.2025.10.15.13.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:48:47 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>,
	Guenter Roeck <linux@roeck-us.net>,
	Tao Ren <taoren@meta.com>
Cc: Tao Ren <rentao.bupt@gmail.com>
Subject: [PATCH] ARM: dts: aspeed: fuji-data64: Enable mac3 controller
Date: Wed, 15 Oct 2025 13:48:37 -0700
Message-ID: <20251015204840.80070-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Tao Ren <rentao.bupt@gmail.com>

"mac3" controller was removed from the initial version of fuji-data64
dts because the rgmii setting is incorrect, but dropping mac3 leads to
regression in the existing fuji platform, because fuji.dts simply
includes fuji-data64.dts.

This patch adds mac3 back to fuji-data64.dts to fix the fuji regression,
and rgmii settings need to be fixed later.

Fixes: b0f294fdfc3e ("ARM: dts: aspeed: facebook-fuji: Include facebook-fuji-data64.dts")
Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-fuji-data64.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-fuji-data64.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-fuji-data64.dts
index aa9576d8ab56..48ca25f57ef6 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-fuji-data64.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-fuji-data64.dts
@@ -1254,3 +1254,17 @@ &emmc {
 	max-frequency = <25000000>;
 	bus-width = <4>;
 };
+
+/*
+ * FIXME: rgmii delay is introduced by MAC (configured in u-boot now)
+ * instead of PCB on fuji board, so the "phy-mode" should be updated to
+ * "rgmii-[tx|rx]id" when the aspeed-mac driver can handle the delay
+ * properly.
+ */
+&mac3 {
+	status = "okay";
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii4_default>;
+};
-- 
2.47.3


