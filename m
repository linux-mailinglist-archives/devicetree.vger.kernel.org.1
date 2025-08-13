Return-Path: <devicetree+bounces-204047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F1B23E67
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 04:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF57D6289BD
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 02:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D13B21ABD7;
	Wed, 13 Aug 2025 02:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="MyKWcV3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9821F2163BD
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 02:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755053129; cv=none; b=CkDIRhQ2ZDj8nJM/CYmuECfDHd0/wJ/ZfVhh08ku0EiKvz1PTt5gkYmWcOFathi6czCtKffB6mwuI5VUbTM/5uoUIXrPeK4yjMtygC/MOmpJPlMUgWZxgxZ23DVpk9M4N4XLZXK7I6DleIqTxSCOcLuwW+8d24mYcZqMMSKBVHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755053129; c=relaxed/simple;
	bh=D00Agu9o5lMwHglRF8JEmN9Mz2SwGM8gIpQ2brQAJHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZYy6ts6pKMku0Uusvsb9Dwws+K+UyiuVbW3r+2eUI3pWgvEHYx/yZGUKbhjN/HRFP/7mkCxpCLxEKvbbHIGNX8Tn8EEDJrunBeaMuk7aaYoJUdjp/U2L+xFIjD64J4KgpQ7JYT6RTAgZuGTj2iM3f1RYgJoAhSoVAXRpIMG45GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=MyKWcV3Z; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-3e3f152700fso31014965ab.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 19:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755053127; x=1755657927; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=MyKWcV3Z0g4HxbJYAQ796VKO0GuPmAXSO0Cjt4wEzjCOhkePS31NTCLtaVsvMqfrgz
         6pCXJMBTjtN1+TkyFgt8yDEK5jLOQ8fcw7lMoVaFYWAAAKsO1JloKJB5nNcza2JR97HD
         sTF0WKz0Nu6rltjPPhVlWhOKqF4pcqgzyrN8J8cx9ZMQiq3BcUi6KDdM5EtbCx/clucM
         eaSjyJdUHygYpvrIfcnVhE4PkpaZP51X90kVxkGm5qHeG7vE+BqqsCgmaVIqizq7N8Tw
         Faj8gSIu/Ju6rmQLxqA+g+ENh5UQwjcs53exVYiixG6m0YA1k0/aaw7+Y5lBzZK1nOXZ
         0OmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755053127; x=1755657927;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RmHcfUIrXFFWAxyqlPf+YQqXo4C+Q0QbA66Hg5xFlzs=;
        b=YZtUH2BcxY6l9XiQFad103Z/XRiG08avay+UzhIZSQW3p3QLJf0ubEUpHTiLpTAhJv
         aEP2vPj+MnwYObOCwDIF/UEtpePnHR3aaOVyl2iIU35sql7Kn1hWs2+t9hIwLZjnqAI9
         6mbdLTBJcYA0pCUGIiiZSzH67r2iNqpDgZeeaz2sRyJS1552GL9p/H2D4kT4GhVcZb4v
         fyrnZ5LROk+00qIIaFUWU/dl7JIxqcNl66U/ofCFe9FdIciilWVZTuU/wVY7LU364WNe
         2ewPHahGWXoLs57Ge7Wu7Mg+22LVrP7W+z+SwwD2mKD3ujhTi6crWk+HXVW7OjPsjKs6
         T9bA==
X-Forwarded-Encrypted: i=1; AJvYcCWevk/9+2OsU7w4D8lSCKwaTvRnfWhO23TvEXMpn/bcCpLlpp66TLb7OBNEsOWS+G55ck9/b0vkl3Mb@vger.kernel.org
X-Gm-Message-State: AOJu0YyRAaarV54CZECLnR55uL5w/m4OHD+rX+sH/pWGwNHUPASkdJa3
	tjlLZI3/NCAT4wt8BnUHxvzmySAsq8pgcb43pAEPZC+TMqCVbcc4HePV4NZlo3OQdTWld1Lpy8V
	bXQ8U
X-Gm-Gg: ASbGncvmNevYcrZWnJt5mOpKRJq421z9NPrBC8/qFg4jnCPa3lS3KpRWs5Ab93XCvPO
	oq8xE8/rPLA6qAArTC60iDI9fidmuDCvQJSb/1IO/eBm2o63yRjuPGBWEs6qqXJZJH3Y7cWtHcv
	0CqcRmI3vYQE6vbuVaQQrhxp0UHC0KJ60SNklivxXuh8kawvItOEUws3Ih4AIY1E5PZIJBYe8FY
	BVcYzyCVu7IkS4aZTUwbee1pkw4Evo986dvEdxBQaddmyMMsGl9/KOVVtWLC9Xdc/woPo66ZBby
	49gq+U5vZ5BXDGfoeHDhS+JKJ7xd+e0v0R71pZ4bEjdPs9ZVGMOy/mkOH/JbPch5FvE84pX2yLV
	s5qC/lit7jQbC8cWE87N5onsQ9fWEVSoL3V7ahYCAH2fF4zLXteskfWfvKHi4OWHsJg==
X-Google-Smtp-Source: AGHT+IFoJ7UdDYgWZatV5u4GKDu3Y3U3FYyZUg9TQH+UAQsNUabAIk5nOGAMecrX5f7XD0yGFSpmTg==
X-Received: by 2002:a05:6e02:170b:b0:3e5:504b:420c with SMTP id e9e14a558f8ab-3e5674a2d6amr25649635ab.18.1755053126723;
        Tue, 12 Aug 2025 19:45:26 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bcfbf6sm3430829173.54.2025.08.12.19.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 19:45:26 -0700 (PDT)
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
Subject: [PATCH v12 7/7] riscv: dts: spacemit: define regulator constraints
Date: Tue, 12 Aug 2025 21:45:08 -0500
Message-ID: <20250813024509.2325988-8-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250813024509.2325988-1-elder@riscstar.com>
References: <20250813024509.2325988-1-elder@riscstar.com>
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


