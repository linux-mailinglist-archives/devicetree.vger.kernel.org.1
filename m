Return-Path: <devicetree+bounces-169266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EF2A962EE
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:53:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66DBC3AFA65
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8598525A648;
	Tue, 22 Apr 2025 08:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="dEH6Y9vf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183625D52A
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745311335; cv=none; b=hwSenM5V7Qe5xwfLBUvehnkJ5wvCyoLEfIBX3OFMHQ3qTtRa7oyyvg3U17QSky8R/vSKsoeDfENxo5a4Vhy6MXjB2au5jaXAOhde14ewGYoJKT9SLSMMvGoNKr/VhWQ9atOF/ZWfP0qT6zUOdd+HRALDdgpn4ahhlpuoVt5tkxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745311335; c=relaxed/simple;
	bh=glrL9frKUynd0eooWslKXIli7Wwl1Of8mWNqeP69AkU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=refbxzhvoXI0rlWpcQGzb/Rh5cJa9iIwB7l1NrTPEJJiSaiW8bCaWnnNHBdYG8QgnVCHysf/TSnXlQJqP/clSH1THa9e+e9IqDrLTnI0WSWXe1zCc30hctNnEYKUMdleieMEv1KizvaVlnxZnypWubajVRY6ChgJwOmLtG83kfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=dEH6Y9vf; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7376e311086so6651638b3a.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745311333; x=1745916133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=dEH6Y9vf6HnNx7Vxqb6i5y/DQP5YikqJpx0Zkc7VUzwlTEFvdtE09Gc+iHBGGVg4ws
         5GMImkG0puJCtJN2dMqHKy9ZxY4O5OLrK6xGvSjuE9KZPi2dBLn6ZsGQ+gBL2Tj39/tv
         nPdzUgcg9Ys5L7jOgEcGwTmY31X4aSSUGJI6wM6F937aulAxzYvViWzLESqeJSZoCm99
         y7ybHNlvWFku/nqvPNhibz2ADYSXGFxyiNJfZq9QQFonaROYmcV+0t3PuPCC+M5M8Bkv
         g9WaHL0DaUgO23TyCxG7R4s1QR2p+dD5TkgYggoRbfeDEaXzM/EVCuuFMp0ATKc8ragA
         RxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745311333; x=1745916133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=F4kYrMvEzEGQU/KS4h4g0iI5gB429IlOBVEGI/dhOAWIdgOl5wuyGJUpe3ECCNuvpM
         dlpzy7rD13dp1ZtFZ8i8dhGtF8ApJUn87dTiFTzDbrKRfCZY8FeTDPFsGvLg3CF+FRBN
         f4Ai3VVHKP1dzW/MpC9TGDq9H55oueNwu43tKNZagcfkpwixPpDc8gvB0BwzVQkfkmrC
         vsDUCpMqFZ8h3FfwlpdsZLFTO409X9x66oD3B0uGSzFzpSfujGCZHSbj1EGA6lzqGz0e
         piEnJSgjL1+YEAhmDiqbC4E8WmyNy+NDDB87R5kj2LFH/eQgMDiE5OVZEJrZSCtNzzMw
         DuCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8DwlIi7LZC4IFV5SHIJ+bZDXwJUiYxCm+8pBbLXGEHLywrSf4vfQHdbbd81TKJ5ohmHvRmLclcADj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrbq2mPHSeOW23nMqlzxZLP3wEvHznWb1gcWGwqKhqazkfSXUL
	d/tMAEfFM51FTHSgG+iG0L36Q1xIy0DTGUNICSQvyff0Sk/3pYoMz30Q9vtgBnY=
X-Gm-Gg: ASbGnctD7FIJVpwOR/4Ljiv3pz4Uks1L3G7ZRcmrR+MZMp52ej0Yu0wr43CSr2SbXyh
	L6WcysV2x2Wdg7uYLAyJAr3eWMVDByq3IBtQsAeX1Tb/YeEaH085iqULtmPJyruwXGi3c44iKNg
	xKqiFxw43UkIUXcNpfPfVvhpHSmf6FTm3uf8mpuVNZpusuSawHhW3W28qXhKzTWcFCCDsbWeIiF
	D0wBYlTy5sNcjbIiHQVxBIlaf6kQogn+KiG0AkNNO3zeSWoOebmjrI4dhft4Ir9o6UD7Wi+VdDX
	2GebhcUQfWGXv2/Pi3Z+HA9+WBnrboQzGP4LC6SdRuM2nz75uTCYMX9iSaY0MkO/D7/SBUFdIUm
	q1w==
X-Google-Smtp-Source: AGHT+IGh7II8uR39w+HecQJFOJfohPA9oxXMODo1KcS7MJ5fXvWrxBC4PwiVN5H5gCjQglmL+IpLdQ==
X-Received: by 2002:a05:6a20:d48b:b0:1f5:931d:ca6d with SMTP id adf61e73a8af0-203cbc28a3emr23885458637.1.1745311333416;
        Tue, 22 Apr 2025 01:42:13 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7f7sm8038343b3a.82.2025.04.22.01.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:42:13 -0700 (PDT)
From: Nylon Chen <nylon.chen@sifive.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Samuel Holland <samuel.holland@sifive.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	Nylon Chen <nylon.chen@sifive.com>,
	Zong Li <zong.li@sifive.com>
Subject: [PATCH v12 3/5] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Tue, 22 Apr 2025 16:53:10 +0800
Message-Id: <20250422085312.812877-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422085312.812877-1-nylon.chen@sifive.com>
References: <20250422085312.812877-1-nylon.chen@sifive.com>
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


