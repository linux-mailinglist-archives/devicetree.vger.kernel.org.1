Return-Path: <devicetree+bounces-8703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3077C9BC5
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:12:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 585751F21343
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367D813AF7;
	Sun, 15 Oct 2023 21:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rj01Tjaw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38385134B1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:12:06 +0000 (UTC)
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B42AA1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:04 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-32db8f8441eso47126f8f.0
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697404323; x=1698009123; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AedAcjuUgBWTHFeLaxul+tdLLgXY9TFQqJmfe2wIWBo=;
        b=rj01TjawRDF1rnwTuo6L6vRU2I2bBRWrTIGm08u7MtNruszRqWJFZN3fQxzUAw7l3k
         996LsoYfQBt+qydXjluvtLCVZT4U/ppZ2vM+VF8S5728ZCy+A6Ekt381R4U+nosvdMEI
         ycSTC4O5f02CDzZQNQZmsqthRdgip7XYZ+NkIyaHoRFj+qdtLuwL+F8ejHgQ2KhV5wKT
         2UmB96CDN741Z9eBFgQG1pbi8go12HpUm63o+YQ2hxQgzGI6S457ar4WDErp9zv+Oqt3
         /kaD8+/d1NFDvJKzQz0XFZ7/0n1S4l5BtFvA2kiNAWjUQSEurKCLaLezJMcO17+ESqIT
         fOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697404323; x=1698009123;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AedAcjuUgBWTHFeLaxul+tdLLgXY9TFQqJmfe2wIWBo=;
        b=F2jQuEzUMyD6F7id1+HZF3MWuqFkVMg/ExUdWS/F53/J+hwpcslWGem5pMQPAeMjha
         yZY7Z+/WYkVPL44fQg3H7sIVrJK8+r0q1XoozEYkiSzbDCT+FzjxMX0q2Hi8/8z6RYG7
         mkwmICl0IPRyT1VJEbcBS1JpyJ3l+0HZzYLgh6ZkQsrxBWnz0Kwjh2Tzr2jqEZdn1U6p
         mwylRaTAkXKHGzlBr6FsTzNmBbpvfjvg9nIREs3+PC3vJsVk8Wzu1y9QWix/kXQwO1St
         M+UsZwDaOU3ZgjXg7VceNJckItIMcxjdE0xDm5m6kbGaOsB9gfpjUrQVA35Gk1gl1N/m
         gkJw==
X-Gm-Message-State: AOJu0Yw1lHisjvNtE1hicbjhuTDZY7LoLCZ7eFreE5kBTCXqWNI0Klqn
	0Sjo2FncBIDRi2AkTZf9ZvQv1Q==
X-Google-Smtp-Source: AGHT+IFGtaaSHr/fYdItsTeYh94JQPuopwM0WAo2Ur2Lhu2fZIQ/jZcsRTaTTdTrv3qzgCslNgvPTg==
X-Received: by 2002:a5d:6b8a:0:b0:32d:a4fe:374 with SMTP id n10-20020a5d6b8a000000b0032da4fe0374mr3223214wrx.11.1697404323170;
        Sun, 15 Oct 2023 14:12:03 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d4d11000000b0032d9548240fsm8456734wrt.82.2023.10.15.14.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 14:12:02 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 15 Oct 2023 22:11:53 +0100
Subject: [PATCH v2 5/7] Input: synaptics-rmi4 - don't do unaligned reads in
 IRQ context
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v2-5-b227ac498d88@linaro.org>
References: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=2502;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=9h6YnRppF0cn5B+ZZui15RkAbUhNx8UlzxkXST9vk6s=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSd0Ll89xcduRq/Uelnc5nQ5O7Jdq0KT8s3HNBNsF20r
 p75wVKljlIWBkEOBlkxRRbxE8ssm9ZettfYvuACzBxWJpAhDFycAjCR55sZ/kdfOrz+kkOJ5dvp
 N6RtCvYb3hBn4q09NdOt79nz1ild2wMYGZZ/31y+IENSRDF9rhjLnup5fdemRFvdyuGeK2xaydr
 3kQ8A
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
index cd3e4e77ab9b..22f0b35bb70b 100644
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
+				(u8*)data->irq_status - 1, data->num_of_irq_regs + 1);
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


