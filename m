Return-Path: <devicetree+bounces-44582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 619FC85F00C
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:46:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EAA6B2316F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2594118049;
	Thu, 22 Feb 2024 03:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VNhOeutf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54017994
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708573595; cv=none; b=LRhmYFoS219ny4x9Wwp131JbsT+W+LxxhPTC/MQ+vp5clfp7WgAkKiqAGeegdMJcOzKLA3rzYNtQw9zimY+3YtPaY90yniCqa6ZhaH769JkV2G+HZUVwAIM6J1PRXVPvWELHoHQmCivUSO2oEintdum/5/JwCQ7NVv8CO/7CmMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708573595; c=relaxed/simple;
	bh=O3k+nYu1MYBPKH6TsA/y54d2ADLO3F4v2KYWl0x8bqo=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=B/Trt+1s5IcEYW1h/LrRirsufPDwQqjl+FBkq+tIGB3QQVV21OW+tRWrMM4Wf/KlBHQ3ThNYw8jaU8Fu17j3dzyKD4Sg3YZb8Ccr4UeTh2CbXZb8bfrJkIHBdTNx9AKxl05I2rjj22yK54MQO/8Z0RKTAWN7aqHKL5Hk1N8/YNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VNhOeutf; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dcbfe1a42a4so2828943276.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708573591; x=1709178391; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=2RZcm32i75equt/unWf5KMZ/RAcqfb/I89ao1kCyS8A=;
        b=VNhOeutf99wuKQ4mc9T//DCHqlek+iA/ffF7r67ow5P4Lgnh7YHO6RKcL0sOEl6Y7r
         DfBto8hTyDAO0HPwOKi0d14XYSAnEdip8lT5BieTWasTF67ZCn4GNAZZ49dvAsJbOMQ7
         pBxVoR9Mx+G4iUqCVIKmhWBso5ydF6rdnETLa3WeJd7Vz27yEtrOtZjzQtS+mN7QWMY0
         8oKgy/7yiHtaKqAtIccGj5e3apAPGlP+9lAqbwBF87oVmVxRjYDXyQ3yrX6GcdzBSukw
         NV/TdsQ4Jp220XbFeijE/pm8MioibnU9S8UmuII37oIUpLbRfxoMjSwCkGMItFKFF/Uu
         kHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708573591; x=1709178391;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2RZcm32i75equt/unWf5KMZ/RAcqfb/I89ao1kCyS8A=;
        b=JkSGzN4oJu5R3pN107YMcGPcdgi/50P9juCGqR+t6sc348n7LW4KK2p+JzZV0D9jBh
         2FMIIpBBGzcvr6z++d27yGjLEfyF1neg6JEKAFFS3fICngIt+30ciV3Rj9AJBMIF+VXN
         JtFNtFBtQ6CY6NY9sULkxFKH8SGrAjeEGaIFpVt0eDl0kgT9Jxd9uVRlfPFU6xhMR3HZ
         mqOKoc3C20tXj5Y3HMmhpaySYln6gKYVvKJhkjoJKrSbNgWuwCnoHfwxyha+UBrMGuwg
         52A6K4EOxra1ZLIsofMs40z1i771K2P0c4kvVessI4kgkxtBrqHe3DYHA28lLfIDjHBC
         spoA==
X-Forwarded-Encrypted: i=1; AJvYcCU68R8KqEfil2zrJS3Th0KHTxQaV/ViZ3YlFT+wg4Vv6xycxCaqIQz1HRtssE1rEO69ncgEhlkDceB1KowFMSQdxc3hJOjlLQugyQ==
X-Gm-Message-State: AOJu0YzqTj/cGGJqP6u9Te74LubFvJQZhfk0hPV9sEQDkU38bZdN1doK
	lIKOpqwwveiFHgYtyT3aDRGmfuWyw+3P5LQJT214YOw7S7bAFjKW3Ed4ZjWsja3fMkfp4+y1zjL
	j2ZrJTThHmLkkpw==
X-Google-Smtp-Source: AGHT+IHsDb2HtN0D1LaP7LOSjxqm+4q4hkHitLGwVd3UaC+PYoVhSFcHyYA1NaTDGTk57Hk4ADB8Bq63PJ18SdU=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:451c:c6c5:1fb1:a2a1])
 (user=saravanak job=sendgmr) by 2002:a05:6902:150c:b0:dc6:e1ed:bd1a with SMTP
 id q12-20020a056902150c00b00dc6e1edbd1amr340344ybu.2.1708573591099; Wed, 21
 Feb 2024 19:46:31 -0800 (PST)
Date: Wed, 21 Feb 2024 19:46:19 -0800
In-Reply-To: <20240222034624.2970024-1-saravanak@google.com>
Message-Id: <20240222034624.2970024-2-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240222034624.2970024-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH v4 1/4] driver core: Adds flags param to fwnode_link_add()
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


