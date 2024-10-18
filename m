Return-Path: <devicetree+bounces-112998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F99A434D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:08:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D75A9B213B5
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 16:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DFAC202F68;
	Fri, 18 Oct 2024 16:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nl/Vg+hQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF19E200BA7
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 16:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729267724; cv=none; b=kvK68khofCnp1vci4SY3t8rfCvSnkY96xUT01HAoGQQGQZoTZaZGlUizgQ8HdhDjcLUlEglQYi5s37wIDS24FrqSKkWnB/i1umA/40tFreElpd5jUkYrp1D9zVWrO/TvB7HG9qWRmoa4cnxhy3CAkTxSCL8VGzvh+E6z9bqfUDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729267724; c=relaxed/simple;
	bh=3KT2/u4RoRMwUJ9D2uMXwMby0luYx6j0JZYXT2Zl+VY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TBDvJIhqhsFmmVDwiqve24tvBb2uGF/hZZcPyvce6jGTHZewQ71EniUX/GkdTY4FCbaTbuAkg7+789N9m/LAKPsYa/f0/9V4PZSGmbLKvM4BhPlEbiDNP2g7tJr/uXeXIalOQ8E4QzbvmBkDeAYD2+cIlexaT+QusW07hw6dwhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nl/Vg+hQ; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-288642376bcso1215177fac.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 09:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729267722; x=1729872522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gnQ/nStU/v0TXnYDf7OxJ5W/0lWg49Zv5lfg+wBH6U=;
        b=Nl/Vg+hQEipGkW9l9DMypZGQqOPSMXphowpLfcP1plHceFg0yghYdVa4w4hZ5g/aiD
         H0Wtg6ZIX5yTFM7NsPn7gylekjQpJ4m5ZulMsKdSgaFew45zEba4HKrICt6sZskUYAlG
         3VynRUF5clUWGZE4ID7gjFGpd1o3rrJp++c2uP9A5/eNM+6TIR16L7M2ZqBeA699dJw1
         Ba/8tJ47UtITk2bZyCce024LpwpTzIa+sBH/UY3t0anEBidLrMq6X4bZRADjTchOuzn9
         uAYtCxo1lMhBYQ/8djK39NQmS19xhUTyZwWTSUjn+VMmsIBMttbAMv5NtQImLItMi5Nr
         nvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729267722; x=1729872522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6gnQ/nStU/v0TXnYDf7OxJ5W/0lWg49Zv5lfg+wBH6U=;
        b=JEDGLW+bpaSojpI34ukYMA7ODzb4dsFp/RbS7VlmaRxq3chFrLEdbQaDAXfyPMdFxs
         TpeQPJTjbtnB90kKkUQ4vi4QKGFJVxfFOS1OD1wS5uALNDl6wTDYBVs/WOwkzc4MTeGC
         PrzyKzbkrRngUlm1fYr7+rdTY1B91o/OWlObvfXEIx/3vDa8rLTwL7gjFfVS7QkezIb9
         VL9MNPw9nT/R8wonfN1o9u+YgSswwsoLJk4Prd4UvOeagsVR+QYrNa6M4lHfUxqGQEeY
         9E42S2Dnfbc+9bHi+f9pmYfiebjDHu2hrBABrJnX3aS7CqtSSqAWHyT0A+VjuqxQhM6L
         0h5A==
X-Gm-Message-State: AOJu0YxN5R0D80Cy/3TY9ZxjFSzEiskhAtotKm6VbKEsSGQRVXW1jchs
	2Rq8N9pMjGpJMVmawarEVyvCW9Vs4andfmnOtc+rQ7Poo2Y7pR/i
X-Google-Smtp-Source: AGHT+IHLALT3i2H2ZaEO/giiXuwmyV1PfPjbzBOhHcOcWttqNdTCOSvKlc0d3Mdz4hOpdTle/RccIQ==
X-Received: by 2002:a05:6870:c0ce:b0:260:e3fa:ab8d with SMTP id 586e51a60fabf-2892c562e82mr2601904fac.37.1729267721736;
        Fri, 18 Oct 2024 09:08:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2892afb01ebsm507350fac.50.2024.10.18.09.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 09:08:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: allwinner: h700: Add MMC2 for Anbernic RG35XX
Date: Fri, 18 Oct 2024 11:06:14 -0500
Message-ID: <20241018160617.157083-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241018160617.157083-1-macroalpha82@gmail.com>
References: <20241018160617.157083-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the second MMC slot on the Anbernic RG35XX series.
The second MMC card is connected to MMC2 (WiFi if present is MMC1).
The MMC logic is powered by cldo3 via the power domain to which
it is connected, and also has an external 3.3v GPIO controlled
regulator required for functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../sun50i-h700-anbernic-rg35xx-2024.dts      | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index 80ccab7b5ba7..e2039fd76b3d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -18,6 +18,9 @@ / {
 	compatible = "anbernic,rg35xx-2024", "allwinner,sun50i-h700";
 
 	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc2;
+		mmc2 = &mmc1;
 		serial0 = &uart0;
 	};
 
@@ -175,6 +178,15 @@ reg_vcc5v: regulator-vcc5v { /* USB-C power input */
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	reg_vcc3v3_mmc2: regulator-vcc3v3-mmc2 {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&pio 4 4 GPIO_ACTIVE_HIGH>; /* PE4 */
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-name = "vcc3v3-mmc2";
+	};
 };
 
 &cpu0 {
@@ -186,10 +198,21 @@ &ehci0 {
 };
 
 &mmc0 {
-	vmmc-supply = <&reg_cldo3>;
-	disable-wp;
+	bus-width = <4>;
 	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;  /* PF6 */
+	disable-wp;
+	no-1-8-v;
+	vmmc-supply = <&reg_cldo3>;
+	status = "okay";
+};
+
+&mmc2 {
 	bus-width = <4>;
+	cd-gpios = <&pio 4 22 GPIO_ACTIVE_LOW>; /* PE22 */
+	disable-wp;
+	no-1-8-v;
+	vmmc-supply = <&reg_vcc3v3_mmc2>;
+	vqmmc-supply = <&reg_cldo3>;
 	status = "okay";
 };
 
-- 
2.43.0


