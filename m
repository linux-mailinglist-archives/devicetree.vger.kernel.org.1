Return-Path: <devicetree+bounces-247323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECD1CC6F55
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:03:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 418203076DC4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53AD346E57;
	Wed, 17 Dec 2025 09:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bFdkvJ8V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jGHm4sB/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4F1346AF3
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765965128; cv=none; b=GRAWTcXn7le6oWqcGntHWKYUquPpMmc55pFA6OJLOUif9PQoa3HHapU8wmr+qnThXIc7cgtpIjaLqZWZEGF7ASUndeqjI6u1SK+p+XeKKC7wjFT+PP4OYxQjWB0umWJ13XNa6fI0/XzffcCjNtYdbd0J7/+XQu0eHIBe8BWNO50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765965128; c=relaxed/simple;
	bh=tfUVqfSUN7/loUc0Y2WZXc/4Aj4HFepsvMYbIp4rXe4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ohPapN60iJJhVEXa8QA4eM0rFjrGPVbEhNZTgbapB46Doqjz98G6v+RxtD2e7LbLdAiCmbOfIHrZ5PUtyptQ5rhTWdNsAqWeYN/cLM1qUnbX2rDO+oBe8XwohGSgjCIeZAhqZnJ/7rnC4wOKqMzjHS6ErKQV753nD9v+Esh1UoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bFdkvJ8V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jGHm4sB/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3F0dB2023770
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Ps9zzlmwajZdK6WVYvUFwmHm1zDHy3alwitBecy758=; b=bFdkvJ8V86WJnu+b
	7O1dd9CUY8wuek248dutRBEu5fpmHqABaPWNqT7DDNSNdsHCGP1h2FEYoNiNYYhH
	fC1BJsbfxCvxyi+gukYQRs0+95qq5uhsezsXcByHGXI8mD7qJoQ2NQrK6cMYMsww
	CrhFKyGVt/xG/qBhpjOjsqGZNURG7Xi5AAItMw0RKjpilnqRnFHJvlosTLYV7MuO
	uuUDFOtOT+GeVDg/Rczd+WfxbiwGuBi1whEM7nBV7rQsvPw5b93sM0Dq0bJRiLw8
	VHC8z4gXU+H0H6PDUH1SANEvFMpu1wgknZw1xbw789S2T8cU85xS1aztA20MMhpz
	kNFGYw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3j39hj19-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed782d4c7dso94482611cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765965125; x=1766569925; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Ps9zzlmwajZdK6WVYvUFwmHm1zDHy3alwitBecy758=;
        b=jGHm4sB/rDv68SGR0cOlnVq6nXT9bEphzgJSbxTzP76ljO6ua+vF4T35pYJA5v5NCA
         GhYiPJ7i4eWqhQsSWNKgwwc31QUhERiaxZjDS1jXzjHHA5mOeDqpqbNe9vBhyrb42Yr4
         ZS82Fyy18MCdIjBJpe95gjtgZZekAdGQcRhw5HHnT+l+YIUcCm9xYC590pK9/EQHx324
         7EZBunYJO7CRdEmJ/wcB49rj4emkAlbzbfe7bL6SJnRRYSAxUywuUY1U6d3N7+LwboHQ
         Tr8AG0j11FZP3aTKWPSD9FR5c5qu1/NHzcax4YGu1wRgl6j+55s4OBPPvDf6nfQe12db
         Z8zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765965125; x=1766569925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5Ps9zzlmwajZdK6WVYvUFwmHm1zDHy3alwitBecy758=;
        b=X4d4TiqPlBzN7+t9ScHOCEcm7/x/XRbwlcID9vGapv5F9IpY5xhxeWX6WOk8t4wYC6
         tc1uEcMP0u2qMtda7YqUyYLZSzlfHj5T2vw3ZU1lFyfpodhQ3m/2cZS4g4QFwk4TvnZI
         lyVmw/C3G1FJ4WJJzLXsJAZKQWYRGUgyYffuFU9G5vYXBnGdJ84FTAjE6M/F7s6SPZ/X
         NCElrR4+SythKrYJzdzXlHSKY2/6QVTDDJhr7KGyAE5TdhxN68Xj36g+wkvpEyG3HWvk
         xzw9w+uCbcgKV9Lys4o+K2Sep98/i8QV4zKRnAZ6uuPp36uLtjyS3YO6Esf2dQi4ocyL
         9zaA==
