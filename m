Return-Path: <devicetree+bounces-199880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D9CB12AAB
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:12:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DF71C26204
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DCB0253F13;
	Sat, 26 Jul 2025 13:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MIgG3OiW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CC2253351
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535426; cv=none; b=SNnfi7PGAXNOcfeL4ESVz4bFjnMlsx8O403r8l8ATOLC31dCZ9Y0jjUJDsjY3o3K5afckQm9RL0ysjTOkjVnJhxVsG1NcZTcEbkFalyxPMQEH7P78mH2W12D1MI6zyBzHoPmCqj7owmfDFtUpJrrI46w6cEWFFsRYjhxEkCYSrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535426; c=relaxed/simple;
	bh=D00Agu9o5lMwHglRF8JEmN9Mz2SwGM8gIpQ2brQAJHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=liZDbCTZ7MHkLo78vL649EgS0ZuzwDD3IYq0VB8qKNrXx0FqF+twDAd9df0cm6Z4l0bcEQXvoecBPgOA25NlsXba6mayETqSpBkfO6fqS1+btUvkwPfCzQZfgzshU4j3Hp8ZWLCiH2bzYAa25oo/FImEqMCHatHPAE59Fa25TkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MIgG3OiW; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-87653e3adc6so113977239f.3
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535424; x=1754140224; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=MIgG3OiWocH0+YrJu0UW2sfZ02Qu5DeqnDLOyS1orbwuxEfznU6OWLHP4tjSVHwNgk
         c3kx5dj7SipUwFbb/6whTDp/sB0SWyTOGesoc6uKcKwXHt6wE+pZuCNy4t+xUeyYlxo8
         6LeDmk2Xk2CXiFP1UJTm2m6LEtX9PRPEyPXp8xNPw7G3FkKcWron/KA72a87pSlwiyPT
         SKSsDTWG0G02DHRlInTT3a+eION9aHpLyIETznKyyaamm1XB6pqFE4Oad9ZqPDkTAn/J
         pGCD09obhs/iBYIXdHGQ43dsDXmwvFkoPl4p09to+rqj+qbmVyn4xNyN+SoqidB3nxa5
         5uyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535424; x=1754140224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=fUXtLh6T+UwywoyaYosDHthIhKJBxDOEFI+UKRcGaJcMS3yyv5qxDhaKC3H1Zwg68U
         3CQaAQZlG5sNrxs0xJ/yW9ekt83ocLEZHtMHVUVLgxn3TCFg5emwvNfppmNOK0iaiLcZ
         dI2dfpeWioRrrbK8uSJw18JzsjZGvjeLnH+hUE6R9qNf688J2my2ud/l2eJbWJL1X3w6
         VxYeEgVkFRRbEFH9m6Vx9elXc8tKI8arUSYbXPFcvKdIjTVb+ZA7xQKOMPZ2+uFUCLG3
         ZqJf0rdtUGB1/9seNe8eGTTc2nyj7Rx8F1SepFOyBNIQOSna4uNeawJMqUm1PoYjKw/h
         3bnw==
X-Forwarded-Encrypted: i=1; AJvYcCWQb9zsHLTBvQ2Rp4ebJTMbpmNtnmPr+NMD/RTBuZ/T7S01R48zUPnox9iJ+T5Gj7mi76Sw9j9CPlfQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn6TrKRypPV/H+VHpotFggOGAL63qf0p+xriLqW+iN3XZZc6Hz
	A/+emNrnVLqzqEYgP7bD3Xs1fPESQgSujZfXHg3AhZwkyz5ciefZF6iTkVfLdgp3UbI=
X-Gm-Gg: ASbGncvR/8GbMImyOkTGYpbeAZxbCSEdnxOfaNkvOWbmvEYha9rzkqTtJ+IQrDkNZwA
	tCj/HITrttdzOeIS9J9g9gUvm3Zsob1Q/kdEekdelpvZGpu0tlyKKJ6COF0GaoliXIdqcMM5X4X
	XUuxR1OAuvRLgXZpRtQz2+cvF1POUhaphHoGD2qubSTUqBfKcqZx9trWKlE6Q1QbxmHThETyUKl
	3wHBiDA+MVsK9deW6xR0PeRGdna/tQQYpIHLdgaCkMwL8LSIfzSzWa1/iRFU9xJJO5NMkg9tX9b
	Lc7LgxJGKFmzjEpclt7bIZqAwBnEn5/Ui5EW7oaE0wEoc6Js3FEqozmdta/fVwaLld4JcIUrsdy
	y/86osTp8ltz6896Dw+1n71w5W/LncloOX3JIO78e1lTarUrvt7hsL7X8W/skFvLelw==
X-Google-Smtp-Source: AGHT+IHnZ5VxjnvnLu84xJpltA7xsi0CvkodJCb16fAczrWGpj/N0ZZOz3kKEjYSRbp1bBk68OHmvg==
X-Received: by 2002:a05:6602:2dd0:b0:867:6680:cfd with SMTP id ca18e2360f4ac-8800f0e76f4mr1007709139f.1.1753535424237;
        Sat, 26 Jul 2025 06:10:24 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:23 -0700 (PDT)
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
Subject: [PATCH v10 8/8] riscv: dts: spacemit: define regulator constraints
Date: Sat, 26 Jul 2025 08:10:02 -0500
Message-ID: <20250726131003.3137282-9-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250726131003.3137282-1-elder@riscstar.com>
References: <20250726131003.3137282-1-elder@riscstar.com>
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
index a11a60b9f369b..a9a2596a94e89 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -68,6 +68,110 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
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
2.48.1


