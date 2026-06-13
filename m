Return-Path: <devicetree+bounces-311222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id suFMI/3/LGpIYwQAu9opvQ
	(envelope-from <devicetree+bounces-311222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:00:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD4167DE5D
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:00:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NzZAJPDo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311222-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311222-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2DFA3200A12
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 06:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B99653812E1;
	Sat, 13 Jun 2026 06:58:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D094E379C4C
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 06:58:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781333908; cv=none; b=oTPa32PLQPu13r+My5KTsWzy4ohnqI4TImbefvgfMH1dQaKJR86vtuwB0CggQkS/gce3vZtN5Tiy/kYyMXx+/kpPCAKgnRsIMS4Lzbd3cwCjPPG/Tubrx5fINgfeYrvv0Pw1+U6fAHyf0jj2kl3yvVJYr9Mgv2NzOyC82wUSi0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781333908; c=relaxed/simple;
	bh=S9wsoFfpviCH54ht1kILwTO8iq9EJE4/9BCGA0UKyVc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OrErT4A5Plqc9RpKYsVAYooayIiMuaNazAnuK59TdC28rPCe+W/fu2i5Erg14OZkh8b1C+k7DIiJepU3ftX7zaSc0IaV42vIyqQbRPlw3peR37DV4PpEN17hRMjb27fEq/nOwHN1nKhhM2JNAzV5BnPyHEFBGvSwbueqboAdzDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NzZAJPDo; arc=none smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-490b4a8e28bso12836605e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 23:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333904; x=1781938704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eG0rTodn0DU81UbM7Y7nOdcQ/eVn9TOf7zlRSmencCY=;
        b=NzZAJPDoub8JKbkpYZOO5scC8qwSzATbqOq4dIWqis12jqfxoUVPcGK3FhBfHNL/vm
         JbM5F7fsFCe0tnAUCMyFBIP2IVpNhL2vyCwb9kOmwnIv4nZkzaKsDfARbYBGc7OqBm6c
         LbinWMSKkKGYnpk+Cyid3khEgg7Y/WfLr/HG5l0bmGlLX8d040kyHWiETYFyeC4y7+Ih
         v1YkAe9FZWY1TcATI10is3yN38CoEMtU0z8gOHXT+hJjoQsFPRyqY8kYzgFb9/rUTgwa
         NXHoaiMwQwqGjYad6/rqoCHLf3kryTacIJGfjP/xb9ZppDg1bqZCN1cZCaUqhj74vLp3
         xfog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333904; x=1781938704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eG0rTodn0DU81UbM7Y7nOdcQ/eVn9TOf7zlRSmencCY=;
        b=YCDxPs9kssi7keWHxtgVD4Nc8YnCeX68u14ue3+qCmbqoUI+E9K1kEfwtTxfc3ENGO
         YOy33+UAm3sYJxEbW2TNS3CDNANEhMAwih7mbuMqtgGPt0ARZOYZrfumXbJXCdFMFhw9
         43NMJdqVbwboghfIdYNWTGxcyjdX8Fc3+jRKeR4PpQ958UkWGpInjXpqTXf8/TtG6GXT
         CS0Jrvpxg0YEK5qUMtup8+NF3w24i96Q22B4b5PGfMup2nIAFnZHLKd/+YxZ8JGaEPkX
         oFbWpx5eLk44zMGTgNTlp7mXI+gPlR6p9BI71rRzFJP0zIJSptwWMZvfFxxdk2w8T8l3
         W3DQ==
X-Forwarded-Encrypted: i=1; AFNElJ/hVZXkApV+BArhVU16L1mVo/uebsUQkjD7kQ0AIwAwZqyE2/vAcswJjwPzD+LKeMSv/Jic2soEtXyg@vger.kernel.org
X-Gm-Message-State: AOJu0YxtNkNyEM1wRypx1V8qTFNqCDDF1DeJN4loaJMsHYQdKD80JPQV
	O0VJ7/UnB/f4jO+JdCm6U90CRE1KUVnv9TTt8IX9p95NQ3kcvOTDl1kb
X-Gm-Gg: Acq92OHBmF80DLOYvv5K0E05reGDysd3QdymY4EvGvFRm3IjGz/g8W4mKC1IspRrYGo
	kcmwy2W/mwOBQcYk7dDZH+S9p1/ZfkWAq4nu4hodNbw9rfsLRFaapumrRqYx6Dlnn4OWOQf67Ou
	yiz26zJY/IkrHp0Pd24e8EWc5ZVyqUHdVXatIqGV8htwWvG8YcFSf6aU4T5uWb98RNWTxsDApmr
	tmnvF6qAYdukLjOF8gmHBIfKsO/1jiivohMCLw9yjRjNQrFVk6A9sbk5+BhQnAuRHNie2XGj3ok
	vuApjU9jJviZ7ARpAGBJX+quSk6uB7xia4KBQubH6/PZILILdxuZP0GvyN0ZsvMB6yoLzohXWE+
	jeXso15VB8Cj5i2gpGs7cHZlxnuao6NLVmST6c4s2T9s6H9atat7mJtcYXc+zw8oN8z8X9YhoEb
	buGoDA2LLZIMT6AEKWUcjVoIZMaUJqt6WoJR3Pb1/JBQ==
X-Received: by 2002:a05:600c:820c:b0:490:45bb:8dd9 with SMTP id 5b1f17b1804b1-490ec4cde5bmr72801305e9.8.1781333904245;
        Fri, 12 Jun 2026 23:58:24 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:23 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 1/9] accel: rocket: Introduce per-SoC rocket_soc_data
