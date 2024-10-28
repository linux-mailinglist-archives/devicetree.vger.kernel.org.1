Return-Path: <devicetree+bounces-116665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FE09B38C0
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 19:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9761A28265B
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 18:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B33EB1DF73B;
	Mon, 28 Oct 2024 18:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XS0Eqiqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F0C1534E9
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 18:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730138969; cv=none; b=fTIjdAkWOO49p36LTw3wbbPPZvj+wl3QUqu3EsrrdsOAtjQqiwYXfhqsUrQ8I6liFvs512+gRIguJ2WJPWyAuhxe++Ku7ta1zZ5zk3zDwbzxZoAtJiFKbuf1v/61YG4M4Luf1lZq/jwkhEPcU2U60loD2wy2bDA3yvUEnkDFkto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730138969; c=relaxed/simple;
	bh=dMJuO+qu4mpCrDNRKJhLtNNK5f0JM9Q1jWozG+IgfM4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JfrC6sk1MiyAQXVEqKjucpLoDcJO8AOv9j/JEeooaUIGoddW7MeDTqm2WQDOnLZadMOUaPg63iIk4sT1bPhaQhl9qtI2yOHfaL7TaMFJluOSMhZ60bKU0R9ucFVR7poJLfIRZhWWoUlrBHZqS2SaHsq2vHXgtuZIIzAcWztzr/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XS0Eqiqi; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2e5a0177531so3489350a91.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730138965; x=1730743765; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eoe5fq9cwx8Acx4SnxJBzM/rUpD7RA4Aod7FbAKZ16A=;
        b=XS0EqiqiyGOh3d2u4pbhnV+SEULIDB/cWuwtV88nBU4PAGXBngeOMJNDk7D+W+jOFf
         qW19sN/fBeB4OWqtDk9FhXrq+etg01r8SEAMtqM13RgsN0EXgdKz4TR9N3DcLJTPIgw8
         57M4wjipwvt1GvBGXV7wPGT8wdnfS6K0B3g9c9+14XHfgLP5YrLpblPvpV7AdAq8RUJ7
         TbPOQvRa+TtFjagmTm0st9khBInky61QdeKQAONACxGba9RioEQzubOzXJTrb2Fu0Zqe
         NXd6cbL2e84Mo0bThvRF6N/uvirPKDK1bToEWBEvrIglJAdxlHgtcwDlQTGQYJhwwgMR
         9dzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730138965; x=1730743765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eoe5fq9cwx8Acx4SnxJBzM/rUpD7RA4Aod7FbAKZ16A=;
        b=VPeI89VmYQeSjRYUWehCwNuICEaCQmr2HWvPImVE7zxTHJfnZP3QyV+v57G36PV+1m
         hW59D1uEwpmV6SLknm+fBoXXp0VodZiyAQmb8M4S8TuTHkRAFdUWTQAUiBF2drNWE6Kd
         i9ze5sWIVj2gSjlMZb+lG/1bMaEwqHqkjKOppsqS+K1loAnvN6i4k5o0Czm1KNNwBk7d
         lcb/O6zywE1CSkCWlkWaWAuWxT5VFVQ/oTDEvn2jaIzq4OjKtquO4D4DLWdFZqs48PwA
         Bg0f/xxPQSIUiGVQlsaLy6S2aeIGplvNGYZKBL+uRRxVb2N6TNUiYbeyAJBQMf+/xxsy
         PEqg==
X-Forwarded-Encrypted: i=1; AJvYcCUFkCamN7kK0r3iYrkaP+XgsaTG57gVeD0uzZ3NUzEEihHRg23MhwTmJIP6w5griIMBCr26Duqf71HH@vger.kernel.org
X-Gm-Message-State: AOJu0YwO3ZHYHyyzP1XsVu2a/adPFT1c/08b+CzkeihBgwbtppr7AKPu
	1M24zqMI6amHW5YzziTxBthPpl6bs/IHq3iQbLCW0M1+zXXxydZB
X-Google-Smtp-Source: AGHT+IHSVF2TnOsPfO2+2FQhmWlLkKWH1RrgNcPWEjH8nM80YwzMmdGX1r3fDq6rR7zvn3hmH2wXaw==
X-Received: by 2002:a17:90a:6d26:b0:2e2:bf7f:3363 with SMTP id 98e67ed59e1d1-2e8f104c90amr9424883a91.6.1730138965152;
        Mon, 28 Oct 2024 11:09:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:325c:8d87:ee5c:f04e])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e8e3572efbsm7690441a91.22.2024.10.28.11.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 11:09:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	andreas@kemnade.info,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx6sx: Remove fsl,imx6sx-lcdif fallback
Date: Mon, 28 Oct 2024 15:08:44 -0300
Message-Id: <20241028180844.154349-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028180844.154349-1-festevam@gmail.com>
References: <20241028180844.154349-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to fsl,lcdif.yaml, "fsl,imx6sx-lcdif" does not have any fallback.

Change it accordingly to fix the following dt-schema warnings:

['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6sx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
index b386448486df..e56fcd9ee6f9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
@@ -1301,7 +1301,7 @@ csi2: csi@221c000 {
 				};
 
 				lcdif1: lcdif@2220000 {
-					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
+					compatible = "fsl,imx6sx-lcdif";
 					reg = <0x02220000 0x4000>;
 					interrupts = <GIC_SPI 5 IRQ_TYPE_EDGE_RISING>;
 					clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
@@ -1322,7 +1322,7 @@ lcdif1_to_ldb: endpoint {
 				};
 
 				lcdif2: lcdif@2224000 {
-					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
+					compatible = "fsl,imx6sx-lcdif";
 					reg = <0x02224000 0x4000>;
 					interrupts = <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>;
 					clocks = <&clks IMX6SX_CLK_LCDIF2_PIX>,
-- 
2.34.1


