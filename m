Return-Path: <devicetree+bounces-116490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A349B30D4
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 767371C2176A
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4CA1D63D2;
	Mon, 28 Oct 2024 12:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WkfXQba/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002DB1CC89D
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119574; cv=none; b=hWPHYZOpSddng6OJOMHHORjsFNu0GLm434zdsUJDzvE8urcwZP5Rt3Y/HzpAorpmLqwNtwX2R+G5gbDM4/blzld7SL8tUF5PFEuGat8PT6BQ6+tiUxuh3+4U6pIJoDYUz1MHI/85+loOfsmMx92FvVQ0RpoMaZfl0q3c/onEWdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119574; c=relaxed/simple;
	bh=wAkvCZwiROJTMp0FvIMxx0wZ+f/xjsjOreX8QGz/IF4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=AjUIsA0RDU3AMFDcw0J82AGUdMjQTfplKRxZqkoUb394Q6RQF1j7qulhQ+0tztlMIZjuMmG6Yg4XLY5hkJcGv2NeDXV/cB+rgubHpJDSEcg6S0crKW5AhUxZmP1utxxGSCtx+hfWW8BcPiTmkNoGGBcQ4wnaZOYRDKwwfgboiZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WkfXQba/; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20cf6eea3c0so32824755ad.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730119572; x=1730724372; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=idA2hEcUdIZdPkR2DtLiEItPPio04naz2YdamBrPyD0=;
        b=WkfXQba/8WpV62o2D8qTrpIO93wt46xzbWjAbij2TS36e5+hgZhA02wXcIrx64P7jP
         N+T/OldZbOgRF/NxYJOXijVFhH1hSh4hkahsSb8gWd/w5eAHE/fUcXghC1jT7NQff7Ky
         lT+aeXfM2lEAbU2l5UdF14m6lJMYanp9TjxDe3UM2F5bzkMeVdFyBETLH9RNEYT/FwG8
         LAaLwMLNLb8F9s9mMcsg4YIX5iBzB3I4DvTrc+/PfLf0lDV0+s+kdSUouVNgDTtyGOgg
         R0YXemXOR7xmz+rutN/wy9ltL84gcDOkL0NflRC0aN1FDbQ0BC6msM9uDYOVzHfZs2o5
         SEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730119572; x=1730724372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=idA2hEcUdIZdPkR2DtLiEItPPio04naz2YdamBrPyD0=;
        b=IotCaMuWMPiwRMV/8os4P9lpTbluMLibPaAPOnymp6JsgwtltZTnUQqPNBvqAoRmKv
         urs7sFBeTFyZRkQGAqTbmFMrfikV04llkJMxdPFpKgSqePBPQqyMaWrB+JN758ON8jIo
         A1ljyDgnLCPInA4TQ5pnII68rCi7jIJUtL85LN8yRxEWjfPYgiGaO46fmotAyZAxmze+
         LaB6SeHrDrQoxUitVPF9cVQWydU269M01gJ0BChxvx1o+9B4ZEoFnX7zqlo3FSkNTxXR
         pBxMWoL71dIiLajftWq4nVx3TWYzvEsvzZcQCERxJ+SA0fGgj0sBuXcNJgMloKIMXlzR
         YZNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwETZsN0vw/cSng585rjvyWXros/9cwjGomhjOJdw0TyTA4RhbVXg6v0KxKaW5qJpl3TwcyyNHMoOO@vger.kernel.org
X-Gm-Message-State: AOJu0YxYfiBjzrlnA+T5k6ykglXGjuv6yQqDrb2h6L6Sf4l2UFQKmKP9
	NAeZlcmpyM6MgIx/4mCJTowvPEJZvCXYsRYzl5qZy3CTfjaGrRfy
X-Google-Smtp-Source: AGHT+IEhWhO8jWtASWcjVnLJnH+2CiugnkO8wyv3J5+FMlEyhT7K9Ky7XdsE9koqPkJFrgnGLvmvEw==
X-Received: by 2002:a17:902:db0f:b0:20c:cf39:fe3c with SMTP id d9443c01a7336-210c6c34824mr111646485ad.41.1730119572121;
        Mon, 28 Oct 2024 05:46:12 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:325c:8d87:ee5c:f04e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bc017858sm49969895ad.134.2024.10.28.05.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 05:46:11 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx6sll: Improve gpc description
Date: Mon, 28 Oct 2024 09:45:45 -0300
Message-Id: <20241028124545.72652-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,imx-gpc.yaml, 'clocks', 'clock-names', and 'pgc'
are required properties.

Describe them to fix the following dt-schema warnings:

interrupt-controller@20dc000: 'clocks' is a required property
interrupt-controller@20dc000: 'clock-names' is a required property
interrupt-controller@20dc000: 'pgc' is a required property

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 85fe2a4ab97a..d219c2b67294 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -602,6 +602,18 @@ gpc: interrupt-controller@20dc000 {
 				#interrupt-cells = <3>;
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				interrupt-parent = <&intc>;
+				clocks = <&clks IMX6SLL_CLK_IPG>;
+				clock-names = "ipg";
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					power-domain@0 {
+						reg = <0>;
+						#power-domain-cells = <0>;
+					};
+				};
 			};
 
 			iomuxc: pinctrl@20e0000 {
-- 
2.34.1


