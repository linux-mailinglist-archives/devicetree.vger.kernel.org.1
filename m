Return-Path: <devicetree+bounces-169798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD0DA98452
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A72ED1B60BB8
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB0E223DF6;
	Wed, 23 Apr 2025 08:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="Je3+X2RF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF48C21FF22
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 08:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398421; cv=none; b=NPoqV1wS5pPI/yk8WkdYsm9ubU5VA074vznnXgqhd07wuMmN/CYzc9iOJsEvipR+d8/J4qlYYvtj5N9yWm5t8JjCKzObsb3pU5+D+SIkatnfziVQ0k+uaRR2ax8+NdF7G/3qTujQLZa3TywWBvKHwna4dO6e6drVQiUon+lBoqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398421; c=relaxed/simple;
	bh=glrL9frKUynd0eooWslKXIli7Wwl1Of8mWNqeP69AkU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HAxN4iqXOnIg3KQazNfSIL0emawAKQVZXRN4qmS4jKC4Jz1/QQ+E0hg5l3J7BdTQAojN5BIYTO2LDYzk+1D+1PXbNAJKhcDqG5dsdp1AAxyBa92nP1VLgFIqixfuj754JDU26oVSX0zdiuaF8ggq4ktpgdXgoYUiHboE9hUDdCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=Je3+X2RF; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2295d78b45cso97005415ad.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 01:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1745398409; x=1746003209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=Je3+X2RFbmoetOeWaMTvz91B0bPTc1ji5n+8tY4MLRPm4zjuyj3+SUpMGZMszWvGrm
         BhaW6Npt3zDL0FoQkUqh3edl5tQ1CMuLx6YE9MrTyjFIfLC0teAd57ozhSPvKQKdjzlb
         lePqj8nbtySvaok/kAaE/jwKjmjP1+X975uR5So71dwRi/w8OGof6zrkcwG+9n8RFnWz
         4gtMSRCXG1Hg5LvU6AWo1EF6x43YxFhggtPHGnz9NCdHY3ag9kDI0av5S17vBfcVSitf
         j2vigeY14qTkdw9eydn2u/74VdQRdj6UAogRg2N6TTtkKb71nnbSi4Kj07VCi1OlkY7L
         AzxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745398409; x=1746003209;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Cqj4QIom4PNiBzVEbYX0WUBXZ7DUraiDzK4MrzGYzY=;
        b=H7XveeCUVscvaAgjDBJ2AWHiM3kmNQtBfBCkJ6OQzPnf6UJKVlTSiBOFoPLvtdMLC8
         UEefborjncbp129v3HRp8qSNF8kJeJsa1eTJ8rRgepkWasMpzwJtDf7X/PNghyDYI5BW
         gUJ6B4lvMBE1KpjyJ2ARH7+1Hpg9ebE55q+k0t1nxgn22EEP/ITtSn9qQjmUmogMEGKG
         zjDbTVK/wm6UzYOerbygXiQy2HGeeFb37E4tluEPuqIdPbAF3YwGtHR5lx06SCvdYqnD
         rrVXMPCYnA6Pa64odk9d3FYuX9BMg10s3+eoz0ZwlKYi/KRs9SdM1XgHCYKoQDIxfnrz
         bHeA==
X-Forwarded-Encrypted: i=1; AJvYcCWjgeYraXvdVO5UdSTt4F9sKUPPcam1g6GnkP/aPgX2HufS2BRAzaXBMDTddpMbbCt7IRQg9DyzAyEM@vger.kernel.org
X-Gm-Message-State: AOJu0YwKWHMSwxgD+zz7LnNEWk+139Gosg9fHT4M99+8ErNdpcf3XhXn
	3yDG3TokCHMb4zK4OU/i/JZyeKpdKtCG5VPpzSukQqDN7PHKPS7/pD3Ito8sE8k=
X-Gm-Gg: ASbGncs1foJ3q7W0I+Qt2PjK7//HHoK34Sr3uCFdkJuwZm44wTqtnRa8GfyJrh9jAa9
	oLkMHLJHECnpUr/+Mo3KkMBFKxDgXj/R+yhJpN8WqXPeo6+HnSJCD1bnCbk72OWBZKJZKhz1pqp
	6EY1KFrHr7v8L/XxHf+fhjMOabSs/yDrrQ/VV+FXmKsmq876FHg4hrkCGnnQLO318QTO1l0awHq
	xfMamNt8DT8qwFmzny5SsGAQl3K6dWQWLzVpJXCBFO6Qxp1B9fxhJR/ocVtmPxMDcYoN3qHS0Ru
	7rhLPvRPBlkRS+aWmhKwfkr48WOQBXD0YnrmxrXjmd4+LmvAYL48puV56l0FTPU0Zxltr1I3Fw1
	fDv3Fsm0KVQuo
X-Google-Smtp-Source: AGHT+IEAalrda38aOkj4B5+H1noGQ2OTP7JrL0DoyWnhW03mGn+cIvqfLp/tgOSUaOiNbvMPyvUE2Q==
X-Received: by 2002:a17:90b:380f:b0:2ee:9d49:3ae6 with SMTP id 98e67ed59e1d1-3087bb5336cmr28685643a91.10.1745398408957;
        Wed, 23 Apr 2025 01:53:28 -0700 (PDT)
Received: from hsinchu36-syssw02.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-309dfa5f880sm1047611a91.38.2025.04.23.01.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 01:53:28 -0700 (PDT)
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
Subject: [PATCH v13 3/5] pwm: sifive: Fix the error in the idempotent test within the pwm_apply_state_debug function
Date: Wed, 23 Apr 2025 17:04:44 +0800
Message-Id: <20250423090446.294846-4-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250423090446.294846-1-nylon.chen@sifive.com>
References: <20250423090446.294846-1-nylon.chen@sifive.com>
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


