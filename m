Return-Path: <devicetree+bounces-132678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A78D9F7BFE
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A351166554
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3703225403;
	Thu, 19 Dec 2024 13:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vM2w2UZf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA4238DFC
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 13:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734613678; cv=none; b=rLwZqq3+gmwWYBhsthjL4JZ2jsLqh256uNv28Z61jDoyK2pcsysoUzsU0DvHsbRJpHf+AG9Z4nvqbirf/E651hJNBitVigpJKhG8rDIWsrrRwiJTP+L+GvlTqRsv1/+OV2iwD2rIAj4cZPb8qg2f1nEykiaFbJRYLz4as6hB8pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734613678; c=relaxed/simple;
	bh=Q2/Ilfy56ojSZu1+fOIemD2xiXcbZHn9eQaGm8k0miI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V8EIssTsadBrF9f89eEgMA8Ik38h5vVSCtAlWv//W0ibvGq8eCueE8gFxBr1+UNmUXTEO27YrPjoPR/KW/X7s14b4wRkhg6nTBL7yGa6XUk6X3kRy/vkEBRQcvhhZnKMfIFa2NO0/18178q7BTADmTT4Q1nmxLTCUyrwYv7/MSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vM2w2UZf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso5454315e9.0
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 05:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734613674; x=1735218474; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUOQPXTRe3lg7UV1cQpho3gjLjQwoiMIh3ZBdN3lBVY=;
        b=vM2w2UZfTgGQ1TWvMZe5Z05/bs0aPR0XP6U/OW9xAihQrYRWBnJVHPZneHg0Siiu6E
         EQuWZj1QOg3LAsTdTu/cwKF9a5Zv1ZrstBi/ONNegZnXFakAYNqcMDXQc3UnjbgUW31Y
         rCEE6QVvpTd0yz5HOYSsEFHrOMtMv0tKkm242z6nwZHSDDpGzjS06xEJTTtCmCdPlEK6
         N2b/sgnYlMVEUkxvXizukbp12MpBPmJ5DC8Pl17DyAAll3Py4WLhk+oPfzn58jexUSPV
         yWgpjF8s0ynLbmhjSyZUVaaWOZwVDfon8YIoz0q6WvcxXzsigjrCRqkmLaVT1wTJdnQp
         HDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734613674; x=1735218474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUOQPXTRe3lg7UV1cQpho3gjLjQwoiMIh3ZBdN3lBVY=;
        b=iho0OF5Yg/i4buSh6aykMcN89Fjq+qcFHssrohf2by5x7qcLgHhRT5Df5emV7tFM1M
         xxiu2ddz3CY27W6eU7VEEJwG9xP8ox6C850Kc4uvBayIXaTZFNukfihNNeP9/WvCbI7x
         1cepbivIDWbeKsmxhgGJMhmeyj+WO8UsI39zHTJjGsr380vnSwzATr5wUn1duKDYRIeQ
         jOU5VxES4XlEWnaCGVw0QMFy6oVn3mXR5xXVT69O/jhRPxiMNOgS0EMp1SO19B+o08S4
         PLv9gIprWALgCzwEg0tqloUpqN0YYvY3gIOsfCgwfOUUoSFgJSdXrHqVW4AS827iFEti
         OYYA==
X-Forwarded-Encrypted: i=1; AJvYcCUHCmEOjvGL48NWkUcPsjtX2ORMFPQslzUrn0O1/Xsue5EjfiV0gVUGqjLIwO6iTLiPkA+DLNisE87u@vger.kernel.org
X-Gm-Message-State: AOJu0YxqR9VadqjYuHlpnJR8pl6YkgVG/wJWhOjr9YcIOhn1f4ZmeQm9
	7FBY0chButSo+BEubHYyfzuZo3yI3ITdNU2ZmE3r5mdN9iDMrnM7sP/4qbL3TQ/m3ZVgWRu4dxA
	rcmc=
