Return-Path: <devicetree+bounces-225007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62628BC988A
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BDFC1A60C1E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BFE2EB875;
	Thu,  9 Oct 2025 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="gF7oubbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D3C2EA168
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020530; cv=none; b=bo6K58696QMQQZV/rN+bIIi1MMDPg90IDgNesFdhdCiYDwANnLssMcVM8JYnqoI69MwNED7Vvz3UFlRiYgo9L9n//oNpoJzS1sskOxDVS75a/CzY7RCUTAxXpaQx075hVc0iXaruB3g931kJ/b5/a/Jkdthr4V0jY5Pd0iez7SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020530; c=relaxed/simple;
	bh=zFAV7C6HOiSLgAt+J5kOIL2+5hrR7jxRpEnz3gcGgEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E5PMTrpaYBR2zdSx9NToO8XZh9F3PggmWwuxhZieSfzNQ2VGKxAc2JaWzsgWwGY/v7mR+byybUlVIyS3CEMbjVY50GZY5UmYkedkRs2GX16F7QuS3nNM1rY19zCLRYg+1iLLdKlyrqsUSj3xteVQOqkjJD4MeTt+rLfXn3/MgG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=gF7oubbO; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-62fc28843ecso1486551a12.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760020526; x=1760625326; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1L6kSB6WPa1m/EDbSGocETHDW+ojiTh43qomBSeQcXY=;
        b=gF7oubbOBPnX+JGKuJ1WhV8xY6vaWtoa/Qv1Du5dueCCWPZiOpH8k4yWKmhCo7kxRN
         EdpDfHzwh/bJ1XXxZ/YhlLXtPKweAfhc2vZ3aC0VXBbwZN7V63O3NfpwewjN8nuHWJFG
         QRZF1MgxiU/Yhhg1ZqPi+eUX+rBMhRlKCOE8+TAr+E6R/lAOpppKqiYS4BDcpDHo9iCO
         pzSFKLwCnzaerFL6al7M/LQ52Ljk6ER0MnFDe81950KUOManAueomzJHxzQPHj4Wui5Y
         dymQx/4nL75ZJNSq6TV2mM4cT2HxwRb5KuGoi9rqM9CYThnkkER5SqKku6rx3kYbzxY4
         TLDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020526; x=1760625326;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1L6kSB6WPa1m/EDbSGocETHDW+ojiTh43qomBSeQcXY=;
        b=VA1WRUV5QI5dIFFZytSVNXeG+6xUqsnfsuBHYv/5HC8JksyKHBuDSWr9FGJe2yGLe5
         xYTjll5ZiPV3BoJONDYkVtq57kE51mrf34FQ3Jsjag6kj+2iYZnv/43RebtiFMAtaSpQ
         0HGByZkea1v50FlndBI9oKpvhbo8oepgrgvM/ynA4L8VVa/E58GnhF3yP0UQqmgNUF4J
         mtWJI+Jf76tvwzy9zw8WDWeMd5ORBsrQxWJjSwNvOGm+GOnrtwIX+pnOBE+/2Asb3qfA
         Q+9KNTAyLbF3KXbNU8TQydA77QlcpC2s6VdSjS4Bf66SVHJfLWKGsLisec5QI4kGy1aR
         jf1g==
X-Forwarded-Encrypted: i=1; AJvYcCUiryHu1D8DNn3w8CcpY2rt851xs8sw77cYvDVQrN4F7PJRJMHYP9KW/oSr3Z6vQDZMjc83X6gfdRQL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3h/5rk/U+u7SfRezLr/hVIw5WDez/mfs+TD5ofW0GtjHCk/fb
	187oxS7gNfr7WksvunLF3RfPUlz25Pq9xvdun7zJda2AS0nSUxEyjQ0egsflJRFThs8=
X-Gm-Gg: ASbGncs/97LSKBsu7mGMXZIOCqgDHX+1rct+4UmGSr8gduIueMrtiAtxwkRuR/jaa6c
	hj+UwpJyOJkmEkSlMuN82KLU81aiDuZfTqvN+D0d775PGSFLs1UaewWeqy2ReRg1ulb0kt02gDI
	i9wywFifMGA5aP6k38uwZ4R4yjAduX2p/VTNOqRVJKAYu48tqy2UD/xqArmf0qM0ERW1rVvcTHy
	3YfBof4+seiXPSWeIJTslRroOGRtKHkt0G4VcFy4oPHh+tgLRdjetTkDM/zR/U+uTH7Y0Q7sqfy
	48h1zygUTxs7MDDyzdRU0zduHB1TYKKu8TcNiKaUPi6ZKBfGtXmACMooGZ/JVjWaXe93dv8Ex+I
	Xf/123B0c2LcR8ftWo6weQEwEpV1FCf5YNpNlvjZbZyVGSu4bfrRIfl8+wQSSCdn6EgZuRXC8Fj
	35Mfg9dgTY4cmj4x4JgA6tg4rxSMKxbnt+xV3NtsU=
