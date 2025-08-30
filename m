Return-Path: <devicetree+bounces-210759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF2DB3CAFB
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 15:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B78B3582F24
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 13:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB94122069A;
	Sat, 30 Aug 2025 13:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KtvJeTSy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB93443AA4
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 13:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558837; cv=none; b=X7UrHfJJj92Y+ur9YZBw/MoOo67jYEUcEhd3BZRhnwj4i9tKhv9kTdFyGk9V4PdsmIhnRMbKWBcKbf5tb5Uku4YZplKj/vXjFzwPjFXMfAlsski71Ltgoh/cKTnuR3w6b0abFV93BeEuMLKDCZ2ApP5IUwwLDvGUF87pwC2z6ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558837; c=relaxed/simple;
	bh=clOSEf0iBHu/HIP6jAhiQe+ktKlQ4wBj67nUNQeBBmA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OiMyUz3g5U+NJDiJdKHCalVqEx+aqdpyhUsPQOTouWkTCWXFKLamia32kYO7zwtYDZA7RMzGKkcZ2J/fgCDM4tCeefQ9jLwRXGEwrMZLT22n4LnWTkfQgSEOSc6u6gxNWK319wn3JNI+eJrjLw00q6pelwtR3/wGC7kvctT0w6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KtvJeTSy; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3d12c5224abso181906f8f.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 06:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756558834; x=1757163634; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/69bjGXpeqGMKBhvShUxoOUtLb0LObprvpDl7AyygRQ=;
        b=KtvJeTSyI229MTXI27zpewf6cxMIdCraD0wpfrKNaObz1CeLt/lXgEgoHuUfhAU7iB
         BGN0jHHxDEcfkeCpCCeXj4SHOu9Gjanp5NggmfwOn28db+LLOsrFcHgP5V6Exl4DEcuZ
         h4+yfvenZ5kVYhDDei91Jx95MLJZ62YChsDgdhkQIjvgMCDfvkd9SncTjOUxQxY1wmqW
         ZuN/zJZ7nqXuIvuag0eXfWECVE/udyUHnricj/Yhny702ckpzcbTjOZMPcycqlm1+yu0
         xzCQZ2c2wX1kOT3wtcpt9EzcQk7jjupDrwWR6ksZvAa2xaQKsuSN6ihiE+BlpID2HhPH
         ZkzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756558834; x=1757163634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/69bjGXpeqGMKBhvShUxoOUtLb0LObprvpDl7AyygRQ=;
        b=Wv4qwNKF/a/00LA/+/KNYUYHLSw1xSwJoPgRdP5yZTPdIhvwlEQZ6UdS/jx5pzg54S
         akuxe7IbBgvyF8KW6p/pAaqkwK7U8yPsZ/xKYgl6uprYcIC9HiyJFkE+l/6mTja7M34B
         K9bPNEFDAhLVH/8UBZRdI4GP4+SBmg1wDhJQYXvS0kX88CtEv0SGulToMCcYR0yGVRXb
         PWtQxg+vJ/OIv3QbF/2e5OE/Ezoprjh+1Kwlyt15MkL9cKaNtTl/gMrMXKEkbgAIrzFJ
         CBCJIP4ab5bsggqVwN3tk6oE1gcz77hGwsO/FUczYkBXl4WCqIxKoOjxJ/8/oCxp+FHW
         87Cw==
X-Forwarded-Encrypted: i=1; AJvYcCXoDmajQxA7mWBRFwuWov4hSzaQc17t3+T4QQrPUbWw8BgJ1HV0o8TSxttE7WmN2IQ/sDDHW/6/FrGD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2FBLYSQvsjz6gXS/S5NYDkrFeDswz6mcdYLfLlCE/4hNvq430
	cAYbkUfzTJ4+EWgTKpGIPsTCLi6+3rnj2QNGS/5theNSVnpPcPyo/ds2SFoztY4+pZU=