X-Gm-Gg: ASbGncuac6kIUR1eciUqdx/GhSObxWxWRBnMkTfEEAVXuorQ/gJO5GKBgjhtXXDfp2F
	IM52CbY1dwCAkFfOQ3aUTxtIol1wdjoXzNGB4oWnOioMykVtEoflgRWbYnQzJu2D0NSi+Nki/F5
	GXGC+RcrnX06ehhuSZWR+DYLrXIdI9ccdzPtskYm6vnBWfczC4eJQGPeoX2t2Y6zSiA+YPwISAD
	2pkerv5RKh28RfqxE2JjUDD1iBGtOqrVbToyi/zqLV7VMQaAlFJUsrPIt6SToBiM0b0i0gNBu1l
	VQCA8WY7F/pL1vwYJl0ce3ArB6L0qLADtQku
X-Google-Smtp-Source: AGHT+IH7QXzVbmArkNE6kY0mh8UxCymkYvZfRaYwodpZUWknXO1JZt6pMIJoZmzQeGk94zIBsb8bHw==
X-Received: by 2002:a05:600c:350c:b0:436:1c04:aa8e with SMTP id 5b1f17b1804b1-4365c7942b6mr32991725e9.16.1734613674393;
        Thu, 19 Dec 2024 05:07:54 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea387sm17436705e9.6.2024.12.19.05.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 05:07:53 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Thu, 19 Dec 2024 13:07:47 +0000
Subject: [PATCH 2/2] mailbox: add support for clients to request channels
 by arguments
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-mbox_request_channel_by_args-v1-2-617a6910f842@linaro.org>
References: <20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org>
In-Reply-To: <20241219-mbox_request_channel_by_args-v1-0-617a6910f842@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734613671; l=5667;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=Q2/Ilfy56ojSZu1+fOIemD2xiXcbZHn9eQaGm8k0miI=;
 b=DjvbKV9+OxuCn/g6zNLfMtnGo0ac9oiSZ61hg9UOxS8u84Deij/SZOVt8RZG/MWpoV+4CNVYI
 JGsGxeG3VrmBjbJEriNyu7OXAB4fQa5a+qF3YVvdcTl7LG3+UQDNJyw
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

There are clients that can discover channel identifiers at runtime by
parsing a shared memory for example, as in the ACPM interface's case.

Supply a new framework API: mbox_request_channel_by_args().

It works by supplying the usual client pointer as the first argument and
a pointer to a ``const struct mbox_xlate_args`` as a second. The newly
introduced struct is modeled after ``struct of_phandle_args``. The API
will search the client's node for a ``mbox`` phandle, identify the
controller's device node, and then call that controller's xlate() method
that will return a pointer to a mbox_chan or a ERR_PTR. The binding
between the channel and the client is done in the typical way.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 drivers/mailbox/mailbox.c          | 57 ++++++++++++++++++++++++++++++++++++++
 include/linux/mailbox.h            | 17 ++++++++++++
 include/linux/mailbox_client.h     |  3 ++
 include/linux/mailbox_controller.h |  4 +++
 4 files changed, 81 insertions(+)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index d3d26a2c9895..07ea32ebab80 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -467,6 +467,63 @@ struct mbox_chan *mbox_request_channel_byname(struct mbox_client *cl,
 }
 EXPORT_SYMBOL_GPL(mbox_request_channel_byname);
 
+/**
+ * mbox_request_channel_by_args - request a mailbox channel using client's
+ * channel identifiers.
+ * @cl: identity of the client requesting the channel.
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
+					const struct mbox_xlate_args *spec)
+{
+	struct device *dev = cl->dev;
+	struct mbox_controller *mbox;
+	struct device_node *mbox_np;
+	struct mbox_chan *chan;
+	int ret;
+
+	if (!dev || !dev->of_node) {
+		pr_debug("%s: No owner device node\n", __func__);
+		return ERR_PTR(-ENODEV);
+	}
+
+	mbox_np = of_parse_phandle(dev_of_node(dev), "mbox", 0);
+	if (!mbox_np)
+		return ERR_PTR(-ENODEV);
+
+	mutex_lock(&con_mutex);
+
+	chan = ERR_PTR(-EPROBE_DEFER);
+	list_for_each_entry(mbox, &mbox_cons, node)
+		if (mbox->dev->of_node == mbox_np && mbox->xlate) {
+			chan = mbox->xlate(mbox, spec);
+			if (!IS_ERR(chan))
+				break;
+		}
+
+	of_node_put(mbox_np);
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
index 734694912ef7..a9f4d108c48c 100644
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
+			     const struct mbox_xlate_args *spec);
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


