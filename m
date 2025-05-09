Return-Path: <devicetree+bounces-175464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8264AB0F62
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3E121BC1FC6
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4ED28DB57;
	Fri,  9 May 2025 09:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="aqia2S7P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B00228D841
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 09:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746783709; cv=none; b=Mrl6F7m8oN/+z7/ZgJIHCcNN/6z8DczJ/kFlVt3n99LjagUbCX7cYyzOzKfrjTZrIV94n3AQe+XwKRQBUJdctPGLAhnckD762nsAxIYzKHaGCn9SSWgYe5sNHj37FH1MqAClT5Dl0zXA2n6OuMDm5JIocjmVWBD2RfaIwrT30D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746783709; c=relaxed/simple;
	bh=glrL9frKUynd0eooWslKXIli7Wwl1Of8mWNqeP69AkU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kFlz2FlK62DBX9WgcpsUIhS10ZoijY7YcHXomc6Io7cNicl0pqsIpLAW5ZOlqY8L5Zbu2k2t9SSwOVlHMJF2QBJnf7rxDdWnRQY1bmVxQ8BIiqIvTceiZci/vipnMz3pC7p7xczRYvP05u/SyS0Py0X0yTrkzfcZOcTRAyhVADo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=aqia2S7P; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22fcf9cf3c2so5172125ad.0
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 02:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1746783707; x=1747388507; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=aqia2S7Pqari63bQ2xUwRnkInMjdARyyb6Iz1BVyc9mcTkLYDMWaPbNPsl8xACTHNA
         DQnDPos1vxPyxYcFDYbjCoIspR7xH09sW8IL/ow/7OBV1znqYRDELPd/nZSrzKDlP1HR
         y94b5fDkt5I/WMqlvCdjI8VER2osa5FsZkXI/KgNhMJfPvk2dJcGkMYUO+9D28ngwAhe
         MAbj7dUozNK4OIxfBW/spV3rTyh2wYYGP0pov3ZOOLb6LIhWaDlh0sMiwgvAuHeXwznr
         +s3AEyXj/r7lviD7wIUubxwpsRT3zFvP90ioOBYZEXP9/rakaRP8NVGKDFbLnOvL+x5c
         MwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746783707; x=1747388507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=BOmGYjCz5vyupCSxLrxe4xAuTIk5kP70S9Uhfrtx0N3zhCCzFRgJNtX1k/vzjgxDKk
         lOejL8cGDJ26Ydwls6aTa+sYo0aacfDqbtQx6dLKGaNX7r82beIY0mavrlMDzEz/bP8n
         zVxEvrrtoMmINAwJZaBR4ap731cSTl4Ddlt3U0xYhAEHBRVPEQCfoAfzp+SIQkZHoJPE
         6IiB7Inl9BnU1r1q2rAjDIWfB3esmVtDH0c5T7FHyukMj6UN8zLPdOJ8LqnHoYzRlVbx
         ahegj6WE+pSzVuEKktEXUSFMRuU+uSyjKEYPX4jIuiyH2Sqce0QB0JOsJOey8yaj1iwq
         OtUw==
X-Forwarded-Encrypted: i=1; AJvYcCW/2EamUqGdTrXkP2++tUyenYCqKSGQ5+bgoPBkoS5QFuLJlFAFYKW/1V4G133dwCR174MPKP2o0KTu@vger.kernel.org
X-Gm-Message-State: AOJu0YzckfeyvSIwfVBAFo0+8K4ElHQMXdy1gXN0NmWTCswLPuUnnKa7
	ARLPRdSPybnlWPUBE/LylFj6+dXMDnG60kZzz70Z9T8RSYOVGcH3x+TzZ4cJ/oG7W6J73dvS7kq
	hWDQ3ZQ==
X-Gm-Gg: ASbGncusEvVqGCn9wofAFr0aGsmicJHJXkl1rCtV9SFs5i0A++tjVK7Ev3rssqqnRXt
	HUFvRhqqy360eHCrG5Kupz8FhPQFlINUQESkdapWMeI1Rn1enPu91Sse9yGFcTsnRZ4r12NRH4W
	3/ZBh9Ij6NitXlJang+QKh1RfgQDQwBAOpxa3sl9b1FAW0SB5wIz/hnZ3pnd+RmYftSzR2ZML3n
	rhTkJoiuv0NYqyW9qMrWPV0q0M1HRKJdAUsFTu5rXX1q2HpTJ6/8aHH+H983ctpXooVaSObAGKm
	UvUCwlAY8h70MkjQ+idr3AUkOV1KKknpZLxrN/FFuiBxVVEt7vtIOqbBANINvir8L5+jxfzPwGL
	Djg==
X-Google-Smtp-Source: AGHT+IFkTuXt01agQ1105zn1T3rz6uGwTacZ4V6TXQQSitMoy+sXg1uhaf6FBpjek3MEYU8Zsgr4Hw==
X-Received: by 2002:a17:903:1a2c:b0:22e:50f6:b95b with SMTP id d9443c01a7336-22fc8b3d8a7mr40565465ad.11.1746783707291;
        Fri, 09 May 2025 02:41:47 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc8271c38sm13271035ad.119.2025.05.09.02.41.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 02:41:47 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	devicetree@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	samuel.holland@sifive.com,
	Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>
Subject: [PATCH v14 3/5] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Fri,  9 May 2025 17:52:32 +0800
Message-Id: <20250509095234.643890-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509095234.643890-1-nylon.chen@sifive.com>
References: <20250509095234.643890-1-nylon.chen@sifive.com>
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