X-Google-Smtp-Source: AGHT+IHyxb27ncBLKPFMzYBytYf8JdFFzBjcq0eQ234clNgQbqS+rM5m2Q/04U20l7Jzr5p1a/bdHw==
X-Received: by 2002:a17:907:c27:b0:b3e:256:8332 with SMTP id a640c23a62f3a-b50ac6d378amr918608366b.54.1760020525656;
        Thu, 09 Oct 2025 07:35:25 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606dc84sm1885797166b.45.2025.10.09.07.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:35:25 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 16:35:08 +0200
Subject: [PATCH v2 2/4] media: i2c: dw9719: Add DW9800K support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-dw9800-driver-v2-2-3c33ccd1d741@fairphone.com>
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
In-Reply-To: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760020524; l=2755;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=zFAV7C6HOiSLgAt+J5kOIL2+5hrR7jxRpEnz3gcGgEk=;
 b=++B3Hg6F2Jx1mjZN7drCLj6rjYz3YZYQxAKK5x//96hcAgUDnhNv/m+Bkp8NpoJZ1aTZ6pknB
 aeYBdkBaBEeDjSu0k2CA5tQ+yUbRQLyd8w0DcZ13jxv3o3F0mo02kph
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

The DW9800K is a similar part to the DW9719. The method for operation is
the same as the DW9719, but the register set is different. Add support
for this part to the existing dw9719 driver.

Tested on the Fairphone 5 smartphone.

Tested-by: Luca Weiss <luca.weiss@fairphone.com>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/media/i2c/dw9719.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/dw9719.c b/drivers/media/i2c/dw9719.c
index 3627e78b8b6668933c4ecd92231465ce4105ff0c..fad716ece5ddcdc450669851b4b2685691b681bb 100644
--- a/drivers/media/i2c/dw9719.c
+++ b/drivers/media/i2c/dw9719.c
@@ -68,6 +68,9 @@
 #define DW9761_VCM_PRELOAD		CCI_REG8(8)
 #define DW9761_DEFAULT_VCM_PRELOAD	0x73
 
+#define DW9800K_DEFAULT_SAC		1
+#define DW9800K_MODE_SAC_SHIFT		6
+#define DW9800K_DEFAULT_VCM_FREQ		0x10
 
 #define to_dw9719_device(x) container_of(x, struct dw9719_device, sd)
 
@@ -75,6 +78,7 @@ enum dw9719_model {
 	DW9718S,
 	DW9719,
 	DW9761,
+	DW9800K,
 };
 
 struct dw9719_device {
@@ -130,11 +134,16 @@ static int dw9719_power_up(struct dw9719_device *dw9719, bool detect)
 	cci_write(dw9719->regmap, reg_pwr, DW9719_STANDBY, &ret);
 
 	if (detect) {
-		/* This model does not have an INFO register */
-		if (dw9719->model == DW9718S) {
+		/* These models do not have an INFO register */
+		switch (dw9719->model) {
+		case DW9718S:
 			dw9719->sac_mode = DW9718S_DEFAULT_SAC;
 			dw9719->vcm_freq = DW9718S_DEFAULT_VCM_FREQ;
 			goto props;
+		case DW9800K:
+			dw9719->sac_mode = DW9800K_DEFAULT_SAC;
+			dw9719->vcm_freq = DW9800K_DEFAULT_VCM_FREQ;
+			goto props;
 		}
 
 		ret = cci_read(dw9719->regmap, DW9719_INFO, &val, NULL);
@@ -177,6 +186,12 @@ static int dw9719_power_up(struct dw9719_device *dw9719, bool detect)
 	}
 
 	switch (dw9719->model) {
+	case DW9800K:
+		cci_write(dw9719->regmap, DW9719_CONTROL, DW9719_ENABLE_RINGING, &ret);
+		cci_write(dw9719->regmap, DW9719_MODE,
+			  dw9719->sac_mode << DW9800K_MODE_SAC_SHIFT, &ret);
+		cci_write(dw9719->regmap, DW9719_VCM_FREQ, dw9719->vcm_freq, &ret);
+		break;
 	case DW9718S:
 		/* Datasheet says [OCP/UVLO] should be disabled below 2.5V */
 		dw9719->sac_mode &= DW9718S_CONTROL_SAC_MASK;
@@ -426,6 +441,7 @@ static const struct of_device_id dw9719_of_table[] = {
 	{ .compatible = "dongwoon,dw9718s", .data = (const void *)DW9718S },
 	{ .compatible = "dongwoon,dw9719", .data = (const void *)DW9719 },
 	{ .compatible = "dongwoon,dw9761", .data = (const void *)DW9761 },
+	{ .compatible = "dongwoon,dw9800k", .data = (const void *)DW9800K },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, dw9719_of_table);

-- 
2.43.0


