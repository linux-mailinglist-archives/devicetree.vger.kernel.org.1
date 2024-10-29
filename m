Return-Path: <devicetree+bounces-116983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9E9B48E6
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3262281CB3
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2429206063;
	Tue, 29 Oct 2024 12:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h29bL6x9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F9A205ACD
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730203378; cv=none; b=kzwixqSO6D3R2cJiHVZe2U1TA2D5iqdpfG72WIodkaRuWumJO9ytWX/anYwrb8oGVwvllMdHc0mXb3WLLcDndKdX4PVE861KoAqT0kuUzvgqNgfnblppkY9o9ayFrJhnQj0sozAun/ZRh2psxlRc4WzdGcWH/XbHpD8Jbo82GZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730203378; c=relaxed/simple;
	bh=IpIxLvmjOGT3VfhdAj2bmkiSYvXUo0NOGqRVzaQRZCI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SF/IMxerySwbYoTkSzlugOVykJ+8yZMAdCbBou1MzXvw2uZXaCYKPkvZzsqHBykUYF4jp/IDNXXKc5XJE3Q+UUIV8fcrNmbApKD48kIqLyFypKqw4Y0SnVzu/oLeumrV0ktxFp6n0OeURFQFncIWj5qb4EDWiSE+ZsizTavgNwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h29bL6x9; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-71e625b00bcso4029092b3a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 05:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730203376; x=1730808176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuLe4B9Yxl7fGAOhoGDgJ4H9aWstcn4mmPppsJaFprE=;
        b=h29bL6x9odDKZcwip3UGAR+9VjNBrG+nbsB4kkyLDQ1uAP5r9/eDNGVgc7Jb1lXdjr
         2t1v9+wYXsNL3PuIEsp4o0K2MYn1vWd9tvayEQRsSEVMErirKvq04dMBvCBP4wH+/JD1
         Gwj+I0LvY/cCbatpQ34SPVcHIUQrX5AtWwuwz4M/rYdD4gHitVxorxKtBhIswrT/1TIC
         wCaY38DQbEiO9tcnKv/MINVyRQDNM1ySWprDfNL8YFpBze+43EvWSyewdop9c3t98OzC
         WJJ5pi33MDFsKjvkguPaqxHR1DVL+U16M25Gc9/vj6TMoH/ybbKdld389ya2JovSGI4q
         30Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730203376; x=1730808176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WuLe4B9Yxl7fGAOhoGDgJ4H9aWstcn4mmPppsJaFprE=;
        b=SE0mgDnKizx6bGLm9xDbF7+cmCJ7pYPgAX8jSE5K9yhTmVks+Wr0XFnliUGJ5gvk8R
         NT+TXGs1MIEvFZr9mOYYaaSmrwjUwUKlLyOJHi4YYBdGejr6rMy8VcKCF3LNklqTKvn5
         4eQWGVEE+m9DSLRVgTmqzIZnCWkVOJxTGyZmu0POhEEJ0VhJEfLkK1QnsJFX6qWVHZy9
         s3vPOzZo78oyPocMIJSSCqkqbD0pp9Dsd30xRP/M1aTvSeJajUc2nM2iKbWH1N+kcbEK
         1GCMFtzpgxI2WvCMQ4fg2c20BNjjtO0I5LcgGRfduM7R3KiV/Jaek9gT32qEUE0TMdXG
         BGcA==
X-Forwarded-Encrypted: i=1; AJvYcCUH/wwhwukrpNFXB1RjehqZDPIeKlylD5+UMrj2vszV5He+xR7+pIxmf6SRSHumE3582LrTSA9Ith6f@vger.kernel.org
X-Gm-Message-State: AOJu0YzwoOIlKyupRPYeNTbCZcu1fjJV37KirWZ6wmLzU0uNQj2/v2+B
	eZO+S2yBUtfKuQGT4WL+DCeAhBw3gF9t/5npNHW6Y5Mh9xUc1ksc
X-Google-Smtp-Source: AGHT+IGbiEdJV3ydS0kSLnafJ9ewMOqHsVNosLuolIBvEY4inEwZ5wIYaFPuZwSU7Tw9iUcPvg13Dg==
X-Received: by 2002:a05:6a00:230b:b0:71e:4cff:2654 with SMTP id d2e1a72fcca58-72062f86088mr17177530b3a.6.1730203375835;
        Tue, 29 Oct 2024 05:02:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:c7e4:1ef3:7ef7:5ae0])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057a0b7d2sm7428830b3a.114.2024.10.29.05.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:02:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: marex@denx.de,
	a.fatoum@pengutronix.de,
	andreas@kemnade.info,
	kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 3/3] ARM: dts: imx6sl: Provide a more specific lcdif compatible
Date: Tue, 29 Oct 2024 09:02:36 -0300
Message-Id: <20241029120236.299040-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241029120236.299040-1-festevam@gmail.com>
References: <20241029120236.299040-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The LCDIF IP on i.MX6SL and i.MX6SLL is compatible with i.MX6SX.

Provide a more specific "fsl,imx6sx-lcdif" compatible and still keep
"fsl,imx28-lcdif" for DT compatibility.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Add 3 entries for keeping DT compatibility. (Ahmad, Andreas).

 arch/arm/boot/dts/nxp/imx/imx6sl.dtsi  | 3 ++-
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
index 6aa61235e39e..840e19b2ca0f 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sl.dtsi
@@ -773,7 +773,8 @@ epdc: epdc@20f4000 {
 			};
 
 			lcdif: lcdif@20f8000 {
-				compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 85fe2a4ab97a..e6fd47814665 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -648,7 +648,8 @@ pxp: pxp@20f0000 {
 			};
 
 			lcdif: lcd-controller@20f8000 {
-				compatible = "fsl,imx6sll-lcdif", "fsl,imx28-lcdif";
+				compatible = "fsl,imx6sll-lcdif", "fsl,imx6sx-lcdif",
+					     "fsl,imx28-lcdif";
 				reg = <0x020f8000 0x4000>;
 				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_LCDIF_PIX>,
-- 
2.34.1


