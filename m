Return-Path: <devicetree+bounces-165938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A8A85E8A
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:18:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17CDF4676A6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5451A190051;
	Fri, 11 Apr 2025 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="fq/5lXZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88574191F75
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377354; cv=none; b=IDFccXDZ79Qtl6DTft4ioYPvmNWvK81Bw5Sz5dFzufAOBKniUFbJp2+Wq75XilBcEXbrpuJ6Q/kjZHX64IpYnGYkZdqetisjsuaFOqVKAiJjQqa2E9KA8mMTFfjt5a17hWYm78GDaGHGARBZqSpsDEVnARz5himyOVXzVDX300M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377354; c=relaxed/simple;
	bh=11u6eTuG07TD8K0EqLQCl5SKsVXXOKBL7vzcLCZC0DE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rFZL+Suo3bdTkeut9MpNTrM0LCEqYH79tP7O2awcLrFqcRuI9Weoxb/pkwqOLv3FhgxaRfnlSussvZQJk/qA5iPu/6XtCU/AeE/B0Q1j4Np6Ig2ydnZgl9bnSjhYcubAEec4PwKVzlYMAZXDGEtBYjD7ui+CSBCu053SsJIrTfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=fq/5lXZ2; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-227914acd20so24995035ad.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 06:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744377352; x=1744982152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wMxmUF14/8mW48hBEyGMdh9vHYA4geBoHm6tUaBcjb4=;
        b=fq/5lXZ2QLA+mjGuxcM2i8ep89cyd1SEgdxFRWW1P1oVSc4unOIa2T5MzAITggSRCH
         KSRzyHHIV5Fi9IDypOA8/RouAJLwKyY2y5HiN8K/B1DVIM/CLlIktCl6I23JB2L1W8aE
         JyRcRL3w4d0ZOTgJsaRufmkeJIN5iOM0ePUS8ACi53+rMu1wvjavJMloZkw3b7b1cUdo
         yloKQL2Ed9BvEEwfkh9JLYzOibD2PNgkyCv9Z3z/hAxQGoaElGGHvlI15+l0o/M6kxzx
         hadHTkw3LZR089G1arDvUw6scOtNO31Burl50yMZyIW1SR/qHzdcKv2o2buwwpzRuQfS
         Zbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744377352; x=1744982152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wMxmUF14/8mW48hBEyGMdh9vHYA4geBoHm6tUaBcjb4=;
        b=lKro9gK3dQBUsHgBnK5AhQRJEiO7/xNzwMZRH8yphvbb3NK5/5u0wKOzLIq6sg64yi
         KLbFVQLPt8wmbXgYGR1/hqABgkbJA/YSiuy/2rqh0/ILiXRb9L6XuGCimOqyXMDBYKvn
         1UbK59NrZFa6lkAvlHE3qE/NSFd2E8OGPbBZUIxrBi4x2qJtTCHzxRLoeHfwY8Ca8TjC
         G48OYTriDwZSU2tdPdvQY7ubs9TbWY8JpvWcwQgdnMEobqF4YW5kzNY7gYRILDgLdCM4
         NAg+yJ9QYAr/zXTVjN9iR06c1UqnAcB2zEL8e2Y5VcJKkF7rxlDxteoaxQwk9lNXiSS9
         nfOA==
X-Forwarded-Encrypted: i=1; AJvYcCUs8rlFYGV1N7T/3WzkPXt7Qks06fJN5UYUeKJJmkKkJcVkKgO6Dx5mF0HDZ1uE8B1M5gAYDMwO1iCa@vger.kernel.org
X-Gm-Message-State: AOJu0YzhLJmHafmCSt+C3E7olcHx6/UCdiSmc2y9UdTMMr/pWfAykjVc
	0UjS55A9utV9mI1vq2rhilXIE9oph/n1cKnY+AHpZ3uowOPoh1ZdjRqfUGddc+8=
X-Gm-Gg: ASbGncukpRxWQwYo/9ILq1VgGy96GEykwP9jCfM+LpEAXWWdmgQkrJQD/HiMeHbojTY
	Akt4ofp5bZT7h1++udlyhMTmPubhQQb8UJsz3sIfUm9lwo3viHvKvAHMs6a/sA5wAdL3FfcAO3m
	5Ytj/k9HNZyBOehVlyeUkPamMwHOyx/C9BjxtRew6vmuMaNWdK28z1L/wdVzgaiFceiXRdsEzaN
	tFSNJA5glau2lvB+do6BIy887C865X/Mo0VtBmfVkYkQ2naUxpkIQ4a8wVhfaD52MiKV3BIhWde
	CNLHXC79EBK6S70Zu9TqrsqaaN6FvvI=
X-Google-Smtp-Source: AGHT+IF38ohQyrU5BVLNrtAgCLmegI1hrqaZkZmcE1Ga97hpdeODRbY1vYS67kKK1t7zEi3qN8rF9A==
X-Received: by 2002:a17:903:1b2f:b0:221:751f:cfbe with SMTP id d9443c01a7336-22bea0abfecmr45250655ad.19.1744377352063;
        Fri, 11 Apr 2025 06:15:52 -0700 (PDT)
Received: from localhost.localdomain ([2a12:a305:4::308a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cc6sm48245005ad.122.2025.04.11.06.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 06:15:51 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 4/9] pwm: pxa: add support for spacemit K1
Date: Fri, 11 Apr 2025 21:14:18 +0800
Message-ID: <20250411131423.3802611-5-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250411131423.3802611-1-guodong@riscstar.com>
References: <20250411131423.3802611-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SpacemiT K1 support to the PWM PXA driver by extending the
of_match table with the appropriate compatible string.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/pwm/pwm-pxa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pwm/pwm-pxa.c b/drivers/pwm/pwm-pxa.c
index dd9c6af0f672..3835eba824b9 100644
--- a/drivers/pwm/pwm-pxa.c
+++ b/drivers/pwm/pwm-pxa.c
@@ -37,6 +37,7 @@ static const struct platform_device_id pwm_id_table[] = {
 	{ "pxa27x-pwm", HAS_SECONDARY_PWM },
 	{ "pxa168-pwm", 0 },
 	{ "pxa910-pwm", 0 },
+	{ "spacemit-k1-pwm", 0 },
 	{ },
 };
 MODULE_DEVICE_TABLE(platform, pwm_id_table);
@@ -149,6 +150,7 @@ static const struct of_device_id pwm_of_match[] = {
 	{ .compatible = "marvell,pxa270-pwm", .data = &pwm_id_table[0]},
 	{ .compatible = "marvell,pxa168-pwm", .data = &pwm_id_table[0]},
 	{ .compatible = "marvell,pxa910-pwm", .data = &pwm_id_table[0]},
+	{ .compatible = "spacemit,k1-pwm",    .data = &pwm_id_table[0]},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, pwm_of_match);
-- 
2.43.0


