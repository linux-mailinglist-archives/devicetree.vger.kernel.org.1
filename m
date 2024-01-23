Return-Path: <devicetree+bounces-34246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8348392DE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F9E21C22FBC
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30730604B2;
	Tue, 23 Jan 2024 15:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MXnCoeoy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2ECC5FF0F
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024072; cv=none; b=DseNJ0a/BICh547tS0qYPgZeobdGQrzoDreTiVYSE2utXknZe6epjg/zXAQc1IqlM9n+/wN+eEG9SIlkydqNf6LdRSpvzAvsFVv/0qQudRZWAJG+9qJYsTnEz5paWIt1/+eD2BnFwAHN+P3SDAhtm2WxrYcycnY1hJJr9GfXwt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024072; c=relaxed/simple;
	bh=Wu0+yV3u4XzGF+o7kJWaER/58nXttiKzUPsevm54PqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qi51Db4NXMVBds+7sZdbqeFEEuQ/BMxOA1G/gx8Fv6laQEXKgFnLSwEpYdgN3XJctYn8aks3j7svOWZi+nzJQ76eVeaNgOScLR6sAfvPV1S/g5d1DHs7fCsbYfDKYXMPNicQjjhePHlhRVD084cOJ70K9klIWVmM72lrAvKegOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MXnCoeoy; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40e80046264so56602355e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024068; x=1706628868; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TlhyzNjFt8B4egY8fYl+NmfB3SAkzLPxUZ0BvmIG80I=;
        b=MXnCoeoyETLxGk/EiMMpU8Ob7aiPmVQOSyE0OfP9AJiHcezPt7mw26tltJN/sV/FTY
         Q9KXKDnMiw93aFzVxvuLYA0tBH/iauYyfZ8X2ZSUBi98MPtrx2RjWhHQ/ULYamBXSqIv
         rx/W+2iYairx5NVICa9cnGD5uQKGnldjVtlyB8MSbDWXyi0B9KQmMMU9oTvyQROGADFH
         6M1rWukBEzSbx7Ip+7EyPMrVLd6aE/JqlIV0Wy+WJYSP+v8MJoeRogFgvzN7iN+IBwF3
         Wjl4XGAZkKzXe6lzxS5KWqgqZ4wG2eQ1ZPr6KLP1KsrtoPPYPQt+eKyRmTL5K/+BEs2o
         Wsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024068; x=1706628868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TlhyzNjFt8B4egY8fYl+NmfB3SAkzLPxUZ0BvmIG80I=;
        b=kun9s9DAKNJcTE1sQd8UAPTg8VEsRGfSv4XNTxUFhujObZWzbwErAm7Y8diANE4vCL
         DrEvnfWSVwgnmPI7hp6o7UATuOovPNSKMbL9MIH2Kkv8zwxW5Oazu4RjZ0/WQ0V0aTZL
         jZlvqGTrTleIAcddyaKSYCH4nY6DQ6t4R0tt+T1Oyc4G7yon8Vu8eT5Kwz89FiEN4OAS
         i8HVdIam2BxNo/K5bWSryOYrlkQ2zCaC7VL9aVgN82e1osWF2nBAj5BjKNGnHBOi2IB6
         l+gCoU8C6bxyE5aG3LiC3iljYsFgAKPJx7JmCiyaUtGuTgeWyvu6gpaKdUpGeE3zAjLK
         DmLQ==
X-Gm-Message-State: AOJu0YyiT0oK3HnUzyLHu4dYdB63o6pALiAVJmPRWxlxn7IlbWf4vzOe
	NS9kXj9Gppczxe0OQS8dBXyFuDev+M76slL5hJVC/AYp1bhiUn3OsZ/5qzX8/Bg=
X-Google-Smtp-Source: AGHT+IFZYGuih+06B7G1t7JNngFPHTbZIv3BFvbVmmj7HCjRI+QxjvRyDu/w8RFd1+v88GBtB6rn1w==
X-Received: by 2002:a05:600c:1f81:b0:40e:a7f0:a0f8 with SMTP id je1-20020a05600c1f8100b0040ea7f0a0f8mr286487wmb.33.1706024067797;
        Tue, 23 Jan 2024 07:34:27 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:27 -0800 (PST)
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
Subject: [PATCH 03/21] spi: s3c64xx: remove extra blank line
Date: Tue, 23 Jan 2024 15:34:02 +0000
Message-ID: <20240123153421.715951-4-tudor.ambarus@linaro.org>
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

Remove extra blank line.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 187b617e3e14..26d389d95af9 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -16,7 +16,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/spi/spi.h>
 
-
 #define MAX_SPI_PORTS		12
 #define S3C64XX_SPI_QUIRK_CS_AUTO	(1 << 1)
 #define AUTOSUSPEND_TIMEOUT	2000
-- 
2.43.0.429.g432eaa2c6b-goog


