Return-Path: <devicetree+bounces-76604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 451E090B51D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 17:50:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 431ED1C22C60
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 15:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA0C15B55E;
	Mon, 17 Jun 2024 15:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="kepDV1/3"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50C615B0F7
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718637758; cv=none; b=ex2TAtOul8JVLlr9IRAm14Odtmw5n6BNVPFdLsct11uF38t/2twymBxm0KXfYQVnOl44Uwl235coMJEz4Or/kn7rBiC/manV7g3r2Ix31WDGw/CxJceV3nGsiKTxCAl0LAH83bmR9W+wJ6UJibbAQTff1qxmFfgZRTalg90EuIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718637758; c=relaxed/simple;
	bh=JdeJqrlg8CfqPk2aFFrPUXdjz8LMnLs/ckxgdkPntHg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nE4pZrRo60vBS+2HX4QwHG4bFRGHyEhSG6u3Npoq0Tkw8a5Y7lE0SbXSL2KCvZjrO/+x/Tg0x6s7BX5yPuzNg2m3BeeMbgZwhT+x1HBMduHcU3icsM6gBCbbJ9AE2S58o7q20DPHVqe8Kp/re5JkTtWU5IXwfhNI3SdlMmFfJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=kepDV1/3; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 202406171522266c63bfe1879a448e87
        for <devicetree@vger.kernel.org>;
        Mon, 17 Jun 2024 17:22:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=Fxp6XouXtcm6HEHNTUrhXH4PgJrnOGuaFeg/ybdFDmQ=;
 b=kepDV1/3ozToSVeN5YAbn800RaJw+ckTHES+KIyaAeDJ1GPVB0Y+Is7QiewUefDa+YnpMa
 F+XlNg2me3TRcXCj5D7BfXU1t6VRy/zsMDyPuqIbObykaEBCYjlRQe0b99HzU8GxQ9SsZyvy
 mEPjMhDUw1VbpVMqI6TW0cV+dhsW8=;
From: Diogo Ivo <diogo.ivo@siemens.com>
Date: Mon, 17 Jun 2024 16:21:41 +0100
Subject: [PATCH net-next v4 2/5] net: ti: icss-iep: Remove spinlock-based
 synchronization
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-iep-v4-2-fa20ff4141a3@siemens.com>
References: <20240617-iep-v4-0-fa20ff4141a3@siemens.com>
In-Reply-To: <20240617-iep-v4-0-fa20ff4141a3@siemens.com>
To: MD Danish Anwar <danishanwar@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Diogo Ivo <diogo.ivo@siemens.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718637740; l=3238;
 i=diogo.ivo@siemens.com; s=20240529; h=from:subject:message-id;
 bh=JdeJqrlg8CfqPk2aFFrPUXdjz8LMnLs/ckxgdkPntHg=;
 b=2HxZqi6sESfK5Wqxb9jateLja5oygdPcYT309hPE+AzVRLLKPa2c+CXq8/M4uxMZjCVIaM0xN
 p0qSrKiag1cCVcbfFAovNRky7+uioDC0sfNJrWOl+xPtBN84RxqP4Sq
X-Developer-Key: i=diogo.ivo@siemens.com; a=ed25519;
 pk=BRGXhMh1q5KDlZ9y2B8SodFFY8FGupal+NMtJPwRpUQ=
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

As all sources of concurrency in hardware register access occur in
non-interrupt context eliminate spinlock-based synchronization and
rely on the mutex-based synchronization that is already present.

Signed-off-by: Diogo Ivo <diogo.ivo@siemens.com>
---
 drivers/net/ethernet/ti/icssg/icss_iep.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/ti/icssg/icss_iep.c b/drivers/net/ethernet/ti/icssg/icss_iep.c
