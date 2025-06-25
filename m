Return-Path: <devicetree+bounces-189643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DEFAE8A2D
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 18:43:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFBCE5A79F0
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B94242DAFD0;
	Wed, 25 Jun 2025 16:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="DFqDV4Q3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26722DA775
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869697; cv=none; b=T8dIJRj1weJkJRNd8amZlFpsNQo2krXXzOXdlGmzUWXG6CdzmUE63TQtgnt2SrDTQ3ZjlaNRjfVTPS9CY2sSy0pgfxMVN+aJ9UVdSTK05xoBTav1NzcywVMlLWDp5RYBCQ3OVVRkBe5vJrABEoSSswLnOheYvkZhvXSbNeSbENM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869697; c=relaxed/simple;
	bh=WGruvn+Gqs/wHzBEiTs0RVm377PpbfSqb1Lgjf4ooI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o2LqzeOzRpyvCAgr4A4id7hAZLGF44Gp0AnNkVW7T8fiDV8jIJnqy+huDpHSn0YPNjjP4UiTk40QX/b3ytWMqu12qvJ1+EB3dKUga3VQMP7jruk6DaqRVhFpL+Wiv+cFSFQHoqe36FyugBDCBKWJkT5M4VtHfzHlNijuUgU8jEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=DFqDV4Q3; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7d098f7bd77so19199885a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750869694; x=1751474494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=DFqDV4Q3V8IqvSZ3b8O0CKY5QOM/L3X1DXhBB9GMYB6Ysd6k0KA79ezzjkNZYpGAUb
         yijEHKF0pcljeO16eGdkwSgyddV82dmiNWDKXWq0c3fclmslOWR8yL2rCa/Xq+jAZTIm
         aJHiG5Han0ewY5b0MHoertvT7miFrF2RW/k3Z93dFZIGytNtYquGJLjn+nwwcBCWM8eX
         Jwuibok3Mgf0YmsmXZwjL1jv4c+cqEHKg7OouLp5309EjRmMeDOt0Jo0nyPSea4C76jj
         er93y/+Ght9ZBlB5CUYbaYpr3smWes9hBs/2bvSkUcXjcBKmj2UeEhrNJaZYhQ9+Cp/T
         FUDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750869694; x=1751474494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=SW5YQRy8fxmmUPHhjB+RmGxpfEPjotLuyLYpBmrsOVtr+WjzoxksAHM0sO4q7H2FGo
         IC3n0kV1VeAvq4UVm/hjdC+S4Ub5YNNDJtj4gU1kWQgamMT/ZT7CYAQMetkYJIEkY1QA
         lrLZjNDOBEKrP59jSskzIHzWsmysnPE1YbDbhj3rs/MX2LmXgbfsBMtRGq7qllXxW5u+
         ujolhKLJwLapT9y9c0iZ0YDswGeaO6GxLgjxF2qHRx433hbbkUxaX9rQ7k+Pe50oYD5h
         UsPLsvP+lQvFwD0Ar+Gbw7OXya6Aa2KxQdpEe5QfNvrAo9bU1dsK2GwTg+3tneXGLcKS
         uraw==
X-Forwarded-Encrypted: i=1; AJvYcCWAPv6THdTo7vXRkWZnhpswxUsOAu7rWOggEgZtcVIQwaCvsu0sXWKrkkZ3CDsKYLTe4+/QT8RgI944@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6vRplTZFTO1I+h/nj88YUHRv5CgCF1TTAp9Bjt6ZIoZLwZPIp
	PG/nOrDiUVeEYvD7XdpzMIy1pEy8APCMYd5X6YdxVgNGZn+iI8AeLJBkpVbgLDEL88o=
X-Gm-Gg: ASbGnctvkkR41O9AAFWNir3lcOcNsdUCxq5r50hKntKvxtO3J7D7KWrprP6K54z9jbM
	9jdOlIdw1S9qBrMZTZ/cjsBFiaPIEPg+qxbwpyZnToNHXwlnb1Bk5FL1uaiGLP/NjjUryLZhkij
	V0uNgpT8p4KJPxd+uSXoWJuETbyzr69FXgDVuux7XbAlcyjsYJyG73zM8yEL3E++jmO9NG8dAGu
	S3A60QrhHvKHKmjLSHWXnOQDeZ/UaChXCfh6xca8V6fQPMnpXCfL5v+WXS4ZKt65NGqIbzW0Jcr
	8qTSswPg8oKBB2TC/62lBlp2n5MgBTACggIweHdqaZ1SfCe9KHd1JvtHmhamgtl70Idz1oMHUhs
	dqavq8M08rvt5Q0XshjvNmvvmssu0aZGTSfw=
X-Google-Smtp-Source: AGHT+IEBC2FuiYFCeaShYjBDomZFTypEHYThHwPRfGEGQQlsuc51Pdbq0Cxqjxbh0A1N+hYJdQQ/fw==
X-Received: by 2002:a05:620a:1996:b0:7d3:904a:30c5 with SMTP id af79cd13be357-7d43bb7e163mr36774985a.4.1750869693713;
        Wed, 25 Jun 2025 09:41:33 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3ffdb190esm576783085a.86.2025.06.25.09.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 09:41:33 -0700 (PDT)
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
	troymitchell988@gmail.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 7/7] riscv: dts: spacemit: define regulator constraints
Date: Wed, 25 Jun 2025 11:41:18 -0500
Message-ID: <20250625164119.1068842-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250625164119.1068842-1-elder@riscstar.com>
References: <20250625164119.1068842-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define basic constraints for the regulators in the SpacemiT P1 PMIC,
as implemented in the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index a1c184b814262..83907cc1d5ccf 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -70,7 +70,111 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
 		status = "okay";
+
+		regulators {
+			buck1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			aldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			dldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo7 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+		};
 	};
 };
 
-- 
2.45.2


