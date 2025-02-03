Return-Path: <devicetree+bounces-142419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A898A254D6
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC2FA3A7B97
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1141FCD0F;
	Mon,  3 Feb 2025 08:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="h1CcQ5a3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB401FC0FF
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572640; cv=none; b=iskQGDh4zXR7Q+jkxKo2ArxN6BNCYGw5ni2sZNxoQQ6TQvsRfJ+qIweKNDokZyTvGuxPfDkoJjIqEy5DeuvNsHO2ufkUiJMoBnUXV7E9Kf8dBcKCUb1RBDHlXAouK4PMS+CIdH0RD3GoMgffl+FCoOwnOfY1l7aV04dWQsAdOFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572640; c=relaxed/simple;
	bh=9w8wGjwMumRcEE6hnGXig5P3qw6fsQCcwbQXfbC5A90=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MPzo8nQzOTm/epys/HWsQ+zR1upp6F6tsYrIM+nP0L5Ruk6TQS9aJFeTkl+aUSySKcNoyShEB5tgGowAirTQAA0v/i7DpNIiJUv+mHQaOH9OI7ftiFBQtmf/0ctNuR/TU1Vp8XuK8vMYLyuA8LCkauKxHubDttyNAMqFjtqhTaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=h1CcQ5a3; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-46788c32a69so54859651cf.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572637; x=1739177437; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bEEke79FPqkO/VnndNMxidgQ7SLPxTG5sIoJEJG0Da4=;
        b=h1CcQ5a3Ue7AjWcaJS2dYurxN8ukUAiZETzRHYTPBRPo+E4LrDK8xO6DxgJEzVSDv/
         19cM4WrgvRircYE4HbBmUcnwBi49mUxtOi6lbqQGV0RYebQz7cYwojdggSO7/eINI32O
         LPJP/6tP7S7ApvneKacdoBChPWeRhjVfkDQ7+pAYXw4WHrVPNqkWetvMmoq9LvRmMBh2
         BkidAOM7l3uStGAQjE+iNQIHrwaDVxVBJaSWhP9dmVo8sAUn3NJCVom24+MQ876pJGA6
         LlfgmVwVruf1DTzZ3GZo1B1WlF7UHY2d6xoa69//8MW9agxnPEwvHqQQ2SAFwO+og+sO
         KNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572637; x=1739177437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bEEke79FPqkO/VnndNMxidgQ7SLPxTG5sIoJEJG0Da4=;
        b=fQmBHiRxz3eT2dIYT0oOw4+/IMPTJEkIij2wP7wAyqRqEBG80jqiKQ8e26ESpj8ReG
         goy6DBU8oe4ZqxDHTRZcsgMii/9Wgwh+lAAoyT5iaZVML4VRu2YHMj2B/lQk2PUREbce
         4lx21SSzeujSjOrhf3drH3WuKeySJEOZsqqxV+VxSVztQHaOhCoHWf8ics9XlqD6/Ov0
         gCcMybHFLSdjdO5sxykE+BMnhSD+m9HNJIA+9s9n9QuoToivZQ3O4sQTgQNRg41DyoGk
         is6H56VvnBk56OV37wQa8Q4SC45cU2yG7WP5+Tu+jJTLN1hVqzIBGbxNN5kfpQ4SYPE6
         JyOA==
X-Forwarded-Encrypted: i=1; AJvYcCU5SwhqJxICu5cmWerzF4y0k2g3gAAz3DvcW6gE/l1hoKMDVCcELiZy/2i+FFjYXo7lrtKlKJZnEvvW@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfP0EVhNY7sIHorCF3sgJCCMpx36kLSplhaHOe5jeUyv9KdUM
	DexF4JHsOiDsD/ui1suVsQPv8j9QotPawDQ+nB00lo6wesaT1DkqEOCqLx8rkv8=
X-Gm-Gg: ASbGncsCCAcnpahXaZji/cmj0NmoMLWrp6CGpzYFvV5jBpUm0gBQkevblQbT2zfmg81
	UlJyi3P9awZl6X0aRI9EcDABGY4QRXCxOp+rxaF5hLZaiEXCDEF6qeZwfoazWq3Uw3MQdCZJDXc
	T/zZivkY0dSymTb6Yw+BgV75wJmQ6zh6ocgMu75PAP8Yd8QBpvUONzOhyXv5GtJ2B1YImVlx5eU
	rskQoBnInoJZRRH94qsers4zd4q2423ViKD+Iobz+1CtQVygHCJCkRV9XBpcmH0h9mQ5/IFDwPJ
	39+RXOlQe0RmObaXei9GM8uNeU2RAY1/vLZptcoF5r1XdpZg5KtDPHY=
X-Google-Smtp-Source: AGHT+IE+IlnE299Q+aB/GfcKf7IAlDPJGgUE1d2TnvZN/4dFlqe7+8HMm41wGojjNhxhbX5xqmUG+Q==
X-Received: by 2002:a05:622a:1356:b0:467:87f4:a29f with SMTP id d75a77b69052e-46fd0bce85dmr283644871cf.45.1738572637284;
        Mon, 03 Feb 2025 00:50:37 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:50:35 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 06/17] mailbox: Allow controller specific mapping using fwnode
Date: Mon,  3 Feb 2025 14:18:55 +0530
Message-ID: <20250203084906.681418-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce optional fw_node() callback which allows a mailbox controller
driver to provide controller specific mapping using fwnode.

