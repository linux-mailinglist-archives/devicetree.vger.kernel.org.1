Return-Path: <devicetree+bounces-121414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1DB9C6AFE
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:54:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA730B2464D
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48EDF18B467;
	Wed, 13 Nov 2024 08:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="EP4Ur6gJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC61F18BC2C
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731488071; cv=none; b=UupRSsBRxiGOWDsKfp1F7IiFuui7DAC7QE0aZGEYuHRFkp9XB8sWn7JyyWSE5zzniIJOHpXgBvi2p0MYCPaArUCvQa34HFdrdJh8Zw4ex3i/zcgUZkxF9sli6ACLP+NJSShoAwtPe0jaykp48EeLwJO9j1bRAUV4XVN05s0jNt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731488071; c=relaxed/simple;
	bh=sC0rGWKRhlBzr+1LQVi/VMn0X6bCdk54lshxZlGnk6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rV7Vv38hO/VLVa3sw1cl4+RKIrtxpaN4BzrJxk3MwlMTY/IBdb43eD8yTLZXo+QHXVdUAEg+thBPV/jV6I9QLU/+fSy9/oismuiA4eRAyIB+N5K750hyn+0oG+YVVEmlJNLz8E08d8bEtnrMxkct+2LKwOSBzQkOV+DBmx/15cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=EP4Ur6gJ; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-20c693b68f5so69216745ad.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1731488069; x=1732092869; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fNsK27Fa1Ex5W0VeJ3TA3Gtj8S2K08nVqm3agCQiDts=;
        b=EP4Ur6gJjbHhFlWJeJAaLg8LSmk3UbmOD7tGTnXxyI87OJJADADLhvPufmlX1LpuEq
         dapCcZqRLhl8UyH/1ZgwINxda4zWQZUCI8S2tq0jGr/bMKXA24IQVlGX+x9yFXgaCWxp
         GVadN09GdCkKBH5fOYhu9tH51Bo/EBKUEJri9BQDl4GxjetkaaBPtC6Kg7zsCyrXLQ+v
         LX0Zvb6Q/3UKroTOg7O/oPE88yttNUZCRTVpVJHHIU/xoRSfDrSdgpqLhf32mDO69y9s
         FZgK4qxW3kG7ie1ULGHglYovgnnAJ5aBzVyUPFz5oS2YgRhENyR1SUbowJsCZ+8EcB2d
         2NwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731488069; x=1732092869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fNsK27Fa1Ex5W0VeJ3TA3Gtj8S2K08nVqm3agCQiDts=;
        b=HWFfCCRbm6oe8RZWLDq5UPB9aLSp8OespsGzNWAsjrDGBmh2pcH6UI4AJ+MLVKEmzb
         3wL6XOCe+CJPafVRP1y73gWKa0z3aRBsazdMoYwU5UqPZe1uqNMVBjKNencG7gXTsi8Z
         A0Eah7eun2E87TqyHbQwKqvyb6COjLkNvVpRqFPZKfTH+k8uHcO4y3YLaiYxoXUvd0ik
         iYPoNzVf1CtoEKAx1imEDnxYCJgeYobXMvNwR5dqug1yketkZTAbwYtEmnTJWLAyD2YM
         +CkW4UAb7UQD0bbBoyR1NXydEmgUwbN/2tFLL8CeYb5DFcnKXD97isqqeLsGAKiwj74/
         bULA==
X-Forwarded-Encrypted: i=1; AJvYcCVUfj6G+YezZRlLLhfNMSz5IFj9eXk6vN0b/5iTzOsTCGrmuO2qoEKcJ5x5Zg3zlAyfC+2nQSFEMqXb@vger.kernel.org
X-Gm-Message-State: AOJu0YzMRFFm/r8Nvt3daWmCdGEuOHgFfB5vhksmg1IMAUvB1eZEwB2m
	kwx3n578p95E1dL835HI09eCiFVvHyJWyEzZE3OZpVyCHFvTEKG6h0Sle0xB
X-Google-Smtp-Source: AGHT+IGvQQOK2pmty0Ab0hdZeyxnxRqA5cqd4YJeTPkl4mPTvKSC4kOdrnW1nTpFjXXf6p4vsYJGyQ==
X-Received: by 2002:a17:902:ccc9:b0:206:9a3f:15e5 with SMTP id d9443c01a7336-211b5ccdc57mr31401705ad.32.1731488069238;
        Wed, 13 Nov 2024 00:54:29 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:a83:68dd:5f1c:4ed9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177dc826fsm106095085ad.11.2024.11.13.00.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:54:28 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: linux-rtc@vger.kernel.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: linux-amlogic@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 2/5] rtc: pcf8563: Add support Haoyu HYM8563
Date: Wed, 13 Nov 2024 17:53:52 +0900
Message-ID: <20241113085355.1972607-3-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241113085355.1972607-1-iwamatsu@nigauri.org>
References: <20241113085355.1972607-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Haoyu HYM8563 has the same hardware structure as PCF8563, and operates
with the same device driver.
This adds Haoyu HYM8563 information to the device driver and document
to support it.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 drivers/rtc/rtc-pcf8563.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/rtc/rtc-pcf8563.c b/drivers/rtc/rtc-pcf8563.c
index 5a084d426e58d0..42382c8709b7af 100644
--- a/drivers/rtc/rtc-pcf8563.c
+++ b/drivers/rtc/rtc-pcf8563.c
@@ -555,6 +555,7 @@ static const struct i2c_device_id pcf8563_id[] = {
 	{ "pcf8563" },
 	{ "rtc8564" },
 	{ "pca8565" },
+	{ "hym8563" },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, pcf8563_id);
@@ -565,6 +566,7 @@ static const struct of_device_id pcf8563_of_match[] = {
 	{ .compatible = "epson,rtc8564" },
 	{ .compatible = "microcrystal,rv8564" },
 	{ .compatible = "nxp,pca8565" },
+	{ .compatible = "haoyu,hym8563" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, pcf8563_of_match);
-- 
2.45.2


