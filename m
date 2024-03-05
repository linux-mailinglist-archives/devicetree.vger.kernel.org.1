Return-Path: <devicetree+bounces-48291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8743387151D
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 06:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0BD51C20A3F
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 05:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432CA7D09B;
	Tue,  5 Mar 2024 05:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="FN/zM/lT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDB97B3F8
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 05:05:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709615111; cv=none; b=Y+Iiv4TEjRg04Nmh26/EnyT91IE/w0DaogEEkaAptgqoGmoqsqsp5L7d/+9l6x818AgSI/icVfOJgHM7kZCNzusa1Lao3h412ZYps75/W2r4K20mdt2x87EejLbADaHdzxnNUqMBPWSlrXAlfH4AqcchLTBrq7L4RTAFPk2g7zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709615111; c=relaxed/simple;
	bh=KbTlvkqJZdkWz3JMFIvxA09yqx88DYjINdZ8RsQzQSg=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=jUesXPEObO3NRdV17Oa6kslSBbvYItBADVCKfKyWq132SVJOhhgh5Tdyo1KhaqEcIb6WaEdqS1zUMiXkuRfP7L6vyWKWpS1KyDWJld4caqMXd44Bb4zrVefBN8QzeRUjiy0+Xg/lBPV951/0pUVZyImt0gh2PQO22fb+69n5HZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=FN/zM/lT; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6096c745c33so98446397b3.3
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 21:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709615109; x=1710219909; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=kq0SZT0ux4lTSc+RRyaK9dfv6pgUchfiIyZPjXxEFKk=;
        b=FN/zM/lTOHIj/8BYWIMntUXN7yeq9q9GgULLDzZpoeCxfR3zIrQBSSuYD+TzJgjLoo
         Tn53kMr/vfkLpS5w69T+CVIMnwGezCPIdBlyvAxIpS1UVmkz+n+XEbFU0cpMhv0rRwLX
         nj1WvJBkVqA6B1m9QVJZvB8eIETIf/gaq8d5gVWkqV1anGwvF1esN/2BUzreuE2ELhgP
         jkSgdXXRNZ9YkioI0dZ5y5sqfmu59SF/D0gctyvIxnJRQKTS8u5F0VXgMZDR7OZTM3n7
         qD0o3ng9NrPIu2T0kCcuLz0aLmS/EJgJ0e0fMNQDhdX13cdoDX+T4wSlLhIXXThobt9U
         xkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709615109; x=1710219909;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kq0SZT0ux4lTSc+RRyaK9dfv6pgUchfiIyZPjXxEFKk=;
        b=wdRkcS2DOnyI+r/+dpcMS5zDwZZgwbzCypf66lNT3gDEBzm0AEGiCOgzYGgCdAtSQp
         BFTwt6/A/J979YU6ijxC+RtzKD2AlNqDJLjG0w/J3tsuzccLkB2I/0WyVAg8I5t5mNXx
         vP3MC2FSrATlxJ7uxkDET/xR2UiSF/Rj440CvHD4OsnPFIXosj9nQx0uKihrIodYdjeY
         uugaMh5b9K8doS5aPWZ2jn/9Tj1MuBhgp8bFcZuMouwNiSi0aiAKPL/6XNYTzumxd/Ig
         2geqQrdt54tOyr+4DCAZyp0WbeUT4liDQxe4XwpQ0V6kB6ApxDoCrGOnWvBJnVU+t0Vm
         lIhg==
X-Forwarded-Encrypted: i=1; AJvYcCVLzZu9yEiZQWdDr0eWpzGvwO3PlJ1NdUQc/wgcRPBqXXvNygc+EVNodTCdIJySKBt0siWYGKAW+8zUWPqIwUW1/Q0XbKmSmTLEbQ==
X-Gm-Message-State: AOJu0YxpZZ0Rr4U3IEr/UkoBYEy9JQpFFc6aiaDsIX925Eeown36IxpT
	jnadZsuL0vIelb2gTTtE8N6imui1Iw/i+lp5f8yfduhwCcDoOOrnh3ZVA0giRgmpuSiD4kor48o
	y8BSJYBITh60KPA==