X-Gm-Gg: ASbGncscVbeMJ5XohTxzyKAEiJ0gKLg6Ixkv8Og1UjaYCFzZYD4BS32S735Y3hOeoKC
	qZliOhVnP0XeV+CCq/CkAUQHDMOqOWU2sT5makbFuF2+FUTZqygasCRd1gAtVVH48TfC828KRbu
	M4apzTyfTESfE3jHXXrUNAPxmvhLANJpIHf2U19qUyyvq6NkFIufbzKzbO236IwvuMCjPHx69k4
	oIGKPnvwnJAbXUzidwqi54lWsbtZrUOYS+SuzOhDIEsBRCLAXKYV+OxJVMLsYakvvqP4inuZEbG
	/Mo3V41uYTxqidaQJBkQIFTIVNKmrZjbtyJ7vFXM7jLEsdg6nAGoJV8VeYrG6Gx+Pwi7dyvLOhl
	ls21bHx73fQOt4JRNFVx8ncDLSCAfgD+lpf8WKoGquvkY
X-Google-Smtp-Source: AGHT+IFg9xkUlMHAslNpawM+YFt8eJ0W8GbQp72lT0s+t6nZPJmdl0hs4HlQ1c8WmAKJlLV0uYA55A==
X-Received: by 2002:a5d:5850:0:b0:3a8:2f65:3751 with SMTP id ffacd0b85a97d-3d0644557demr1913213f8f.2.1756558833910;
        Sat, 30 Aug 2025 06:00:33 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34491a5asm7077534f8f.55.2025.08.30.06.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 06:00:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] rtc: s3c: Drop support for S3C2410
Date: Sat, 30 Aug 2025 15:00:26 +0200
Message-ID: <20250830130024.142815-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250830130024.142815-4-krzysztof.kozlowski@linaro.org>
References: <20250830130024.142815-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3462; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=clOSEf0iBHu/HIP6jAhiQe+ktKlQ4wBj67nUNQeBBmA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBosvXr27wQ4n1aLBJuOvHH9MFt9RucPXO0X+tZ9
 uTT2fVe6lGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLL16wAKCRDBN2bmhouD
 1xdIEACSrSSEZJrSlSg6gLk9id/2zDYd9syQHzZxWAvyXE+P2JhJzudUGTIWTbesskUt9mvQpzq
 4GrJmH5w+1DYMq5nb/F+z9IpASiKYty+26Q5mtErFB5tj8j8zLDX4ekbsoTlJGLPBfsmZdhG9B0
 PaLuZe1bQwykXpM8DEzHjuyveaYBZ6n5ArsEmcLhXmwZNq2jtcFSB1qPW4tXQlt7s9GIzkdkVMp
 gbhKmAv8feaJcZ5frO7I87CFH+e7b7Ps/4EhQ/XI0ilEtPWW9+ruOG38Hrg2xcTvtgNfP4pQzJs
 BSqMu0UVzplrltZE67YXs3GNsDp/D+AguZwFPcBncsnnNL75AhAr0xsLcKP/gKPD4LSgeh+z685
 DuTHrBiF2PraHVCBQ7CuYvoK5yhyjQfc/D/UeIk4922jbv2Xv1dJykweQjfW8oN1cUVO4eBQy63
 CXe0NATKrokGpG4IYWyHk8vlr77gm8WtT1OVaqx7Vvf6bbkPRq2k+AK63y1ZZYb97/ASoeKNJya
 U2HoMgVI4wuyZDP8bGeppOHibKLqJZKa6guxj8CWOa4A1VymNPcZKT6+RpLnlp/RAnpIuXOgCpG
 grR4nYKYkujqxAdCfc70x3XzSHYbpn/S1QX+kKpgfzJKoRoQwwcsf11CoOlvf7pcHEfrZmlf7Hd NVbDOF7muqV9IkA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C24xx family of SoCs was removed the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of remaining S3C24xx compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/rtc/rtc-s3c.c | 49 ++-----------------------------------------
 drivers/rtc/rtc-s3c.h |  3 ---
 2 files changed, 2 insertions(+), 50 deletions(-)

diff --git a/drivers/rtc/rtc-s3c.c b/drivers/rtc/rtc-s3c.c
index 79b2a16f15ad..291c0ccb0acd 100644
--- a/drivers/rtc/rtc-s3c.c
+++ b/drivers/rtc/rtc-s3c.c
@@ -331,7 +331,7 @@ static const struct rtc_class_ops s3c_rtcops = {
 	.alarm_irq_enable = s3c_rtc_setaie,
 };
 
