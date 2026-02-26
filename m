Return-Path: <devicetree+bounces-268932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCxCOQVvoGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:04:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C081A9843
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F2BF31CDD70
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8874F423A76;
	Thu, 26 Feb 2026 15:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zimCZc4S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C653D7D8D
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120840; cv=none; b=jAcn/4VNq7hzQ23fOfCjrFAZo79kIc7tRCODXEE6HX7oOJ0DnR3RvAwyHOLuFf0byLsq1dk7wuGmiZANN0+qWeIQQVlV/rxylTqs94iR++IUKyRQpCxOYAEgiEQRwgMFYZ1Cf3Y9x/a3Idfl1j6LWGVOw0OqYV50EtaROjNRy7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120840; c=relaxed/simple;
	bh=dQXpAN5o0ehB/7L1Q7jEKxLStCp6A4gPujkB8f3PCYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=itcMjiabL6izmYbU01Xl5cr/EIse3k/uXaFkcz4MV88E3O7n17Yj9ncEQ2X0aNjy/aINTN8xNRFWD9RkUjPeHRLvuT3Yl2AqXJiBEs6uRBoWidMnBt0XX48M8KGJ4V8tQSVyIAYZMb42Y98ziZCXQWHDErhTQ/lcE3QJmYb0rs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zimCZc4S; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso9320815e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120835; x=1772725635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4JELgxsFHw+6nBu+y8vI4aNbSoxJuvNiKsH4U80RpQ=;
        b=zimCZc4SPC62n/V3U48fdokMPVI8hQTofyrdxERfH85tVEs6b+fvbfeZmiHhyY5tv5
         Jvo4WH4kL8IQh2z9EXZRG8shAQwXPpgk3mEXI+NtGPkAaipKmkGv3THvPpTH9+dMQU9m
         J0u9CRrlkPVwXHpz9/Lkg8prU/CKGftMx69KQxgJPgnxK1+jS3BiODnCx66FVDGenTcJ
         1sJOlopo4StocHER9u0QwuW8foiUF/x33bqKYR5/Hsto6pAbJa8vXxtMreaj/aEtEEZ9
         EYPodYIzDcB5stb++Kv0evwMS6od7EP92jahO47BBfeDdrcIqIiK+7d8phMrAoc85rfR
         +cpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120835; x=1772725635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w4JELgxsFHw+6nBu+y8vI4aNbSoxJuvNiKsH4U80RpQ=;
        b=GmpCxaWB0bvcre9+sdRhvV2OCcO8xFNitX/UtIg/lGU2XcjGbWh4pJX2yVVuA3Ksi7
         RUgghtelpszJJyZnDEk9Vi8SISxyfHJ2yrLHDPfoDwOwlGnM2iLGBPr8QiZU8YpNsqQ5
         n/iykA/J1LMeJA+rfW6/v1KUIEwAT4SqQElMtXezK5L1DMLEm3uHOcBYtH15Qhg7uXkp
         INC9kLXUQgz7qmRRRsueFYdczwNLHMrRewfizXJHonoTsI5G2XD3wUoFOvqutiPDPjjh
         /J/QsGm3Kl5LxrViSmjHVu0tLOsAWtdhPTudTQcXPFRVGdjYvnWviBVMmjxD6JMjF8u9
         or/g==
X-Forwarded-Encrypted: i=1; AJvYcCUiZv+d7qGR2y8gJNFtwtxpwL/b5vRIN6MYNfu8y4iIP8PzqQZ689ohO2InTSN9H/0qTWVOEsieEHjZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwwuSSoRAstaBLSJ5upUqxZAgxRuI2fNHPn+8GPzH5wUIAacnue
	sjFhTVHFWyNsxcAokz77cLF3r6aS+ms+cEU41PenMt1jqIwGiLtdXVm1Ka7pSNDAmVM=
