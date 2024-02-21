Return-Path: <devicetree+bounces-44526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C50585ECF3
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F358C1F23E31
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:30:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA16112D748;
	Wed, 21 Feb 2024 23:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ccXHuh83"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451E712B168
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708558238; cv=none; b=I6ZvTjHOJCnzQuMMSWxofoJOmao9fw/htiWQsDj8qI6oXIdgnvILxxaOnh09Q+y4msakcE5JDd4+hsMynG2V/AUun3zVPzo54xuA5phyi5JAa7Tqwiek7JB52wOSwTBVtM42SIAyY1Y2J/D7MTN+aRKbR3Hewyz+ON1ZSC1Uad8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708558238; c=relaxed/simple;
	bh=O3k+nYu1MYBPKH6TsA/y54d2ADLO3F4v2KYWl0x8bqo=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=RXxwVaZJwoIGyKQRZR7VaDnkqZ+DI/rXC85zb7IJleBMFwSokWqJMeVfItz1x7HT5U6GntrHXwafp0jPRJHARRWNX87JC2kkIvA5FExlSP9IUI3zgLmo2WeghrqlBQ5pVejaXecesdGrzU+eaetZttx+UfkyS9HOE+EJA5a+4v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ccXHuh83; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-6047fed0132so110676067b3.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708558235; x=1709163035; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=2RZcm32i75equt/unWf5KMZ/RAcqfb/I89ao1kCyS8A=;
        b=ccXHuh83DugB0FVQYirkrAty60fONap3CK593aejGZlaS6pxh5cf7aP+nDz5jBoEm7
         KYlEeTnHJJEKVGY2myu7/+bwy0rxvFSN34PvfuFcWEB9pB123ANwq/20iTZmxMdGXEcQ
         HGuTq6NWx7HYVRdbIKzFKYJAm4n36KH1fVynRqk5YtQ7fpgvNXnIa8OSMsxH7BsEVHHD
         OfOiKjLx/qSTq096n0LfP2kq1HVqDK9GtVJi8UdPIAn94MNGG8g6yVDNOmH3kULnaS74
         8hfgdkA8Ue9aP9xmh6cXs6Oo+uh9gzuyGOPXZfmUOXcrlkxpTmVkCq1dWlH/z1RGpn5P
         lSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708558235; x=1709163035;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2RZcm32i75equt/unWf5KMZ/RAcqfb/I89ao1kCyS8A=;
        b=wqQC92+hgoPU9MFiCa107HU1xoWwXUoGVAfD7JvINjS0sX+/S9vcNYmSyCJfbxxT5O
         ldzqnoKGCS8JtYfgRK5rkQrYFBooumaDY2BfbSevkNe5zVmWrJlggMooQD4os+y4sj7g
         jQY/M6p92zIepFIJX9cLKneACwdV4fi0Z8vY4dd6ovZ2Pf3rjXkUxrdxe+o+5beUuCmL
         VorXD0RNHcxr/AZVUhGCUcXZer1gr6rOeptCiXmiLend3J5Prdi5jujzcfyt0iDSDKwv
         z85BZTuTYYkNXWnVK17RC4ZwoWk8hA+FV3N02+FrUjauUACWgOI3Fl/QJ5e+V5WW8wfK
         t8/w==
X-Forwarded-Encrypted: i=1; AJvYcCU8avunnRi1ya3TQFMppO3Ys+RwkV7siXdOncaw6mg/vpFzzr0A2sJhNrvGDm0L7k+5ag8DHHJvZwjHuedxtcRopgKHHwDRBLXHIw==
X-Gm-Message-State: AOJu0Ywbhk+HrHDNg44nL2pB2RJOeWLPpfTdAPheIzKzv4pWtFBezuQh
	A3HtAxIqtNX/qDsUDh44+j5GBqkhWVzSE9BNqkm5kDxxoalZu0l/8XI3V+U6AmCP5k2izxnVTZH
	mNrmsqrNDitH41w==
X-Google-Smtp-Source: AGHT+IFymqwFZX8gUcnkDHzCjCSYD5QmwOYK5TfTYepo77znZQH+G9Phdflg4Iktv+dh1kr8I9s40IenkChq33E=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:4e1e:336a:2b30:13fe])
 (user=saravanak job=sendgmr) by 2002:a0d:e6c5:0:b0:608:801a:e66e with SMTP id
 p188-20020a0de6c5000000b00608801ae66emr571836ywe.3.1708558235317; Wed, 21 Feb
 2024 15:30:35 -0800 (PST)
Date: Wed, 21 Feb 2024 15:30:21 -0800
In-Reply-To: <20240221233026.2915061-1-saravanak@google.com>
Message-Id: <20240221233026.2915061-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240221233026.2915061-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH v3 1/4] driver core: Adds flags param to fwnode_link_add()
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

Allow the callers to set fwnode link flags when adding fwnode links.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c              | 5 +++--
 drivers/firmware/efi/sysfb_efi.c | 2 +-
 drivers/of/property.c            | 2 +-
 include/linux/fwnode.h           | 3 ++-
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 9828da9b933c..adeff041d472 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -92,12 +92,13 @@ static int __fwnode_link_add(struct fwnode_handle *con,
 	return 0;
 }
 
-int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup)
+int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup,
+		    u8 flags)
 {
 	int ret;
 
 	mutex_lock(&fwnode_link_lock);
-	ret = __fwnode_link_add(con, sup, 0);
+	ret = __fwnode_link_add(con, sup, flags);
 	mutex_unlock(&fwnode_link_lock);
 	return ret;
 }
diff --git a/drivers/firmware/efi/sysfb_efi.c b/drivers/firmware/efi/sysfb_efi.c
index 456d0e5eaf78..cc807ed35aed 100644
--- a/drivers/firmware/efi/sysfb_efi.c
+++ b/drivers/firmware/efi/sysfb_efi.c
@@ -336,7 +336,7 @@ static int efifb_add_links(struct fwnode_handle *fwnode)
 	if (!sup_np)
 		return 0;
 
-	fwnode_link_add(fwnode, of_fwnode_handle(sup_np));
+	fwnode_link_add(fwnode, of_fwnode_handle(sup_np), 0);
 	of_node_put(sup_np);
 
 	return 0;
diff --git a/drivers/of/property.c b/drivers/of/property.c
index b71267c6667c..bce849f21ae2 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1085,7 +1085,7 @@ static void of_link_to_phandle(struct device_node *con_np,
 		tmp_np = of_get_next_parent(tmp_np);
 	}
 
-	fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np));
+	fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np), 0);
 }
 
 /**
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 2a72f55d26eb..c964749953e3 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -210,7 +210,8 @@ static inline void fwnode_dev_initialized(struct fwnode_handle *fwnode,
 }
 
 extern bool fw_devlink_is_strict(void);
-int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup);
+int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup,
+		    u8 flags);
 void fwnode_links_purge(struct fwnode_handle *fwnode);
 void fw_devlink_purge_absent_suppliers(struct fwnode_handle *fwnode);
 
-- 
2.44.0.rc0.258.g7320e95886-goog