X-Forwarded-Encrypted: i=1; AJvYcCXgYaxzwEOHz4giupIvl1v8Dlf+mbOfKPsqKI5L6Z+rGmZTt9RxiWrJGtmwwahXMFQmINHuPho8TnlR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzotd5+9jeoFbKtXM6U6vdsX3WPhh9JNBQd/YMqFrcmWWLkO07
	YozqN8Q1wB2AuOrPyPjgVmrn71TRep3gI3MWhM7sklSR8w+IwGLWMtXjeG+UzG9A5zUF5idBmM9
	Pt3FefMJM4Khd1QHKDORe00NgNlltMZKkN+S+5uw4F6C2B5rLYcHIjzdbFVIIqnrotZYtFIu2
X-Gm-Gg: AY/fxX49dmYh0OwwIJj7/pyw/iLvOWplmOu2VstDWQo0V+nzi0i18WFQIQnLBsBzOau
	9y1kPS5+iMAx5Cxc4Dwj2fgZbQw+8YTRmZozr80UqS98dhtC09Zoe/X8dwz2DvHqStPUbiskilV
	NGuZLqsWB9HATYAl0JlWGqLBIXN+tyTYXKxU0D7WlAzY00njsGhFCx7+Lc9c8lmxYkY5CRHx62u
	WYih5gDHxK6C9WS6gzlvP60amD55xFQm+IC0ljrjbArwoLw6AnQZ2LaTOZE9Km65oZ+r3wHRxJy
	LW3L/bHtPdWWZoEwVQPayRVMcgAH6kfRYiPsAu4J7R+i+WBXZeHXF00SK3bLCJ6SPrxPU1LciDN
	uuzOPjc95aXmEZFiZqN3RXN3dLl4qbWdE
X-Received: by 2002:a05:622a:2443:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4f1d04bfe5fmr242556731cf.24.1765965124959;
        Wed, 17 Dec 2025 01:52:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE+3hMiRP+attklLgtgofiK57yoL5Ct382xF3L33kH87mVyl7+crPmgYIhkbQpPG7pV+dpESg==
X-Received: by 2002:a05:622a:2443:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4f1d04bfe5fmr242556561cf.24.1765965124521;
        Wed, 17 Dec 2025 01:52:04 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f5630easm1981969a12.22.2025.12.17.01.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:52:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 10:51:55 +0100
Subject: [PATCH v2 2/4] watchdog: s3c2410_wdt: Drop S3C2410 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-watchdog-s3c-cleanup-v2-2-79d8caf65ec3@oss.qualcomm.com>
References: <20251217-watchdog-s3c-cleanup-v2-0-79d8caf65ec3@oss.qualcomm.com>
In-Reply-To: <20251217-watchdog-s3c-cleanup-v2-0-79d8caf65ec3@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2896;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=tfUVqfSUN7/loUc0Y2WZXc/4Aj4HFepsvMYbIp4rXe4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQn08njWbvBo4bxgkg+4rCp+eaWZdetCYgwez4
 treNRcnbtyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUJ9PAAKCRDBN2bmhouD
 11A1D/4+bDgyvQQSOxP+Hj15yNATRPRad5DXeWoPM2D+tS6/0Rpv9Yc4KbVCS4adhcHgqhA9lRm
 +UcnY425ViAFzPCwFWGFE6kYPCBmpOI7VYQHxPmeC2egbN8GahfFVqgT1BtsTwxm13//rymFAKJ
 wnoCM5HS1OLhF7T8JDbL5qsL2jB+0J1FXSnZSgO5ICa8mxU5fX3nCp+Wh1O1NFHnOpxo3ujKm5w
 YRMj/b/dcekLaDDUn9nlm3v524UDYLOa4hj9sthCq7SRRjJRFp8aDZ9GesI4+RkEyn+AVumNz0x
 I23Jz8aCyCIuwFkGVZk4iOCfNwRfJVR8PBhpeIpuj4CWGlIeL+rZ5xjaYjkI4m9dNeCpt2fx2G3
 +9tK6dTzvukYgIRI9BqzYbkUAeKdYn1RXn2/4e+lo9BpAQe3PQbIV7c/fm+bSejhRin9qLx6I9G
 7/lrByx36rHradlyHcM7ZjCH2EKKZ2I9z76+ZUBAYKZBD05TrhNpKDwb+1u7nfKiqB7Umcy03lp
 eifr/o3mNtV/4bdZnpgRc5KU6RX8YsNdW/fBwOtKLUpwmMsQ+tiXDaBlEbZpXUHrgdJka7lwAab
 sDut9Pl8T8eYwMfmS/I+tXamqv1NXv/NJ7YIb8NIKSVVqqxwzO51lE+PbsR5yWObyQ526tP+Xmg
 j/hk5m2Xqvwp0gA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3OCBTYWx0ZWRfX+QyiIkXxdPC2
 Bl4xG/5QbTT3gLfVGpaj/YWbGboXyZcE6CyEBZw6Fh3QgkVuoeTTuSZcstu7iUtHc/k7NSVaGbj
 E2gH6j7v4c0pXLsup37iFObto6Ve/WGm0FXCFI0nzqvhAuCn7L9Zomh98WhHCzogGQr9IgXcaoH
 6aQxnwsqnYak1OS+Dpey/OxI3QIsPw2K53S0Z4q4pBkHZuSzg2WbEBd7SXWxL54cnekqRMLKIzS
 bQwWIDHxro554sk4Z+5vcqU9Gqe6OqjZ86TdW3kRvimszft4HtW2s0QM5d0Jma3Bh9M0CkqqXJH
 TsdzOdBgImWslwKEtG4bBLqQ28I5zi8gaLKVzxit7C3qdXzdQTj/Rklsz419u+JD19z8yWOYdUW
 Q6MnnRUOUdEUjB/BjHOXHLCZ69ONuw==
