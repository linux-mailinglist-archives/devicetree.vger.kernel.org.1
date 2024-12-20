Return-Path: <devicetree+bounces-133106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF5D9F93C0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8B621883BD1
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35FB121A456;
	Fri, 20 Dec 2024 13:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oEfqu0+F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1C521A422
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702606; cv=none; b=VNwNB4+zKCcArteJ2KCm2Psbd/+HBq1svwZNBU9tUXDNdCfdZ8jFi+W69+r1szRukM1+S4flxFNlxQ/JOh7MAHt8Km4K3uOL380TmLFdtFN+xyJcVQSJYxeDxRGIHlGb89BclSVeZvbYk0FAGB1WTSxxuo8Z7wdyOwjH/WY049o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702606; c=relaxed/simple;
	bh=yyB5CQGhVmNL0L7BcpLJ32JRUO4zLOTRcjHSgygE7Ik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c+IP1mDCY5cLEw+8mmieDBecJjbzZzKpvr8xPL/FatHI6HML5dWK5yUiwv8ourxKV2o/V4PZsaLdyuo5KT89QFnO7189cQDpGwZZCyiLCeMWlYgRBV+622ORpUkGnjv5b+7wOgBrarNYUl+2X+FWH+oqPXep2PLEaCvk2Y4IJ+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oEfqu0+F; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862b364538so1113403f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734702602; x=1735307402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3R4Jhe3KgMdcHWwBtGAqNwkL06pjGhdfYrGLYcX0qU=;
        b=oEfqu0+FX7OUC3BONqiSMd4vX106N8KVi8M/rK6DSfeDKux8vVWbfwAGzd08aScr2+
         Csw0+r5vrWx+8O7X2HDgBVYvhcjs1eADZsLV74sV7oQDq6XhXsS24HEsOKjo2nBItcSI
         pMk82REltjeVSvqNQ8tdLpJf0xIBXXHxVnapz/M1F+e7UjfYMHauW1s61OyT7D5/VDmR
         xc24KdLey4RvHqLrbZf2/6a3CZBQwXkOlZaXtUgw5smrTQwcxetU5qD1u30BawMxS1XV
         G1ssanl3noXmDAFJzQ945hIcPmRhveaeta7gj8JImMpzGrFRJfc4tq055Ak8NfCJWmpe
         vtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702602; x=1735307402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y3R4Jhe3KgMdcHWwBtGAqNwkL06pjGhdfYrGLYcX0qU=;
        b=PPu80XgS14DhS1VxUHLzeKY9qchHzrXxsE7P6jPBKyWzpXg1tOGRcSpBrh/sdkSew7
         0IbpHYSXaJpSABx7Us7FywL6nbxC5Fqx1PohRI3QJPls/oT76SeUdtaYleGorXCRtpR8
         pyfWHp2gzj6iEqsGs4usGR++70ysIbKKRHYGAW8pbqsRSZhDT2qZl4BACT+B4f50vzEj
         9/tv5AePTmZjWksX4MpAitvNG3r2C0lnDGv+cnjRsWgdj5n9naPBqRfgiQfW9ic+Se19
         OVlQZn4/AU4S4fWdQgFsSqfD4lx4339B6ZRo7RdCC+BID6ZHigN5hH8VuEGQ8sfJeKYD
         I7/A==
X-Forwarded-Encrypted: i=1; AJvYcCVaBzzjFLyvs4lqVTJPTgsbm2BSwPBJEgmPZxAtArszHbC0mDf4a96s6Blq9Z1JPrxTjhMA5+FJfGgS@vger.kernel.org
X-Gm-Message-State: AOJu0YwFf4sVqaCG2V5CEVWHJvJumyI9UcAB9InCpWMIl80En4Uwst4O
	IqeWNPmIrTrxREsdAGwWy2pZn7PfLDIM1J7I2OL9dTVK8EZX2dPUwCzwkDFQZTQ=
