Return-Path: <devicetree+bounces-4893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 507327B4287
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1B198282F03
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6E11804D;
	Sat, 30 Sep 2023 17:09:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB818057
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:26 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25D17E5
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:25 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so156389425e9.2
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093763; x=1696698563; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k0VJ6C8kG7GHegHfpPJdNysCaTwmqIvJ6WSm4iQqP4U=;
        b=bN1dM71rpawhTXzZAEAYAQKQur1WgJHyflo7LnEVEh5wl9FN9miyIahdzmHT1gW009
         UqgJisEvP4netDUyz192qReFz8tqGrbn1Uz1/GMZ15otOpDrddcPiLw7bKTn9afeTce6
         cNsavNEQ/dq78j17O2dcVQ1yf4PS4WV5KfCJkJwrUbOx0VCmFyMGVw7OUDyjYWwvRzWq
         cvQ4OGpFwtk3Tju7d7KmAF86RuBVveqsASHS6ueKSJxAUCiIcs014cokAEn9hY0CdcKV
         X/GoojIYYl1FidMctMes6FsMTI6jJDv4a510gogfTaL9rtD29gkudIT6bVehIL0PAlcj
         Oxng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093763; x=1696698563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0VJ6C8kG7GHegHfpPJdNysCaTwmqIvJ6WSm4iQqP4U=;
        b=TlrkeJeQMOcAh7wcTLcAxkTK73WF7u9/5LF5tsKWHYkysYJ/gj7bUp4MN/90t+qmIm
         AS123YxY8pQLcliSMphPTJiWIwgAvLlJVj6GXAZP5K2oXkv89WNxWR7/vJaScGJtJ13F
         cgzzwqm+WQOZMt40/aH6G+4gnVm7qAOGYfNFbQTUhVXxKlHGD78pda4xa9cuZpv8aTOd
         rQewA52TRwKwuctnoMiPlK7OMkGAUlY+RAvsi7ShHE1l7S4V+YcBOLfzpGgjHKeh37Nr
         bEVe3Qd0+F3HHcjnSQLDCGCIODtx7cpvAK/19lM1LkcG86dnbtEq9SbofpEjfSVntVUL
         Tb6Q==
X-Gm-Message-State: AOJu0Yz8aU0A0ghmEvmRbKkwnCHAxpQ2c9oNecLiEFWwFkoqRwmaOkIL
	R57pertuSdvCUjARHRSgC3BIAw==
X-Google-Smtp-Source: AGHT+IHCLGk8syzqpqer7HrIAq6wGcQZLbCD1JNGfQ9k8s4oWvFVHyyykKCDg2ojj8BP8dZ1x6vFkg==
X-Received: by 2002:a7b:c454:0:b0:405:959e:dc6f with SMTP id l20-20020a7bc454000000b00405959edc6fmr6477462wmi.37.1696093763725;
        Sat, 30 Sep 2023 10:09:23 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:23 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sat, 30 Sep 2023 18:08:49 +0100
Subject: [PATCH 5/7] Input: synaptics-rmi4 - don't do unaligned reads in
 IRQ context
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v1-5-cc3c703f022d@linaro.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=2497;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=c8t4Dh0FV7IAxRxCe06lGztnMxn5LYVPeNtEfmL+ltU=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMDu1Jdef656ZYaLx/1NLEht7+33t1JKe8wbpq9yuN
 h04pL26o5SFQZCDQVZMkUX8xDLLprWX7TW2L7gAM4eVCWQIAxenAEykIoHhv/eynL+V5h6bVXVW
 LjLmecSg8iCe2U8wYUF2jpTARDabEob/OeUV9z+lbku3fzbJa+qDgkkTWxdlRUecXGZrJHmAKf4
 0IwA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: methanal <baclofen@tuta.io>

Some replacement displays include third-party touch ICs which incur a
significant penalty (1-2 seconds) when doing certain unaligned reads.
This is enough to break functionality when it happens in the hot path,
so adjust the interrupt handler to not read from an unaligned address.

Signed-off-by: methanal <baclofen@tuta.io>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
This solution does wind up doing the unaligned reads on the CPU instead,
although I'm not sure how significant of a penalty this is in practise.
---
 drivers/input/rmi4/rmi_driver.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/input/rmi4/rmi_driver.c b/drivers/input/rmi4/rmi_driver.c
index cd3e4e77ab9b..58bf3dfbf81c 100644
--- a/drivers/input/rmi4/rmi_driver.c
+++ b/drivers/input/rmi4/rmi_driver.c
@@ -136,9 +136,14 @@ static int rmi_process_interrupt_requests(struct rmi_device *rmi_dev)
 		return 0;
 
 	if (!data->attn_data.data) {
+		/*
+		 * Read the device status register as well and ignore it.
+		 * Some aftermarket ICs have issues with interrupt requests
+		 * otherwise.
+		 */
 		error = rmi_read_block(rmi_dev,
-				data->f01_container->fd.data_base_addr + 1,
-				data->irq_status, data->num_of_irq_regs);
+				data->f01_container->fd.data_base_addr,
+				data->irq_status - 1, data->num_of_irq_regs + 1);
 		if (error < 0) {
 			dev_err(dev, "Failed to read irqs, code=%d\n", error);
 			return error;
@@ -1083,16 +1088,17 @@ int rmi_probe_interrupts(struct rmi_driver_data *data)
 	data->num_of_irq_regs = (data->irq_count + 7) / 8;
 
 	size = BITS_TO_LONGS(data->irq_count) * sizeof(unsigned long);
-	data->irq_memory = devm_kcalloc(dev, size, 4, GFP_KERNEL);
+	data->irq_memory = devm_kzalloc(dev, size * 4 + 1, GFP_KERNEL);
 	if (!data->irq_memory) {
 		dev_err(dev, "Failed to allocate memory for irq masks.\n");
 		return -ENOMEM;
 	}
 
-	data->irq_status	= data->irq_memory + size * 0;
-	data->fn_irq_bits	= data->irq_memory + size * 1;
-	data->current_irq_mask	= data->irq_memory + size * 2;
-	data->new_irq_mask	= data->irq_memory + size * 3;
+	/* The first byte is reserved for the device status register */
+	data->irq_status	= data->irq_memory + size * 0 + 1;
+	data->fn_irq_bits	= data->irq_memory + size * 1 + 1;
+	data->current_irq_mask	= data->irq_memory + size * 2 + 1;
+	data->new_irq_mask	= data->irq_memory + size * 3 + 1;
 
 	return retval;
 }

-- 
2.42.0


