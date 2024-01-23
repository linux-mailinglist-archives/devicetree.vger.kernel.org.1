Return-Path: <devicetree+bounces-34257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A272F83931B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:38:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59FC928A43E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3A962804;
	Tue, 23 Jan 2024 15:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLxZgVcA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04791612CD
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024082; cv=none; b=Xu0i+q6jK1/AofJlqFCDuy3Q4J9APQMY1SuKBeg42smlg8+pG5lc1FUfMvgsIWTsrk+ULTa2w5lQZGsOT5UhlMS8Cc9bqYehPh4EnuPOEwRRN8LUkzYktO9S5ogbtjly/0MNKCyp9nLrzclcNHV1E+Ob6ZvNDSpmlkVgVOW5v2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024082; c=relaxed/simple;
	bh=aiqMUmyEj1u57UdPoECEzznrChPaur9StHF4KTgwvWE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SEqnPZ7cbVs+y6qxCNYH5AKSj2RXWc8ycWaWszg8urbeqTArN5q9CXWeLLFvqW9/P9KvarhHO0JH4pQd0GueO771gVN7SaONHoSIly+87K3V0HgqXqHI+Vb0bTkUnZ8opfhaP5FiVibZNqBEHJVv71iJOHlZ3ZqQXdND8PKIA28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLxZgVcA; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40eb95bd2c6so10517165e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024078; x=1706628878; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDcK5S8n/PLxtzPm44TTZV7bPj0wDFTndTNX2CSFLe8=;
        b=wLxZgVcAzEzLXYnZo3wMx4EiIwNbWUOpk4oYdcStPjgJDLfN5TbGpp1zylFNuX8TdN
         Db36L648Cf3roYfiJ1A1i7gwDg2Hv5VVSxqvC0wwxwL75h2GASLI0k9gjcjjRbWQ2nHB
         X5jfjCXpIIhFG5Ss3uSBHfv0y73WzW0biTTPD2HOZ3wjxYNrepz87XkA8RH2es7u9VD1
         UCGzVVqWjIxlMCox+U/v8u0OqF8JuLghvCwguFkDJmuMa33EYqvirXb/GgUMgZhajsF+
         MbYV6Z1UfmF9WdTgreVjIWwpD9c6E8pb1l8eK7oSSJeRXiUNKtqBLSlM2GS1qsfFF4Uh
         Sshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024078; x=1706628878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDcK5S8n/PLxtzPm44TTZV7bPj0wDFTndTNX2CSFLe8=;
        b=OaowmHC+7Ki6JOcy3LHCyc6xNluHVjJiGurr4xUf62xk93uaSTpgv84thlf5IGLRz0
         3gs/wSRkyB6d+46Vlj3lsCcDXVpVMe+6S55z+65bjytxhXMQIn6BSp2+fOvLG9ze1ILF
         J4bxFgpLMb/GeNgq0sbl2XZRio3lx/bfmRV6yecBNL5uy1TQ8nh9EJSZVkz4sNXQEjjS
         GnySdF1upb/EgSuwDldC/HuafCgfb5eWgH4Hs3+QFAHUrPwxu4kZkWJI1NInKLsGBJZl
         gd5IfraZS/oeH1DbtQ5eSI/FEQx81S3P3NUVz+eweACes3oOIs4b/6ofLicNxRhyA/3N
         8A0A==
X-Gm-Message-State: AOJu0YzDyITTs55PDPKQMM1qzJGXLVFOmI14j5gZXUIV7hRh0zs675NG
	H8s1FIWPMV/0nKM6pbm0ecqE8DpFanVsqtCIvUjg12a/Mhi1rCmWwzZKIs1NtnE=
X-Google-Smtp-Source: AGHT+IEaPKuKYQ2O6yA2vkn4qNMcqnTA/hNm86+45dMXVIcjSmoweGA6oIQ5FlKxetXppti+/C/LhA==
X-Received: by 2002:a05:600c:3ca9:b0:40e:88d7:3dd1 with SMTP id bg41-20020a05600c3ca900b0040e88d73dd1mr250569wmb.37.1706024078284;
        Tue, 23 Jan 2024 07:34:38 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:37 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: broonie@kernel.org,
	andi.shyti@kernel.org,
	arnd@arndb.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-spi@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	andre.draszik@linaro.org,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 14/21] spi: s3c64xx: return ETIMEDOUT for wait_for_completion_timeout()
Date: Tue, 23 Jan 2024 15:34:13 +0000
Message-ID: <20240123153421.715951-15-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240123153421.715951-1-tudor.ambarus@linaro.org>
References: <20240123153421.715951-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

ETIMEDOUT is more specific than EIO, use it for
wait_for_completion_timeout().

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 8897b5895cde..fd0e62ff8968 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -520,7 +520,7 @@ static int s3c64xx_wait_for_dma(struct s3c64xx_spi_driver_data *sdd,
 	val = msecs_to_jiffies(ms) + 10;
 	val = wait_for_completion_timeout(&sdd->xfer_completion, val);
 	if (!val)
-		return -EIO;
+		return -ETIMEDOUT;
 	/*
 	 * If the previous xfer was completed within timeout proceed further.
 	 * DmaTx returns after simply writing data in the FIFO,
@@ -568,7 +568,7 @@ static int s3c64xx_wait_for_pio(struct s3c64xx_spi_driver_data *sdd,
 	if (use_irq) {
 		val = msecs_to_jiffies(ms);
 		if (!wait_for_completion_timeout(&sdd->xfer_completion, val))
-			return -EIO;
+			return -ETIMEDOUT;
 	}
 
 	val = msecs_to_loops(ms);
-- 
2.43.0.429.g432eaa2c6b-goog


