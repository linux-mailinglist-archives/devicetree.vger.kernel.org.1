Return-Path: <devicetree+bounces-37661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C0B845CBA
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF11329D19A
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC00715F33C;
	Thu,  1 Feb 2024 16:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jo52lV7E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E01F15A486
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 16:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706803999; cv=none; b=WgT0Kz4hpFuTplOupGhsRVgmaTO42OC8SUI5yCOkcYTgJJYj10rTBpx1MR8dzON6m7rhYRM5xp792AeBjkfBITPuyVK+g6De0oD8wDuHVZkvmuK8IlCxKp+rqSxRWN5e+uJvuT7IivoTLj/oYr2+IoGyJZS8dDzKUnsU++FrLIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706803999; c=relaxed/simple;
	bh=2FLyLSMxouej+8orm8pfQuuanEcEjePQYiFIIWFUSo4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cxKxR2QSSvqAQNKGt1AUgh0AFtbfRFizVBrxpHi82LVtJcvRLRUPWVymbTM/Nk7nkUDb1PoBw+qE7bcC9IMAZVJf9wwSoY1xrxzxZZuLbGv6oWYHOIC2ZVfmyAUBtWx+5PHAvFZL7ioqvZr3/Z/fFePthzsBLJYtbz2+PyyH3YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jo52lV7E; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55f2b0c5ae9so1452822a12.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 08:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706803995; x=1707408795; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6fevGXd4BI2moq50653412xOu8d51z/JG91u6Lfu1FI=;
        b=jo52lV7EjWHoD0CYBioZkYywofybp7RjJvtYdZIjKJpg2Lub0SQMkP7lskces+emd6
         A271Y1SFlm/x0cG/CBRfUcYmFq77+23ln/4zefOdMqy7gVmzdxjkG6m++w8yWhU69V0N
         +WHy28Lw2GMzBuDqIaV500D2dh4ZJarIBu0nIPAy39BfLQApGyyfzCQyr2tUFUnGBImy
         WhwucGU7RFajUlqLBbPCltpKepiIsNRt7mQ9u6uPcWZwma13Zq3ejjEuOwhCqw4YSfxS
         zi0veu6fxm4cd0u2peRJUeuu/ApBZQ81XNvXbYzk8naa8dFlwbGrOwnu/MjSdHV/pDm8
         wA0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706803995; x=1707408795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fevGXd4BI2moq50653412xOu8d51z/JG91u6Lfu1FI=;
        b=b5Ffktxvb6AW2u/FPiRkw/jiwW5+PccNJGzSXpzo+dP+7pEAz70SKnwmxx1pB8elTn
         HVvsxwzEPoJtgpkcW1I2kkLQRc7wHvGHi0qJk8EA/ZfQ1O1+I3Oa6UK1XePRejAGkzK8
         wxBDaVqt2qL+10iXPBeOX6DviJz9aY0wXusFW951LSOhdJgIEo0FkCa0/U53qVJaDGbq
         poX0caQfOQ+CKD1DUsSDzrGF5IHlKhXPe8888f7gKzb255s7+b7/0Lh1JVhRgM7TAnUM
         HB88SkZk2Pud+wXu+ixeDdlh9kpvrwuzVqmhi7rRnr5lokxRJMsv77s55OMLbSvlUKpQ
         Zeow==
X-Gm-Message-State: AOJu0YxSVgzhMOPb3gnIcjc/mtY9Wuvki1/fZAlsI343cxreCpusI37Y
	3wEadL+NDChIR3UWjaLr2UbkEHmxcmsUiqKJW+0p7LmV6XQcg53KYlgZpRFYULE=
X-Google-Smtp-Source: AGHT+IFhguAAclKiCco3fTM0sMYbI4pIplRkK1mebkhTq/cDb502YVYUsPkO5B4sHMqbRZc9IMlAvQ==
X-Received: by 2002:a17:906:3bdb:b0:a28:c5dc:4802 with SMTP id v27-20020a1709063bdb00b00a28c5dc4802mr4232485ejf.31.1706803995513;
        Thu, 01 Feb 2024 08:13:15 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXgXwPBpLUULH/EFtlJUUDVpxeUuu9ta39bfZsGelmXsPC+kz1N6I0M1kt39vtMHwxsH3jItgc88CdUtbdWXZEUWVKPAD8IqwdFSrKjAQ/9QJZHy9R+pyfJ+6olLx3VMvNqa/XtFcfNVMNXlVusvxqjHxMadll6Og3/J1tdq0Re1iLBL+JtemX2g9DWue86SBRCFLH8nS/b1uhazP/F3OlQg+57tLywDmQUKVvfDjXln1SWvx3yvFlidPBjumEAqFdnvA4WFzvNkh65etjdRQl42l6KokmQGryBhkCK4vL6XoNDtL2ebw5bVm6AdloXI2MqJxGBaVSfLLbmiA88WXoq9Td7JNY7TCx064N1vVOYca2Y8XeIMhJU4pUaWl4/cqT5rHWepz1jzCjpHjwItYUYE7hO0pXBw5DGFVEeNlBzIGakd8NeeRfBiQr1BH1NSBP2GU3xkQuIMHnh+io2scCvGMvnkahi+T0+J2uTgvPxkgIGuzopMOs1yDpAa1TvV5rN/NMgSh+v9YAdmIr75yhgm82sHoZqIuAyeq7u8WW/sRSmvxH7kPwauodjPf3Op/IzQxtOZyqC1HLKrQHDv4lOVB89K37UklnOwFJo8G2qWMvDIXexkBO6sbu6rO1OqWT3Ktj6SLbPOV7/+fsQgfO85Fj5UzWEv1//qbJCRsvdSaN4DcKKKA==
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id hw18-20020a170907a0d200b00a3600d7c2fbsm3449288ejc.176.2024.02.01.08.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 08:13:14 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 7/7] arm64: dts: exynos: gs101: enable i2c bus 12 on gs101-oriole
Date: Thu,  1 Feb 2024 16:11:43 +0000
Message-ID: <20240201161258.1013664-8-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240201161258.1013664-1-andre.draszik@linaro.org>
References: <20240201161258.1013664-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This bus has three USB-related devices attached to it:
    0x25: Maxim 77759 Type-C port controller
    0x35: Maxim 20339EWB Surge protection IC
    0x36: Maxim 77759 Fuel gauge
    0x57: NXP PCA9468 Battery charger
    0x66: Maxim 77759 PMIC
    0x69: Maxim 77759 Charger
where the Maxim 77759 has multiple i2c slave addresses.

These don't have (upstream) Linux drivers yet, but nevertheless we can
enable the bus so as to allow working on them (and to make i2cdetect /
i2cdump / etc. work).

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

---
v3: collect Reviewed-by: tags

v2:
* add short summary of devices attached to this bus & add TODO
* collect Reviewed-by: tags
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index cb4d17339b6b..6ccade2c8cb4 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -72,6 +72,11 @@ eeprom: eeprom@50 {
 	};
 };
 
+&hsi2c_12 {
+	status = "okay";
+	/* TODO: add the devices once drivers exist */
+};
+
 &pinctrl_far_alive {
 	key_voldown: key-voldown-pins {
 		samsung,pins = "gpa7-3";
@@ -113,6 +118,11 @@ &usi8 {
 	status = "okay";
 };
 
+&usi12 {
+	samsung,mode = <USI_V2_I2C>;
+	status = "okay";
+};
+
 &watchdog_cl0 {
 	timeout-sec = <30>;
 	status = "okay";
-- 
2.43.0.594.gd9cf4e227d-goog


