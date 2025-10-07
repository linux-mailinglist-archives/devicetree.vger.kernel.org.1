Return-Path: <devicetree+bounces-224159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7406ABC12B5
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 13:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E8393E1612
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 11:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CB02DA767;
	Tue,  7 Oct 2025 11:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mUFUxkSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DCF2DA76C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 11:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759835879; cv=none; b=HtaugC5oUxbGqpJ14FZY0+2EvugagYfb78tkW+dwV6uNFsEbtxo0j6WHevd9gjUcbogqf+AqZTj85hvIQaoQlMVkSWexjrT2F+KOzwc3WUQU9HCNhWIuUkcvZ65K0rxsN2a5uHHRw5ZIgenE+tTKy2/kedHehWFJJd1uS7P/LXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759835879; c=relaxed/simple;
	bh=DV+93RqA20zYsiZVil2ilvoMWgypauFCp2tp4wJbtLo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BTXEVznxqEfAlMERyYWOPCVihiMQ0yZZuF293IeqVZs/9Tz4nGedVdyolTARaBqWP88RThE/lqQ2S8wazBUS8h9ObQZSzFyghSdT4b4wX9EjuCx+k50P8VrkzvneTfBeIDvyPUw4EcxUupAdJg9DFH7wxRWO4u+PPibeRJPX0Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mUFUxkSq; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b5f2c1a7e48so4164204a12.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 04:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759835877; x=1760440677; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yg5EzbqpAhrvR1YouHoLR93Qim7L8FFl5LtkM7LFT7g=;
        b=mUFUxkSqbSQEfXHlUsLbFkpFN8+XU8CW4GlZ37fbIHB6iLr8aVOdUYLI9SEiZu8WSd
         Y+AHyERc8kaO2WLCNKplotSNN+FhDTpsoallFUf5EY4PBQu+PRhsAWJQQoJBrt+XGhGx
         XTJAvzY2tJiVgoqUex9zRPKAeSOPdAKB1UZJaGfzm9l6PJMjFI8JORgRhBaXbUOC3PJZ
         8QqbtMVq4Wm0L24jVBf3qZjJ0dgCHuWsn8PHceYjKRsluLphzmkknXF3vzfLhlQd8yqR
         5KCNm77rTc8YhwuNuuVil1CPpzwGqH8msXiRC8lHbyM+THdujOjOYxYRMSKnlLDFvc97
         9JXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759835877; x=1760440677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yg5EzbqpAhrvR1YouHoLR93Qim7L8FFl5LtkM7LFT7g=;
        b=Yo6dcJKpqyErciYjds6DCoZBseFz0KiBFzy8KlNgiD5ZEKwkgc03W2i9vz0QJ9TdS2
         kOArnXBxwz8+JX/MVitXkRfLahhUpPZnK0uLAcgfMverlYkWJbV1mR60jbFG5uyDTho2
         Z6DQN7LjLWnDwlzBcPIKeMZxuk9H89zmNGzEJNNjhMK8z+9a8AzRlxORGLywmHPC2X3v
         AL82flAA8OmQvNBqr5OqbckzqbWKrm8WPLKhaG8wpbtrFi5BeMMsHj1krGy+h196Ts59
         9znxojDfQ5mFajoqN6AaOH20DRlIJxPUydwPA1O7lKkQbpgAjxvASRrmkxfR7ifCJ7mo
         LBCg==
X-Forwarded-Encrypted: i=1; AJvYcCXDxlyJfDIPh2YWvRPc5gYq5iuoEcXBrWVchPcIj+xM7h8yD3g+EXN57b/NnY54QS7xfOAom5wMGYyT@vger.kernel.org
X-Gm-Message-State: AOJu0YwU9Kd91GaPlZndNB6o4taJowE2Vb1zjxrJABvEd2NvTAYKRtAV
	pczjUk5cIqwieUBm6D/rII8Mucpx3w8smrMjlbwLc+RucJXwR1AnuEYW
