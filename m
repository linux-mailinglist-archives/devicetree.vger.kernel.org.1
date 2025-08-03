Return-Path: <devicetree+bounces-201474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C61AAB191AB
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 05:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FEAD1898CF2
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 03:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B95C71B4F1F;
	Sun,  3 Aug 2025 02:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="sFD5XxsF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFC51E7C1B
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 02:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189912; cv=none; b=NktvAIx9QGaMdEuu8y13KLbOiwVh+Mp8+hiylmeGdb85UhtsV7rgVQmSdnN52NWSdSN3aU5FCEDfyTa3mLAGKpykYs+SlCSGJ0z0nABNucddRU4rQzj1orPprqkQ7JmLjaR2IFrG8WfGDG+pDigs/lCoKsftJScAwsC9dMLdWkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189912; c=relaxed/simple;
	bh=D00Agu9o5lMwHglRF8JEmN9Mz2SwGM8gIpQ2brQAJHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V8lxVgaciDBmAGdd1LBfLDASGuoklFK6nQfHzyaJ+RUB8DyE+jgL+z4r0ZL4zm4syNooh1wNVuiBDzhjxozgbwsfOdWB94rHCGH1dtUY79+QTuvP2/eBCL27W8h6Bzl2efOyQcJzq9dLWJ2o3th0g27LcBaLEx38m8EZJ0ZuI/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=sFD5XxsF; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3e3f378ea68so21106855ab.1
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 19:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754189910; x=1754794710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=sFD5XxsFKxmWjE+uyL6WNh/FBqGg2Rga1WnnDeMjvZvQ87Qz0jn1S3UScBbBGGP6m4
         lVet5W1vZKghiHySyX84g7nXeesBdwTi3xVWihz1kBOTPUfVZ3fmZYIxR0ixqqz4mAng
         oAcCi/U0juxHyHuYn/2i+gzNRdp5Lj6bcIfMgYsVLImWsx63N7M4gsFlcbxXALZ/hXpR
         /XHtxvDAh7OTZjzI4KcWQ+keg67ZNH/ATSNOoRZSrU9X1TvFEKdBB/mgVtC+m7BoZGz5
         6Ny2I+Gjg97LM0jHcVUGJDOa6yfXQhLKLBcIhIPcysJOEoD7QGFCNcFhXjHa1JYfi+7Y
         d1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754189910; x=1754794710;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=woDJVFC4to0IFVO18D/Z5Ta17DCH/DTw9PeU9rFVO26t9BS9s0crQNVEoSh3fGH0Vl
         cCaB5BjqbTYPddItaEXHmiSctoPfHkLMtNK9LjPCndeM+tHADBp6iih2IVSHBcnf+kqz
         rkGqwiLy2ytEseI6Oib4139pV6EYuuaS0A9Fx0GocHWuoN7gE9z+OJFZ7s4i4GleA9M1
         mhe6nonqHwztaEPrVrSfYMQqWp+s8+TS577M7e+HHnKgSBoF/d34tf6EyPf48NTQUu5u
         WDMOufMuu6FQ5F4+HIitFic9TB2RQX0sVcTGKEaR7J1UV6ZL2jhIMAh6THDKMUo9hcwU
         06Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVq1LKmLNJMuIiWR8LCasHFyGqrYUh8b33soZElUe5CPQKEaVkXf0aLsR0GtTGCHP47OYQScCjSx+n4@vger.kernel.org
X-Gm-Message-State: AOJu0YwqKiowYTnkbLnolpkOAZjA+1cZ59/UCblE5iTNWrfuUgIlswSK
	yUUr0MyiTQzM5nasFTLBQuVAN+/7bcm3dL3N+NPEapI1HQn6HVQ/mOZV0+kdZSpYndE=
X-Gm-Gg: ASbGnctGhN1mpUmucmZWPSkxeUCWogSI+0W+8SKlAXUq47dmUXNSJUHnrUmmT3NlMlc
	L74Fs57+q0eCa0HTZJ6BHMVCoXvz7KFZJS7e6aEnJ5LfEmy1bIJjqNb/goqQNu+eYdy+zi3gQ03
	SkcmMkUgX6lnPjHDV0RXGYqLmizTjdqTI3zFcot0qp8yab+7UESgnT5tYb6qFGmmvNs42oqJ9+F
	yWHJq1CmSIhjDalyMxh/W1DiHzee7p9YkeHLCdKv4Y2ti5ZKfceyIO1V26O0JT9F4X+4dRHY4th
	vvThYErGrzHQfc4F7B0BiUbPq2+aJWuJIkzaNbq8RPsASmQ8n8VTMxKBv4Ir7JMgS826FVrIiq1
	PDwj3xRSF/ZfrhmovFLPQBrKx5ZNgtg8NUzOu9WPwQSsW6QHy4d1Ie8aYgstY9vh49w==
X-Google-Smtp-Source: AGHT+IF+PU1Ww8JQGqYmDAP1BywlMvxMvsGkL0JMtzACHATEhfoG3q29UZAUTYQ4U26WEgaiO5kgRg==
X-Received: by 2002:a05:6e02:32c1:b0:3e2:a749:252e with SMTP id e9e14a558f8ab-3e416109acdmr88472255ab.4.1754189910159;
        Sat, 02 Aug 2025 19:58:30 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55b1ac2esm2251906173.1.2025.08.02.19.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 19:58:29 -0700 (PDT)
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
Subject: [PATCH v11 7/7] riscv: dts: spacemit: define regulator constraints
Date: Sat,  2 Aug 2025 21:58:11 -0500
Message-ID: <20250803025812.373029-8-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803025812.373029-1-elder@riscstar.com>
References: <20250803025812.373029-1-elder@riscstar.com>
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


