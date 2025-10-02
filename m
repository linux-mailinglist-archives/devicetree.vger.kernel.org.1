Return-Path: <devicetree+bounces-223343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1ABB3950
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:16:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41F81168E6E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09D93309F03;
	Thu,  2 Oct 2025 10:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="fSGo9GlA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CF6308F39
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759400149; cv=none; b=jiPnVR8c3QeuZ1MuqqS5Sa2wCHkZzVng7G3DoCHrxYCBamgQCl55+YMgteVPuzh3wZaedRx0M/AVPI4xIJSv7S4Mp0PQLrT9V5FLI5L8B999UCHsiX5OLkMwwL6jmDVhNiRNKzTMbK3cCEScrHEuNFhSxP0MQAjgehpiJfvhzRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759400149; c=relaxed/simple;
	bh=4S0fonwtNaMiRsMJskKUXGgiupKPbZ1yq9y5vaUwWQ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q4hnQV/aoA9pgjKofC3Wl6oYdTq/sC8B9eUSP0hluXwpk7kcL3M3zWrUb6ylFe0NZoEt6UmNaE2Z8kdcYRY5PY0+381fZ19rBGIeE9j/3hVubn7AGXVS23GxOd1I2nff2dWnGr47XyBTjhznirRdAmsEhPtkUHpu9PEgoqDvlCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=fSGo9GlA; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so141525266b.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759400146; x=1760004946; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1OIQtBRu/WprhbP6faVFfcIfdDA6GpU6KASBlBkiMI=;
        b=fSGo9GlAkLMEQwx9ff1nnqJ/1E8cWgQP/BchZ2aGCoo4UACTCFMzdEzwKI+JCk4Pye
         AltjS1fNQaKI/8/S7ZQuP0OO5H9aoIP/eO8HnQXnUYXnknQbB6HI3IcAwdDeUhymzwXl
         z3hWTEvVvS51I1BQ/mDdA7Yq0bCr/qqrNQYIBahF0TU4ohyycDlf+ZwrKoZm0wmb3RED
         WQx7Kh2L2LRWNAna5ExGbF7fW60uxzG6ZEHE4kaWOKEDurkom5vx/V8lDb+zw3ZRnnwL
         VYCFNZ6alYO5hOCNK78Pmm+AnEBd1q07k+JSMbHYwVsgyCa3J00/6uXQumFJW5sycN3C
         5XlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759400146; x=1760004946;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k1OIQtBRu/WprhbP6faVFfcIfdDA6GpU6KASBlBkiMI=;
        b=b4zB/nR6JPH1o3/q0b2iTfwWz1zKo8e7wl/BFb4+VnlN4PlJRmQn3vX4PVdtA/zDHs
         1fomErrgKNVARFHfOpFVFBGP0Fezd3gRUPvPJyAxjrJnzOW344izwdALsTFKH1kE4J6M
         /bjV40IbSTJZsM6AkpzsHx5DvCbGQkPtRm3zxn2jsnTIDAR84P0bwCXtqfw8BJxwbQCJ
         3a/LKW8YJIk9m74c3TcgxtaXOvo5ERT0sTPcHETftWS4EXydhqYY/BEWxa4Z5NfIV9z2
         SX3BSUJQg1T3Qf4BriIdZYWLyvEQzXB4FJ1+VXl+nBsGYNR12g9bCh8zUohlq2ci2yxp
         q0gw==
X-Forwarded-Encrypted: i=1; AJvYcCXYmjnj3EW9XYe31rKEE3e5BkW6fCQwUj2iv+xBbVjM+6QqsYeh7mM1NpvNrdg7PMuKczIY3Omdk3z4@vger.kernel.org
X-Gm-Message-State: AOJu0YwtSYkzsQgsIf25DEFpYpG7HqB1RjH06WYqshDmli+pYiMXWRvI
	XZfrd/kMVtNle1PjeUfFhqHAFZCFgN6PqjSOW6+DfdADZfeh7F2b4TfozqtrA0Ycgf4fVtiekl1
	qx+1HHTM=
