Return-Path: <devicetree+bounces-137773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF96A0A924
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2E9A3A5CA0
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 12:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377811B219B;
	Sun, 12 Jan 2025 12:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XqQEDwVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2E4A1B0424
	for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736685004; cv=none; b=ranI6MY19JQ6t2vSj4d8hbsAmtmO88kOAB1SMjtxf5Hd1/BFAoAqYUFLBFKjuPWElsSlFjExQyUwfqcwvO6ERgEY6rGTys4e07RDbfu2dYXibOUVYBO3NI+Kyud2M4xMITCMhzRwZuh8XPiQkXpEc2Ax496NB/iocxM6xzkCdhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736685004; c=relaxed/simple;
	bh=JqALaE1v++PpbcezM7wf/66LPJa9yR5iEjCEheIUvDo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g7UxnQuuUan9piKKgX5KGpDKDSzb+4izkCY4rmVODCEhD/+1CgVXWc2VD6PQ1mwRhy5WEpptT2rWQ29U8emuCNg3ksBLJCXAq0tqBaNgT9rZcDkdhHr89PFnBHp3bB4bYh3dEOyZfJyjU0u0g4zmNE8YC68AGSMQCVmGqL0xGr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XqQEDwVh; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3eba0f09c3aso1077744b6e.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2025 04:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736685001; x=1737289801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EOiX4crFqNs9gEIrhVXrHiO5ip88JrNxPsu4lZh+erE=;
        b=XqQEDwVhRq/gQwFc5pfZY1vaoVqyHnUWdYdVutdiRtGhdFgd7Yj8R1w2CvL07fYuMi
         lxZonKNndEd60sF2L5fXDYn1+vh+u9Tfz99qxJf9fBzDvCiarzElOAEKWJG634bEbrUu
         L5C8fkvfCHmQSi2y29Doqn5ETJD9W+d6IvGlsjw0CdEa0TrvdSLks9MLu7y3ykYMxt6Y
         cFCciGwFGCzq/RlPuI60uNomr200ZWEJ+g6P5Ds2fJYWAaTsI36SN6WrnnUAk2EixDVF
         rYSKWiv0yHz94YhgPUWoipEMSHe/lYY6Pve+iF7Rh5swvy1rbveOtUckTQTnFwrLOMcu
         alzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736685001; x=1737289801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOiX4crFqNs9gEIrhVXrHiO5ip88JrNxPsu4lZh+erE=;
        b=KA9/PKexiqmIrVkCcBxRZpTS+4xNIISIOgffESG0qyXXUlvTyWhQN89ALR7WYgGhBG
         oOevX+Q13pmEFX9uywlw92v25YscEzGmMGK5gmqOjuG+SzuyqfEc47si7DjIDVMdx8gC
         AsiGS6+E6NzPHWd4g475Nvx4Ar4mjMs6I5bx8dlMpFnvYH0qTYXBrBlj2ZJ99N6UHriQ
         zdgQE5Qg+l+AkwDdfW30DImZROorJ1R+So4xHc2EJjdJ4RHT6YMT86M2VI5diVmrkAb4
         g1YjLqepCg0A+WmNn3Pxz53quQ+8DnnznR2pEFC0IsDYtTilKWBy0V/fh6YvO9kw3nhF
         o0Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUUNjEFsOn7iu1lZ5D84UtadjzgN84YLB0VIDXt5TaPqKzTRpGf6fJe8lUpnyO/QD2JdOdjoOpjDPfs@vger.kernel.org
X-Gm-Message-State: AOJu0YxsRI5WVTgP44G2NW9v4uC5ZznQIPhAqN5BA1P4zfXxLngZ30xE
	Igv6h/L1Ep2sraaw/nMKtiy7GmlsNahGACFe5u3Yd1VfrdDHNeAZ
X-Gm-Gg: ASbGncvcmUHI/C9pgs4S36UDBkmuoRfZF+heocSuNNwpK5TLv92FzPxUKHVnboIUiHQ
	8tDnizR2Cy8WQiJ91BUi+TxjJLu6GMCsoOhFOhAezbx+9jaquJqAYovJIafKArmACWb+SgOFAzI
	7/RSFIUzGCJ7ZVpqAPNMfSPz6H3CKiZFGl7Gn5APQFahyorSUdq4EvHXWvbWzv3OSdbHgy8Ux44
	rr6rUd62oin2tsnUPKYhfTYQ/RZ8ZBUVB21hLFCeNm2ROpjZ8UO2HjQz2QKho1BBOBZ9A==
X-Google-Smtp-Source: AGHT+IHUMa7cT6Nz+jMGSMZwZ5HGk0gv+giMFYc59Vdedh64PI165/u7NrAV0tRuTmem/Cd8rrEn1A==
X-Received: by 2002:a05:6808:1922:b0:3eb:59f2:329c with SMTP id 5614622812f47-3ef2ec6c76fmr8758189b6e.3.1736685001618;
        Sun, 12 Jan 2025 04:30:01 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8c53:b609:d83:9568])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f037653ff2sm2196609b6e.13.2025.01.12.04.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 04:30:00 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx5: Fix the CCM interrupts description
Date: Sun, 12 Jan 2025 09:29:38 -0300
Message-Id: <20250112122939.988309-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On the i.MX5 chips the peripheral interrupts are represented directly only
by their interrupt numbers.

The CCM nodes are not following this format and cause the following
dt-schema warnings:

ccm@73fd4000: interrupts: [[0], [71], [4], [0], [72], [4]] is too long

Fix it by passing only the two interrupt numbers.

Run-time tested in on an imx53-qsb board.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx50.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx53.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx50.dtsi b/arch/arm/boot/dts/nxp/imx/imx50.dtsi
index 1b6f444443dd..f0b12a70f614 100644
--- a/arch/arm/boot/dts/nxp/imx/imx50.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx50.dtsi
@@ -338,7 +338,7 @@ src: reset-controller@53fd0000 {
 			clks: ccm@53fd4000 {
 				compatible = "fsl,imx50-ccm";
 				reg = <0x53fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71 72>;
 				#clock-cells = <1>;
 			};
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx51.dtsi b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
index cc88da4d7785..2bfb6baa67fc 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
@@ -458,7 +458,7 @@ src: reset-controller@73fd0000 {
 			clks: ccm@73fd4000 {
 				compatible = "fsl,imx51-ccm";
 				reg = <0x73fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71 72>;
 				#clock-cells = <1>;
 			};
 		};
diff --git a/arch/arm/boot/dts/nxp/imx/imx53.dtsi b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
index 845e2bf8460a..b7147cc7a316 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
@@ -598,7 +598,7 @@ src: reset-controller@53fd0000 {
 			clks: ccm@53fd4000 {
 				compatible = "fsl,imx53-ccm";
 				reg = <0x53fd4000 0x4000>;
-				interrupts = <0 71 0x04 0 72 0x04>;
+				interrupts = <71 72>;
 				#clock-cells = <1>;
 			};
 
-- 
2.34.1


