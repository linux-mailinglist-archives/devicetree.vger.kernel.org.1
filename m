Return-Path: <devicetree+bounces-68431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 746FC8CC3C0
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 17:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 168AC1F24597
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 15:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A9213D8AA;
	Wed, 22 May 2024 15:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J6Z3qU5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513234437C
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 15:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716390178; cv=none; b=eY2D+ISzBA2BHeQPjwRUIlQTckPA/JW/DUSAqoaZUYWISXz5uoQsywdSSwzLHdaV210Ky7bJns2387YBNGynL2YQY9p+LboKKEQnF8tOzUCZQZqL/Yg4qTduR6CiEx4Abw39vCglp8NuZRifuUs9N9xUKe8PHZ2VSiDXE4gk5lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716390178; c=relaxed/simple;
	bh=pVh87fVqPqfQKJqqcDbSMFn+FcTBzRpmEsaCLIFq0AA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mV+Pk7wvbM5jcg2XEIGc+EtZ0L6Uon6nDsnKp1sNghxeNikfNjOk03y/FIMJc6eQVMwaI9GlE7f6vw7n6qY5cF2MLdi3IuXn5YLvwYw5NoZPeKd0L2Fj3Ag/J0q5I/63ywynJGEL0oard60Xh5b1bc3tPOKg+k/MtouF6248+ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J6Z3qU5V; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e3b1b6e9d1so78074731fa.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 08:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716390175; x=1716994975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3jsqIIhfmiwTRQW5T/GGVz9A/caM/qGXeRU8xHOLSg0=;
        b=J6Z3qU5VeCfmizfMpuuKDk8Tr+51wldm0CshacVsxrmUiCdjjraP71SQfvnwiQaykq
         N1t2RjOw6OAXKyezl6O8kKGI5kuwzBfvKV2F773FvlFrv8Fn5h07WfGn7wgrzRDTkQde
         k9cPYPNNcCaqsLwLxb7rAtf9RPj73ofxdZr1wXNqySPud0l6Cp4JAHrwZhDnYZpfT0v8
         lIkGjCxd6BPSp/G9NIar5ZcMN7DH2+wzgVlCy0eE0Gpk+w1P9DHEGUZGFs+B+L96RJed
         qxXlhV73fYCT/WfEZtqJwvEPMR7R/uweuulx9ZheyjhKQzvkAt38GL8E+7AI48YOs7TH
         pTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716390175; x=1716994975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3jsqIIhfmiwTRQW5T/GGVz9A/caM/qGXeRU8xHOLSg0=;
        b=LAIVnvpdZCbphSbD/eiNcbUgimB8Y2s++3TYl1B8C7awIAf3cfDF6TEtlZDNrE4h+s
         HaCPIRFNG31+PdqNoHShFruCSjcICQGHtfEcrVSMsbUdcM2mQBt4i2L5gQ7ZHKjFuZlc
         HveBXiqXGJnJIQ5Czb/FIj3BWb5MlIApkEnJWGLkugChdzUHrOHhNmOBD6unBuFzUfsr
         sTH1Ty6Lutor0kW5dDmfoROv+1pOu49uD9aDOadGTzKvTMcbFeEkJKTAl84kt8cdRJ32
         heaOshSPZOleb2Qrm5OdclslOHkkJehdBXwJA+rrAmX7QxNJhe2Q+uHpj07LlztltBzr
         rXIQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2M6ge56odK+Tu7OKmpNMsio/XgUPMB8mdHx33zwBaxu91EiA1bb6Q6YjPascEug/31VywCs0VS+jHWp1S8XHk8UOQIMoyGocJQQ==
X-Gm-Message-State: AOJu0YxuXzC4e5t5O6sXCqzHrgCjkEAefTxphke26S+zEq0mupTiCvbC
	4Dx5MscdC50i21tmKUdi97qug9ttO1YICKiJcm0c0ql4yXJK7KJkbCTbp+bHDWI=
X-Google-Smtp-Source: AGHT+IFO99+pk7LErl0507i4+6glcqOJj5k3VvjWUKfZyuG4ISlN/d5VATvuxSfbiyh00Qg47KZK8Q==
X-Received: by 2002:a2e:9d02:0:b0:2e4:7996:f9f0 with SMTP id 38308e7fff4ca-2e94946d417mr14305091fa.17.1716390175584;
        Wed, 22 May 2024 08:02:55 -0700 (PDT)
Received: from localhost.localdomain (host-79-16-6-145.retail.telecomitalia.it. [79.16.6.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fa90e93absm531370515e9.9.2024.05.22.08.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 08:02:55 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: nuno.sa@analog.com,
	lars@metafoo.de,
	Michael.Hennerich@analog.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Angelo Dureghello <adureghello@baylibre.com>
Subject: [PATCH v2 6/6] iio: dac: ad3552r: uniform structure names
Date: Wed, 22 May 2024 17:01:41 +0200
Message-ID: <20240522150141.1776196-7-adureghello@baylibre.org>
X-Mailer: git-send-email 2.45.0.rc1
In-Reply-To: <20240522150141.1776196-1-adureghello@baylibre.org>
References: <20240522150141.1776196-1-adureghello@baylibre.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Angelo Dureghello <adureghello@baylibre.com>

Use same driver file name (ad3552r) for structure names used
for all variants.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
Changes for v2:
- patch added in v2
---
 drivers/iio/dac/ad3552r.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/dac/ad3552r.c b/drivers/iio/dac/ad3552r.c
index b8bdbfed22e3..b060cdbc715d 100644
--- a/drivers/iio/dac/ad3552r.c
+++ b/drivers/iio/dac/ad3552r.c
@@ -139,7 +139,7 @@ enum ad3552r_ch_vref_select {
 	AD3552R_EXTERNAL_VREF_PIN_INPUT
 };
 
-enum ad3542r_id {
+enum ad3552r_id {
 	AD3541R_ID = 0x400b,
 	AD3542R_ID = 0x4009,
 	AD3551R_ID = 0x400a,
@@ -265,7 +265,7 @@ struct ad3552r_ch_data {
 
 struct ad3552r_model_data {
 	const char *model_name;
-	enum ad3542r_id chip_id;
+	enum ad3552r_id chip_id;
 	unsigned int num_hw_channels;
 	const s32 (*ranges_table)[2];
 	int num_ranges;
-- 
2.45.0.rc1


