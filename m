Return-Path: <devicetree+bounces-40326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43732850251
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 04:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 040842872EA
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 03:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D060FC14;
	Sat, 10 Feb 2024 03:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ACCkEIVQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885036FB3
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 03:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707534359; cv=none; b=Ik28qGwjW2PuxqYfKF8V9AwoW6OcFy92p2w/1ad/OIzF11Z/soVOXmr7NgAYesO95xwBpOxWvnZwucbcAbBzIyOe7iWlWZkzxLX0V42Vowp1miiY2xYTcc0fslKebbGUrMnmAsevZrk5rwS+P6dbilVNZWy8u+6D9W7n8MRoJUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707534359; c=relaxed/simple;
	bh=sWUmF3vh9o4HGU5Ho8G3VWDldprPEGq5gO9RSRL2L2Q=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=Vv0GhUguSUMPfA/yY6DuqFfzr48m2M3abwKOU2QhwWSM9FUjLSKWXFNtH2A+dOxCwa8zEuVIqrPmnHZDAj8UrAQi+g/o1ox5QEdmpwwmbnCb3AjSSHTIxhicZKOEAcsfwMbmndFPGsyYq9di7d3CxW9uUIoaNPTwjtGybLjRqcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ACCkEIVQ; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dc746fb535eso2706955276.3
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 19:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1707534356; x=1708139156; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=+K3jZfz6ZJpM1n2dt5cwkWjr08+sSZMq2mLrsQ52mPs=;
        b=ACCkEIVQNhE4KkCsOxGvClYjkLYikGN2KYCOSdw7UtVsYTRhlxr4hCAHd0R/txQoQp
         5gOShlogs+aw7kplnJEtN4GS2LeVT06Fb6gfhjOTC4g3Bp4WFB4Tgv84999Ch4/XTg1k
         XqVVk+eTOC8RlCF/F0jfJn3wiSJicTdw2oWtxCgVVZEasg+mgg+1Ky1i55kDf1rDr1pR
         WoVP3ktZ2zEZZNFf7oCTe4v1coTqLZNwh4X8tVzSqP32sS3EuKCBOSL1RDgck2zC+cGq
         L6cGeA4rPkfzGE4ltFsoJwxP7VMEWUmXobJsFySuQ/eYRGjiMyX3jkoDcy0SrASyn9Xq
         ba2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707534356; x=1708139156;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+K3jZfz6ZJpM1n2dt5cwkWjr08+sSZMq2mLrsQ52mPs=;
        b=Y4k0gUMduSytOlCQcWxqf2LYzD3kI9geGeV6nkTIIBbj/66+Jqdj+qCYUGdTq99DCl
         rWbPw9nWbvcKWzYS4ZWGfbNJbtrzArSoE482Tcsy6cRzZ1yI/7l0wxkYLQyv7gswQBb2
         uLV//IuO2qFaPZ8KME24+JYTUhkaYz1gwo+ysxc4OfJnhcd2VxerDS76dB9cUZBG+jal
         Pi3/jbkiVjH/BFAx3FQooES8hRd0bOp24DRtRUBiAiek0cQOv1ZX+dqJ/1bs2EsZjoRv
         Ybpr3CHJbPQkQvCVzhgZtsOBB3ttx2GbhpojE0XLcnSWCOtMntYGFZOx6RKQMM3/Di4k
         4/xw==
X-Gm-Message-State: AOJu0YwA4cD1i8LgXn32iU+K0HBl8fMHW76FHMlJkWJWmpdd+Ebtr7nb
	wC1wPkD/Fs3kF3Tl8rhfrXRJxrz4iXlWJ4U3RfNFk9ZW08OEmdeS7cFlVtbMdcqk+6OIQY0Fwow
	q57rbc/9nwm4McA==
X-Google-Smtp-Source: AGHT+IEuUhIzB6NfgqOv1GYf9HANpIJ7RQGUvhcvkW1GTzdVOwt9FN9NCTQ/qcg0HSbdsnUJKsK+9yZPAri1Q0M=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:6b44:91e7:13e1:5d92])
 (user=saravanak job=sendgmr) by 2002:a05:6902:4d0:b0:dc6:f59d:73fe with SMTP
 id v16-20020a05690204d000b00dc6f59d73femr242739ybs.13.1707534356597; Fri, 09
 Feb 2024 19:05:56 -0800 (PST)
Date: Fri,  9 Feb 2024 19:05:44 -0800
In-Reply-To: <20240210030549.4048795-1-saravanak@google.com>
Message-Id: <20240210030549.4048795-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240210030549.4048795-1-saravanak@google.com>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
Subject: [PATCH v1 1/4] driver core: Adds flags param to fwnode_link_add()
From: Saravana Kannan <saravanak@google.com>
To: Saravana Kannan <saravanak@google.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>
Cc: kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-efi@vger.kernel.org, 
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
index 14d46af40f9a..33055001e08e 100644
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
index 39a3ee1dfb58..751c11a28f33 100644
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
2.43.0.687.g38aa6559b0-goog


