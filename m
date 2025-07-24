Return-Path: <devicetree+bounces-199543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06624B1124D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 22:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF3987BBB4C
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 20:25:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 575AE26E705;
	Thu, 24 Jul 2025 20:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lcHSB8N0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908492472BA
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 20:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753388731; cv=none; b=iT52cXqowjkhHotf0j/dvevysGL38NqpGn4qtJPPuqF5fWD8YE2wDoMxmSy6FcL1hKaGMNLSqhTBD2XDgcmvrO8CUzp0531Q/HSjYFMD9dxtD5n/S7IHkmwSfRNWIgAVbBkStcEPO4YDqV7hooTRUtnieif1FN+dAdKpgkXU0yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753388731; c=relaxed/simple;
	bh=jwtN0xCvslGhNw0OABByaDpfspJTfiR2J4AISKnWXAY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jN+idoxv5BKn/VJuAnbQJwG/P7HNFKiw1SMIV9UkKQKSitGWh2rBggyR0igUK2YuNQTv2Ypzf+DhX/D//9OdBWOr+cXB4AAduVsP6qRdzcQmaNfnvS+c5hevlJQg3IlH8WLUHYCPNTXD3oWOddd/MefifCdePF360qZg5zcCdfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lcHSB8N0; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-87c32f46253so48543039f.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753388729; x=1753993529; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBB5jxvs8tf52E+gAfvEPPxENYUnIxfjNegdT7+viL8=;
        b=lcHSB8N0Vxdjg91au7/sOHy9D+49+ZlQPEUteDYPOKjumUkpz+3ctegZDYkmk8HHJT
         6xEerDisLjs8GDMZSaz05a1kUmjp89YroNWO9EdzXN8L1atWwF2rrvkQKg6vh+L3Pkqc
         85AZ3LwuzbTFuPFwJ/rVIBzenhzsyQBuYNG3e+Np3MWdlSoq9760xeUxmuYQ150QG8rC
         B8euYxpgQ2mhKCWBG6RHoHceG10UN4CiyvZh/EvJOUua9Wwx6lvOTRD6bchcN+dokjYP
         zgm37niX67vpk/XxjY7QjX3In5UVOrvOFbUdfc5vRrUKyeJKUf/awauJ+kXmfBEE81pK
         uoyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753388729; x=1753993529;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MBB5jxvs8tf52E+gAfvEPPxENYUnIxfjNegdT7+viL8=;
        b=AO76BINkF0xDcEpPiC/cPM0EfcPJb4Bs5YRxm8onEC3kns4k27bkZnsIbVgqBgWnSB
         eFtJMV7giFUFcEsohwMKzPj6TWf4rw0PvZQwNAB4v4RiKe8jPrDf9Xem9Chths6pig+J
         Ssdp9r1Wzmv2KBmHVvtzC19ZVLSrAh1PfTNuzcohdEJNpDGPRbNX0aFumF0dhISqDBLi
         awbhMKWY990LNs3Um8IrJ297wgWFfUtj6hggbjXK06J0aoaFX0IpX4YXDjhLgNQcfy1k
         Ly2zlR5hQuo+4j8ZrGVK8izkbAqokCnr/StuZPiw/2bFlTzFE0OB/cRq6eiUhXiDfAl1
         UwGQ==
X-Forwarded-Encrypted: i=1; AJvYcCX65EDWYMF2lYi/mcqVIZ1V+jLar9L0bhWR8Fe5KZnyWS55Vpu2dHDHzMbFCFCyo3lh1JL/IL40JY2W@vger.kernel.org
X-Gm-Message-State: AOJu0YzU45cD0+RZgeKZuL8lE+EiBUixixLai5rzsukYFiLV4K5zBEUt
	Z3uGAZi4qoAJMGooHKT56LhVOUexJCzRl5UtOOWAXoBJ2MSNuIdNfVjQZwaeuLyV+g0=
X-Gm-Gg: ASbGncu4+lc+gpMb/L6Y4UmDZOk8yi71ywx9NMn3uG5BAdtm0JcXte6GHIXIEkHRr/o
	9NBYZtYGuek50xEkjdUQKYmkWdAnuU4mYSd9ksuaEl+9wyWSR9M0Z+xSg7KmyHA+qytf2lkco31
	BbOoKI/8lmkHmoL4++cO5l1Fpj+gIgh8DNaEIZ3zF4q/iE2pHmkuxouIvOkiZPSyvxcnBclk28k
	suNKYK/DTcmSptdiz69CWXCn5u8eKbBKAjpCXckMzl5TKm9FDIEtd4kUu92ssniptxxtj6dtj0m
	2AZDy3wWLjJCflu5Q2zObvjJXzXPJy2qvQ5psfR7BGGff1cJvtR8aiiH3iGP/T5AOyrtXH8nsfl
	H6GgR4LTHufpch3rm3xO8w2N655CVX5hOUEBF0cnx
X-Google-Smtp-Source: AGHT+IFA8t+gyzjGKf5ISSrexvmdiq2MvEH9qXOnl6ziXQ6Yu+XepclK9trDk+vKuFcx+/4K7eM8jA==
X-Received: by 2002:a05:6602:6d04:b0:87c:3495:41b3 with SMTP id ca18e2360f4ac-87c64f2f532mr1543017839f.1.1753388728685;
        Thu, 24 Jul 2025 13:25:28 -0700 (PDT)
Received: from zoltan.localdomain ([199.59.116.160])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-87c74316a3bsm63080239f.23.2025.07.24.13.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 13:25:28 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 7/8] riscv: dts: spacemit: define fixed regulators
Date: Thu, 24 Jul 2025 15:25:08 -0500
Message-ID: <20250724202511.499288-8-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250724202511.499288-1-elder@riscstar.com>
References: <20250724202511.499288-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 7c9f91c88e01a..a1c184b814262 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.43.0


