Return-Path: <devicetree+bounces-37933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C224846D7D
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC7781C264A7
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F2D7CF0D;
	Fri,  2 Feb 2024 10:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zX6ZZATX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63317C0B4
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 10:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706868814; cv=none; b=g+OTf3fMLvD0Tax7HLzd1as4i/JDogRfKAXKKaMKshBPPTtGE48EFx/WTTbp3n3rySWYNxsBPLe4y/YQfPTcs43NTfmLy4Ym9/6Hje7EthfTlpw/ymGt9OD6J91s4m1/OCjLJXZ5Qxe7BDxkAIdISVmknRO2nvLGzMBfP/kJlMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706868814; c=relaxed/simple;
	bh=zKan942Nkahudi5ozsgPLVKO5gJLw2vqAX/thHirjSw=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=tj6XJSbsj5yV5LNQPWtMl06AJCL9f48Cgj52WCvGtp0MG6k76sCwTWtuw8z5J9kaYsMPgzRpckaD31ftQK7qTsNQw6ojL7JEAnO7sfBS6rYWkFSUcWjj6jy3QXAmOzIgT0tYAz+Czo7cPLRg6qdA9T8v8vyCHqUW3nW/xNxgqew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zX6ZZATX; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-603cbb4f06dso36601047b3.3
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 02:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706868811; x=1707473611; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=PLhsSS3HwprQWBFpEcHgJ/pLquVGk4PYeCURrLCLOgI=;
        b=zX6ZZATX4AgX3HcbrldADaoVMKXUGOC/fPR9dEug/fZ9dcnBmTUY5SwC69Ez4yM4o1
         qxX/0E4WJIuCBWn0ic6L5+KcwtsyHvGMVRJRJbo8Aean+bpY1PH5JYOoQGlYLGHZGFu7
         c1rN9JISirQ16F6BAhcsgAHIMkkLyIcy//pxe+QARoEKiJVqpfRUpPB906uFHqzv3MRg
         e1maBuEtRqWabFaUlui+WoZHzySUx8xSzLlGYynEjRD5kiXG5sicoBtSyWJVB3TfYkTL
         WRLq7RtnTPJYMEIpYsV7CRt8aFl9YNxbzqaBQqKvAqWUUuqWs98UeN/m2IQdW90hZk9Q
         UDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706868811; x=1707473611;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PLhsSS3HwprQWBFpEcHgJ/pLquVGk4PYeCURrLCLOgI=;
        b=xBz65Xrk7wyCQ+sIMHG4KKDnEN7CELXLpQgF84NYpO3v72I6v0mgKdCuSzCihqFOJu
         BSKQhcGq94TNYRRMY0vYK7k59wmHV6ZkmeAOtPqKU3Ozpu2R9L7iqMH8toNADEnWOcYn
         qecK9gKDAo1KBgyLkuxr4OwRhgHzxfdZpWNgcKpFfayjzS8tMttzeIySqg6MwQRFMIqt
         fmqItcep6vBqhNKy+mRbMELSiHBuMXYzCpcubfuyuzqyDAKDUG6O8cG/g8PHcWMFbTkl
         ujV3sMh7D1PeipItFEVsJmbWTmAiKQKyG7fRrBSb6lsroarseJIhLWrkv3Akvj28em3l
         nkYA==
X-Gm-Message-State: AOJu0Yx/Wdrj0f61ieRbetNbNAHWgIm9MEhiiIVsJ4PXz8kXwEUYub96
	Tl+0fKcOHhoyhWAKmoTx331ENg8zQKmkZrm8gQW2O/ifeHNYN/BpM0jTmyJA0yGGa80Y2cGeLr0
	okDI/wMfPg8cI0g==
X-Google-Smtp-Source: AGHT+IHNu4N4F56NtunkcEJmIgHYr7aTlCKnDc5iMwwW9T78FK6tvKT8P1ZfGQL5q8WO15ybqJj4EdsnRQuZHDE=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6f0:da10:9cb3:5b3])
 (user=saravanak job=sendgmr) by 2002:a81:99c9:0:b0:602:d398:5176 with SMTP id
 q192-20020a8199c9000000b00602d3985176mr1632614ywg.4.1706868811768; Fri, 02
 Feb 2024 02:13:31 -0800 (PST)