X-Proofpoint-ORIG-GUID: 7zTuH8aScGnEgR_eSojIKgSa0jTdgAte
X-Proofpoint-GUID: 7zTuH8aScGnEgR_eSojIKgSa0jTdgAte
X-Authority-Analysis: v=2.4 cv=ToXrRTXh c=1 sm=1 tr=0 ts=69427d45 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=_jlGtV7tAAAA:8 a=EUspDBNiAAAA:8
 a=SrvLU9wFeIYBZhyLgqUA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=nlm17XC03S6CtCLSeiRr:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170078

Samsung S3C2410 SoC was removed from Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of samsung,s3c2410-wdt compatible
and s3c2410-wdt platform device name, so drop both.  This leaves the
driver boundable only via compatibles, so drop any CONFIG_OF ifdefs.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/watchdog/s3c2410_wdt.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index b774477190b6..e31f93db0509 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -208,11 +208,6 @@ struct s3c2410_wdt {
 	u32 max_cnt;
 };
 
-static const struct s3c2410_wdt_variant drv_data_s3c2410 = {
-	.quirks = 0
-};
-
-#ifdef CONFIG_OF
 static const struct s3c2410_wdt_variant drv_data_s3c6410 = {
 	.quirks = QUIRK_HAS_WTCLRINT_REG,
 };
@@ -378,8 +373,6 @@ static const struct s3c2410_wdt_variant drv_data_exynosautov920_cl1 = {
 static const struct of_device_id s3c2410_wdt_match[] = {
 	{ .compatible = "google,gs101-wdt",
 	  .data = &drv_data_gs101_cl0 },
-	{ .compatible = "samsung,s3c2410-wdt",
-	  .data = &drv_data_s3c2410 },
 	{ .compatible = "samsung,s3c6410-wdt",
 	  .data = &drv_data_s3c6410 },
 	{ .compatible = "samsung,exynos5250-wdt",
@@ -399,16 +392,6 @@ static const struct of_device_id s3c2410_wdt_match[] = {
 	{},
 };
 MODULE_DEVICE_TABLE(of, s3c2410_wdt_match);
-#endif
-
-static const struct platform_device_id s3c2410_wdt_ids[] = {
-	{
-		.name = "s3c2410-wdt",
-		.driver_data = (unsigned long)&drv_data_s3c2410,
-	},
-	{}
-};
-MODULE_DEVICE_TABLE(platform, s3c2410_wdt_ids);
 
 /* functions */
 
@@ -720,7 +703,6 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 			   platform_get_device_id(pdev)->driver_data;
 	}
 
-#ifdef CONFIG_OF
 	/* Choose Exynos850/ExynosAutov9 driver data w.r.t. cluster index */
 	if (variant == &drv_data_exynos850_cl0 ||
 	    variant == &drv_data_exynosautov9_cl0 ||
@@ -756,7 +738,6 @@ s3c2410_get_wdt_drv_data(struct platform_device *pdev, struct s3c2410_wdt *wdt)
 			return dev_err_probe(dev, -EINVAL, "wrong cluster index: %u\n", index);
 		}
 	}
-#endif
 
 	wdt->drv_data = variant;
 	return 0;
@@ -949,11 +930,10 @@ static DEFINE_SIMPLE_DEV_PM_OPS(s3c2410wdt_pm_ops,
 static struct platform_driver s3c2410wdt_driver = {
 	.probe		= s3c2410wdt_probe,
 	.shutdown	= s3c2410wdt_shutdown,
-	.id_table	= s3c2410_wdt_ids,
 	.driver		= {
 		.name	= "s3c2410-wdt",
 		.pm	= pm_sleep_ptr(&s3c2410wdt_pm_ops),
-		.of_match_table	= of_match_ptr(s3c2410_wdt_match),
+		.of_match_table	= s3c2410_wdt_match,
 	},
 };
 

-- 
2.51.0


