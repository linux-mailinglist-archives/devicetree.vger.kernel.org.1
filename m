Return-Path: <devicetree+bounces-34261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C931A839331
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 16:39:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F397B24068
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 15:39:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE92633F1;
	Tue, 23 Jan 2024 15:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i8fBUW1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBF7627FB
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 15:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706024086; cv=none; b=Cr5fH8R3ApxnSfXCjieEIyLpK71Diyis2CHM1m+YdJ1FrQIne2yDaIEaq++IDRNQb738JU+aFBoIBV2c0aYECgdtr0jeXS+EVkf3kxtVvPs7FCv7DcChFmgPqWRFOp3T/H/rKPRyklv1E29M6q/NP7U5XITIAGX+0Q8UCUNkT1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706024086; c=relaxed/simple;
	bh=uyvoI3Eakfsm5uU2bBBf4GNvp+1Z30veFit2CgoNzVA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qfqsh/8bV9VO1NO4TmzFaZ3Yb2pX5CbvyRgUDgtapaNvGDLhKA4oFc9D/Itqyk0bMdQ7DTZ/O6lhKxpxLAehxrFMyaXHC5LEq0Ivi1e7D2hZCYidC7d6AFSsjkR55bGuvSsdzjMGsVXdy6cov2csDF8eYOm99zR1vH0a92wrHHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i8fBUW1U; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40e86a9fc4bso57491055e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706024081; x=1706628881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/irE8ZyZqV8JPqhFZspW4QvYBkIBZkdLqpFIYT3Nu0M=;
        b=i8fBUW1UXBpq+PbgE7s23N2jq6m/LbjqqPK0i2O9xePJco/GU3g/VZcytc9uNerkf9
         fTEvnqqngkKLHvaBCvqJS+BnAR+xOxFJpz/3s3YPZAFa4ZIkvgRqb/XMHbUy557Mu4ku
         G13Sa3nBf/oO4VkVyu80eu7jPLVtyaAOzjEJS0Gxg7/AsxUaaG92sHzLU+L3cyx2hFP+
         vKCBy2DQUynstj8/IQ530U3ghycbE4H6ZxLDfUH6S8FVLqaSvshP3+ROBzCR4KK+QjMS
         CiOVb4aHlNjY5xjRs1K5ffbzs/SiAmscV8FYOmScbGMIIV7WjyHPnLgalZ546hc0K/lg
         uWEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706024081; x=1706628881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/irE8ZyZqV8JPqhFZspW4QvYBkIBZkdLqpFIYT3Nu0M=;
        b=XejW0oqiDlhpAMkapLcIemGe+/6QH/tkoYpGPkTy5L9tepLDdf6Udiq8LFRO3v6geO
         vaTv8IwAKGZkekycxSCjYWpo5RoSAwte1bL6YB8Lzp9nFqziSC8x7kyu9gjGgMNFf/4U
         3cVsgEGnGYxp4tWxUbw/IqUUhI6EtMBKv5iLo6rwAndv5fxgodMkYsybss2QqA0GbEnu
         OkoNB0Dp02z8VOoCQOdX1w06izFe7ji0NU8weKhIK7MYKL35LB33BvkdR76emHAOh87G
         eItDj6xTWemtndhmnpVuPQ3Rx0vydu5xV9+toikmvt1Lh4JIN2lShsKcnQjqmkxeD/ol
         MMLg==
X-Gm-Message-State: AOJu0Yx7vif8DNeU+otL4F+wr+WfjpAnn36fdbJdNXu527xtzdpq1l2n
	mgOIHFQ4tFz4r3WtuvdJCcAppvPSCWtC9i+/pnZC29xCykvQi7qNnThmysV5Qsc=
X-Google-Smtp-Source: AGHT+IFnQUAOFj2XlDJpBxTuWZdr7PkB/FRu7Br6988kcrenHLZAgS6ZvP6iNS1JTyl+7ezr01rrMA==
X-Received: by 2002:a05:600c:46ce:b0:40e:b036:d92e with SMTP id q14-20020a05600c46ce00b0040eb036d92emr249779wmo.144.1706024081101;
        Tue, 23 Jan 2024 07:34:41 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id p21-20020a05600c359500b0040e3488f16dsm42457536wmq.12.2024.01.23.07.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 07:34:40 -0800 (PST)
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
Subject: [PATCH 17/21] spi: s3c64xx: downgrade dev_warn to dev_dbg for optional dt props
Date: Tue, 23 Jan 2024 15:34:16 +0000
Message-ID: <20240123153421.715951-18-tudor.ambarus@linaro.org>
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

"samsung,spi-src-clk" and "num-cs" are optional dt properties. Downgrade
the message from warning to debug message.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/spi/spi-s3c64xx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 2abf5994080a..62671b2d594a 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1065,14 +1065,14 @@ static struct s3c64xx_spi_info *s3c64xx_spi_parse_dt(struct device *dev)
 		return ERR_PTR(-ENOMEM);
 
 	if (of_property_read_u32(dev->of_node, "samsung,spi-src-clk", &temp)) {
-		dev_warn(dev, "spi bus clock parent not specified, using clock at index 0 as parent\n");
+		dev_dbg(dev, "spi bus clock parent not specified, using clock at index 0 as parent\n");
 		sci->src_clk_nr = 0;
 	} else {
 		sci->src_clk_nr = temp;
 	}
 
 	if (of_property_read_u32(dev->of_node, "num-cs", &temp)) {
-		dev_warn(dev, "number of chip select lines not specified, assuming 1 chip select line\n");
+		dev_dbg(dev, "number of chip select lines not specified, assuming 1 chip select line\n");
 		sci->num_cs = 1;
 	} else {
 		sci->num_cs = temp;
-- 
2.43.0.429.g432eaa2c6b-goog


