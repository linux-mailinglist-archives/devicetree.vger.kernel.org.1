Return-Path: <devicetree+bounces-117142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D9D9B5296
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:17:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEAF0B22CF4
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07E8D1FF7C2;
	Tue, 29 Oct 2024 19:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RwRquPkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACA207205
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 19:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730229417; cv=none; b=SLkthxlvlAJ3V3oWBvKyBV8B+yXfiki6VucbQtTU728P/V+LhXfmVCrhKIgNkgn2zvEWgVeg4Ds4LiTur63zkanuxAADH1a73NFxDZrY0tIWzwbIMzQAk8xboLYylELaq/+zYjzpD44gDQZagBtOhxc2W9YbTCxrmiG3yTqj+Yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730229417; c=relaxed/simple;
	bh=cgnkI4FnhVgTOOOFoFrXelz+SmIgd2L/bkdD960A0So=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WrkGKTLW67PWlVsL/rxCF0yQA/XyXwUZPOn9Pb+21dx3qLy0uD2hhuoq5xZDbpYDkTSM2nwRZ9q+CgK5QLUMMtcAhmBHVLJxmH75tyQjUY/n+rTh3PPs5ABiciE3dWbcZVmd+fOtmGoaAleyJLGYGUeim7TlFYN85Cyqx9znqT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RwRquPkB; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7e6ed072cdaso4180948a12.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730229415; x=1730834215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zYKmKtE2fVCas74ElHJ9fhZLrtmW93dELAHBPhCA8b0=;
        b=RwRquPkBCG6qxGQH+3Q17JpKe/UYxaZiF4H+EH96YHA06xCr2IK8IjrasSAEWKm0rd
         O039jM8Un5oaYKSrJ/NhZas59qAc2pTy+DoCD2+hdC5eTLAkZ98A2hOjgLDKg3cpiQIe
         KYH7rshNJr/Lv3nQi8CYbOfJygNbrKe9pbzKNKZeYlSI/HwAvIxALnQ6ERo+RrUc/hC1
         SOZ+7j8+WeUlgm+T1BgRc6v5cRMR1UHmOnPtelBhe74Ex4fd2XZvIzQKmY1NGOA28OjE
         h7998l7bZ/wDaiQHN31+OOT5PCm9WNH2eUusdGAMpewt60usUHUS8uYwXllXSedZt812
         Nptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730229415; x=1730834215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYKmKtE2fVCas74ElHJ9fhZLrtmW93dELAHBPhCA8b0=;
        b=ZqbFVxpB8fnPIs2NqaMwHpwGrK7TG/gtXbxnXfpqIDYBHfTwmIwy+5LJ5pY61volg+
         2qUOucGC/9+SghpjSDVqTYeoDWKZ22YvJ7SO2iM5vgR0eWtOrel1CBGBlWbb9aPYzBAx
         UbRp3snhXitta0YLAWTxEh/3WCCYgARmp5Iz/s4tF1v9Ps2A3ibqACGezTD8CKx/9WWF
         Wx0c5ZjqFgX7FVP10YBsCzpCqPjJWObWOnRMDmZdq5jvKCvEiWU3gV6XbimfaZM7ke8V
         U7q4Rkcf94XRvOlL7smscmNGDdoPcAoiwjSI+D60bHJSQGEzMJuJC8LQSlYaHCs0mUcd
         J+dA==
X-Forwarded-Encrypted: i=1; AJvYcCUXsRNETxdnILzo4fdYBS6+VaLoysaU5aMnNnB5hM5nl8s+B52NUJEkP8us4W2o0KMFV+FVoNJxivRD@vger.kernel.org
X-Gm-Message-State: AOJu0YxwFtpwaNAoktFntaaKkJddRQZ+27OiM8CO+D/QGbgBeN7potFd
	45Pqwm4IAUWrtIT5I30I1b+NplQ+KJhJEtAudAl1dtAnbuXK2J7K
X-Google-Smtp-Source: AGHT+IFTWq5E2+C67K9DtUnmc5ZutA88kE0YA5e/SigUzJXK7DIsERXz99OcPpiFqA+Gv4FpUe17bA==
X-Received: by 2002:a05:6a21:58b:b0:1d9:762a:98ba with SMTP id adf61e73a8af0-1d9a83c9c31mr17108740637.16.1730229415320;
        Tue, 29 Oct 2024 12:16:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:190a:1425:254d:1e7a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7edc8661061sm7842346a12.17.2024.10.29.12.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 12:16:54 -0700 (PDT)
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
Subject: [PATCH v3 3/3] ARM: dts: imx6sl: Provide a more specific lcdif compatible
Date: Tue, 29 Oct 2024 16:16:40 -0300
Message-Id: <20241029191640.379315-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241029191640.379315-1-festevam@gmail.com>
References: <20241029191640.379315-1-festevam@gmail.com>
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
Changes since v2:
- None.

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
index 85fe2a4ab97a..eff83f5e5535 100644
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


