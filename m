Return-Path: <devicetree+bounces-8282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EC97C77A1
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2AA1282960
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4234A3CD1F;
	Thu, 12 Oct 2023 20:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QSkhqgUq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF4E3CD14
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:07:14 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84990BB;
	Thu, 12 Oct 2023 13:07:13 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-406609df1a6so14879555e9.3;
        Thu, 12 Oct 2023 13:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697141231; x=1697746031; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBn3G0nuwV1PB65M5Moci3sn5s/1LPXofHRirIrGVQ4=;
        b=QSkhqgUq7i8qbXWEOQCZkMJV+xvZRIZX5SGurRWcrvA7EHxcSpm90TvjlmP88mk9iF
         WBkTwx0brfwgsbVqeYbnuGd17V5b+NwtlR+QU5ovA1XTmD7RJlyofFAFSaK13MeKYnjv
         OFxxkDuZeMjv6uGwYOPwSNLUhDzBGbJM5Pf2dMS4EOZqhqSqrMuLc3RgBQNKAPoJwovm
         J+0u6CfmI3+9FGisMRN8F00M9tWXwWGykomwIvxjU8n4C8Dz3zn+jCMYBTETO8gzDvgz
         NJtJerKoCm8YAfbSgw0i6fHmzxFMUWKaTd/PkoUYmAyLPpOomJeUjpJSuiNf0liuX/j4
         Xm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697141231; x=1697746031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBn3G0nuwV1PB65M5Moci3sn5s/1LPXofHRirIrGVQ4=;
        b=neKuV2PBQU3vfuIGu5CnHjHiejC+NHnZU7FjFQqyFUKc3Gai9mc8r2DY9GK92PbhOF
         iDFdhOcoiWxjz8ecJRAo30XFDDRufwCMGWZd24kzav3LsTB7iWlMLhgQDRQRjCSQsJ8y
         21BKiEvyDVOLOUazOQo8+bKIqIT9h2/DQ5wdiIuUmW9IRqfxyfcAhIiAQbn1Dokddq5q
         CGMZhpugcxDZcAqVuDy83j7qFtZQBourNcVrfzsMLj4excsA7cIh9B41r2umQJ7rZsUw
         FvjO99E/3U4z/EOB5nxNq1zEAJR9YMtmeN8ZExzEhdEc0jCShz5/KxyDY9KYUtgftEOn
         kLzA==
X-Gm-Message-State: AOJu0YybixF6wgR4ROO2daxaZbNzzNiZuRQ4xKD+M9Pt1z5CKdeNn/2G
	2NhKlYVb4PXhhrLw6h1Xo8gCMwbw+fUHMw==
X-Google-Smtp-Source: AGHT+IEkhXzryuY0B6dDNUakczzgqaK8IrqHAVO0JxD4mt/UhUN+kiYC9cWnw8FE1njv/Cjjfl8iTg==
X-Received: by 2002:a05:600c:21d0:b0:405:3a3b:2aa2 with SMTP id x16-20020a05600c21d000b004053a3b2aa2mr21670636wmj.37.1697141231587;
        Thu, 12 Oct 2023 13:07:11 -0700 (PDT)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-de42-73c9-6d1f-dd27.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:de42:73c9:6d1f:dd27])
        by smtp.gmail.com with ESMTPSA id p7-20020a056000018700b003217cbab88bsm182093wrx.16.2023.10.12.13.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Oct 2023 13:07:11 -0700 (PDT)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Date: Thu, 12 Oct 2023 22:07:07 +0200
Subject: [PATCH 1/2] iio: si7005: Add device tree support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231012-topic-si7005_devicetree-v1-1-6c8a6fa7b3ec@gmail.com>
References: <20231012-topic-si7005_devicetree-v1-0-6c8a6fa7b3ec@gmail.com>
In-Reply-To: <20231012-topic-si7005_devicetree-v1-0-6c8a6fa7b3ec@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697141229; l=909;
 i=javier.carrasco.cruz@gmail.com; s=20230509; h=from:subject:message-id;
 bh=aeSCiAYO0RYYWNlf/LcMpE5mp3Kcd3T3YEwutYopSek=;
 b=tbw7jQAKEHNLisGF9BF1nVxEGCtfiT1Mbh+tw9OAww90loHfBO8jsOhGIdxB6b0BTfamfOHey
 Ih6SWU4TTP7AX6sONNLVla5fdWCiZ98qTcDCTIHYW3ZZn1JnGWafAyP
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=tIGJV7M+tCizagNijF0eGMBGcOsPD+0cWGfKjl4h6K8=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This device supports ACPI detection but lacks of the device tree
counterpart. Add device tree support.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
 drivers/iio/humidity/si7005.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/iio/humidity/si7005.c b/drivers/iio/humidity/si7005.c
index ebfb79bc9edc..9465908cc65e 100644
--- a/drivers/iio/humidity/si7005.c
+++ b/drivers/iio/humidity/si7005.c
@@ -169,9 +169,16 @@ static const struct i2c_device_id si7005_id[] = {
 };
 MODULE_DEVICE_TABLE(i2c, si7005_id);
 
+static const struct of_device_id si7005_dt_ids[] = {
+	{ .compatible = "silabs,si7005" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, si7005_dt_ids);
+
 static struct i2c_driver si7005_driver = {
 	.driver = {
 		.name	= "si7005",
+		.of_match_table = si7005_dt_ids,
 	},
 	.probe = si7005_probe,
 	.id_table = si7005_id,

-- 
2.39.2