X-Gm-Gg: ASbGncsDny6FIe1rW0Y3hi6F8V84YlN+CVOGnvLK94WkdJ1jBaQUK0dny//Bg1lztx9
	AaONw6p/aWJHOJQG0Fn0ZX0Yw6W81iSAPi2mP1jQ2t5e5wV6BQuUpsVH+rj324YX3qmZhe0bq4W
	dCsK4D5xiILgHkx3uweMa3XXb/eekoINM/mT6woK0Ux0ly697xcKpsvrE3coicAbB+WCsHHqrFR
	p7WQtuT/N02ohrXjdL4r1GLpQuvgJC8UeA8A/IUIb+QU5Dl1WaLZsp/ECIr37Z7MNLqR5h73pWc
	1O9pvpAfWwQDm/0+2Gs3BgDBhYYAFE+7AJhpQeu79DLIGDbdTBqceuJNXiHDjnhPOTrLiI+aSBU
	qIHVkG9t58HWp4//rXLfhgo2mXfUJivxbJitGMViAEQgZynrwQJ74UqdxdP3KfIxfIlPNrz978D
	zQO1PL/kzP5JeCvdvCZA6bw1B4SPl3
X-Google-Smtp-Source: AGHT+IF7ZbtnLWsvPJhQN1RSKQw+RDAp4xELO1JKJ0B5XI3fYprHLA3ovfGjHaxD/7jWkw7clR39uw==
X-Received: by 2002:a17:906:c103:b0:b42:f7df:a2f4 with SMTP id a640c23a62f3a-b46e94644f8mr865762466b.52.1759400146005;
        Thu, 02 Oct 2025 03:15:46 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e77427sm174862366b.36.2025.10.02.03.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 03:15:45 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 02 Oct 2025 12:15:34 +0200
Subject: [PATCH 2/4] media: i2c: dw9719: Add DW9800K support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251002-dw9800-driver-v1-2-c305328e44f0@fairphone.com>
References: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
In-Reply-To: <20251002-dw9800-driver-v1-0-c305328e44f0@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759400143; l=2384;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=4S0fonwtNaMiRsMJskKUXGgiupKPbZ1yq9y5vaUwWQ4=;
 b=OQkAvbTC0VB69piBjtPx6WV4d4BVHjc5nyvTAGrM7x9uvXVMxqQHHqI1k1gup8JsV4W4oIdYY
 jBiQtg/xFsABvz/OxeMwP76goePHsyKnz4O4MJO8F+38BboI/fQ4W+V
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

The DW9800K is a similar part to the DW9719. The method for operation is
the same as the DW9719, but the register set is different. Add support
for this part to the existing dw9719 driver.

Tested on the Fairphone 5 smartphone.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/media/i2c/dw9719.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/media/i2c/dw9719.c b/drivers/media/i2c/dw9719.c
index 3627e78b8b6668933c4ecd92231465ce4105ff0c..172479f2c9f63f6b2a1f6eccf8184142edb383b9 100644
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
@@ -137,6 +141,12 @@ static int dw9719_power_up(struct dw9719_device *dw9719, bool detect)
 			goto props;
 		}
 
+		if (dw9719->model == DW9800K) {
+			dw9719->sac_mode = DW9800K_DEFAULT_SAC;
+			dw9719->vcm_freq = DW9800K_DEFAULT_VCM_FREQ;
+			goto props;
+		}
+
 		ret = cci_read(dw9719->regmap, DW9719_INFO, &val, NULL);
 		if (ret < 0)
 			return ret;
@@ -177,6 +187,12 @@ static int dw9719_power_up(struct dw9719_device *dw9719, bool detect)
 	}
 
 	switch (dw9719->model) {
+	case DW9800K:
+		cci_write(dw9719->regmap, DW9719_CONTROL, DW9719_ENABLE_RINGING, &ret);
+		cci_write(dw9719->regmap, DW9719_MODE,
+				  dw9719->sac_mode << DW9800K_MODE_SAC_SHIFT, &ret);
+		cci_write(dw9719->regmap, DW9719_VCM_FREQ, dw9719->vcm_freq, &ret);
+		break;
 	case DW9718S:
 		/* Datasheet says [OCP/UVLO] should be disabled below 2.5V */
 		dw9719->sac_mode &= DW9718S_CONTROL_SAC_MASK;
@@ -426,6 +442,7 @@ static const struct of_device_id dw9719_of_table[] = {
 	{ .compatible = "dongwoon,dw9718s", .data = (const void *)DW9718S },
 	{ .compatible = "dongwoon,dw9719", .data = (const void *)DW9719 },
 	{ .compatible = "dongwoon,dw9761", .data = (const void *)DW9761 },
+	{ .compatible = "dongwoon,dw9800k", .data = (const void *)DW9800K },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, dw9719_of_table);

-- 
2.43.0


