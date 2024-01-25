Return-Path: <devicetree+bounces-35131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F79483C5D3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 367C31F22326
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC0912CD8A;
	Thu, 25 Jan 2024 14:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rLLbpOF+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F4F12BF0A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194240; cv=none; b=svQJJURFlAjSL7uLOuUaX7+h+PX5Ej3V80e3K79Ai1hhiXsUPPLovx8fQeZSO8BI7Yp+p8XiyGzwiT8RI2LZxOUf56bfYleHdKQl9FUyZvTnXAMnneewibjSP9R+xDnwSNSa9eGfXg9Q4DYkp2/KmWqcj5bUGkDG6YMYGNbT2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194240; c=relaxed/simple;
	bh=3Sscy4SIyyLUoLIoYgcWj2m0IaAGdXixvvR7f7b5ods=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A1KiL8ymzep/wsD/Zjx9+ZGWiZIbFXrFMAl7tXDJxH2IJ/hKL+lLKZfQBlMTuQ5vXU2IUk68JLZrz2AU35RSWoKFD+ZMy+Cyp73MRlvyjVrpMpTSEwqGdOC/CSA6kkmFFMrLHAYEvaC/O5wetcTz+SY4a6BvAWYK9/DJPZMq99E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rLLbpOF+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40ed1e78835so6920215e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706194236; x=1706799036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4aDiYMz53oQSBvKn2Ur1bqI8j5m6Uz7Sia7O2YMwFw=;
        b=rLLbpOF+ONoXE5ED77jjcufAhhoCz5wU2NmfsBgEHrC2evAxUjPHYWmN/cfOVJLMB7
         4R3QBx79YgCeZtkBYEL+cH1HlP88RcV47hlnKTuOxLqz7KoGWiCTfVElkViDxvJGu81f
         NwuTDJtdqUjnMMC9IBCR2mHqc1NDGXAxKr3UYR0gfy5ag8t991n2Q1C3r0lL1/XXgOcW
         IoTqVnRqQVD3mYXNDpN3iywmXk/L+uubsVrqNkg/RGp5F/93ryDns/aWp3jQyNFDUd8n
         jMbsNG9/eQvNSZE7kTMVo1Depdyh+gvpCWFiL3KbjJEt58sRlOOXH9maMpKx2bP442OM
         NKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194236; x=1706799036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G4aDiYMz53oQSBvKn2Ur1bqI8j5m6Uz7Sia7O2YMwFw=;
        b=ub/PcfStLUSTBkf0yCV/ZOgJX1PSFCBibptcxnst3you5WM1VleWfo523i74yMvzlO
         ZM8RE/hRgQkkFYkCaVSXcIJNFvJirZ9aEXelusgzb+VfaC6GNvz6RjFxk/Mu+0f8J0xb
         ti44gq75uiDZkcqOUa/Qyc1QajLBKsLOOANYc10xOisr5WUu0dQPKvoHg/5yg8bNnLQj
         0EJAPWulIG5g5WDCXNBypEq7Nau1LIOkL7deAMbBFxEWq0wODkQS4ZpIxCAQvv8TKd+u
         IuX4+7/b1YAY4Es3aaEzeXOocBnG1n4fx097LaapDZUy8AcIwL3dFx4TXsk1B01rXztk
         91VQ==
X-Gm-Message-State: AOJu0Yx2m4AFrxRc0f/vB0YyTMAV+jvLHx0W9aYcLcG/cAao4JBDMOsI
	AgYaVm1mpR7dOmUBbBirfEZlmxNIlxfyoicsH56wzyMTY9RcNivDKl+F1P0oamk=
X-Google-Smtp-Source: AGHT+IE7/zbpGORnJLRqmbZzk50i5Tn1H9FBZ7QHo75PUDu0GzJbbvQE4kU1u7rK+rLs/4lIcENVtw==
X-Received: by 2002:a05:600c:a45:b0:40e:c309:55d1 with SMTP id c5-20020a05600c0a4500b0040ec30955d1mr383831wmq.91.1706194236022;
        Thu, 25 Jan 2024 06:50:36 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040d91fa270fsm2875875wmo.36.2024.01.25.06.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:35 -0800 (PST)
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
Subject: [PATCH v2 28/28] MAINTAINERS: add Tudor Ambarus as R for the samsung SPI driver
Date: Thu, 25 Jan 2024 14:50:06 +0000
Message-ID: <20240125145007.748295-29-tudor.ambarus@linaro.org>
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

I'm working with the samsung SPI driver and I'd like to review further
patches on this driver. Add myself as reviewer.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d1052fa6a69..b9cde7ed8489 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19404,6 +19404,7 @@ F:	include/linux/clk/samsung.h
 
 SAMSUNG SPI DRIVERS
 M:	Andi Shyti <andi.shyti@kernel.org>
+R:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-spi@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
-- 
2.43.0.429.g432eaa2c6b-goog


