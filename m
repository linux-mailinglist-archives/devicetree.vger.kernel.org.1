Return-Path: <devicetree+bounces-195966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C60C0B03B09
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:41:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BDC11A6045D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2121244692;
	Mon, 14 Jul 2025 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="05u/1uny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5933244668
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486033; cv=none; b=SPOvfCoGMDsnOPAd9DeFCxbpYXVQ1LYEcRJBEMB9m1px2R/ig3kp3I1LkRXdH4LoA59QPB9Vrj4w16O6RyilzuEXGFMAwKDM0DyWj5WjnVbbS+rCgY4QqhgxwKIzw+DuCI3MW8q11XswkYy2eGA+kNNFa02pkd5u/e+06t+5EPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486033; c=relaxed/simple;
	bh=Rnvq7ILXDlYn7NCyNrMKelcmx8kPHn08CJvMC7C4paI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Girg8KdNx5NxsrCghqoXGsy6wA5kCfQgQ+DFLtUCqpzRLFk6d9lDnByuzp0BnEjMyAzCryl4KDzEKXDud9OTXd/z4ulOMrKnczAPSthC8LY0Y6e6b9loLcE/Won0hSbPjcZOHF51IbPypKH4/r6CzLRfMU8f5c4oWwWiHn9Kpgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=05u/1uny; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45526dec171so28105395e9.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752486030; x=1753090830; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OERStMpxFd1oXz1mhimWCIXZsdyaGxN/N1YtYf02ffU=;
        b=05u/1unyDoWhpxfJaRp+DbVH5Z0MtRjys9KbOZbfg79QZdu43Kw2d+5pSUJNjOZuaq
         RahcbRYqgMX4o1cE7jUWsvHOqoretF0xNkKn5ruS9in2tJr5yiII+37lVHAqRIzqqyHu
         atvoYyMIMpe5rM1oit5kwKkwP/yHscYF8xV05d/Fy4kdctxn8BIUZahGaN96lVJaJcCh
         BFHWqO+tj1KrViutmDyKAeX4t5A+MwbA3TKR9ec068GI6n7USDOYZCKCgkv5Hojd+y5+
         dPDtXLfaU5GYTmMhBk72/zRZleKlw5dwwzNiUrcDK+VW0z1eSfdXAvGEN12nyE+1/Tki
         vaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486030; x=1753090830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OERStMpxFd1oXz1mhimWCIXZsdyaGxN/N1YtYf02ffU=;
        b=S4krAwQRyBYJ17DuDM+a4VK3e9yqcrV2x7BERuh4cTfZ0DSrsqM0vXgeOwq15bMLhI
         oJnPlOQ2Iw9Tpzq+xDm3/7ZYlAP2o8fJ2J5nOthYKJ2vcCF1waMP1+q0gWJRGq7WmQ0J
         PJU2qfe7mIRygKgHaoRgTeEpqdOeHanS4PjO1g+gATL9MDCuu9VzB8fc9Ii1kgoYs0he
         hCinxw5gFg9Bpb9ChP4+vaMh0Rxv/nyCkVsMB/EjIXts2xFJU17CgLYWoikmj767577g
         Zxr30rKyo9Pj4La+E2xyjJCUxrFxW3C3OHIkfgX7DTLwXV4Ce2EGPaRwatzATK78ijIS
         0eWA==
X-Forwarded-Encrypted: i=1; AJvYcCVWEg3RTZmzendIDol9nuaTKzUDFA2lpLvcXw+81fvmk/3/3Cljp5/QTAovYLN5C8zQWY0pUTYkr6vM@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0ZBmoqLll8qB/9I5MvaXRGLZQekccLdKmooGb6bgmlD2stl+d
	UR66nWTaQsoonkgWbw7YoSoE76P5dMpRlja+5nX8oLEUUXNNzlAlDzzUSbiB/9Ht8FA=
X-Gm-Gg: ASbGnctcm29QEGSKk0zd9siQkjhGHjG6zZALtrbfcNMAYS+Si1zVr1CZZtPb6muPwTg
	avnxmbmF9cw1YzzKCe4qzYsJjy6jVCN0JH8nmAvhdWEfx1CJxMvwTzxsVlqa+zyfTZ+x+p6xOuU
	+ZlPEVYy/z4scpn+n2nT6k8kExs/DLI52+uu7/L4BQPZXwGbut4d2wQjNPDA0xrHNEiSGreb+9X
	w5ZJkNouhrgcE2cq8y/4BdYm147fkZW+uZWGO5MNEydZPK3zgDxYoP/Quy+cWm1iWndw38cNqLv
	hA/Pu1S/rECtAXBVmWOSKf33kW6RygAxHJ/HleU8ZBoH9TGWyJoQyu18SZ/PTOZgBlCfqh0ufw=
	=
X-Google-Smtp-Source: AGHT+IFjyUYE1dOQ8JxazLI7iDjsE8P/QTDlCi2i9qu5IYfCUbgHi3kKfOduLMWkN27Rdg061Q9fig==
X-Received: by 2002:a05:600c:a08e:b0:453:745:8534 with SMTP id 5b1f17b1804b1-454ec128c22mr110575145e9.12.1752486030219;
        Mon, 14 Jul 2025 02:40:30 -0700 (PDT)
Received: from [127.0.1.1] ([2a09:0:1:2::3035])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561b25a948sm24989035e9.35.2025.07.14.02.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:40:29 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 14 Jul 2025 17:39:30 +0800
Subject: [PATCH v3 3/8] dmaengine: mmp_pdma: Add optional reset controller
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250714-working_dma_0701_v2-v3-3-8b0f5cd71595@riscstar.com>
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add support to acquire and deassert an optional hardware reset controller
during mmp_pdma_probe().

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: No change.
---
 drivers/dma/mmp_pdma.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/dma/mmp_pdma.c b/drivers/dma/mmp_pdma.c
index 4a6dbf55823722d26cc69379d22aaa88fbe19313..fe627efeaff07436647f86ab5ec5333144a3c92d 100644
--- a/drivers/dma/mmp_pdma.c
+++ b/drivers/dma/mmp_pdma.c
@@ -16,6 +16,7 @@
 #include <linux/platform_data/mmp_dma.h>
 #include <linux/dmapool.h>
 #include <linux/clk.h>
+#include <linux/reset.h>
 #include <linux/of_dma.h>
 #include <linux/of.h>
 
@@ -1021,6 +1022,7 @@ static int mmp_pdma_probe(struct platform_device *op)
 	struct mmp_pdma_device *pdev;
 	struct mmp_dma_platdata *pdata = dev_get_platdata(&op->dev);
 	struct clk *clk;
+	struct reset_control *rst;
 	int i, ret, irq = 0;
 	int dma_channels = 0, irq_num = 0;
 	const enum dma_slave_buswidth widths =
@@ -1043,6 +1045,11 @@ static int mmp_pdma_probe(struct platform_device *op)
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
+	rst = devm_reset_control_get_optional_exclusive_deasserted(pdev->dev,
+								   NULL);
+	if (IS_ERR(rst))
+		return PTR_ERR(rst);
+
 	if (pdev->dev->of_node) {
 		/* Parse new and deprecated dma-channels properties */
 		if (of_property_read_u32(pdev->dev->of_node, "dma-channels",

-- 
2.43.0