Date: Sat, 13 Jun 2026 09:01:08 +0200
Message-Id: <20260613070116.438906-2-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311222-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,lists.infradead.org,vger.kernel.org,lists.linux.dev,rock-chips.com,cknow-tech.com,kwiboo.se,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomeu@tomeuvizoso.net,m:ogabbay@kernel.org,m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ulf.hansson@linaro.org,m:dri-devel@lists.freedesktop.org,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-pm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:xxm@rock-chips.com,m:chaoyi.chen@rock-chips.com,m:finley.xiao@rock-chips.com,m:diederik@cknow-tech.com,m:jonas@kwiboo.se,m:midgy971@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[midgy971@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFD4167DE5D

From: Midgy BALON <midgy971@gmail.com>

Add a per-SoC data structure carried in the OF match table, currently
holding only the NPU AXI address width, and use it for the per-core DMA
mask instead of a hardcoded 40-bit value.  No functional change: the
RK3588 AXI master is 40-bit.  This prepares for SoCs with a narrower
address width.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c |  7 ++++++-
 drivers/accel/rocket/rocket_core.h | 11 +++++++++++
 drivers/accel/rocket/rocket_drv.c  |  6 +++++-
 3 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index b3b2fa9ba645a..09c445af7de73 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -7,6 +7,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/err.h>
 #include <linux/iommu.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/reset.h>
@@ -21,6 +22,10 @@ int rocket_core_init(struct rocket_core *core)
 	u32 version;
 	int err = 0;
 
+	core->soc_data = of_device_get_match_data(dev);
+	if (!core->soc_data)
+		return dev_err_probe(dev, -EINVAL, "missing SoC match data\n");
+
 	core->resets[0].id = "srst_a";
 	core->resets[1].id = "srst_h";
 	err = devm_reset_control_bulk_get_exclusive(&pdev->dev, ARRAY_SIZE(core->resets),
@@ -52,7 +57,7 @@ int rocket_core_init(struct rocket_core *core)
 
 	dma_set_max_seg_size(dev, UINT_MAX);
 
-	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(40));
+	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(core->soc_data->dma_bits));
 	if (err)
 		return err;
 
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index f6d7382854ca9..8ee105a0be40e 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -12,6 +12,16 @@
 
 #include "rocket_registers.h"
 
+struct rocket_core;
+
+/**
+ * struct rocket_soc_data - per-SoC configuration data
+ * @dma_bits: Physical address width reachable by the NPU's AXI master.
+ */
+struct rocket_soc_data {
+	unsigned int dma_bits;
+};
+
 #define rocket_pc_readl(core, reg) \
 	readl((core)->pc_iomem + (REG_PC_##reg))
 #define rocket_pc_writel(core, reg, value) \
@@ -31,6 +41,7 @@ struct rocket_core {
 	struct device *dev;
 	struct rocket_device *rdev;
 	unsigned int index;
+	const struct rocket_soc_data *soc_data;
 
 	int irq;
 	void __iomem *pc_iomem;
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 8bbbce594883e..384c38e13acce 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -213,8 +213,12 @@ static void rocket_remove(struct platform_device *pdev)
 	}
 }
 
+static const struct rocket_soc_data rk3588_soc_data = {
+	.dma_bits = 40,
+};
+
 static const struct of_device_id dt_match[] = {
-	{ .compatible = "rockchip,rk3588-rknn-core" },
+	{ .compatible = "rockchip,rk3588-rknn-core", .data = &rk3588_soc_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.39.5


