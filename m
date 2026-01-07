Return-Path: <devicetree+bounces-252163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2E6CFBCF5
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 04:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3F9A30AA6F9
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 03:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7C2260580;
	Wed,  7 Jan 2026 03:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b="Qfv24pqE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2E425CC74
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 03:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755273; cv=none; b=IFfkIbzs9hJ+uVoI1af10T7cu5s605s0VzadwkudjuPRRRspGsRdwXzzTCvGJk1Wt5rz23gmI6T9J4xx/Kc2Ncwhu2oaAHEHriaoHvo+FKElKPn1UBZoxJZ8rfEBhQq8PN/h50PO/6WJAur+YooW5h4uyoXlitMPDQhT0dqpHoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755273; c=relaxed/simple;
	bh=YCtL7XIQ2elQSXG/uJJP3S0gGTQbILzmG4WP4VYHMLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mc/MFxkIuwzEuusOM4QIJhXQVUBR5bxho/oCPmmuNSEEzqAk+RLb0lEYXeHKKx3OKJUz04MwDPVgoYq054x/COINczyalzXw3oeUrjNeuGOJlTatA8NZVMwVy3azCJetVhs6yxDMmSNZTbUcwC2mX2IyP8aPE8/H+e3EjT6q6Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=Qfv24pqE; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0x0f.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a0d52768ccso14585045ad.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 19:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1767755271; x=1768360071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7ZFdLTnDvnIrydUNeznKuyxON1SPga3Daneut3hK8I=;
        b=Qfv24pqEWgseRlnjw4P1mHrXUDrBpTvLmsenXQiyWWzG22HUvMRrurXJBzybeyo7bq
         /TPNkH8vSWsVnQdjDoKIvyaM3w7OTplNWXt0RBSBbPz65/nvPOGskK+h0bYzG7PMFlmg
         jwrxyDMSGwnJ6pICFK8Gs2wS9hFJ9kpUcCX6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767755271; x=1768360071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R7ZFdLTnDvnIrydUNeznKuyxON1SPga3Daneut3hK8I=;
        b=SucYKO7y3S8i3qeiV1a0ZpP0ZuBJM8uNXn43ghCPi3jWtNgypPw4LE4xEZ25SPrn4c
         1QC7q70qJ84oNNvtvjoZbTOILtsTSSVEFi9VqHe4jfO3zjk8DJdcW+hospRJJ8fnZayc
         Q7Y/snXc3tJMyFvlSbvnYf8W0gTIAbkUoPUYoEP4sAxwdhnyYvpvbWGf/scS5kYIpwro
         HH6tPb1KBEVF7rrfFFDhISlGXSdzz1NHaIWFvJ923yrbynP10z6nJQi5Xo5H/vSHXCoC
         dQ+JYGUB67s+6XGMhgXafom4vm7gTfAVuIgBe1OSD9nXAz72gUykKkqlhDHJp5chnrQz
         m5Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVAO76qE0VnvHbtYduZx838QcSUj812DxGKT9TW9KslCVavOqGxRL8/e5YgRDnqQW4NRH6tQmRVgeYy@vger.kernel.org
X-Gm-Message-State: AOJu0YzLShCIJg9BK+6HImYV5xukAGCK1Gquo81SCYDBln/V+Zik4XdE
	1++sRzZgPO/TqAfKEdaGKP4G/cLl92WAKuqmsmO6uMwr1FPFnTf5+Yb+n01KBYlkiv6Z9Khusjv
	bTL8mA1U=
X-Gm-Gg: AY/fxX77PHfxZEl56H0rjlP0kXYz3nk6CQgcTSCsOpGldsdEhEcPK4kr565/GYaMkiG
	+G9A4IFRJSHBe3ryQqDfyByE1YssQITw8UhZ2tTC0VyJ0rNoW4QSmlV83cICbMC6A6e2Gt63G6X
	Gu4CtQqRj0w2UQ9XNvcDdCsE9ThSziiX4wFHqG+21cMfC33iHnhFlvBVrDeRSNVDp/qQga55Umg
	fB+51IDoXH//poScZn30xis8YsyBruRcuYfdZCoiFT8d5+waNGqXL/owqlT2bm+VdnNUvKJL1K0
	O0Foc4PZd7BUcfmAClW9FL7Oi8Zmzi4d6DakqPxX7RG2bevVwbkzjTTagqUR7pL3prPmOFWM23K
	DMoHaNJ9v2hbjymro9U2zdUKcFFq6AeHzky6AG4SBhIEZug+5oQfe7vKqe29r15jBX3K1RfO8qq
	K/UWdPLgu8l3UXDoRrkHsTcnMwnQmVuOF9lBtKX5FI2d8BKLDdvRFr8PnRxLZK+hE2q519hkSjW
	/E=
X-Google-Smtp-Source: AGHT+IEdpj9FBlTpGGiP4vWM+VPJOIFZzgRKvhnaBLXZwRM5iwazxSKJvIV2JHH5i9DicVEy3eXR5Q==
X-Received: by 2002:a17:902:f60d:b0:2a0:daa7:8a3d with SMTP id d9443c01a7336-2a3ee47f15amr10294815ad.23.1767755271138;
        Tue, 06 Jan 2026 19:07:51 -0800 (PST)
Received: from kinako.work.home.arpa (p1536247-ipxg00c01sizuokaden.shizuoka.ocn.ne.jp. [122.26.212.247])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bd8sm33694165ad.102.2026.01.06.19.07.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 19:07:50 -0800 (PST)
From: Daniel Palmer <daniel@thingy.jp>
To: linusw@kernel.org,
	brgl@kernel.org,
	robh@kernel.org,
	saravanak@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@thingy.jp>
Subject: [RFC PATCH 2/2] gpiolib: of: Remove a bunch of compatible checks for spi controllers you don't have
Date: Wed,  7 Jan 2026 12:07:31 +0900
Message-ID: <20260107030731.1838823-3-daniel@thingy.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260107030731.1838823-1-daniel@thingy.jp>
References: <20260107030731.1838823-1-daniel@thingy.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use of_device_is_possible_and_compatible() + The kconfig symbols that should indicate
if the compatibles being checked are even possible to allow the compiler to totally
remove the code for most users.

Signed-off-by: Daniel Palmer <daniel@thingy.jp>
---
 drivers/gpio/gpiolib-of.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index 8657379e9165..2c87f1fa1f95 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -93,9 +93,9 @@ static int of_gpio_spi_cs_get_count(const struct device_node *np,
 		return 0;
 	if (!con_id || strcmp(con_id, "cs"))
 		return 0;
-	if (!of_device_is_compatible(np, "fsl,spi") &&
-	    !of_device_is_compatible(np, "aeroflexgaisler,spictrl") &&
-	    !of_device_is_compatible(np, "ibm,ppc4xx-spi"))
+	if (!of_device_is_possible_and_compatible(CONFIG_SPI_FSL_SPI, np, "fsl,spi") &&
+	    !of_device_is_possible_and_compatible(CONFIG_SPI_FSL_SPI, np, "aeroflexgaisler,spictrl") &&
+	    !of_device_is_possible_and_compatible(CONFIG_SPI_PPC4xx, np, "ibm,ppc4xx-spi"))
 		return 0;
 	return of_gpio_named_count(np, "gpios");
 }
-- 
2.51.0


