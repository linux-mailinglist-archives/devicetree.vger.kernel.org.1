Return-Path: <devicetree+bounces-41027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C2D851FA1
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:33:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F23741F22E0B
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 21:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F06DC4E1CA;
	Mon, 12 Feb 2024 21:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OHBx6F9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8AB4DA14
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 21:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707773526; cv=none; b=f3rdnhxL3+Z9e+FScepqAoyFrt2TA72+GkzlYqZS9j+imaZvgyaM5Cwm9JIYW3zL60FpAwM+OuuVxz9IDXvIrXD7mKeWjnvzoK5YtpKfdhEYfdH5WRl1zv2JexmjdXq16j+q2FaoTSDeeM5OkFpXuKqOFjjOaFAsZkLDAwAR6rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707773526; c=relaxed/simple;
	bh=09nOuvy1xCjK1iYqCopDQXrnPVKpNm2a5rJaJXsm9lU=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=FOPHIjnjCRSb5Gy5d75+wn2HevzAWSyXUkcUOp2LuVNEaf1zGG7AMO1oP+AY4EdBZrf6LaK/ZkeHqIOPfRN+OXhOLC1688Fkws5V1hgs3LWYK2wlL+jPwiFY7QtuQIBOBwgtb6ACOJrkzw8NawyX6WIaSNKyyR2yhZ9Q1qCqcjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OHBx6F9b; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dc64f63d768so6829248276.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707773524; x=1708378324; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=F5s7UC2LI5606ztlkySRh4zEDw9ZNIX2+7Suzh+XsVU=;
        b=OHBx6F9bhwsJvj9SRIzninQd62CTd0mat67Ry0G4dzfpMXC9lLLH/2cqAtkPZBKWOs
         rCJlNGFOdzUHHSyx00VaV5roKpsat69I49vXVWf9nM10D5g6AdFuX3akbE1MiBcmwf/3
         U//fWlNw92ilZqOqSovV9mdpvdT5dJ202Xq3Gnl5XmSg5+K/5u0KYaPEpqu1aRUQ7I8R
         bMzmPnomy8vPKmO1iyBgm0mVL9Emn4B+OM9TotHLWNPRZjnhPKrNz83/FOQvMN7JijYp
         UeCGftAtQwFbnm3brtQMnWqc1osOv0HsjGW9FkVb887vW7Th/2S/CTchqaHupDFuZYjz
         CGjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707773524; x=1708378324;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F5s7UC2LI5606ztlkySRh4zEDw9ZNIX2+7Suzh+XsVU=;
        b=CqGkZtDsHdkLsEJMSSY1bRi0fHq7IQH/X8Kv1pVA0NmBAMwapm2hLwryE1AcTh87eh
         nMUBPZS6GV2JtLx4CRAymnjRoMGzU9XV0oYxqRRHRKzTDoV6jXIcZyTmLbe2agnGFsmA
         h8M5VEkqTp4XiZLAO+x4crTmkzVe2EnwM0oIQ7q3sKGMMww/crOMrG4roH9aFzzskxbf
         PolQsJr2GCJJrQg48DAyxeALjP07v9Ioe9fjPd+zLiujnvRA+NRwID35r2bmkn8J2gWE
         qgJsw3DUuK+XF4B4Qeyc//wmTlJkTIbcrx4X0DcPZDSnuRphfOm47o8awhJ7Z+/yy9xI
         NooQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9skRhPGZ+2tZGhzw2EuJzsJT5bTgVQkbCLSK9Ae8HSbaVCKIN+l2JIxyoO4C61MXTQfPEoz4ohcgp783xIyrZLDp7JJVw1sVg9A==
X-Gm-Message-State: AOJu0YzOcVRf12Toz63fKhqtgp3U5m6qFmtSNUp9bVkaRE3D79YZpwMJ
	MbxT6oM3zp5TE6PQnDEMrdLXkLTisveLCGb80+r0c6Nfr3pNv2OEMfBhV+tYNilC/DDKU1yKATR
	ck8a6h8eA/QLnrg==
