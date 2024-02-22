Return-Path: <devicetree+bounces-44638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D10385F290
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 967191F2216C
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56E7224CF;
	Thu, 22 Feb 2024 08:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="jSGLSRSY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E60A210FE
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708589592; cv=none; b=Aiyl0Br3+AY1YUaRunC4z5O8fUu4Pci8lkLSvJY8zM8rakj85im5leNog43yKuj9M4laYE6FYQsKOer0JSc3poMcDU7aKdqAzIbpNwauS2OpU5y/4VOmMDJNacp/yWkvrZZJiUyaUNIjI9KdD02Cla4q6jLOw2Lz8vI9yi1CV+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708589592; c=relaxed/simple;
	bh=h9kgBQNw1Wr0BxDFXwRL5apSgNSUo0OVqXELAEBrD4s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EFaBcFP+8u8sD8im/hcGbmKUHmnQhwZgK2j4NaAAJz5jp2+MhdB7ipbgFAflPhD5b+37S09Np2I8kaHLEG+lrSnLMVUNLCsHbrhP7jil0AylVZssYi71LD2gzl7iLyLhphtTSpiG2DjoCAfaYjT10zy82CxEbh8ANOop7lT8El8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=jSGLSRSY; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1dc1ff3ba1aso21439735ad.3
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708589574; x=1709194374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzNGUpNoXsKa0F+bV/ekx8aAYd7ltTcTmTe5buoxy74=;
        b=jSGLSRSYMtq/I7wf3V4GDaTRmW43zUf4D7Cx2YsYtVoPj5alOTbDjWdA77qXxjQsuX
         SpAX66uUuIa2MiwBFxqQfywI1PZEZIu+iy3l0kgTnTU6j8jHtTa1JpoL3IFVaLor5cEy
         SR8INtdM3dkxGBN/pkVVOEOczUZoKELOHD0SVngj3X1O7hZe/g2FB9wFAYzK8QWQybTr
         OqUj4/qQgnldOntl8Im2ZYJsvn5UKNKG4vZ7jWw4AdGDhpARWayia99vWLZkH0NGxuiy
         SH2Z5o6Md0wb6YPC84WDQHfcDB9zcSo0NWj027XjVv1HwDgPz+FKUh+UIPq7/Afos7Ad
         kZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708589574; x=1709194374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OzNGUpNoXsKa0F+bV/ekx8aAYd7ltTcTmTe5buoxy74=;
        b=uv0vtYq0mIJJYTslMQBkX7fgnLjfcs92YzYSrylEMoTR0+K8Af4eXX1LUcYm21sPV5
         6HgqfDRw5V34jgU1DiC/P4ubMNu8XDrlT1/8UJYowj9kvhnqfhyOlLmne17ghwSIp1FK
         6VdWweuo2wK40OSW1Yyp1XZ3XxWcKle6eQYQ0LaAPXIQa8rUqPPf0mIAVuBOQzmz/kgf
         i0FgF0IfKBNeQXEj2CA/2YarYXaRAO6h3sWz6VRRMfJSbxPRJECCFYK/VhXgoiA6k55v
         lGAdOy55GbvoQ3hA9QHoXMLo7/Lubgej4CgriRD5mlK7PNkEN4EBk7oF3SPOaOlXuwAa
         yOQw==
X-Forwarded-Encrypted: i=1; AJvYcCXUe2E6ywFI9CRXhlvKnM8mGZzj1Hfo7lmSBpjSxA19QIz5KHpLtAry/vi4dTVMsD3TU5znkrhI0CbC9msWyoWwYU32tij5fdBVwg==
X-Gm-Message-State: AOJu0YyGvOWieP+aki29+M8iIB2h+944YFzVk4rnVyiC7leWSTpRCO1W
	/LToRoHVAUo84z6ruDOgGQ/8vu0A9x3Ex1EM1xNL8iba10hx6uBREXyrFCazsJs=
X-Google-Smtp-Source: AGHT+IEz666lsZSApoJrluiCUnkDERHUYNU92etsFfiWP0DNhuFqgQPyMZWzIbTM8mytE5tfogyXLA==
X-Received: by 2002:a17:903:22c6:b0:1db:d42f:fde9 with SMTP id y6-20020a17090322c600b001dbd42ffde9mr16038641plg.41.1708589574353;
        Thu, 22 Feb 2024 00:12:54 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id lf8-20020a170902fb4800b001db5ea825b2sm9412796plb.123.2024.02.22.00.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:12:53 -0800 (PST)
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
Subject: [PATCH v9 3/3] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Thu, 22 Feb 2024 16:12:31 +0800
Message-ID: <20240222081231.213406-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222081231.213406-1-nylon.chen@sifive.com>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
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
index a586cfe4191b..bebcbebacccd 100644
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
2.43.0