index 3025e9c18970..d52e42fa64f2 100644
--- a/drivers/net/ethernet/ti/icssg/icss_iep.c
+++ b/drivers/net/ethernet/ti/icssg/icss_iep.c
@@ -110,7 +110,6 @@ struct icss_iep {
 	struct ptp_clock_info ptp_info;
 	struct ptp_clock *ptp_clock;
 	struct mutex ptp_clk_mutex;	/* PHC access serializer */
-	spinlock_t irq_lock; /* CMP IRQ vs icss_iep_ptp_enable access */
 	u32 def_inc;
 	s16 slow_cmp_inc;
 	u32 slow_cmp_count;
@@ -192,14 +191,11 @@ static void icss_iep_update_to_next_boundary(struct icss_iep *iep, u64 start_ns)
  */
 static void icss_iep_settime(struct icss_iep *iep, u64 ns)
 {
-	unsigned long flags;
-
 	if (iep->ops && iep->ops->settime) {
 		iep->ops->settime(iep->clockops_data, ns);
 		return;
 	}
 
-	spin_lock_irqsave(&iep->irq_lock, flags);
 	if (iep->pps_enabled || iep->perout_enabled)
 		writel(0, iep->base + iep->plat_data->reg_offs[ICSS_IEP_SYNC_CTRL_REG]);
 
@@ -210,7 +206,6 @@ static void icss_iep_settime(struct icss_iep *iep, u64 ns)
 		writel(IEP_SYNC_CTRL_SYNC_N_EN(0) | IEP_SYNC_CTRL_SYNC_EN,
 		       iep->base + iep->plat_data->reg_offs[ICSS_IEP_SYNC_CTRL_REG]);
 	}
-	spin_unlock_irqrestore(&iep->irq_lock, flags);
 }
 
 /**
@@ -546,7 +541,6 @@ static int icss_iep_perout_enable_hw(struct icss_iep *iep,
 static int icss_iep_perout_enable(struct icss_iep *iep,
 				  struct ptp_perout_request *req, int on)
 {
-	unsigned long flags;
 	int ret = 0;
 
 	mutex_lock(&iep->ptp_clk_mutex);
@@ -559,11 +553,9 @@ static int icss_iep_perout_enable(struct icss_iep *iep,
 	if (iep->perout_enabled == !!on)
 		goto exit;
 
-	spin_lock_irqsave(&iep->irq_lock, flags);
 	ret = icss_iep_perout_enable_hw(iep, req, on);
 	if (!ret)
 		iep->perout_enabled = !!on;
-	spin_unlock_irqrestore(&iep->irq_lock, flags);
 
 exit:
 	mutex_unlock(&iep->ptp_clk_mutex);
@@ -575,7 +567,6 @@ static int icss_iep_pps_enable(struct icss_iep *iep, int on)
 {
 	struct ptp_clock_request rq;
 	struct timespec64 ts;
-	unsigned long flags;
 	int ret = 0;
 	u64 ns;
 
@@ -589,8 +580,6 @@ static int icss_iep_pps_enable(struct icss_iep *iep, int on)
 	if (iep->pps_enabled == !!on)
 		goto exit;
 
-	spin_lock_irqsave(&iep->irq_lock, flags);
-
 	rq.perout.index = 0;
 	if (on) {
 		ns = icss_iep_gettime(iep, NULL);
@@ -607,8 +596,6 @@ static int icss_iep_pps_enable(struct icss_iep *iep, int on)
 	if (!ret)
 		iep->pps_enabled = !!on;
 
-	spin_unlock_irqrestore(&iep->irq_lock, flags);
-
 exit:
 	mutex_unlock(&iep->ptp_clk_mutex);
 
@@ -853,7 +840,6 @@ static int icss_iep_probe(struct platform_device *pdev)
 
 	iep->ptp_info = icss_iep_ptp_info;
 	mutex_init(&iep->ptp_clk_mutex);
-	spin_lock_init(&iep->irq_lock);
 	dev_set_drvdata(dev, iep);
 	icss_iep_disable(iep);
 

-- 
2.45.2