X-Gm-Gg: ASbGncsxdM+qcZ7bd9SCkvOg83GXXf048qMxPnpJmIAJ9zsA62duY4B4ttOsJgB4ReS
	tyucl7Phs4+smH9qZRxnIH/mxiJaggD2Nn3bf8kSj+jcOscGQyWRs26GDJYnujrKB5sQ88lE1rS
	gv3Ob6bxpX5PCZukidemBaySiIuhr3sa0cSNqybRGaMETp7WTM2qIOTf+V+gFPeg/fIhOKbwkKw
	H1NHqTvMNJXffRQ9FXTmAMOAhO1S0mBPKsBWJ72y6tUF48jFxwIzO+e+G+zZaPUUvgJweT94gEp
	12PK/9km5CBKeoNIDShW5PfpZB64SH/zb77s
X-Google-Smtp-Source: AGHT+IFO4m1UMUWH98xI6WEcrXsCmyinFas11MjCCiL6zLrmfdc5i7QkqHRJkTCA4ukd1H0E1zdRFw==
X-Received: by 2002:a05:6000:1785:b0:386:3c93:70ff with SMTP id ffacd0b85a97d-38a1a1fdd35mr6675772f8f.8.1734702602133;
        Fri, 20 Dec 2024 05:50:02 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e74sm4044313f8f.30.2024.12.20.05.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 05:50:01 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 13:49:58 +0000
Subject: [PATCH v6 3/5] mailbox: add support for clients to request
 channels by args
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-acpm-v4-upstream-mbox-v6-3-a6942806e52a@linaro.org>
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
In-Reply-To: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734702598; l=5904;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=yyB5CQGhVmNL0L7BcpLJ32JRUO4zLOTRcjHSgygE7Ik=;
 b=vsmN1tUctzs2mQxUDHpQYFZZw2uQY7/lH7aU0MJkG/FL5nc9qKT2nTT5HYlqjC6BnhqU8Jipu
 zaGST/SqFPyALdMnBZnXEks6QaRLLJw/KxnPYpoXUa0ql5fqZ+5W8/P
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

There are clients that can discover channel identifiers at runtime by
parsing a shared memory for example, as in the ACPM interface's case.

Supply a new framework API: mbox_request_channel_by_args().

It works by supplying the usual client pointer as the first argument,
the usual index of the mailbox specifier in the 'mboxes' property as
a second argument, and a pointer to a 'const struct mbox_xlate_args'
as a third. The newly introduced struct is modeled after
'struct of_phandle_args'. The API identifies the controller's device
node, and then calls that controller's xlate() method that will return
a pointer to a mbox_chan or a ERR_PTR. The binding between the channel
and the client is done in the typical way.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/mailbox/mailbox.c          | 60 ++++++++++++++++++++++++++++++++++++++
 include/linux/mailbox.h            | 17 +++++++++++
 include/linux/mailbox_client.h     |  3 ++
 include/linux/mailbox_controller.h |  4 +++
 4 files changed, 84 insertions(+)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index d3d26a2c9895..0eecffd5a2ad 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -467,6 +467,66 @@ struct mbox_chan *mbox_request_channel_byname(struct mbox_client *cl,
 }
 EXPORT_SYMBOL_GPL(mbox_request_channel_byname);
 
