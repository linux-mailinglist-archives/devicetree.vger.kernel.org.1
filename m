Return-Path: <devicetree+bounces-209101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C23D8B34892
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 19:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC7491B20F60
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 17:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D6C3090CD;
	Mon, 25 Aug 2025 17:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EHkqQjkm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273F308F11
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 17:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756142478; cv=none; b=idk+G9MvSUs+uhyAZ2TlGo8zdqbFVsfgPW1xrPv/6aosrqB7qKQ1v1cYXof1d0vsUUd3uJqxshNyKllGr5FCRw4HNLC7jj7LEOdLaDFrYA0n43lToEKnh7LeOAEZ3IKDkCL2y6dm4oE49TbDc6zSkJfzUgpPcTBOlymmVC4ZNvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756142478; c=relaxed/simple;
	bh=D00Agu9o5lMwHglRF8JEmN9Mz2SwGM8gIpQ2brQAJHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tvr2FoMSQKV8XRuCKXtwU2Ll42EB0nFUNZRQt5eUZkFYFjJv9lpdNjuPm9e+yy0f4NequFhE6C2hZySZRZGhT6R1SCP9IrGd4BsHg5iXTMiNOT1v5+3X1uXy2NzvTcG1OGeuTYD0HXF1R+323hcQDYnVwXCepN/Yb6yauMkw3/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EHkqQjkm; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-88432cbdb8bso51569339f.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 10:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1756142475; x=1756747275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=EHkqQjkmXHu8VAQtdYG8cdjzazIyFYR6KVsULolaId2YSJb8tec/DZ6WAMe5Yv9hmj
         B3oEm1VKK/Tfk4ZS1ycwWT4jJutHBsgHPkusAFl7oDkJ5jAh4fCAAtNl8U3wAq/qAGiZ
         bR4tohcCEaC7zBiCd0p+HGeVmmpgOobMmVN7XnB7ANGMhrS0lJ69c7Ep7dl72G0yvfwc
         QPjkpeedfzoObWjwUewS15eGBPtFFWWUTcBTZnXsxdflFBswU/Ddm1E2uAZumVpY9fMC
         e290i9mzQjWOh6rbPBwkgyjXTjqbtj/Fw+3p77BW87k/BxX/ofv4Mi3XmKlmA3OesvF5
         BNrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756142475; x=1756747275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=JGNug7VokZcD6Lt0+2U8VDYBz6ONvZdu1IzJcKcbdBaz/J3bTphY+1Mjpgy1BUZslI
         WnrsNrRdOEQU0NuT3gc6bZ4IrivRC1WcJh9bwBQh/EbrhMR0Jsoc8daTjEtcoMEKNdbM
         QNYrJ8PJiVd60C26j62Jv8bVsqXHEHVN3pG0MuIV1giH4zHBu0ZUMXVcll7jsrcdvaso
         DWXTFA59e9FGXCbA14XEytLK8sP7Z994bvaAtMxSSzrWDw5j6gg5g62haWsBrVXiSuzQ
         XI1GUOV2gShE/d2Y0b4Mm1WCdGJCb3ndcmP5OPPpvRo3xBLXcI+IxpmAauRVKVOVuAb8
         smuw==
X-Forwarded-Encrypted: i=1; AJvYcCXOJhcxhHqHVpLf/3zUIwcqqTOk9D8x+Q5E0sp07BLf4RFQopQvcIRz7/vaMrQIXsfc6ycbegC872KL@vger.kernel.org
X-Gm-Message-State: AOJu0YyG/u91I5RGHs5wjk/eqFWVOyc8zo7t9mGeM7En+q0dL1FbnO8T
	DsTEZZfk+uVfw0bzPvqqbPlkegIBEogeFhA6zVTBUzMqfClNrdG6HKmiPx6dMfZVlF4=
X-Gm-Gg: ASbGncvwpiLOG1kN2yN0XKBlnuparF45Nb9tR9T7prsjyDYnO/L1+QrAeO1PJYWbTw6
	04O/WSh8OlrN347Sl9yAXIqkw/74XjWJva/Clrdhmkz5TYqHoG4ezH14soirI0cyYzIlpQbTwfH
	qyeYOW6j2krANf9MTWQNSpjIApyzF1UuxV0AyyF982/D0/bnb12IBuo4CRLqjWVAmTJiOQH0jH7
	lQLXQOBaNHgQA0kZS7wK4wji2YNN9+f1/fGaP1hI2gLxLbUvkGtB5QOCGzPLYHvuAh2SpUok2DX
	PwLEABxslrF2hQNbjaO+ELw2JoW8zHH3L0V+O4fE/LRhHQnqNMi5ZSmYveMuVD+VBwikfql6Zin
	zzYJO4IGvartDRct/2xwiuYniEx1KF3jdvrB85itIe2k19VeRW6Fn00NT4Wm12HsYMQ==
X-Google-Smtp-Source: AGHT+IFaVPmcRIepO8mSzmP9PzGXjZwSc4TayWxRM79v7g/HByE5zJt50D0eHv9Uu2pV8a3THcTTMA==
X-Received: by 2002:a05:6602:3a84:b0:881:6cf9:b8df with SMTP id ca18e2360f4ac-886bd1baf78mr1747744339f.10.1756142475231;
        Mon, 25 Aug 2025 10:21:15 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-886e60c4737sm76275439f.26.2025.08.25.10.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:21:15 -0700 (PDT)
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
Subject: [PATCH v13 7/7] riscv: dts: spacemit: define regulator constraints
Date: Mon, 25 Aug 2025 12:20:56 -0500
Message-ID: <20250825172057.163883-8-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250825172057.163883-1-elder@riscstar.com>
References: <20250825172057.163883-1-elder@riscstar.com>
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


