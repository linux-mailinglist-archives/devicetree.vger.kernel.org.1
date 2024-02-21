Return-Path: <devicetree+bounces-44527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D4985ECF9
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDB98284C37
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8839512D776;
	Wed, 21 Feb 2024 23:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="kdO1X11a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38B112BEAE
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708558252; cv=none; b=LdnGTpzciq8xIjqY6QUC768dgZjOSRxTmhYK/n9oZ53VH8j2oauMoJOpQ03BOb+nU3iEeDslXCm7h3e8I0vkwg7MyYTLNmHqZyxcUVaIqUjFPBKaJJMCALlNQhNenBYltjQRbxTN9b/ebAbzyburC1XNw9a81Kgp2B24lF/+Tx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708558252; c=relaxed/simple;
	bh=/z8Eu/KeLJ7IbgMJCENA0qx1maElopa30GOhgYXJfiQ=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=f2E1Len8IOG/TLeIoq+YJQqWCRoyztcIzdLV4twnCt0kxGUEdBA3GYkH3jmVkHRJ/jYkrCIv9x9/UwKG/+VijhGUdvKEnw/uOQTTq/APFrUmGH3koRlY2W2Am1DkfRD8Y6ONijG+DzvI8if3mBXfV5j5e4zmoWcXTXvwYQ2TzeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=kdO1X11a; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6081639fecfso56092057b3.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708558239; x=1709163039; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=hz8i/GyBU5B3ALvYkkFzM0iQaG+ZmlRW+5k11B+Bktg=;
        b=kdO1X11aIl4Lz7Ab4W0RtCxTzU56PzthcPHHI74ohhv9ewWe1BQvHC+DrAEh+cbjhr
         Fp+9Eu+WgZzFYjDQ0JtVpWAXOa0AGSg4Do7kj84E/1KhFejG9QjzkAXrYgmpBsB5umwu
         dONIbsErrDxfNkSphy/oxoI6zfmxkQsfBZA4T3Z/Pj0jBxb2ujm6H6b+Z3t0513bG45o
         bOugM0UE7EdMZ47G1OEC1baI0WygVYOA38IsnHN9oyd4+TLn80jLmpSmIJh6kLeHBghq
         5J/22fDE24RDjzKWl5ysDngxe0v3oNmAWd4NSqw0Yrdz517/0UNIfWnVp5ckce2Tqy/y
         f4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708558239; x=1709163039;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hz8i/GyBU5B3ALvYkkFzM0iQaG+ZmlRW+5k11B+Bktg=;
        b=UFRsD4H7FS6Vgv56r96k0s4CS2gi3kNSiYHkD0clfUt6rg2pHwVZP+NBhz85hHlHjL
         Ffp5/nkY/NVpqDWiPlULeM39GzI55+M4R6l4tc0yhj0fdZ24hjOH5bMuOy4t2uB13Lyp
         ByDAOGGZJowAp7AWlnSu5XGByOFXt64tmy3+AqasoGCUzing7Xv2EYtTQNcjCMI5t/Zw
         RsoXdt9L5mRJbbq67+P0btRf5YKD6xcP1Cpsrywhknw52jDtpLCRCgZXiKbmGpUXNPYI
         il3WX0AjqgI8HlJ/32UfmYbJyuzj16u1rbw0xOEX/ckD+C8gnfEUzEyu1mDz8uvUQF1J
         isWQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2dSo6uRGli7q16qyHSyns8xJ0+1d6Lgq+sK2820ZePuCOfF2dUIdiuQYvLIN9okKSkoiQD4dYxVGweiVT6PIGQCVWGlTOL8pf+g==
X-Gm-Message-State: AOJu0Yy2/X33tIWQEZ5rYX/RHwT4dXzO4TpuBpjKImdxhiYzh3KSPSlV
	w+uc0lucpTQcADHLo7SeDtnk/0Ed0zGrE8QtHnnboWKElJoHx29Jwa6mTNwKdaNUME1glHot/tp
	pNoqs+3g6vQJwnA==
X-Google-Smtp-Source: AGHT+IGuXvzZvHNy3QVBTSonIzoMI+/Ao4vwqXbJbM4MrGhiQqoRVqm8N48cIuXQlz43p2euWLuAKXmE4OX5I0U=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:4e1e:336a:2b30:13fe])
 (user=saravanak job=sendgmr) by 2002:a05:6902:72d:b0:dc7:3189:4e75 with SMTP
 id l13-20020a056902072d00b00dc731894e75mr30785ybt.3.1708558238961; Wed, 21
 Feb 2024 15:30:38 -0800 (PST)
Date: Wed, 21 Feb 2024 15:30:22 -0800
In-Reply-To: <20240221233026.2915061-1-saravanak@google.com>
Message-Id: <20240221233026.2915061-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240221233026.2915061-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH v3 2/4] driver core: Add FWLINK_FLAG_IGNORE to completely
 ignore a fwnode link
From: Saravana Kannan <saravanak@google.com>
To: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	Saravana Kannan <saravanak@google.com>
Cc: kernel-team@android.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
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
2.44.0.rc0.258.g7320e95886-goog


