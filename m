Return-Path: <devicetree+bounces-165053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4C9A8333C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 23:21:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B5D6881C0C
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008B421CC44;
	Wed,  9 Apr 2025 21:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Jv5U8pSw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB24E21B9C5
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 21:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744233474; cv=none; b=MuswrG0MHTPivzLxtneQk0Hd196cAe5U402fGPPBMdrN1qFW82PqoAPFMPzIj2cUUUKCQnssszZZZXLDBFlcnQKUqtGexz5F6wbD/yy0szc/E2ux4r6nAqQx0DmED0zDA06fg7G4xM8jBksDxxXPicLeLw6stBI8df1T7JP89aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744233474; c=relaxed/simple;
	bh=i6QMZeQliBXGkXhmELOM3S9fM4/68sTvez+Y1SdurqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TdfIYHr1daZNs0YriUM7ZhvQsRzODQaOQlmFBj5j144B09D1+6aWbG3tvxeRYHdAe5fCFgx2hv04QqM/cWe4ko/3QARHpgDIvgffQ7r6/hncswa1DoruuEptuBc+16SclN9etfsG66yCYETPoSwuAtvjaX6Dr2T/y5stbpqsRFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Jv5U8pSw; arc=none smtp.client-ip=209.85.166.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-85b43b60b6bso7176639f.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 14:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744233472; x=1744838272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGqNrfhRW/VPigxjf78Q+G9LQoValPWHjpgKCcSc0+A=;
        b=Jv5U8pSwGE5dCm5GzyKQtQnvrY7WWQlmE2bKPetwdPURqru1LDDAqAYi8gRJWtS3HT
         WOpnQ1gKikOkH7LaOsFkvCl+CYFugwQFQ9hNBfiZKKHa5BLaHdtHdXUUru3NA91HyNts
         wtEAWQZLhTJ0fBI8u0+KoYCmKTogGuHzrWk2KCWBQyXUnj9dRBGTDa8g5FFnOMVYXGhD
         kI8zoa1bA9ZHcb4QOIK6SW6u4hvoYL6siQgEji8XZ+IuwMbGSD/iyVxAYVtiuzXZ1KON
         xNjSQaLlmqZ0TI56H+h8OU7UVQLmzQ+xtocJBcSxchDjQ1SepNmvD+R5mR7ovcnlWbv9
         +lrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744233472; x=1744838272;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGqNrfhRW/VPigxjf78Q+G9LQoValPWHjpgKCcSc0+A=;
        b=TQcgSf+fcaRbxczrE5AlnqKfyeP7WWmyrdzGPso1JQUIVwS53podfZAlPnomEXEapT
         HIFAdYPfIaPWelbvEURbYn10raBkUeD6u6k6pNh85HxiFfkDYW+Avl9ij92KJ8aPuaQN
         TLRHve3ZLRSDTupNHM69zo5aNHWdtaxj0w+l3PkqtNR65nhh6A7CPiobV6fUFAY/xB6T
         njgcV/GIHFXFN+FYg86y1KtPpqMwU5sw96ViUKI5OmUzgUWsKpfW4qnPOlt/xdJ9jwEw
         IApxKD8GxhsmStAtCee78cJ7S8OgDMRwCxwSStfFgsQGFmPx6nHOEbaAoIQmMuZ4SjJc
         Is8A==
X-Forwarded-Encrypted: i=1; AJvYcCUPdNgWeRPpBYzVNjQlgVOGmUwX4/++8KwgJLS3U1S/nQXglsEJVH18sHbXHvKaVNzkPEM6+rUW9G/6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx309XcWwBRh3AvFh+2EuGW4hTeS3TA2WgTFrnkrzj4g6D1WgXw
	LCHOQtgObvdM+mDq270NzZwS56s61WnZEef6vcj/Dgj5S5gQRu3Khb/Yw6jTgDc=
X-Gm-Gg: ASbGncujIIJOsb4qD+VOMedZEFaJS3ozkOnx3cG6zpk8kaL5lGJXKd7aZWX59MqJhpl
	q+A4lvba7DBQ8flpxKZJcEBZ7hmMbuuDlw6yLgjfr1/a4FKzu8gdGjLR7yp2dRQD4FVmEqr1jXI
	qvTRG6fBa190iDC12O839mLSyPZX7KYEDpbCJXBn0O/XioaLogZh4NLAeQfW/UYpcXNodskr36a
	BOA/9v6KjgZeI3gVsQX29rQ8d14FvoeL533O3WIhY2a6nctqxDgY5ImWLn5zW3OMgaI3ocMQa9v
	EALys4immVlCv6m0wwvbkinuHwC5gvtHXfE1j46i7I/h4smpSLnCm5eLNzptHK+JvTujm1suJjd
	Km6cEi2tPqW2KJA==
X-Google-Smtp-Source: AGHT+IFEHPef9F0uv3pXsoWPI4R+kvDCIMm2kirESEgvm8sQs83/WxUO71MEUbAIM50tLqB7gPts0w==
X-Received: by 2002:a05:6602:19c3:b0:85b:3ae9:da01 with SMTP id ca18e2360f4ac-8616f19e832mr27550439f.4.1744233471871;
        Wed, 09 Apr 2025 14:17:51 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf8e91sm420735173.6.2025.04.09.14.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 14:17:51 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/7] clk: spacemit: make clocks optional
Date: Wed,  9 Apr 2025 16:17:38 -0500
Message-ID: <20250409211741.1171584-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250409211741.1171584-1-elder@riscstar.com>
References: <20250409211741.1171584-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are some syscon devices that support both clocks and resets,
but for now only their reset functionality is required.  Make
defining clocks optional for a SpacemiT CCU, though at least one
clock or at least one reset controller must be defined.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 7715cd38434f7..201ffefa5fa9f 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -1369,12 +1369,17 @@ static const struct reset_control_ops spacemit_reset_control_ops = {
 };
 
 static int spacemit_ccu_register(struct device *dev,
-				 struct regmap *regmap, struct regmap *lock_regmap,
+				 struct regmap *regmap,
+				 struct regmap *lock_regmap,
 				 const struct spacemit_ccu_data *data)
 {
 	struct clk_hw_onecell_data *clk_data;
 	int i, ret;
 
+	/* Clocks are optional */
+	if (!data->clk_hws)
+		return 0;
+
 	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, data->clk_num),
 				GFP_KERNEL);
 	if (!clk_data)
@@ -1486,6 +1491,7 @@ static int k1_ccu_probe(struct platform_device *pdev)
 	return 0;
 }
 
+/* Match data is required; its clk_hws or reset_data field must be non-null */
 static const struct of_device_id of_k1_ccu_match[] = {
 	{
 		.compatible	= "spacemit,k1-pll",
-- 
2.45.2


