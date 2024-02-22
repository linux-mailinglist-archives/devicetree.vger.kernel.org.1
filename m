Return-Path: <devicetree+bounces-44583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4857085F00F
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:47:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA8E2285071
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8326C17576;
	Thu, 22 Feb 2024 03:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Qhk18JYI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ADD182DA
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708573597; cv=none; b=tZbNT64uxRsLr9h9bSKqEG2paZS0nO86TlXWoSQ4x/cTWTtWUt2UgA6dofG1nuQ68lzNkQk8kx7Ctl59dVcwprDXW4MBYMUP1pIVrsUQ2h5FsiUaT5847tDQauMaj2z3bpu9ng5KPRL1Qc7FKqM+LEOfi/oguQHUXecU+c/9yI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708573597; c=relaxed/simple;
	bh=/z8Eu/KeLJ7IbgMJCENA0qx1maElopa30GOhgYXJfiQ=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=Vt/mKKgUCZuyZGs49FvmGPaoPDNGO6T11arruOETTHFst8s/z6oOvUDThVA+cYTuFFrOgdyjC1TqzNPDDl1JM4DYUk8vkcEhoeas0zgMRGRuYjsgXvnlmeocGCkLMQuUjQPviyOFUqhEoFj3SzyewXX9fDk1IXCBWdqmPbJT4sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Qhk18JYI; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dcf22e5b70bso1279717276.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708573595; x=1709178395; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=hz8i/GyBU5B3ALvYkkFzM0iQaG+ZmlRW+5k11B+Bktg=;
        b=Qhk18JYIGwL3GWM+1Rd5LcpQxWCDDMvoSRBadEndPXts/NfnyFIwS5BTkz9TnHF+ef
         udacYejdBUnvuRa1naCEirLw6crLMjA5CVNfxhveuNK4iTu0A3rpNxusk6/gPRBGvg9J
         wiZFepL3apuxJu9TbmhrnzYnvy5uSRCio5Ejek/akPWfrajT96v10RURaS/wsgc8roTc
         CBjKXenOBc7q7jipaM8ak19oHx4LCNr3Fj+iYpRwkbhMxu+x50eIuUCkM+YlbpbMiMeW
         3V5TYr6m/sI545Yqu7+sJDVYHMqX1lth7/+/HXTTd9/1t3bBvNEn2wsJ5fYodRsrQ0ch
         hitA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708573595; x=1709178395;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hz8i/GyBU5B3ALvYkkFzM0iQaG+ZmlRW+5k11B+Bktg=;
        b=usdxen4mwf0taAASWk1QuXnABNLbCzMZ219CGpA2hNcZkrOIa+XAejgh0eoxgYuMFX
         OXPsVHPhXA4kVGFLIOSM7dxu6KGZYCpJflFwdm0ijL35aWhEp4aXnpF1xvqHA2NAorpr
         v+h1iuAq3UBCN9cWq1Saeo8pt5iWZpnFp8F+Ab6a6NmFN+B48W2J/yOkrdzZ34CG66Km
         MhJN7j8zrNKp+L43Yq54u2a48s0IUVX2F3g0OCeYnH59T/9TA1O6NA0/uxKNL0W/2GCM
         /06ig1kvka1yiN7CotnZVfhi5ju/H8fgbTlBwXXlFwehVorD9foQzVUxUVSVPSDyANw6
         u/QA==
X-Forwarded-Encrypted: i=1; AJvYcCW7p3xSxDYjzP6WHknA9EV/ls29R40zlQzuv4+ikqSUm0UnJcuKrhrnZz4QPu4W4Hdmu1sY9k10rngma1XSVwuvu+rOv8SbuqxRRQ==
X-Gm-Message-State: AOJu0YwmEkCcxM2bQMHz1g8dP1W8qy7mbYWxhHVNHQe6/Qaf2tyQlkb8
	zOOjHpZ0AkzfukOZ5X0I5kHMFxNw7dGOLIpPowOZrcRd1S4kRsbtI0p2U0n2WwoTYiU0NmqKiTr
	C21Mc6y+TXreI6Q==
X-Google-Smtp-Source: AGHT+IF3QQPEtZbXiIqHornd0y/4FT86dntj5KuKg8uawdGZql13WDvoR73iyo2QI20QtUg6WnsI1hRNMe7av2k=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:451c:c6c5:1fb1:a2a1])
 (user=saravanak job=sendgmr) by 2002:a05:6902:1891:b0:dc6:e20f:80cb with SMTP
 id cj17-20020a056902189100b00dc6e20f80cbmr69205ybb.3.1708573594920; Wed, 21
 Feb 2024 19:46:34 -0800 (PST)
Date: Wed, 21 Feb 2024 19:46:20 -0800
In-Reply-To: <20240222034624.2970024-1-saravanak@google.com>
Message-Id: <20240222034624.2970024-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240222034624.2970024-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
Subject: [PATCH v4 2/4] driver core: Add FWLINK_FLAG_IGNORE to completely
 ignore a fwnode link
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


