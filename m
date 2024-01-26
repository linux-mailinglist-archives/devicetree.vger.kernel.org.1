Return-Path: <devicetree+bounces-35381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F1183D53B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 284041C25CDE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA685BAC9;
	Fri, 26 Jan 2024 07:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PBYHx9+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7108D5B5DC
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 07:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706254868; cv=none; b=VXJEIBJP9VRjAg1h/gI9nncb79ESxfeGelKiAc3q/1ZiDy9YkJsnyfMidcaxCYOrz76hHjBey1Op1+4Hnl/IAblCACSJfLB8dz17rvBLDKMIraqLVuH+tyHxnyFR6sZwajuMkkAzT5dPcdxqSJmGPt0hE/8wnhOi03fqNLjfZMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706254868; c=relaxed/simple;
	bh=vo1MXNksdwyMhK3dw454VBvsuvuDah4af4HHol3J5x8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YlGjq44skl6lgbFZ5UmXImp6Y8vKPgxNJYEZ8GAaQHZtyesV1448an6HAFR8G/Yo3cBwAqOOTgovlyS4fNDviBznDpiYls4S40ywp2OJ4DAPNKt+rcPXwruEHPGb5M74FxVThzgehVSbA4MQ0kAzbBrgCHhnwKrEV2qGh1RRbZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PBYHx9+0; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1d711d7a940so796955ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 23:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1706254867; x=1706859667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rRcRbgsRNptjKbWJltVNRyiCjNqQwGUOGyfVxx0zgtk=;
        b=PBYHx9+0/55m2Z44xvjsuoTHelDTExKLAA2Oq0dMg6mQREarCqjIBwnf5nOJ99o5+O
         iENWScyvdDVSD2oXzlfAG9GWxZljP5oCaDFY5uy1fSQdhtuMs2pW2JR0yn4ZF6CUiu4U
         5PTVX+jSIsV6U77ExIBKp59BrZg4llrpZqiLI408iRg18snKDMXZTT78r1rwrdjg3zp5
         X/WD/A8/HWof8SFO23ybBqh0JM54/V9yFGIyFkVmM8STUt5DZVCJvFfyD3RJQE/cGJ14
         aZ4N9sRAxvS2wF7QMPSxmtSxgub61xTFrbubDQkL06F7FEksTxITsIpGt8spYNRRrXNv
         svYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706254867; x=1706859667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRcRbgsRNptjKbWJltVNRyiCjNqQwGUOGyfVxx0zgtk=;
        b=WqFFBPOhuLxRnwN7k9xHbTA94Iygi7OGXl3RmBial4MT9ovfr36rroYYUHDI0V03jM
         Zd/ENYu1CLwSxapgtP+lOmFaaNqu3UAhyiaKJy9hM7nrvPnroFd5UWL9uE/VIyh+yWTV
         3Qu8w/064WI6fnzM1WYmHNgpwubN78M9fwxNyyX9KMq/2zDAxaR7qJCDRKEVNlPpGkI5
         AhThfYN4A+1hkBLaqynFjUY/6m3Uij6XtRCRZMMi7QRsrrk28oPXD3aoef4lbjayuNDT
         z8GAaNv9eStA47RmDq1B+80OJjrmgYlGqVsPNwO3URUjuZBXE8hPGxoPmxddywoCe1VS
         ATug==
X-Gm-Message-State: AOJu0YyO4pV3x7UTlAX8mgedD/YDTjmIvDgSnCMGrClfUKeqRLTO/F5S
	l1h9jcweGsw15omfn6OoTqKJWwwx605MeCJXzyfK8JJ4rxrmzAW1BVuwMQxZ5cO5W0o/IXqH9TW
	A
X-Google-Smtp-Source: AGHT+IHGReke6kD2OmXKAW701euY1rQL/Dm+NNnadPCt2a21W5MSYSRr51pEXvTF6eYyHuNn53vOrw==
X-Received: by 2002:a17:902:7805:b0:1d7:6f15:7869 with SMTP id p5-20020a170902780500b001d76f157869mr1063575pll.73.1706254866785;
        Thu, 25 Jan 2024 23:41:06 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id n3-20020a170902e54300b001d4816958c2sm521066plf.166.2024.01.25.23.41.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 23:41:06 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	conor@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de
Cc: vincent.chen@sifive.com,
	zong.li@sifive.com,
	nylon.chen@sifive.com,
	nylon7717@gmail.com
Subject: [PATCH v8 3/3] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Fri, 26 Jan 2024 15:40:45 +0800
Message-ID: <20240126074045.20159-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240126074045.20159-1-nylon.chen@sifive.com>
References: <20240126074045.20159-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Round the result to the nearest whole number. This ensures that
real_period is always a reasonable integer that is not lower than the
actual value.

e.g.
$ echo 110 > /sys/devices/platform/led-controller-1/leds/d12/brightness
$ .apply is not idempotent (ena=1 pol=0 1739692/4032985) -> (ena=1 pol=0 1739630/4032985)

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 drivers/pwm/pwm-sifive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
index b07c8598bb21..7cf7a76cdb44 100644
--- a/drivers/pwm/pwm-sifive.c
+++ b/drivers/pwm/pwm-sifive.c
@@ -101,7 +101,7 @@ static void pwm_sifive_update_clock(struct pwm_sifive_ddata *ddata,
 
 	/* As scale <= 15 the shift operation cannot overflow. */
 	num = (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH + scale);
-	ddata->real_period = div64_ul(num, rate);
+	ddata->real_period = DIV_ROUND_UP_ULL(num, rate);
 	dev_dbg(ddata->chip.dev,
 		"New real_period = %u ns\n", ddata->real_period);
 }
-- 
2.42.0