The Linux OF framework already implements fwnode operations for the
Linux DD framework so the fw_xlate() callback works fine with device
tree as well.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/mailbox/mailbox.c          | 44 ++++++++++++++++++------------
 include/linux/mailbox_controller.h |  3 ++
 2 files changed, 29 insertions(+), 18 deletions(-)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index d3d26a2c9895..447edd212f0f 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -402,20 +402,29 @@ EXPORT_SYMBOL_GPL(mbox_bind_client);
  */
 struct mbox_chan *mbox_request_channel(struct mbox_client *cl, int index)
 {
+	struct fwnode_reference_args fwspec;
 	struct device *dev = cl->dev;
 	struct mbox_controller *mbox;
 	struct of_phandle_args spec;
 	struct mbox_chan *chan;
 	int ret;
 
-	if (!dev || !dev->of_node) {
-		pr_debug("%s: No owner device node\n", __func__);
+	if (!dev) {
+		pr_debug("%s: No owner device\n", __func__);
 		return ERR_PTR(-ENODEV);
 	}
 
 	mutex_lock(&con_mutex);
 
-	if (of_parse_phandle_with_args(dev->of_node, "mboxes",
+	if (fwnode_property_get_reference_args(dev->fwnode, "mboxes",
+					       "#mbox-cells", 0, index, &fwspec)) {
+		dev_dbg(dev, "%s: can't parse \"mboxes\" property\n", __func__);
+		mutex_unlock(&con_mutex);
+		return ERR_PTR(-ENODEV);
+	}
+
+	if (dev->of_node &&
+	    of_parse_phandle_with_args(dev->of_node, "mboxes",
 				       "#mbox-cells", index, &spec)) {
 		dev_dbg(dev, "%s: can't parse \"mboxes\" property\n", __func__);
 		mutex_unlock(&con_mutex);
@@ -423,14 +432,20 @@ struct mbox_chan *mbox_request_channel(struct mbox_client *cl, int index)
 	}
 
 	chan = ERR_PTR(-EPROBE_DEFER);
-	list_for_each_entry(mbox, &mbox_cons, node)
-		if (mbox->dev->of_node == spec.np) {
+	list_for_each_entry(mbox, &mbox_cons, node) {
+		if (mbox->fw_xlate && mbox->dev->fwnode == fwspec.fwnode) {
+			chan = mbox->fw_xlate(mbox, &fwspec);
+			if (!IS_ERR(chan))
+				break;
+		} else if (mbox->of_xlate && mbox->dev->of_node == spec.np) {
 			chan = mbox->of_xlate(mbox, &spec);
 			if (!IS_ERR(chan))
 				break;
 		}
+	}
 
-	of_node_put(spec.np);
+	if (dev->of_node)
+		of_node_put(spec.np);
 
 	if (IS_ERR(chan)) {
 		mutex_unlock(&con_mutex);
@@ -449,15 +464,8 @@ EXPORT_SYMBOL_GPL(mbox_request_channel);
 struct mbox_chan *mbox_request_channel_byname(struct mbox_client *cl,
 					      const char *name)
 {
-	struct device_node *np = cl->dev->of_node;
-	int index;
-
-	if (!np) {
-		dev_err(cl->dev, "%s() currently only supports DT\n", __func__);
-		return ERR_PTR(-EINVAL);
-	}
+	int index = device_property_match_string(cl->dev, "mbox-names", name);
 
-	index = of_property_match_string(np, "mbox-names", name);
 	if (index < 0) {
 		dev_err(cl->dev, "%s() could not locate channel named \"%s\"\n",
 			__func__, name);
@@ -495,8 +503,8 @@ void mbox_free_channel(struct mbox_chan *chan)
 EXPORT_SYMBOL_GPL(mbox_free_channel);
 
 static struct mbox_chan *
-of_mbox_index_xlate(struct mbox_controller *mbox,
-		    const struct of_phandle_args *sp)
+fw_mbox_index_xlate(struct mbox_controller *mbox,
+		    const struct fwnode_reference_args *sp)
 {
 	int ind = sp->args[0];
 
@@ -549,8 +557,8 @@ int mbox_controller_register(struct mbox_controller *mbox)
 		spin_lock_init(&chan->lock);
 	}
 
-	if (!mbox->of_xlate)
-		mbox->of_xlate = of_mbox_index_xlate;
+	if (!mbox->fw_xlate && !mbox->of_xlate)
+		mbox->fw_xlate = fw_mbox_index_xlate;
 
 	mutex_lock(&con_mutex);
 	list_add_tail(&mbox->node, &mbox_cons);
diff --git a/include/linux/mailbox_controller.h b/include/linux/mailbox_controller.h
index 6fee33cb52f5..74352c244aba 100644
--- a/include/linux/mailbox_controller.h
+++ b/include/linux/mailbox_controller.h
@@ -66,6 +66,7 @@ struct mbox_chan_ops {
  *			no interrupt rises. Ignored if 'txdone_irq' is set.
  * @txpoll_period:	If 'txdone_poll' is in effect, the API polls for
  *			last TX's status after these many millisecs
+ * @fw_xlate:		Controller driver specific mapping of channel via fwnode
  * @of_xlate:		Controller driver specific mapping of channel via DT
  * @poll_hrt:		API private. hrtimer used to poll for TXDONE on all
  *			channels.
@@ -79,6 +80,8 @@ struct mbox_controller {
 	bool txdone_irq;
 	bool txdone_poll;
 	unsigned txpoll_period;
+	struct mbox_chan *(*fw_xlate)(struct mbox_controller *mbox,
+				      const struct fwnode_reference_args *sp);
 	struct mbox_chan *(*of_xlate)(struct mbox_controller *mbox,
 				      const struct of_phandle_args *sp);
 	/* Internal to API */
-- 
2.43.0