-static void s3c24xx_rtc_enable(struct s3c_rtc *info)
+static void s3c6410_rtc_enable(struct s3c_rtc *info)
 {
 	unsigned int con, tmp;
 
@@ -361,19 +361,6 @@ static void s3c24xx_rtc_enable(struct s3c_rtc *info)
 	}
 }
 
-static void s3c24xx_rtc_disable(struct s3c_rtc *info)
-{
-	unsigned int con;
-
-	con = readw(info->base + S3C2410_RTCCON);
-	con &= ~S3C2410_RTCCON_RTCEN;
-	writew(con, info->base + S3C2410_RTCCON);
-
-	con = readb(info->base + S3C2410_TICNT);
-	con &= ~S3C2410_TICNT_ENABLE;
-	writeb(con, info->base + S3C2410_TICNT);
-}
-
 static void s3c6410_rtc_disable(struct s3c_rtc *info)
 {
 	unsigned int con;
@@ -538,53 +525,21 @@ static int s3c_rtc_resume(struct device *dev)
 #endif
 static SIMPLE_DEV_PM_OPS(s3c_rtc_pm_ops, s3c_rtc_suspend, s3c_rtc_resume);
 
-static void s3c24xx_rtc_irq(struct s3c_rtc *info, int mask)
-{
-	rtc_update_irq(info->rtc, 1, RTC_AF | RTC_IRQF);
-}
-
 static void s3c6410_rtc_irq(struct s3c_rtc *info, int mask)
 {
 	rtc_update_irq(info->rtc, 1, RTC_AF | RTC_IRQF);
 	writeb(mask, info->base + S3C2410_INTP);
 }
 
-static const struct s3c_rtc_data s3c2410_rtc_data = {
-	.irq_handler		= s3c24xx_rtc_irq,
-	.enable			= s3c24xx_rtc_enable,
-	.disable		= s3c24xx_rtc_disable,
-};
-
-static const struct s3c_rtc_data s3c2416_rtc_data = {
-	.irq_handler		= s3c24xx_rtc_irq,
-	.enable			= s3c24xx_rtc_enable,
-	.disable		= s3c24xx_rtc_disable,
-};
-
-static const struct s3c_rtc_data s3c2443_rtc_data = {
-	.irq_handler		= s3c24xx_rtc_irq,
-	.enable			= s3c24xx_rtc_enable,
-	.disable		= s3c24xx_rtc_disable,
-};
-
 static const struct s3c_rtc_data s3c6410_rtc_data = {
 	.needs_src_clk		= true,
 	.irq_handler		= s3c6410_rtc_irq,
-	.enable			= s3c24xx_rtc_enable,
+	.enable			= s3c6410_rtc_enable,
 	.disable		= s3c6410_rtc_disable,
 };
 
 static const __maybe_unused struct of_device_id s3c_rtc_dt_match[] = {
 	{
-		.compatible = "samsung,s3c2410-rtc",
-		.data = &s3c2410_rtc_data,
-	}, {
-		.compatible = "samsung,s3c2416-rtc",
-		.data = &s3c2416_rtc_data,
-	}, {
-		.compatible = "samsung,s3c2443-rtc",
-		.data = &s3c2443_rtc_data,
-	}, {
 		.compatible = "samsung,s3c6410-rtc",
 		.data = &s3c6410_rtc_data,
 	}, {
diff --git a/drivers/rtc/rtc-s3c.h b/drivers/rtc/rtc-s3c.h
index 44e9d6c9428f..11d7a1255ce4 100644
--- a/drivers/rtc/rtc-s3c.h
+++ b/drivers/rtc/rtc-s3c.h
@@ -21,9 +21,6 @@
 #define S3C2443_RTCCON_TICSEL	(1 << 4)
 #define S3C64XX_RTCCON_TICEN	(1 << 8)
 
-#define S3C2410_TICNT		S3C2410_RTCREG(0x44)
-#define S3C2410_TICNT_ENABLE	(1 << 7)
-
 #define S3C2410_RTCALM		S3C2410_RTCREG(0x50)
 #define S3C2410_RTCALM_ALMEN	(1 << 6)
 #define S3C2410_RTCALM_YEAREN	(1 << 5)
-- 
2.48.1


