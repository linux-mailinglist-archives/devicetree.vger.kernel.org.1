Return-Path: <devicetree+bounces-133754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA3C9FBB25
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 359C31885C7A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:29:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DBFA1AF0D5;
	Tue, 24 Dec 2024 09:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CAYi7rBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 942F91B395B
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 09:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735032502; cv=none; b=BoqSRI0TLEldip3WkU91ACYFtTiMTSfCdZ27XZzt7f+WFMQ0PbZjY1oKd0rvhVVyhjypefqTlejmnx0aAnJDN58G6kQfsU9STHpzs0wbijuW8JzYAWHaSDKNG9zHOGJPrpKsBUpv6/8ED6kkIvzq3FGWmlSKcswdTrVwXMPZEEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735032502; c=relaxed/simple;
	bh=glrL9frKUynd0eooWslKXIli7Wwl1Of8mWNqeP69AkU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=E7gUTBPuzzKq5sgKDP9uoTod6Q9uRkKNRQi8Fb5tURqGv/H956wxmCTtEuRnCRF+YeV3rjMPXCWMMlsWpsd1kQ44CYMS/EIARtU/ZQcDSV9xGak9Xm78uRhx1B7bA8wnjVbHj1N9eC0z5/HWJLhQidqHoymqqWTzG9X7mHWZUEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CAYi7rBR; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-21661be2c2dso44190015ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 01:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1735032500; x=1735637300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=CAYi7rBROIkGlrJ+4szhABKzVk9vFWzuKLlx6WHPvuNodk9UI8+doU07grDd178ANF
         3vavNQqeBuWHgn4Afuv2F8YyokGx6dzwIbQwftHCnp1o8HHGm0EeXwyNpTaHu4Pj10AZ
         +pgRYZP/05OCtlCZ6kY3uWg5ilAb5cLpTWukIy+GhHHWrGDy0pRXLGbwhaW8pRe8EALS
         yxJ2iMBC1u8xCp8fY5f4kHZU07wGq+o3aCNcqZ6WEN8xd/M1Phyq9WI3mOOTTKs46H6f
         2epfuLtGM7Kv80ClUSXlHVYNtiy/dc8xZjlA+BvIo5yYOR46YMOGjWBHmc2YApVCEV8/
         7GXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735032500; x=1735637300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=GEN4LWLfyL9C0eiafVhoy3ZYPOjlHoibu8Tbr94xjB2Oa4/rkZOtHSxUrnsnkO6TtQ
         CIuIxp1r0RsXzbUwDomWCL7Xygr0qX9Z4G/s6VQZ9y4SLjmGqPhkbQ1VKj0u2RMttt9u
         KYjkbSMicpvgi6VDYcbLPtQEdsm1YeUkyMz7ilGdeGMnRcozVv/Xyp2T0M2EBj1nGIXh
         Ur0CbXS+nXI7B6OxGxVIk/1Vf4shG+LrVZbyi4t+PO2YfSfe5PblKeHkbxcmhJ87isT0
         y/Ge8wQ3G0PS92c4kEjNdNhv9pWs2lGT3cwSMqgZnVAaufDDkriNxAjUeBrSfn9LSfON
         p89w==
X-Forwarded-Encrypted: i=1; AJvYcCUArDN7l0/rm4wrA7lt3rxrAZ6Nq/sP0vLi57aNngjv6w7bN4UEdRMzVNcfSHSAZnw8jjsjJPRgiTb2@vger.kernel.org
X-Gm-Message-State: AOJu0YwcQ+WgBLdmQVi3qJTLM3DikCtCLMJ9oA+q8ZIbQJf3EktRuGer
	hI8fdzTEUNWWAJOYfEVEXHmZPsIt7OX9b9hSrFuiPEjJ5qEYhWtjBlroV+yJ5Ro=
X-Gm-Gg: ASbGnctDXh90A/DHdRkLBDmtYiuAUhPc66hqeQB0J8nW6B6XGw3ghw3nw2q3cQxoMSy
	ZkS70nZQ5nj+RCXz2X1MOS3bt5a+K7YZ0GYqOr0cV1MRhPXTTZFwgx5JjpYRoIMvqycm9/tPOmF
	/QEweQPuSEzV3rH1p700LihINj3I6n9pLgGa2gwB+wSabidI9zPKrLkB+cRI9eiVzC9afVDCeCC
	qeBmpwSbg0r86Vxqx/ab53VLKPdyNWBBK6fnq+fPVXkTOCZWh5Le5b0kdDRwGJvhlGJUMnJRquC
	vYJpvLJrqDxpKxDvzg==
X-Google-Smtp-Source: AGHT+IEa+eM9lY5Aysf3MKkJti9gL8QjP+GyONH2JGutRyVpSEtvumQ8tbWG/KyFFjxNZfvlfPun/g==
X-Received: by 2002:a05:6a21:6da9:b0:1db:e338:ab0a with SMTP id adf61e73a8af0-1e5e0447f5bmr29850414637.8.1735032499994;
        Tue, 24 Dec 2024 01:28:19 -0800 (PST)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72af8dcff60sm516341b3a.152.2024.12.24.01.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 01:28:19 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	linux-riscv@lists.infradead.org
Subject: [PATCH v10 3/3] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Tue, 24 Dec 2024 17:39:01 +0800
Message-Id: <20241224093902.1632627-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224093902.1632627-1-nylon.chen@sifive.com>
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Round the result to the nearest whole number. This ensures that real_period
is always a reasonable integer that is not lower than the actual value.

e.g.
$ echo 110 > /sys/devices/platform/led-controller-1/leds/d12/brightness
$ .apply is not idempotent (ena=1 pol=0 1739692/4032985) -> (ena=1 pol=0
1739630/4032985)

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index bb9146267bc5..6259f8500f71 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -101,7 +101,7 @@ static void pwm_sifive_update_clock(struct pwm_sifive_ddata *ddata,
 
 	/* As scale <= 15 the shift operation cannot overflow. */
 	num = (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH + scale);
-	ddata->real_period = div64_ul(num, rate);
+	ddata->real_period = DIV_ROUND_UP_ULL(num, rate);
 	dev_dbg(ddata->parent,
 		"New real_period = %u ns\n", ddata->real_period);
 }
-- 
2.34.1