X-Google-Smtp-Source: AGHT+IE6/OTFvoDlN5dzzFm/6hXqO2ionBjtS7azhJTBXni5SA73D3v1dU11zMy141HH8FUf/OzA3QpN9CW4JHU=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:d64:6ee3:55a9:46e6])
 (user=saravanak job=sendgmr) by 2002:a05:690c:a87:b0:608:a8da:1caf with SMTP
 id ci7-20020a05690c0a8700b00608a8da1cafmr3127642ywb.6.1709615108938; Mon, 04
 Mar 2024 21:05:08 -0800 (PST)
Date: Mon,  4 Mar 2024 21:04:55 -0800
In-Reply-To: <20240305050458.1400667-1-saravanak@google.com>
Message-Id: <20240305050458.1400667-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240305050458.1400667-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.278.ge034bb2e1d-goog
Subject: [PATCH v5 2/3] driver core: Add FWLINK_FLAG_IGNORE to completely
 ignore a fwnode link
From: Saravana Kannan <saravanak@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-acpi@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

A fwnode link between specific supplier-consumer fwnodes can be added
multiple times for multiple reasons. If that dependency doesn't exist,
deleting the fwnode link once doesn't guarantee that it won't get created
again.

So, add FWLINK_FLAG_IGNORE flag to mark a fwnode link as one that needs to
be completely ignored. Since a fwnode link's flags is an OR of all the
flags passed to all the fwnode_link_add() calls to create that specific
fwnode link, the FWLINK_FLAG_IGNORE flag is preserved and can be used to
mark a fwnode link as on that need to be completely ignored until it is
deleted.

Signed-off-by: Saravana Kannan <saravanak@google.com>
Acked-by: Rafael J. Wysocki <rafael@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 drivers/base/core.c    | 9 ++++++++-
 include/linux/fwnode.h | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index adeff041d472..fac017657d25 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -1012,7 +1012,8 @@ static struct fwnode_handle *fwnode_links_check_suppliers(
 		return NULL;
 
 	list_for_each_entry(link, &fwnode->suppliers, c_hook)
-		if (!(link->flags & FWLINK_FLAG_CYCLE))
+		if (!(link->flags &
+		      (FWLINK_FLAG_CYCLE | FWLINK_FLAG_IGNORE)))
 			return link->supplier;
 
 	return NULL;
@@ -1963,6 +1964,9 @@ static bool __fw_devlink_relax_cycles(struct device *con,
 	}
 
 	list_for_each_entry(link, &sup_handle->suppliers, c_hook) {
+		if (link->flags & FWLINK_FLAG_IGNORE)
+			continue;
+
 		if (__fw_devlink_relax_cycles(con, link->supplier)) {
 			__fwnode_link_cycle(link);
 			ret = true;
@@ -2041,6 +2045,9 @@ static int fw_devlink_create_devlink(struct device *con,
 	int ret = 0;
 	u32 flags;
 
+	if (link->flags & FWLINK_FLAG_IGNORE)
+		return 0;
+
 	if (con->fwnode == link->consumer)
 		flags = fw_devlink_get_flags(link->flags);
 	else
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index c964749953e3..21699eee9641 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -53,8 +53,10 @@ struct fwnode_handle {
  * fwnode link flags
  *
  * CYCLE:	The fwnode link is part of a cycle. Don't defer probe.
+ * IGNORE:	Completely ignore this link, even during cycle detection.
  */
 #define FWLINK_FLAG_CYCLE			BIT(0)
+#define FWLINK_FLAG_IGNORE			BIT(1)
 
 struct fwnode_link {
 	struct fwnode_handle *supplier;
-- 
2.44.0.278.ge034bb2e1d-goog