X-Gm-Gg: ATEYQzwc/+qN+57jtWWRIf5tUbjKvBG4KD/Ujnf+Ui5lPCKFEoE7pRQq/D3CY9HKOHl
	0vWeLAYF70UE18BXmEqlL80Zt6wwoZIY5n9qEmA+f/raPSTqmq3pW5fACDpZO29X38/mhPPQOZg
	uC7V/P61fzA8zUrT1+0EGCSJP83U2N5OXzFLqTMtcQ4KE22QLnHj2NDVzUCpOkvlLDlZFgwZtxU
	f5DREUBXGbhzIqXadkgi0jjgBP06YVYwroRiJ4bh5lDiWdzrPU4Zf8ic5BdvtV4gGqRwj+lLuGA
	D6tUzp8k14cKDWRquSU2f4pYgyoKwmOFYRjpVMK8MXzlXqEGhUJzZS9/wDdu+gBpd3+jooqe5JQ
	BfeB+J0+klQfBtAQ4Yn/28IbGvH8wYsmOvbmF78+V0LUF9I1DvnOHG62nzk56wTF5Sgk3wz3/1t
	Mv+tqm4PC/NTA0JvY8nsrA+RcbCexvGP2e+Hhl0mwT1eUa6IvbprKPS5wjfy4BBgxhIbjTW1Mdd
	Px5YWSo7QxladT8jKW0U6cpFg==
X-Received: by 2002:a05:600c:3516:b0:480:2521:4d92 with SMTP id 5b1f17b1804b1-483a96377c9mr346111365e9.24.1772120835139;
        Thu, 26 Feb 2026 07:47:15 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:14 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:11 +0000
Subject: [PATCH RFC 5/8] soc: samsung: exynos-pmu: rename GS101_INTR_* regs
 to EXYNOS_INTR_*
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-5-71d7c4063382@linaro.org>
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268932-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 39C081A9843
X-Rspamd-Action: no action

The PMU interrupt generation block is not exclusive to gs101 SoCs and
is present on few Exynos-based platforms. Rename registers of this
hardware block prefixed with GS101_INTR to be prefixed with EXYNOS_INTR.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 drivers/soc/samsung/exynos-pmu.c            | 16 ++++++++--------
 include/linux/soc/samsung/exynos-regs-pmu.h | 10 +++++-----
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index d58376c38179..92870e6ffc1c 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -244,12 +244,12 @@ static int __gs101_cpu_pmu_online(unsigned int cpu)
 
 	mask = BIT(cpu);
 
-	regmap_update_bits(pmu_context->pmuintrgen, GS101_GRP2_INTR_BID_ENABLE,
+	regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
 			   mask, (0 << cpu));
 
-	regmap_read(pmu_context->pmuintrgen, GS101_GRP2_INTR_BID_UPEND, &reg);
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_UPEND, &reg);
 
-	regmap_write(pmu_context->pmuintrgen, GS101_GRP2_INTR_BID_CLEAR,
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_CLEAR,
 		     reg & mask);
 
 	return 0;
@@ -304,16 +304,16 @@ static int __gs101_cpu_pmu_offline(unsigned int cpu)
 		     CPU_INFORM_C2);
 
 	mask = BIT(cpu);
-	regmap_update_bits(pmu_context->pmuintrgen, GS101_GRP2_INTR_BID_ENABLE,
+	regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
 			   mask, BIT(cpu));
 
-	regmap_read(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_UPEND, &reg);
-	regmap_write(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_CLEAR,
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
 		     reg & mask);
 
 	mask = (BIT(cpu + 8));
-	regmap_read(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_UPEND, &reg);
-	regmap_write(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_CLEAR,
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
 		     reg & mask);
 
 	return 0;
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index db8a7ca81080..9c4d3da41dbf 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -1009,11 +1009,11 @@
 #define GS101_PHY_CTRL_UFS                      0x3ec8
 
 /* PMU INTR GEN */
-#define GS101_GRP1_INTR_BID_UPEND				(0x0108)
-#define GS101_GRP1_INTR_BID_CLEAR				(0x010c)
-#define GS101_GRP2_INTR_BID_ENABLE				(0x0200)
-#define GS101_GRP2_INTR_BID_UPEND				(0x0208)
-#define GS101_GRP2_INTR_BID_CLEAR				(0x020c)
+#define EXYNOS_GRP1_INTR_BID_UPEND				(0x0108)
+#define EXYNOS_GRP1_INTR_BID_CLEAR				(0x010c)
+#define EXYNOS_GRP2_INTR_BID_ENABLE				(0x0200)
+#define EXYNOS_GRP2_INTR_BID_UPEND				(0x0208)
+#define EXYNOS_GRP2_INTR_BID_CLEAR				(0x020c)
 
 /* exynosautov920 */
 #define EXYNOSAUTOV920_PHY_CTRL_USB20				(0x0710)

-- 
2.51.0