+/**
+ * mbox_request_channel_by_args - request a mailbox channel using client's
+ * channel identifiers.
+ * @cl: identity of the client requesting the channel.
+ * @index: index of mailbox specifier in 'mboxes' property.
+ * @spec: arguments that describe the channel.
+ *
+ * Used by clients that can discover the channel identifiers at runtime (by
+ * parsing a shared memory for example). The description of
+ * mbox_request_channel() applies here as well.
+ *
+ * Return: Pointer to the channel assigned to the client if successful.
+ *         ERR_PTR for request failure.
+ */
+struct mbox_chan *mbox_request_channel_by_args(struct mbox_client *cl,
+			int index, const struct mbox_xlate_args *mbox_spec)
+{
+	struct of_phandle_args of_args;
+	struct device *dev = cl->dev;
+	struct mbox_controller *mbox;
+	struct mbox_chan *chan;
+	int ret;
+
+	if (!dev || !dev->of_node) {
+		pr_debug("%s: No owner device node\n", __func__);
+		return ERR_PTR(-ENODEV);
+	}
+
+	if (of_parse_phandle_with_args(dev->of_node, "mboxes",
+				       "#mbox-cells", index, &of_args)) {
+		dev_dbg(dev, "%s: can't parse \"mboxes\" property\n", __func__);
+		return ERR_PTR(-ENODEV);
+	}
+
+	mutex_lock(&con_mutex);
+
+	chan = ERR_PTR(-EPROBE_DEFER);
+	list_for_each_entry(mbox, &mbox_cons, node)
+		if (mbox->dev->of_node == of_args.np && mbox->xlate) {
+			chan = mbox->xlate(mbox, mbox_spec);
+			if (!IS_ERR(chan))
+				break;
+		}
+
+	of_node_put(of_args.np);
+
+	if (IS_ERR(chan)) {
+		mutex_unlock(&con_mutex);
+		return chan;
+	}
+
+	ret = __mbox_bind_client(chan, cl);
+	if (ret)
+		chan = ERR_PTR(ret);
+
+	mutex_unlock(&con_mutex);
+	return chan;
+}
+EXPORT_SYMBOL_GPL(mbox_request_channel_by_args);
+
 /**
  * mbox_free_channel - The client relinquishes control of a mailbox
  *			channel by this call.
diff --git a/include/linux/mailbox.h b/include/linux/mailbox.h
new file mode 100644
index 000000000000..cef88c5ae49d
--- /dev/null
+++ b/include/linux/mailbox.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2024 Linaro Ltd.
+ */
+
+#ifndef __LINUX_MAILBOX_H
+#define __LINUX_MAILBOX_H
+
+#include <linux/types.h>
+
+#define MBOX_XLATE_MAX_ARGS 16
+struct mbox_xlate_args {
+	int args_count;
+	u32 args[MBOX_XLATE_MAX_ARGS];
+};
+
+#endif /* __LINUX_MAILBOX_H */
diff --git a/include/linux/mailbox_client.h b/include/linux/mailbox_client.h
index 734694912ef7..06e2721313ca 100644
--- a/include/linux/mailbox_client.h
+++ b/include/linux/mailbox_client.h
@@ -9,6 +9,7 @@
 
 #include <linux/of.h>
 #include <linux/device.h>
+#include <linux/mailbox.h>
 
 struct mbox_chan;
 
@@ -41,6 +42,8 @@ int mbox_bind_client(struct mbox_chan *chan, struct mbox_client *cl);
 struct mbox_chan *mbox_request_channel_byname(struct mbox_client *cl,
 					      const char *name);
 struct mbox_chan *mbox_request_channel(struct mbox_client *cl, int index);
+struct mbox_chan *mbox_request_channel_by_args(struct mbox_client *cl,
+			int index, const struct mbox_xlate_args *mbox_spec);
 int mbox_send_message(struct mbox_chan *chan, void *mssg);
 int mbox_flush(struct mbox_chan *chan, unsigned long timeout);
 void mbox_client_txdone(struct mbox_chan *chan, int r); /* atomic */
diff --git a/include/linux/mailbox_controller.h b/include/linux/mailbox_controller.h
index 6fee33cb52f5..dfddcf966f9f 100644
--- a/include/linux/mailbox_controller.h
+++ b/include/linux/mailbox_controller.h
@@ -8,6 +8,7 @@
 #include <linux/hrtimer.h>
 #include <linux/device.h>
 #include <linux/completion.h>
+#include <linux/mailbox.h>
 
 struct mbox_chan;
 
@@ -67,6 +68,7 @@ struct mbox_chan_ops {
  * @txpoll_period:	If 'txdone_poll' is in effect, the API polls for
  *			last TX's status after these many millisecs
  * @of_xlate:		Controller driver specific mapping of channel via DT
+ * @xlate:		Controller driver specific mapping of channel
  * @poll_hrt:		API private. hrtimer used to poll for TXDONE on all
  *			channels.
  * @node:		API private. To hook into list of controllers.
@@ -81,6 +83,8 @@ struct mbox_controller {
 	unsigned txpoll_period;
 	struct mbox_chan *(*of_xlate)(struct mbox_controller *mbox,
 				      const struct of_phandle_args *sp);
+	struct mbox_chan *(*xlate)(struct mbox_controller *mbox,
+				   const struct mbox_xlate_args *sp);
 	/* Internal to API */
 	struct hrtimer poll_hrt;
 	spinlock_t poll_hrt_lock;

-- 
2.47.1.613.gc27f4b7a9f-goog


