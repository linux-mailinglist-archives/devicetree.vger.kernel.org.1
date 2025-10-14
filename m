Return-Path: <devicetree+bounces-226348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B33EBBD7490
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FF5E19A1C54
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78EDF30BBB0;
	Tue, 14 Oct 2025 04:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C8zd6X4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2B030BF7F
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416954; cv=none; b=MJ4Pyymm7VtrWNc6EjS+VJMV7xX7QoFpBPHjREPuHsP9YdUfOO5CI4lNvyAkFZKv6jbtIIOFKwm7R/8rxrNGah9m1tYIokzpOfHMN/Pk+9F0Wbtdicgg9mAvSOmUQ6CmNCzz2x8i5qOSzBKaXeX+RCEla6XsjhIVAJ6h4qVFc1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416954; c=relaxed/simple;
	bh=ZOeZWKOOWKCm2A4DyWN9TLg3TCjbyuF4ehcHyG+iQKY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gvCU18bpAE20C3b2GIpgh6+uHeuoowegHnK6u0pKGlb1vHboZUjcSTA61fueLgTDX3yewqIWGWqkBIodqIGOJpDiYnTtYqVwkj+OOthAqVL3gy0zTY7sRuKrFQxpmT3sJCjs+CKk756hs3niQecSF3ihBkPMZWzhzoQIVa1muK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C8zd6X4w; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-782a77b5ec7so4359522b3a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416952; x=1761021752; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qr0OOb/YSzzcrccKjN+O1ce21xTtHsXacPPXsNxVeZg=;
        b=C8zd6X4wfAgULf28ZjaEStgY0ocgWj8EIzAfV+AoGsguCrrRxdVGItVUqJJp9gR6Q8
         b2uqsAmhhTScsKdoBX11fQVjV0y+wPHG0aT2xgArT5Pcn5ShtG6pGz3bOS2rkIYb//eg
         9ltIwGsd715rqIGtNPDZVmBqVovn23Xdu5NBMVkkcUKnTL4HC6HR97Yz+f4xEsdTqzrT
         6xHanuNuqAPpbIYezIPEPq1k+mhs+rwBdb2Hpv7UWxE4g5nnPYPzWhS5iPcOhyXnAbz+
         CTVvIjztTy8bRom+9xvaDfUhDStR6EyXyJwQALhvdKhRKtq/lFNCcLK28xQAblV72d3P
         I17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416952; x=1761021752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qr0OOb/YSzzcrccKjN+O1ce21xTtHsXacPPXsNxVeZg=;
        b=skvqUMZyYUfhcchDJLaz7GXcfwJmHUJjm6yt303XeQnEedwX4RXjvuz0CDP6nP+Q4P
         FimI1iofh9w6R7BU+EcwkIh7JAt8K1ZEKiMhHKU81bXZnV2P13S4v0x5r9eA55JqYJJs
         nOQLdIE0Dta5ZO5soC716h0xVZtL6U4SOrxfSlJc2htgcOpQyvHUcPvKqFaiN7xm6LS1
         Ow7uDseOftbpWOIn79cAu1d+Q6slHOSHyZ8j3icTanTGEiDKuKYEUUvwnq98aQGO7n0f
         paimj45dTe/7M2e0KA1C9q/0+AlcnY41sfu6iwXzRnX2hZYtwdQlYxrQwORfFEpv42K1
         /Jww==
X-Forwarded-Encrypted: i=1; AJvYcCXXnVxC0SyodDiZxRajsEpDEYz2yHKPgTF55QxtzvyX6LWPvxcK8FC+prCYraWO/S/TLUUtWzzSNdVj@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2I5ocYj5Qb3RMobZ4jIMgdvQGUfgOwpPrM0w6n42Lpn2QOoc2
	jW/TqYW4BzbfGqwGgbVX9uQ6vkr3te7sB8I2X11zevfl6rXUE41mziRK
X-Gm-Gg: ASbGncuD8EqpZJMSYUBadAf3tYE2H5CEwsMmwS8ZNXzSib7TSiiwOTJRkU2cgfH4vuJ
	nNaFcPYGNCAsN4gJoPD+frCqyNfKr1fdxP/MgZr9YA2Ise2fdZG4cbeNHRajRNeoXrZyvMjEbD5
	YmmxrVA6Eptmjm2D2TRdIGWlfplwq5eHmRm9FtAC+5UawATYSOMktl/HDG6QO8aLjCEOLwqvQuc
	5xSJcfu9hoomShOMEHu0dqD3CJ8P5fK1ShPjRgflOMPnDKD30Q2pE89cmNRpEUhfbXoHeqoy5NS
	nzkJcyzoN9LCgCFEsOZnW0ylSvQdiibJ9NjkuvH3fqeE9sXq0vuzZR0/m0NbOxfEWnLwF7VKhki
	t4WMkXg29JfZEAkF5uzPiETaMpQqpdcLp+7m6
X-Google-Smtp-Source: AGHT+IEiczPDzcVKQsKr3sSM/MLNqusV/eS1JcWGMdi/R/+jLgzmhexRA+IU3VJwnNlXXtdTmYg0Mg==
X-Received: by 2002:a05:6a00:3cc5:b0:76e:885a:c332 with SMTP id d2e1a72fcca58-793881ed81bmr30446227b3a.32.1760416952199;
        Mon, 13 Oct 2025 21:42:32 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:31 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] arm64: dts: qcom: r0q: add gpio keys
Date: Tue, 14 Oct 2025 00:41:31 -0400
Message-ID: <20251014044135.177210-3-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
References: <20251014044135.177210-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add GPIO keys support to Samsung Galaxy S22 (r0q).

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index a17dcb848fc1..5ca45b040a99 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -2,11 +2,13 @@
 
 /dts-v1/;
 
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sm8450.dtsi"
 #include "pm8350.dtsi"
 #include "pm8350c.dtsi"
+#include "pmk8350.dtsi"
 
 / {
 	model = "Samsung Galaxy S22 5G";
@@ -28,6 +30,21 @@ framebuffer: framebuffer@b8000000 {
 		};
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+
+		pinctrl-0 = <&vol_up_n>;
+		pinctrl-names = "default";
+
+		key-vol-up {
+			label = "Volume Up";
+			linux,code = <KEY_VOLUMEUP>;
+			gpios = <&pm8350_gpios 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <15>;
+		};
+	};
+
 	reserved-memory {
 		/*
 		 * The bootloader will only keep display hardware enabled
@@ -124,6 +141,25 @@ vreg_l1c_1p8: ldo1 {
 	};
 };
 
+&pm8350_gpios {
+	vol_up_n: vol-up-n-state {
+		pins = "gpio6";
+		function = "normal";
+		power-source = <1>;
+		input-enable;
+	};
+};
+
+&pon_pwrkey {
+	status = "okay";
+};
+
+&pon_resin {
+	linux,code = <KEY_VOLUMEDOWN>;
+
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
 };
-- 
2.51.0