X-Google-Smtp-Source: AGHT+IHiNYw+GukjhfLl9L/fVI79H8vPnI8fJB4kfhzgTN7MWnsY3Vn7qmvxy/2wW9UUYOelc46oL3dxnDIBR8A=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:496d:5de1:a404:8bee])
 (user=saravanak job=sendgmr) by 2002:a05:6902:120b:b0:dc7:6efe:1aab with SMTP
 id s11-20020a056902120b00b00dc76efe1aabmr1793262ybu.6.1707773524580; Mon, 12
 Feb 2024 13:32:04 -0800 (PST)
Date: Mon, 12 Feb 2024 13:31:45 -0800
In-Reply-To: <20240212213147.489377-1-saravanak@google.com>
Message-Id: <20240212213147.489377-5-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240212213147.489377-1-saravanak@google.com>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Subject: [PATCH v2 4/4] of: property: fw_devlink: Add support for
 "post-init-supplier" property
From: Saravana Kannan <saravanak@google.com>
To: Saravana Kannan <saravanak@google.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Len Brown <lenb@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-efi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Add support for this property so that dependency cycles can be broken and
fw_devlink can do better probe/suspend/resume ordering between devices in a
dependency cycle.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 751c11a28f33..dce451161c99 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1066,7 +1066,8 @@ of_fwnode_device_get_match_data(const struct fwnode_handle *fwnode,
 }
 
 static void of_link_to_phandle(struct device_node *con_np,
-			      struct device_node *sup_np)
+			      struct device_node *sup_np,
+			      u8 flags)
 {
 	struct device_node *tmp_np = of_node_get(sup_np);
 
@@ -1085,7 +1086,8 @@ static void of_link_to_phandle(struct device_node *con_np,
 		tmp_np = of_get_next_parent(tmp_np);
 	}
 
-	fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np), 0);
+	fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np),
+			flags);
 }
 
 /**
@@ -1198,6 +1200,8 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  *		 to a struct device, implement this ops so fw_devlink can use it
  *		 to find the true consumer.
  * @optional: Describes whether a supplier is mandatory or not
+ * @fwlink_flags: Optional fwnode link flags to use when creating a fwnode link
+ *		  for this property.
  *
  * Returns:
  * parse_prop() return values are
@@ -1210,6 +1214,7 @@ struct supplier_bindings {
 					  const char *prop_name, int index);
 	struct device_node *(*get_con_dev)(struct device_node *np);
 	bool optional;
+	u8 fwlink_flags;
 };
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
@@ -1240,6 +1245,7 @@ DEFINE_SIMPLE_PROP(leds, "leds", NULL)
 DEFINE_SIMPLE_PROP(backlight, "backlight", NULL)
 DEFINE_SIMPLE_PROP(panel, "panel", NULL)
 DEFINE_SIMPLE_PROP(msi_parent, "msi-parent", "#msi-cells")
+DEFINE_SIMPLE_PROP(post_init_supplier, "post-init-supplier", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
@@ -1349,6 +1355,10 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_regulators, },
 	{ .parse_prop = parse_gpio, },
 	{ .parse_prop = parse_gpios, },
+	{
+		.parse_prop = parse_post_init_supplier,
+		.fwlink_flags = FWLINK_FLAG_IGNORE,
+	},
 	{}
 };
 
@@ -1393,7 +1403,8 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
 					: of_node_get(con_np);
 			matched = true;
 			i++;
-			of_link_to_phandle(con_dev_np, phandle);
+			of_link_to_phandle(con_dev_np, phandle,
+					   s->fwlink_flags);
 			of_node_put(phandle);
 			of_node_put(con_dev_np);
 		}
-- 
2.43.0.687.g38aa6559b0-goog


