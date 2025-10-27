Return-Path: <devicetree+bounces-231366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8040C0CA98
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D28CF4E1DCB
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57CA42F1FC1;
	Mon, 27 Oct 2025 09:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V77sgyDD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861C82874F6
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557548; cv=none; b=QKXlbtjrrHzkSCC+RzV5a738kxVEcvwo9Ne+9d0X3o2L25GmUdslVi5+HpfKmYlRcOThwCn1K/X5eS6AvBgO/2LZdx1nvEwvyQwq2FTpiwwVPk8jrxSK04Fj1YSD4JKA+pSfBgET4qiUezlTAVrDPzgYwz3Mv2DkE28ZbAFmm3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557548; c=relaxed/simple;
	bh=ytEuxidEeyGVWdHcSV0Cu7NXfhvzR67Ajz+zEcL/AU0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aVONVgKU9ewiKUSOBUWlcqxEsL3ztB4wvRZo2z/zY5n2TeLoKmPzD7bysG37LaoOZUzDghOOA1N/ArtYZIC3bUeoF6CfB7Gw93z63uGPSYXEkHGLpyl2wyqNMARlc8itKjl+I9QiWHdglGR7AIf3KKOniwxoU/w9lDBhmRf28Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V77sgyDD; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-62fc0b7bf62so219174a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557545; x=1762162345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23eUEQXgE/OVJfCXbnrki5PnT5McCVtuG+I3zbarJTQ=;
        b=V77sgyDDk60FaGLVpLQPdAE7mY2vIiDOhEyDNeZNBd4U9eIfRdT9Y/hlXANtNLTmOg
         ItjpqbsQ+/f6rQ4n5L9kobOQlonDGC8O0T5gUCSlUj/3Y5OOzmEYuAGb/D3zYkhjDedq
         PNDt/mfmlS2mf/UZZX+ibh0skxo/ytf9FUFnJjftz3TONxw+FKOZduMDCeeJgGPnnjqr
         hyqRxpFR6wiZGrNbQqsFlX7z0KZQOwlseWYrvTMIW4UWkhhLSzGG7vhOM8OexnJnqyuO
         JZAkuTz2EH40u5r52mgB7n/fd8Ufr8fKOJMWQDE2NDOg7V2gNKqRqAJMEl46dcEB9zyJ
         SvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557545; x=1762162345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23eUEQXgE/OVJfCXbnrki5PnT5McCVtuG+I3zbarJTQ=;
        b=WLkU6CmPKrRK8/lFtnrUJr7RHWG9jlr7tRsVyvj3KfJlFXDW8fVikHkS9gIhf8Ddyd
         H0v1oSX5VG9luKsHiOWLb6T+WKqvxmI0A/QL8ELlEF0x4CbNMk5wK1RbBixSQogcneDM
         k/nAh+FZMM5MbyDqeMLllJMNkJhfYAlw7G3GPtKBqtY4j9QkSyKbK6lRKBinlNU8Q4OX
         nQJOnKzFU7WePBimeYbhDgGNZ7P+whhYh19VofqANEXzH27ib4EKQefEQmvxzFdGFwev
         k+JVf8UXE1rwy0hjmcUdGVzV49aNA6cgI35TBOJn7v3BvRaTxMb5DYVIcRmiPvuBpSlT
         sXng==
X-Forwarded-Encrypted: i=1; AJvYcCXmHnienjYCOc7e2YG1OGDqHpv5gDod/YXMgInhOnaypt2PPWw2zbaA7Q+PW19ENJMPZMVUO9It1NI8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywq4ggOd8ozeWdNPUNY8qTchrZ+zycW0KVB3OkeDyj2ivA+lo+7
	IEAo3XWQ2cDfsfexNtdv0ixk5mcY2jPLkiKUMq06Q8bIP54DMAly4vBY
X-Gm-Gg: ASbGncuZun2Z19FifY36MwbvsS1y6utZBvrjS4JMTNJNE5VAyVo1HhxlN6EGnug31An
	7/oxZFlCFWjd2bhvMVBgE80Z/Sin0d5Ncy+fpCkwg+s8N1EOtRrMRqdNbo6Cix4TxZL/UUl3jUW
	AYubYsJt1Snk/K0fyAb7GQPr8+eocOwFopLmI6rxsL3M3dxWavdspTSWzWEe+w2L6LEmy2zSthT
	X93n7WdKC9BLOfjv4UdpASZyM2IPIE9O4aC9LX4CJJjm6Pph76Ce3NmvlUyU/Iv62I4y3g5UJFW
	o5QGm22t8FqjhT5xHqVQ7YVwNRb74o3tRiqM5g8I1FxxapH/bt/aPrK2QX1sN7D4e7wZmwqkq5x
	vfAboKiImoHzn78a5klzUXLHRXkLT53ylGA0xbbho4831sKT8Y+k3+20aJsbHlLucl1h3F0AFYs
	8UKuyX6nVuEV7ScgR7d5OxJfvzetmHhOvQ5JGPaFKC3JpHrR4X4znJ/WA3KRv6Nt2Dd4ZsQvpJw
	sI1Ns4kJI1Fw2we
X-Google-Smtp-Source: AGHT+IGTNqBigSY+yLBm+K5D+Qhni0CTXFG23WNwy2NenphYWj6Fl0c8XhhQtLNokHDZRXhqxEvdhA==
X-Received: by 2002:a05:6402:2282:b0:63c:2e3:6cb with SMTP id 4fb4d7f45d1cf-63c1f6cea3fmr28237052a12.26.1761557544632;
        Mon, 27 Oct 2025 02:32:24 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:24 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/5] arm64: dts: imx8-apalis: cleanup todo
Date: Mon, 27 Oct 2025 10:30:07 +0100
Message-ID: <20251027093133.2344267-2-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251027093133.2344267-1-max.oss.09@gmail.com>
References: <20251027093133.2344267-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

Functionality has been added without removing the associated TODO
comments.
Clean that up by removing TODOs no longer applicable.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 8 --------
 arch/arm64/boot/dts/freescale/imx8qm-apalis.dtsi    | 2 --
 2 files changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 86d018f470c1..6ebeade2ce72 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -31,12 +31,6 @@ gpio_fan: gpio-fan {
 				      3000 1>;
 	};
 
-	/* TODO: LVDS Panel */
-
-	/* TODO: Shared PCIe/SATA Reference Clock */
-
-	/* TODO: PCIe Wi-Fi Reference Clock */
-
 	/*
 	 * Power management bus used to control LDO1OUT of the
 	 * second PMIC PF8100. This is used for controlling voltage levels of
@@ -269,8 +263,6 @@ &adc1 {
 	pinctrl-0 = <&pinctrl_adc1>;
 };
 
-/* TODO: Asynchronous Sample Rate Converter (ASRC) */
-
 &cpu_alert0 {
 	temperature = <95000>;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-apalis.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-apalis.dtsi
index f97feee52c81..7594ac61fe56 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-apalis.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-apalis.dtsi
@@ -314,8 +314,6 @@ &pinctrl_pcie_sata_refclk {
 		<IMX8QM_PCIE_CTRL0_CLKREQ_B_LSIO_GPIO4_IO27			0x00000021>;
 };
 
-/* TODO: On-module Wi-Fi */
-
 /* Apalis MMC1 */
 &usdhc2 {
 	/*
-- 
2.42.0


