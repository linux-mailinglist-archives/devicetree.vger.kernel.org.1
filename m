Return-Path: <devicetree+bounces-217254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB9B57242
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:03:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF8B517DDF6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6ED2EB5C0;
	Mon, 15 Sep 2025 08:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wv/toyx9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABE32EA720
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 08:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757923347; cv=none; b=WFVxbche0NSvabiQmS6n8rP2vN9CJ7KH1SVLq8FoDQ5TGzSX8XmmcRt3zCt9NzE9C8NnY4v+mteBWQXXnJmhZLZ3A/jWv8RSxULeRIuPQhaKnQVA0Fz0d4UrCmLDAbywepNthZ7LLgL27K18mNQwtiOLmDvojUbOUNCWn+uCFZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757923347; c=relaxed/simple;
	bh=y84VDV0rZer94jeWEUGutZ+DiGlWK+mnb2KewZUqkys=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VSSFi2YBjQRB7mqsmn+oS5njNDUSsw09rdO1OtwcSn4t1/sl1rIwUwzqGKitFqttjrUyGCv8sEhoTgsbO8fmyIrqjTaDnF4q8PqeqWlCYplcDU/+njQ6noUSvo9WmMO0fFfReQe9xcK6Agv60Upd0hj0S613LfU0BiLnd3gjJTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wv/toyx9; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55f6017004dso3929711e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757923344; x=1758528144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VFtIJBuALfkec7VGR4PeH5fwH/AzmTzDZVD8lAug6hM=;
        b=Wv/toyx9Ty3pulYm0UcY4Q/22F4JSMxYIgAJgtualy/TduDl02If2eBvuqedo1soNX
         3r6JqdGUftebh7ifqZMCbnlclJ17cHGe8auMfd+SxsSUflkOzCUmO7WEyZdwfhJCY4V0
         0BY3MSYlqtP31LbKNUrpvGQZPhoWm+zHkyF0apmA0n9QytU3xh5uDQLlzu4blI2muobw
         YoCiSoIwFj/0kVVS/gij0aVwIJrz+rNg6TgME+6y8cbPzkv4JHpu6wnTE7Is2TdUYCSz
         xE8lCCvcQLvzMyIFFAMWt+mfn6+12PQtZ+mVTvFbqJ8Uy9BBUv7/wbkEEk4dgb9B+ty9
         awtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923344; x=1758528144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VFtIJBuALfkec7VGR4PeH5fwH/AzmTzDZVD8lAug6hM=;
        b=Z++r/0a0IC2fFcBuicyQGezBgdIrIsaVL8/nXD7NwJ5d5bgWKa7+MNF6gVt6pL3ieo
         lg3gDZwwR9SeELdgLK6QhoO0s2lKd5ECwW4uEb20lhsQl+bZq/1wdOHnToWhST5NCOY4
         l8OOKnKHKttvhUhlWasZwXE2hAI2CqOLnNyff7CJPshP3DrP0A8QO9oY6k27MJQo+xl6
         ykgRTjuth4nOfDuy71n8svfolz4j/FX7f2lnbs48i9bPSoUvBgovUaSnFATbQ3I7rqXU
         CdRUbO3fvBzRRa3onPo9yKNJ+SWLnVSuSogOzz5S/LFWNnclIlf7IpGoeCU3t6sqDlht
         UvvA==
X-Forwarded-Encrypted: i=1; AJvYcCXAI6OZN4LwCQk2Wvot8aT1qhAUMQGAOXXIzHn9jJAEGhQJmzdETmehqxwGhsZdQcOLjpCWnue4YMUV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0N6atHjveKwemz5edyQ0qEzMr3xwuow5vYC/7LgGqk9r9HDJV
	kgjrWioE9Ab742e/uWSDhcRXVPLdOY49cEzt+IEE4W3cKNzgJqIyai7y
X-Gm-Gg: ASbGnctgcDYAF3HMQq9g2V0i2KKkzo+YuBzWR2wozS9d8wH0ZfdeqCgWGFSdviFU+C/
	WeVECPs6OQswZk72K0Nw2gK9ffaDRE2ljD+mXjfmkAW2WYCEI1HMphxVKg0EtqdA6PqqOCHZ2M2
	SczJ5puFtGwxI6cjbY0ubY1l7Ju1JhgNYN0Thjc7yZrfYucHMTzD8vxpjtrwIOOq8KoisXgdwBt
	pHRVYagiXFcugII5aWvveyTxgFP4KAxNAaEU1PxeNSvqxpcykuiG9HJG+W5YTBN4FjsFWSHovxe
	qv7XGT+WEIh/NWo4nDRP2wGDTnbqol2vPC2VobbXD1FM42OuszE/PKmW91xaBdXPjhZeYSRmpf8
	xo6oNJ0/nVYK0253rTO57w4PN
X-Google-Smtp-Source: AGHT+IFe/jx4tFil9RjxwhD7bREzvIlC8fQ/134z0bvttum74XEn5yTMqRq0eo1UbfObzzjuNO/n+Q==
X-Received: by 2002:ac2:4f01:0:b0:56c:4159:4e39 with SMTP id 2adb3069b0e04-57049f1b51fmr3830912e87.16.1757923343830;
        Mon, 15 Sep 2025 01:02:23 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e6460dec4sm3392381e87.103.2025.09.15.01.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:02:23 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 02/11] ARM: tegra: Add ACTMON node to Tegra114 device tree
Date: Mon, 15 Sep 2025 11:01:48 +0300
Message-ID: <20250915080157.28195-3-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915080157.28195-1-clamor95@gmail.com>
References: <20250915080157.28195-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for ACTMON on Tegra114. This is used to monitor activity from
different components. Based on the collected statistics, the rate at which
the external memory needs to be clocked can be derived.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 5e695431ad2e..08f81a3d11de 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -248,6 +248,18 @@ ahb: ahb@6000c000 {
 		reg = <0x6000c000 0x150>;
 	};
 
+	actmon: actmon@6000c800 {
+		compatible = "nvidia,tegra114-actmon";
+		reg = <0x6000c800 0x400>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA114_CLK_ACTMON>,
+			 <&tegra_car TEGRA114_CLK_EMC>;
+		clock-names = "actmon", "emc";
+		resets = <&tegra_car TEGRA114_CLK_ACTMON>;
+		reset-names = "actmon";
+		#cooling-cells = <2>;
+	};
+
 	gpio: gpio@6000d000 {
 		compatible = "nvidia,tegra114-gpio", "nvidia,tegra30-gpio";
 		reg = <0x6000d000 0x1000>;
-- 
2.48.1


