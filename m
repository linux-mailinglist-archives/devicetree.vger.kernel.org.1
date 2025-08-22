Return-Path: <devicetree+bounces-207771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D82B30C31
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:07:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA7437B0A73
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97222279331;
	Fri, 22 Aug 2025 03:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="B0tZ7czM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4B1277CB4
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755832012; cv=none; b=UxXLvfN1xMlchcvGmQCeLPaxUgpqnyYKWRK4eBz+ebkULqAEL0ukdn5kTWipHuho4rmO0iACVV08ECaR0enMx1wt+QSigXlXmHC6EqfsuZCO5WdE69i2KD/403s+Hu8F/nRwkAmjO+r3WvqGCX+z+w6YCYuUS7D7/Df/D3xfDIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755832012; c=relaxed/simple;
	bh=ET9r67SBgRJAysqntixUlTo+ibcE6/lAnyl7Y1qAqb4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nMPMg5xfpQ3jHyZ9suF3cd+xftScAS1WlvIa9/QT144YMtWMbHuloR8x1WktbK8LO+jft8nWJSqPgd82rinjp4XP0Payjpeat6gCE6YEd/rA95TH34NfDuMDeZf0vcCTTCy1BHOKzbe/pbcKIS8QmU2FgimKbFhotj88OUPqv2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=B0tZ7czM; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b482fd89b0eso1003598a12.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755832010; x=1756436810; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dC7kl9A7D2BWwkfx5jwlJiGlSj0s6ZSSxNG7ocAEL44=;
        b=B0tZ7czMfJU1/ngOrYt1uG4xgRL1v5wO7FI7uw8nMNDvz9w5K7y7KlD2C2wqtJ6ZNZ
         iAyhYZJhcMdCqKznP7r4Ze2vYL19/G85Ky0Xx5EF/qPJUPS7bdnSg+5umBIOOb5IbDTp
         V5xPIWuHMHj2Aru3zlGSyOo8U911/MyJOD4qM1koPkWsYxvxRJquqXrLKSuItfXH7wCw
         1+TxlMsq7P6gRaBrI2Lc4azw8PmijKbmbgBPwFNUNAE2KFecENYDT3cjPh9AogoBjjp1
         XkDxUCk3PHe6Qa0CrMLV+D/kDwFyOx0A2jH9L1qZE9M0ck5QVGn+lxzpdNLgEjEOcY9n
         s/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755832010; x=1756436810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dC7kl9A7D2BWwkfx5jwlJiGlSj0s6ZSSxNG7ocAEL44=;
        b=SuiEjR+rkuvpob50rVrcExHG8vTg9oUg+hjS/HvMdpKtVpbChz5Jkmeni9MANcY4Du
         gXYErLTos57mkZosmZ2iYsvHcnKLrEUMD9imF6yebALBiHDRPFD9t9AJ3rumokKNST9w
         LqZyZBNfU8KMYPn83UdD0MfgT2coLlsU5gIRZ8o/+CkliaCOeOWrEgrnEPg1R5gRehR2
         CSHQTe5AFmLNBd/Vqenh9uL2pza6D+Bn1ioLk9qLvCM7Hv9Spp0JXLLb6+DUV/NFJDPX
         bv+txkUhlA7rXWjQBIrqipm835yf0XRIcTpOrTtXEhkFQgONwJtE93SGiuLEANUAhWm5
         oAKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxV1/As0Kw59tbqbUljSqVbvMuS4RQmGAlCscALWuNym9uOIhlh/xe1lG3KwmmI35YXnu0khvK1i83@vger.kernel.org
X-Gm-Message-State: AOJu0Yy83wCYA8Sf1Fg99rJ102XtlmzxT8dr2E9eh6Fjy57qocyiNoJg
	CKYrOgcDGIjAuhyLw5D/6rp3MxjQq577178zgu7ysHm316DKNiO1MmLg5C6JfjsAJi4=
X-Gm-Gg: ASbGncuEKGvXyJXIS8RqqciadbGStjZ5YjcEkeW3e1zDI4fxaLlhs2GsFfoeBpND3Fn
	Hcl3x16KppWUoXypVZ8kTYP9ws2IweTZdwH61QHtDB9taxM9aGj/zS1UaEESE7cj3w7y25H5tyT
	Luu0tGOTd4nn9ZjZjzzB+OG+rfj9VVc2rs43/FizQLtFczKyagHEXGtQQHfNXcQGl8WjfNPTjgg
	UoAcPjqJQyMhpHADVUs9Ae87pxO1BWUkFWPUMr4Ri01zsb4rH4JGM1JsXN3C6SZN+kgLgXDfuwQ
	/qqx8lzXg7RhLSXxyu2TcJ/6I1YOEKT2WY4+7RGpytrsAi4jhAokMEu1Fu/+NzDqV2h/bYtn5ud
	x2FkYcP3Zck4LWgcRJ+lD1/JuiwEFh0iwAg==
X-Google-Smtp-Source: AGHT+IEAIhdT3Tfgdb8iNC0j7z0iqiuqLPLYGzXSr+7++MUa1eCRn81F36zR4QAh/yOgPvq9YcRdkQ==
X-Received: by 2002:a05:6a21:339c:b0:220:aea6:2154 with SMTP id adf61e73a8af0-24340b016bamr2141981637.17.1755832009592;
        Thu, 21 Aug 2025 20:06:49 -0700 (PDT)
Received: from [127.0.1.1] ([222.71.237.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47769afc1bsm2756777a12.19.2025.08.21.20.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 20:06:49 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Fri, 22 Aug 2025 11:06:29 +0800
Subject: [PATCH v5 3/8] dmaengine: mmp_pdma: Add reset controller support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-working_dma_0701_v2-v5-3-f5c0eda734cc@riscstar.com>
References: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
In-Reply-To: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

Add support to acquire and deassert an optional hardware reset controller
during mmp_pdma_probe(). It is optional because in Marvell devices
such as "marvell,pdma-1.0" the resets property is not a required
property. But in SpacemiT K1 PDMA, "spacemit,k1-pdma" as the dt
binding schema file stated, resets is required.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v5: No change.
v4: Updated the commit message, no source code change.
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


