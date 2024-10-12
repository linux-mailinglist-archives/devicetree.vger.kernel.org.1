Return-Path: <devicetree+bounces-110655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD999B595
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:41:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 20ECF1F21E9B
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6A0319B5BE;
	Sat, 12 Oct 2024 14:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ITYfrMzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69E199EA3
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 14:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744026; cv=none; b=GHSo3nA0rEkGQorfEhXDJCYoMziPtEmTMKQ3pVkZr8PSHBPccFKxcQfcgpo6uKc8Wh98QROQNN/RTAjWLZ6Fr5AiKigyObk/GA4IzkqZSypWlCwsGxVrnJ+N7WSsEmpXg9YgUyaHa+AJTHXGfRzVVvvlArPFhobiX5r5X1Mlca8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744026; c=relaxed/simple;
	bh=XhzApypE5f+qCrdy/4fKvPPdyBST0xn9vF9MGvotmC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GCbUUMKoRqCFcfRSg4kIzmto51jXwVGgxf9XpIratDKMqULrhZ49vEhtJQWHwMlAxwKk/ZBiARHwo2KBzPb9THNRq5k3F0H4gDA4siuSQYMVIT5toknhzDKcUrhY698++3ah+aphWq7U3rKSsBz2NEMnuMK0xuVhPE9YI5b5xtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ITYfrMzt; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c928611371so4139845a12.0
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:40:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728744023; x=1729348823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9N1QRWG1+vGqch+tHQPBAnNZwJAl+Fys3rUYZOZKJwk=;
        b=ITYfrMztTNroca9k/qIOS2xCVyaMqOpdXPkAF0GwiMOHgLDFJVrEXC38aGuChA3DN0
         Er0ILh2eZitIqp8zEtVkjXB6+bl65iv31r9OggfFW29lZYZv4Vs1TL+5KQNuwhT/4hLg
         Nj1zKiWkaCGY9rcFlgkFOu5GNfH6wVapVFDEutNs/fdS5hm54SawiyD/Xm/YUagrO1A/
         AXnWRwHcKNevFGq6ICETyStnVYNAAFhV+U0oTB6wkh89YamyVgpoZEtmjyYnU2JxCzoq
         6Bw6AA+Vd3+F2L1FNK5FFNufXonmulRvy+x1qRijrEcAzKjk4KSWOhLJ7n+QqPjcvIHk
         9JnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744023; x=1729348823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9N1QRWG1+vGqch+tHQPBAnNZwJAl+Fys3rUYZOZKJwk=;
        b=UU0LJGEKItQzMnMexW7LDGE/le3QMkiK1KebBttpLzjpQKAp0ileRhuI70hj1mn7dy
         0vY9FghP/ysqIKqelK0yNJKOJkJ+zB2N3MNg/eOySVduPEJwgMLocpVgUVHcDRc9h3is
         Mu1u+OsXunyR4SDVrDm6Ryd8N6N3cVzGgFDR3XfeLEucrDxXxJGhcRFrYosB7lFIMTFB
         nuQbGZnN6TA6aw1LdKOAWbVtGq9q7K+JndpxHMNNWd+CoXG9HAbfiTtD47csQKiwb5NE
         2d7Owwbf5pKKIw2hBeKJK+BX6BDjp2q0qnblJjoCSicm5bQHIKLM54QkeTH7MtL2pc98
         Jwww==
X-Forwarded-Encrypted: i=1; AJvYcCX/VWKTJ7aUBSPc/1YpeHVANl4k7vk9wLJfxoN/IRtotNsjKL7dsxf8CNNFyDtU9+vDJ6MUIS+pFmPx@vger.kernel.org
X-Gm-Message-State: AOJu0YzGGmi9oj0kDDu23H71MZqBP5T4IMetOAmhxUYoJQ3yQr5rERtZ
	+PCRv7K3CjcZReKniH8a2Od1SCQMVQwYf9DWQociBGo8rmCiXb4lsDK4DeomM9Y=
X-Google-Smtp-Source: AGHT+IFB/80TsoIFcqOP89wUuKPAaBM6QE7qOspyWm7HaILKW2tXt8EZeLi+xkFDPhSFFTfLKDwO9g==
X-Received: by 2002:a05:6402:42d4:b0:5c9:4281:451e with SMTP id 4fb4d7f45d1cf-5c948c88378mr4204260a12.1.1728744023446;
        Sat, 12 Oct 2024 07:40:23 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c9370d22fesm2905032a12.19.2024.10.12.07.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 07:40:22 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Sat, 12 Oct 2024 16:39:30 +0200
Subject: [PATCH v3 4/6] arm64: dts: ti: am62-lp-sk: Add vcc_3v3_sys
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241012-topic-am62-partialio-v6-12-b4-v3-4-f7c6c2739681@baylibre.com>
References: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
In-Reply-To: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1572; i=msp@baylibre.com;
 h=from:subject:message-id; bh=XhzApypE5f+qCrdy/4fKvPPdyBST0xn9vF9MGvotmC4=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNK5uhzdZY6nmczOe3lfMv7Imklsn4+8eJuk97Xwg2aR5
 KbnfNrvO0pZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJvI5i+F+ce/demWLfp8UV
 m3Ywsyh0Cp9Yrr/qt1Yd4+JJghss799mZHiXGDxlHrf5ddeO2zYrr/M57Ohdx1pw77p58Z9PRz8
 tOMgJAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

vcc_3v3_main is currently modeled slightly wrong. vcc_3v3_main has a
parent called vcc_3v3_sys which is currently not present. Add the
regulator for vcc_3v3_sys to be able to describe other regulators in the
next patch.

Fixes: e6a51ffabfc1 ("arm64: ti: dts: Add support for AM62x LP SK")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index 8e9fc00a6b3c7459a360f9e1d6bbb60e68c460ab..529360b5e6fe052dd99f04b74c129193922f76ac 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -34,10 +34,10 @@ vcc_5v0: regulator-1 {
 		regulator-boot-on;
 	};
 
-	vcc_3v3_sys: regulator-2 {
+	vcc_3v3_main: regulator-2 {
 		/* output of LM61460-Q1 */
 		compatible = "regulator-fixed";
-		regulator-name = "vcc_3v3_sys";
+		regulator-name = "vcc_3v3_main";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vmain_pd>;
@@ -70,6 +70,16 @@ vddshv_sdio: regulator-4 {
 		states = <1800000 0x0>,
 			 <3300000 0x1>;
 	};
+
+	vcc_3v3_sys: regulator-5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_sys";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &main_pmx0 {

-- 
2.45.2


