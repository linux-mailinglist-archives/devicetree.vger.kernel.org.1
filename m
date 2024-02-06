Return-Path: <devicetree+bounces-39150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0AF84B8AD
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DF7D1C24927
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15690134738;
	Tue,  6 Feb 2024 14:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jmNeG6Ka"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE3A1339AA
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 14:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707231462; cv=none; b=tk8ou6gYuAaQKq8q0CqD/KLHjbKMPX/PQK38ixfgT8BADnmGPyys7L58IE3YBXWd75VBe4DGHaz6l5nsKJmFFjJseyPVgzXukZ5DSacs/qBD1PVGmQdp1eAIZEGHb59ztcu/j+6GT+1jWN38fKeySOAHgtnnudbn+544GGNpUjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707231462; c=relaxed/simple;
	bh=At3NKgE1b3gmQgeFp6wQ2Vd4bXzt+qAWBTc/hTeP86c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ty3JtCOWVRVRoDIouu1wcC25qPEsC0HGif3x7cVD9eGbyMMtWul1BvdLqAi+5LJyVbuC/t4DYn4dsIVc7k/MJufC2I/TtxFnB8sHvfBh4A8iTAM0NiPt9sZu55SZFxtzN26JE+dqorx1SvoUb4oXzH04mlVBE11qf6u9dO8ghM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jmNeG6Ka; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40fc22f372cso44937225e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 06:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1707231458; x=1707836258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gASO78qnd+QKC6Tryaqp/xMfAhHvhZxuVEnU1FHt3IQ=;
        b=jmNeG6Ka6mK5PBQeg5+cSTHQc18pmDVl51g9Vritw5BI1+MxHq9v4N9I1l/MMjkMcR
         aITzRkUbxwQiYu2gqcwQ2BIfY43fDMEUhS+h9AyngMTeEnJfGKsrBDs5X58CKCIB/syM
         vgDI69KsoDoajaXws2etgus1ULixRRpFOAmolUUERCtDkfK3GYeYdXWPkDW1rDhJjuZz
         v/fgVWD8TFSOPtfrh/22tzcHqT9Vj32A8jPvmwHX7J8HG6akuP4W1iEvoH05Wc2HKY4T
         Cg3vRBStqlFhjI56hBJIvNCH/NMg3B2f102vTPdIV8XS4fmKoHawWEAUA2jOxkgNo1Yj
         WjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707231458; x=1707836258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gASO78qnd+QKC6Tryaqp/xMfAhHvhZxuVEnU1FHt3IQ=;
        b=RLPzbpCpL6g9KH6wm+E720xNf8gjo09sRK5JUR+7IETWm+3wWAnMj+6v8U95bsnw4M
         FTvHB3msNC7AAU9SEs5HRh8+SD/A4tTAFk97yy0VPXI7X3YFT9rtJC6wDuOw53ilUYA5
         PxxJazMBib/48/gfNff48Z4MvkeFud71Zq5Zb5L2DQTIQodCyZwJi9KfcEPidQlN4S3W
         ffN0mNjpbLsohZsfu0faXKwfXkZH6uYCx/NLaj3pqKljohXJBZn1JtsHQ1I7HdMP/nLe
         kMoY/22NSIw0HUAz8AHRMFCNAPIXDfmzswJdHE1DeBc7TFNqz9THoMAUW+6kZ7eZ40z4
         LGNA==
X-Gm-Message-State: AOJu0Yx0w94hyf5i3F5Kk84I3Tp/+O7vSYYDGMgExZtufSBmbrOHX/Wb
	gk9EiBuwUU8U8xaR3zZ+Pc+5AsT7h3iTBpyRI62wlXmKOH01Ixt6mQ5OuahfAHQ=
X-Google-Smtp-Source: AGHT+IHeUAmaOBGgpivKhM4wX2IuW13WEvwte78xoboY3NHwL6YsIiphL2GESDSDG6g+c8QiLXAkAQ==
X-Received: by 2002:adf:ed06:0:b0:33b:2658:cb3f with SMTP id a6-20020adfed06000000b0033b2658cb3fmr1379548wro.64.1707231457878;
        Tue, 06 Feb 2024 06:57:37 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCW+e3f5uvLGpr7flmrRvo7g/ZKUCh94rCar9aQ2aSwAPj/XhZOEv5Lhb2DES8a71KjQJwvfWXUMUYDSTajwyx8IisYphxcpVwURtlN8y+wGHywkjUR7SFw0DxyjGKvx86titt9zgHSb5CSpKKu6ObesGMlybdi8rmzkL1RHLwAnOQxULy7MwMWVmSjr5WtwWNO6rwpgbx8r0XLUUXBzRoNZL4pRtaimUBJ6GOPz2w61B2/KbajRd9z/vlUxMj0UCDhcj447yw44xT5xiAbrl51P6I6w8yfDJn9NB1BnkjsxL7/mH8D/v+HEUu9OPkzwI7y3w6hQL0LI82jEo1amSFpaFlOh5fmdBujRB086J6Vq2DI1QdO2XOZwpbxWhH+bByLavXAVp0gnqyXYqAPT5DB+CYGxIpUyIcQDKfRK/TlJhS9HNRPVlwFOEsxuVb15xFojA7FDoAlBOeQgDbJUFh8yatRIJs4QDNBC
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id l14-20020a05600c4f0e00b0040fc56712e8sm2257896wmq.17.2024.02.06.06.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 06:57:37 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>
Cc: Andrew Davis <afd@ti.com>,
	Dhruva Gole <d-gole@ti.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am625: Use nvmem-cells for opp
Date: Tue,  6 Feb 2024 15:57:21 +0100
Message-ID: <20240206145721.2418893-4-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240206145721.2418893-1-msp@baylibre.com>
References: <20240206145721.2418893-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use nvmem cells referring to chip variant and speed grade for the
operating points.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am625.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625.dtsi b/arch/arm64/boot/dts/ti/k3-am625.dtsi
index 4193c2b3eed6..d60e1be9eb89 100644
--- a/arch/arm64/boot/dts/ti/k3-am625.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am625.dtsi
@@ -105,6 +105,8 @@ a53_opp_table: opp-table {
 		compatible = "operating-points-v2-ti-cpu";
 		opp-shared;
 		syscon = <&wkup_conf>;
+		nvmem-cells = <&chip_variant>, <&chip_speed>;
+		nvmem-cell-names = "chipvariant", "chipspeed";
 
 		opp-200000000 {
 			opp-hz = /bits/ 64 <200000000>;
-- 
2.43.0


