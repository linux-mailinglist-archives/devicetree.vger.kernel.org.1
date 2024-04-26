Return-Path: <devicetree+bounces-63048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF68B38A1
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 15:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 608331C21FBA
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 13:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FEC148831;
	Fri, 26 Apr 2024 13:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D6K88qWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40B61487E3
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 13:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714138718; cv=none; b=uzxMIBX/o6HgAHa10S5UehT0/OaBwJ6tS3QZu/PZj79K20k7G+IJZTk1PNA3nAhSrRA56/3t8989wcbL0IwIfEzmXAB8LjtT/R6hc+HtLlp/0aQfGMs6u8aKv54MnV1oHSCTPCsTX8ys2vpEO9vEQtXJqwf9zF8PzX6Xks3mlIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714138718; c=relaxed/simple;
	bh=ZmIYYUt0QcbC0Veeq4Fmo5dE3JV8iq7sEVsLahwG0es=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fGvh3e2PiToav5Tg3sqqvyfCFzUwaq9BiTf/PrZpZaPS2akk5SpO0E1uLWBpYxO63Rtcb7omf5mY0b4uvJNUyfF8uMge4Ll9xHevMEaYOmLqeeUods6bsDU8XAqW76DMiIEGe34Ggnp/ul3fw16RRpcIekaLfGYstvZ+OIHlyx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D6K88qWU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34a7e47d164so1559845f8f.3
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 06:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714138715; x=1714743515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AX1t+YE1cBl5MQLmH5bPrWGcz0Ebchp9QnAASzx5oG4=;
        b=D6K88qWUQqxBT2SQHLvY7BaEfoHioMxCa4hmYyR56N+mKgP0idkJZR72KjxG3YpymT
         3rO5cr3GOyJTdtbyD8b9A//Wg+646WPKM/de4/c0ggLPHpfYnIA5I5P/fDaSnanwTwwz
         0sxVZBcJnNTzYP48NAGXwfPHUsAkQmSiDGnQboqPzQ3bI/LUf843eyekZebmbxmQIFcy
         yMceTfxB/bxk9ftkVyeZiUoKei58uSWsekZVJhWBWknDS+bNgdWLx+pczrnGXmoGJY6R
         qunCMF+mNRDoHe+i1fChVZYKhY3c7FXfgCVay8Pr2NO6cYqbJfFQ2i3yu6Tv1/CJBxXA
         WpVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714138715; x=1714743515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AX1t+YE1cBl5MQLmH5bPrWGcz0Ebchp9QnAASzx5oG4=;
        b=LhqYysu0KLEPLfHHJ+BNZBWN/iqZZv891aszyjv9dS0OAIthPdRaQn9UIlL0PbK4Lw
         58mQHoSCYz/+NvdpPSY5VZT3b6R6YNRld3lXhfTfsFAUY13ro6hhQkC48Ax6pneD5EuE
         Jti52IukPRDHqoI0ftxKK99/m6BuRlL/K0KSJLzRa3IU5ELqsjlH2ZashoThj+VayHsm
         4aagl9OmSya1tm+EJ6ThHVcat6eYL04NZx5YgH1FLbYu5bXFKSJ2o50kNXtWPEUlK6nC
         iZjv3dV8p6DMHd8SzF5ir4MyveYK2DMWMPv8GPCGPryWeOyeZ9uxRIL1h1sVeMnsD8NF
         b7CQ==
X-Gm-Message-State: AOJu0YwwHabLyfgJlVhvKI/FPN4OIslUiKe8SB2TNlyMTZj4n/mBYVEO
	tbKUdfcbOQtEd7EgFs0E3qZ4nduoBEYAIcfWG6m7EC0ZIinUGly4II1OeWUykyQ=
X-Google-Smtp-Source: AGHT+IFTTh4iakkkfqbFYU7oLhsNchB50w3aO7hEduSjteZTlE4Y7Y4KaHOlWbEsAZDxFgk08i6IsQ==
X-Received: by 2002:adf:fcd2:0:b0:343:7fa6:4393 with SMTP id f18-20020adffcd2000000b003437fa64393mr1870301wrs.38.1714138715070;
        Fri, 26 Apr 2024 06:38:35 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id p3-20020a5d6383000000b00341b451a31asm22327689wru.36.2024.04.26.06.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 06:38:34 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v3 4/4] arm64: dts: exynos: gs101: enable ufs, phy on oriole & define ufs regulator
Date: Fri, 26 Apr 2024 14:38:24 +0100
Message-ID: <20240426133824.2283144-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426133824.2283144-1-peter.griffin@linaro.org>
References: <20240426133824.2283144-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable ufs & ufs phy nodes for Oriole. Also define the ufs regulator node.

ufs regulator is a stub until full s2mpg11 slave pmic support is added.
The gpio defined is for the BOOTLD0 (gs101) signal connected to
UFS_EN(s2mpg11) gpio enabled voltage rail for UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../boot/dts/exynos/google/gs101-oriole.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6be15e990b65..fb32f6ce2a4d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -53,6 +53,15 @@ button-power {
 			wakeup-source;
 		};
 	};
+
+	/* TODO: Remove this once S2MPG11 slave PMIC is implemented  */
+	ufs_0_fixed_vcc_reg: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &ext_24_5m {
@@ -106,6 +115,15 @@ &serial_0 {
 	status = "okay";
 };
 
+&ufs_0 {
+	status = "okay";
+	vcc-supply = <&ufs_0_fixed_vcc_reg>;
+};
+
+&ufs_0_phy {
+	status = "okay";
+};
+
 &usi_uart {
 	samsung,clkreq-on; /* needed for UART mode */
 	status = "okay";
-- 
2.44.0.769.g3c40516874-goog


