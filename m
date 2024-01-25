Return-Path: <devicetree+bounces-35116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C13283C587
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B6EDB2138D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AFD73196;
	Thu, 25 Jan 2024 14:50:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GSGQn1W3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A887CF3C
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194226; cv=none; b=N86+ejjU80A0er4dod0e8Vz+5UDU2vw+/UwMwmEtseE6tPQbEK4vqkOBtdoyqQFLiFGrJRYDhYwQAS/v43TmE1UomIFyTio1lZ+3z+q3rlU4QR7wg6jE+IjzRelWQ0ENLtClQEvXr2wWGKaCLDJ6f7IfTecafbbZfFEjeIArq6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194226; c=relaxed/simple;
	bh=0hd5os3t/LKdK2NVB2IaIPXKDa42n9CplbFuM7q+HYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cNN4VrXKn0xoru7l7Aqs49AVaKaOZDiFKrZF9YPSqnLVeCDiJnCnUvH75pp7uBvGCp0NVIaGeTa+ZezzXSkWcuglvVGliSbY+GofijZqIhWju/ogeI/GgctVV31RNNPxikmGiCkhKRQN7bqCUixYDfZtREnr+DTYSyhfy4s4AD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GSGQn1W3; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40ed4690ee4so1792355e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194222; x=1706799022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uo5/6sMsEJXgYbE8BbPRJoYau3RC+fqPHaLcagZG9d0=;
        b=GSGQn1W3wzLBRTPAdWO7t0YYBUJGXWZcw9ecHlXEH1kk3Y2qHMDgGCT6emMi+PI6MF
         DpEzICWo/HaMXR9tCsEMijCl//cwT5lyLXJ33fawGWrGe/ozBvAf8ql3mM29HANAHOs7
         7gi4G4xIsFpLKfPSrnJwzcbx8vrigRjdAxY2w1Srxc7X4d062ue7AF6YNwVmYVR1qXVs
         foZ+Q//inmoiMmEfdHs4S5uVPIAdQsOcDBX7D1DyQ3cbgUInrOb5NfRu2JA1I5HtEH1d
         Xbjx5/YUxdXibWMxCzql7WhnrPbFGhA7xiWsVIi+qEhYXuy0ZB7yJoaoipMj9s2mlQ7h
         Brkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194222; x=1706799022;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uo5/6sMsEJXgYbE8BbPRJoYau3RC+fqPHaLcagZG9d0=;
        b=pOcDEvCU0HPyF/6T6ZJ5Mc7cJ5R+hEAejNcPD006rJ/q8Kd6CDJUZzecXcjO+WW6pg
         1cXx5zEmxusK8SiHfCR3SxamQ1MxILiic42PxXHuPGNtAKLRG21zDOmGQlRi7RLB00Wf
         //Wt4kts2nMLR9+xQapvTOrCE1v51XD17wAlQcbnWLf73ZpzIQH0cocgtBFvvj8HDo5R
         KF8K2gcEemZGqKstlI7Pt03hVHI2vwzkzWTqRKNdTHbFgmWn7ZZe7ZlK579Q44I0uv4a
         a2QsGsOHVsLeq3zivoCyC2tv5t2+4Xj+xOEA93cNoSxIlHT16JbmRqZNEUweVbeTOi31
         IFQw==
X-Gm-Message-State: AOJu0Yy87Tf0/2iIfnCz/H3DiRAqFox/Su/x7pjUhg8OxlyYj2G19s6p
	0EyMlAX+8DNhJD/Lli34cgw5+tVFSA2p3C7opm/dlMQXimkIR5Vsd40KkDxtKHA=
X-Google-Smtp-Source: AGHT+IHsYPm1PY8Cgk3AI9vhaP569ziBX3qB1QLXw/TjefWa12gW37HqQ58L1YMoxQHBrVjXHblYBg==
X-Received: by 2002:a05:600c:511a:b0:40d:8914:cee3 with SMTP id o26-20020a05600c511a00b0040d8914cee3mr611949wms.108.1706194222303;
        Thu, 25 Jan 2024 06:50:22 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:21 -0800 (PST)
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
Subject: [PATCH v2 13/28] spi: s3c64xx: propagate the dma_submit_error() error code
Date: Thu, 25 Jan 2024 14:49:51 +0000
Message-ID: <20240125145007.748295-14-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125145007.748295-1-tudor.ambarus@linaro.org>
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Propagate the dma_submit_error() error code, don't overwrite it.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 48b87c5e2dd2..25d642f99278 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -316,7 +316,7 @@ static int prepare_dma(struct s3c64xx_spi_dma_data *dma,
 	ret = dma_submit_error(dma->cookie);
 	if (ret) {
 		dev_err(&sdd->pdev->dev, "DMA submission failed");
-		return -EIO;
+		return ret;
 	}
 
 	dma_async_issue_pending(dma->ch);
-- 
2.43.0.429.g432eaa2c6b-goog