Date: Fri,  2 Feb 2024 02:13:24 -0800
In-Reply-To: <20240202101326.876070-1-saravanak@google.com>
Message-Id: <20240202101326.876070-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240202101326.876070-1-saravanak@google.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
Subject: [PATCH v1 1/2] of: property: Improve finding the consumer of a
 remote-endpoint property
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>
Cc: kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

We have a more accurate function to find the right consumer of a
remote-endpoint property instead of searching for a parent with
compatible string property. So, use that instead. While at it, make the
code to find the consumer a bit more flexible and based on the property
being parsed.

Fixes: f7514a663016 ("of: property: fw_devlink: Add support for remote-endpoint")
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 52 +++++++++++++------------------------------
 1 file changed, 15 insertions(+), 37 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 641a40cf5cf3..ba374a1f2072 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1063,36 +1063,6 @@ of_fwnode_device_get_match_data(const struct fwnode_handle *fwnode,
 	return of_device_get_match_data(dev);
 }
 
-static struct device_node *of_get_compat_node(struct device_node *np)
-{
-	of_node_get(np);
-
-	while (np) {
-		if (!of_device_is_available(np)) {
-			of_node_put(np);
-			np = NULL;
-		}
-
-		if (of_property_present(np, "compatible"))
-			break;
-
-		np = of_get_next_parent(np);
-	}
-
-	return np;
-}
-
-static struct device_node *of_get_compat_node_parent(struct device_node *np)
-{
-	struct device_node *parent, *node;
-
-	parent = of_get_parent(np);
-	node = of_get_compat_node(parent);
-	of_node_put(parent);
-
-	return node;
-}
-
 static void of_link_to_phandle(struct device_node *con_np,
 			      struct device_node *sup_np)
 {
@@ -1222,10 +1192,10 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  *  parse_prop.prop_name: Name of property holding a phandle value
  *  parse_prop.index: For properties holding a list of phandles, this is the
  *		      index into the list
+ * @get_con_dev: If the consumer node containing the property is never converted
+ *		 to a struct device, implement this ops so fw_devlink can use it
+ *		 to find the true consumer.
  * @optional: Describes whether a supplier is mandatory or not
- * @node_not_dev: The consumer node containing the property is never converted
- *		  to a struct device. Instead, parse ancestor nodes for the
- *		  compatible property to find a node corresponding to a device.
  *
  * Returns:
  * parse_prop() return values are
@@ -1236,8 +1206,8 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
 struct supplier_bindings {
 	struct device_node *(*parse_prop)(struct device_node *np,
 					  const char *prop_name, int index);
+	struct device_node *(*get_con_dev)(struct device_node *np);
 	bool optional;
-	bool node_not_dev;
 };
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1328,6 +1298,11 @@ static struct device_node *parse_interrupts(struct device_node *np,
 	return of_irq_parse_one(np, index, &sup_args) ? NULL : sup_args.np;
 }
 
+static struct device_node *get_remote_endpoint_dev(struct device_node *np)
+{
+	return to_of_node(fwnode_graph_get_port_parent(of_fwnode_handle(np)));
+}
+
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
@@ -1352,7 +1327,10 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_pinctrl6, },
 	{ .parse_prop = parse_pinctrl7, },
 	{ .parse_prop = parse_pinctrl8, },
-	{ .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
+	{
+		.parse_prop = parse_remote_endpoint,
+		.get_con_dev = get_remote_endpoint_dev,
+	},
 	{ .parse_prop = parse_pwms, },
 	{ .parse_prop = parse_resets, },
 	{ .parse_prop = parse_leds, },
@@ -1403,8 +1381,8 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
 			struct device_node *con_dev_np;
 
-			con_dev_np = s->node_not_dev
-					? of_get_compat_node_parent(con_np)
+			con_dev_np = s->get_con_dev
+					? s->get_con_dev(con_np)
 					: of_node_get(con_np);
 			matched = true;
 			i++;
-- 
2.43.0.594.gd9cf4e227d-goog