X-Gm-Gg: ASbGncv+AhBRr4qkkVYxT4dPC+lhH3bQrTcbUi9McDX1IL/lu+XXIR4KafTKfPYQcW8
	HdjD0qdjSURC32UJVY7lVW0zSthIRQNuCU/vEnR7mxDS9bTQDULP3ypjO0u/SA1FEEZvrUAbM5N
	6lIH9qBPwnvo1bdq8Qw9kSV6hGA3NejbPxnR55JHWkYB68GOas6Gg9e0euHOlN9vX3zlo/6K6wY
	YZdIW+dNux5npB1e8jDW8kZmF7KoIjrjvKFasTUg1iNLNF0Qc/XCTXAGJYCzsPLIdsWmdWMutlR
	21BhwKSqTxmeD1SC5AQtYjgq3VNw9C6Pc+fwFtra0szmHCItPJMFaQ9CtIF4Ssjlo9DliIDzqks
	xgJJJSs4G+5ou/0KNPUC64vFAIO9VUjaBiPe3T8jF1jQNQQRsmHgdzp0VrYKg2UcPMAjYvZyh+G
	3kgD6SkCFLXlOD7r83+AhFmj4zg/29WL9y342iALFOMQ==
X-Google-Smtp-Source: AGHT+IFRXYX/j0MXYIPWCiTWR10pwTbuC3G1F7eZBn2sHdq/jwsyEH4FFhVQSAeDU8eQ2ogOkSv1Jw==
X-Received: by 2002:a17:903:1103:b0:262:661d:eb1d with SMTP id d9443c01a7336-28e9a5cdcf2mr198695115ad.1.1759835876672;
        Tue, 07 Oct 2025 04:17:56 -0700 (PDT)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1d31bdsm162509045ad.94.2025.10.07.04.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 04:17:56 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 07 Oct 2025 21:16:46 +1000
Subject: [PATCH v3 05/13] mfd: macsmc: add new __SMC_KEY macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-macsmc-subdevs-v3-5-d7d3bfd7ae02@gmail.com>
References: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
In-Reply-To: <20251007-macsmc-subdevs-v3-0-d7d3bfd7ae02@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=876;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=DV+93RqA20zYsiZVil2ilvoMWgypauFCp2tp4wJbtLo=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDBlPvm3tcZkTMG3aVOZXVXxrFpwS+56WuPRU0ayerHnnf
 S/v287m11HKwiDGxSArpsiyoUnIY7YR281+kcq9MHNYmUCGMHBxCsBEwl0ZGf6qs+5+wnVo5xOL
 A7YzpstdY3508FK26vvLGpci7afbLF/P8D982frPV3QKvQ49zZfh5tEvMbh03DUz4Z/8M4mWRZv
 2XOEFAA==
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

When using the _SMC_KEY macro in switch/case statements, GCC 15.2.1 errors
out with 'case label does not reduce to an integer constant'. Introduce
a new __SMC_KEY macro that can be used instead.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/linux/mfd/macsmc.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mfd/macsmc.h b/include/linux/mfd/macsmc.h
index 6b13f01a8592..f6f80c33b5cf 100644
--- a/include/linux/mfd/macsmc.h
+++ b/include/linux/mfd/macsmc.h
@@ -41,6 +41,7 @@ typedef u32 smc_key;
  */
 #define SMC_KEY(s) (smc_key)(_SMC_KEY(#s))
 #define _SMC_KEY(s) (((s)[0] << 24) | ((s)[1] << 16) | ((s)[2] << 8) | (s)[3])
+#define __SMC_KEY(a, b, c, d) (((u32)(a) << 24) | ((u32)(b) << 16) | ((u32)(c) << 8) | ((u32)(d)))
 
 #define APPLE_SMC_READABLE BIT(7)
 #define APPLE_SMC_WRITABLE BIT(6)

-- 
2.51.0


