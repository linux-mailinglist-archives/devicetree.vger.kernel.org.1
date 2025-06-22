Return-Path: <devicetree+bounces-188138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 75099AE2E39
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 05:30:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DE4D18951DC
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 03:30:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6535E14EC62;
	Sun, 22 Jun 2025 03:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0L9HA/Sg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972AD14AD2D
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 03:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562998; cv=none; b=ClXrf2Y92UZqSEFDRCooexbYY8MmiiCrIkp3cbuikiSCGvo5kVg9bwPkL0DfiG31H9Btb3lhJwUMGNhKdYvWWZVXX7kZ78CkB+TAUcCSnqJbod7dOptg6icAzM+1aKHTVH90qG4vbN814k8PnckQL/jNgS1hdjPRy35YcRkw+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562998; c=relaxed/simple;
	bh=WGruvn+Gqs/wHzBEiTs0RVm377PpbfSqb1Lgjf4ooI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jdFRleVgj86MVdJwq7mj4QO1MNmWAriaVqbzmhIQinMlAMHe9FgWFOajvowGUTAPUJU63whcJskXTrqW0q+8T38qumQUli56YbWHn3UpoAHl3POW+1yqcWrh5AZehFva464Ugi9YALLEBwtAbzQ2fKW4SvXyODw9Oigh+CJiv7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0L9HA/Sg; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6fafaa60889so19197736d6.3
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 20:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750562995; x=1751167795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=0L9HA/Sgi1R7Uge9B0xCOBTHvlm+f4IrgpAgCiRUJLMhkHehI8vad+iSN4qqNXBFKt
         OMTsVV/t/P+J1zXJhsX9cxq4wTf4eTtLcgCcUMy5mdSKxmGgCQTe6YMMJgvn4ZXAAJ/i
         AMwhAWsQ5mjyLqjeSntb9qyu538RoXakvn6PJTN3gbW6iCMlg2zwFct9b/51XHKeuauL
         of04uH9wSnvF5rfb6Eamgpw01rI0Sik0l/K03oxKiYJfpCrEYeX8txEQHVFoDyvzdiyO
         TcAEaqVmNzenA9E+7IiXfGRJFnJ9O8XlT7CF6TwzDv1Tml1cC3yEUo5BZO9yQSB5oWiD
         ORwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750562995; x=1751167795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=did+hXwWRGK98ER/J22qtZc21plVs22urb8IAYV447EaAwQKxdHB6fYRF+HirbgT+Q
         NvLNOTWaMciKEkV4WjVQS7vQbdwXezl1xO0uxkMqOYt7ZIRjdNJJSGO04rNJ4IIOSzaI
         AZKBFgXfUUpKvB9Agqu323ozOwlYUXavIqUq16UElrtM1JMNUgwvbW2CC+GiM1dX+DsC
         LDK335Yy7InjcdvKAf7PAK4IJSuQMwmOVg3kO7f2XBdpgfciM6Hjd8+9vaPEWaSN7Dta
         /4r7HPaVqNsVXhZ6RCPDLBuBssq2s/YMv6LT3i/RVomKWdfU+tgP/VIdv5XtO2LiJ23j
         k9xg==
X-Forwarded-Encrypted: i=1; AJvYcCUVxklY7g5j1FquYXgOpDpvIBupdMS5pa/qD/9Gzqx1EhRGAkxJjfWTdwqOTZ6f4zqF/i8uVaK2Fkbr@vger.kernel.org
X-Gm-Message-State: AOJu0YyLvii7/mS6g04Wd/ggNgTFWv/bAECjlB+N5QyOcYnRnMi38EIq
	oDpDd++GC57a0QVQYbzby1XAHuND0Dm7m7Ys0eHup9W26DQe6FXJ+VbsPN040EUzwiY=
X-Gm-Gg: ASbGncuPFiPTDdF5KBgaQQl0fCcphesWK/XNMyS5IhWk6Jt8d9SCz+UXeJ+U1iLwpWW
	Y+9uwm+cgsqAjJVyx/6bNFPDC83Fo4lH4InfOh04+NV7LQAaD3Ar10ZwHc8nrcKlt3/2iB1SDyP
	80npfXAL9slF8VTHJpW9CUgDubqc1IYFXCPQ8P9gcQ52EfBKBsoO6vEyGXMmiZ76bf304EtCiYc
	XqHV52adYbkSJbJtWCTSbgcZJPLbOyB6CgpWELD82y/g9ZolKqYcTp7MiBck6iRvw/5OzYutxDA
	6EeVGavGVY2fa/9b4UIacAC6rptZv3RT3A7F7gmf0c32NQoDFoVsv1NZu6E/m8IXjLfvBeUlseC
	hAIFpWl7uuTdoQTDnBkRragweaM2BImeqAgLYsduEAvY7fA==
X-Google-Smtp-Source: AGHT+IECbHxini7Bpk4pSil8XqWCldpFqGPbjiNx6S6FZjM9RIZ/M0w9L9+hwhK6KfptNTvkIzyZsA==
X-Received: by 2002:a05:6214:1c4d:b0:6fb:16a:da41 with SMTP id 6a1803df08f44-6fd0a31cd2fmr142653846d6.0.1750562995562;
        Sat, 21 Jun 2025 20:29:55 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd0945183dsm30014526d6.44.2025.06.21.20.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 20:29:55 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	alexandre.belloni@bootlin.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	wangruikang@iscas.ac.cn,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-rtc@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 7/7] riscv: dts: spacemit: define regulator constraints
Date: Sat, 21 Jun 2025 22:29:39 -0500
Message-ID: <20250622032941.3768912-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250622032941.3768912-1-elder@riscstar.com>
References: <20250622032941.3768912-1-elder@riscstar.com>
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


