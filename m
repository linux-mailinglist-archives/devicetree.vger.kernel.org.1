Return-Path: <devicetree+bounces-57284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1788B89CEC3
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 01:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE07A1F2280B
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 23:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F2A14A603;
	Mon,  8 Apr 2024 23:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sUAgEt7m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A814A0A5
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 23:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712618009; cv=none; b=LZEGJ8IsoyJV5FZtd9OeGYKkHgzYRr+Gc8lQjYZ8WLfcEpscAX/13bujzX25IUP0b78XLzaooFANTi51EirhfT1VTkpC65RD+OcOjkUbbTBs8zwkDoZ0cPCuJwDEZherIxV4Z3PJwiPxYpZvmvADXn4sQp36tnHLgxO/GstWjcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712618009; c=relaxed/simple;
	bh=e6fodSav/CbFNwfCAIa1o37PSzn8hWZNWnEmaNgYfBo=;
	h=Date:In-Reply-To:Message-Id:Mime-Version:References:Subject:From:
	 To:Cc:Content-Type; b=Y7IUZZDZOrflrXNCR2U4DmjdP3RiH0pJBZ49bjfCrVxf4AwPWHFqfsbYK7Mt+Iat8U/dJqQQvxxapCRgXpKlDabN6/UQrdsjwltf8gHPeblBIWejQfnBw/wFmUq7RMc0FCOJEs/yv1bnhKsJvwsqupfbB6SkeAkjjwxVZBbM0lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sUAgEt7m; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--saravanak.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-dc647f65573so8633527276.2
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 16:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712618006; x=1713222806; darn=vger.kernel.org;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=nczmkQOw9DMhXXSsKHtJl6R+5z/iUhkTreCA2OOkZws=;
        b=sUAgEt7mLb0o5ektNf2E5DR8dq3u5+V3Q5mx+gZji6Su6subrmxJyK51ejVlZWfraG
         0K2oZg2+S23+IreJbAWGOHf6/e8PKRlGjBkY6yIRl2oW2EWz01PcVLyoxfzTUJPafI/o
         mb/bx0Ez7ylrqVucsHD/d/0QZCRQFW2D1vIwKQPKfJ30qnmzPeDUaakIN32DAEh92ez4
         kLnPAXfoLQdKbYFozTRuiAd0ZF+9x3hog14FiRVrRgojS8zfXCEPyXPKLuhqZwEUMa4t
         NOnNhdUiC80wEWEjWFjIaA/UwfR5MgU6DUfGVFc4V3/uPMRhwtQvRarxChohsPoCOB7b
         DJAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712618006; x=1713222806;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nczmkQOw9DMhXXSsKHtJl6R+5z/iUhkTreCA2OOkZws=;
        b=GAu4bYNI8SzK6+NrKiLz8Wr8eN8yMc7WZ67QJpAiEKgw9Au6eix6xQzHYDD+Ptn4QG
         fqa4eFXlvL7STzdFbvY2KhTfthhOXp3sgP8RbXw91db4pZPpYjQsE5QkZvzAdKDcFr3R
         p5+nb7m+BqEslxhM4bu6T2swsmhmdCu+cF9qozrzMtA9D1yGXdVcWcWh+r6KGQz+RDUg
         8/VUdzGQy3QHqPkR6Pxg6bTxVyHQlMf9cAIicADScpoj5pLF+/dJX2lZknzRNBtvsht9
         gkQC94m8hwavFwQf2r1hBRIfAbCrxO7gDac9XoST2WzWwa6xNmcSKMg97YZld1bPUpKj
         0Vsg==
X-Forwarded-Encrypted: i=1; AJvYcCVYfIHQaSZmEsb5xVLUpFT4Ir39XusmiYth2Q/O/Ut4gd4JPN/H2pYaTpinboO5xBBZumP1kGy8df6GR0SFWNSZq1VhDSg16pO34w==
X-Gm-Message-State: AOJu0Yxr6LgcCwa5yclJfjHU45vlw4MuvDFlFrVEaoC2pY8I6lGLnFya
	cGt+2WuNbf9LDFcHIu9xiCAN1Ei2vqzn3By+QV/bwo6CJLRM3H3EOb8qpiE2POudmb5OgrK1KCs
	HdLDv4bGrwgPoWA==
X-Google-Smtp-Source: AGHT+IHInv1s683PD0VpXFGdyKVT7quDre0k4j4QPZmziEdXPq9Eij+lZ0mHQQ58tOImSwsWuy4cFSS2rHxW/D0=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:96d3:321a:67f3:5322])
 (user=saravanak job=sendgmr) by 2002:a25:7456:0:b0:dc7:5c0d:f177 with SMTP id
 p83-20020a257456000000b00dc75c0df177mr3025061ybc.6.1712618006311; Mon, 08 Apr
 2024 16:13:26 -0700 (PDT)
Date: Mon,  8 Apr 2024 16:13:09 -0700
In-Reply-To: <20240408231310.325451-1-saravanak@google.com>
Message-Id: <20240408231310.325451-3-saravanak@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240408231310.325451-1-saravanak@google.com>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
Subject: [RFC PATCH v1 2/2] of: dynamic: Fix probing of overlay devices
From: Saravana Kannan <saravanak@google.com>
To: Herve Codina <herve.codina@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Get fw_devlink to work well with overlay devices.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c    | 10 ++++++++++
 drivers/of/dynamic.c   |  8 ++++++++
 include/linux/fwnode.h |  2 ++
 3 files changed, 20 insertions(+)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 5f4e03336e68..d856f9c5d601 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -237,6 +237,16 @@ static void __fw_devlink_pickup_dangling_consumers(struct fwnode_handle *fwnode,
 		__fw_devlink_pickup_dangling_consumers(child, new_sup);
 }
 
+
+void fw_devlink_pickup_dangling_consumers(struct fwnode_handle *child,
+						 struct fwnode_handle *parent)
+{
+	mutex_lock(&fwnode_link_lock);
+	__fw_devlink_pickup_dangling_consumers(child, parent);
+	__fw_devlink_link_to_consumers(parent->dev);
+	mutex_unlock(&fwnode_link_lock);
+}
+
 static DEFINE_MUTEX(device_links_lock);
 DEFINE_STATIC_SRCU(device_links_srcu);
 
diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 19a1a38554f2..0a936f46820e 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -237,6 +237,7 @@ static void __of_attach_node(struct device_node *np)
 int of_attach_node(struct device_node *np)
 {
 	struct of_reconfig_data rd;
+	struct fwnode_handle *fwnode, *parent;
 
 	memset(&rd, 0, sizeof(rd));
 	rd.dn = np;
@@ -246,6 +247,13 @@ int of_attach_node(struct device_node *np)
 	mutex_unlock(&of_mutex);
 
 	of_reconfig_notify(OF_RECONFIG_ATTACH_NODE, &rd);
+	fwnode = of_fwnode_handle(np);
+	fwnode_for_each_parent_node(fwnode, parent)
+		if (parent->dev) {
+			fw_devlink_pickup_dangling_consumers(fwnode, parent);
+			fwnode_handle_put(parent);
+			break;
+		}
 
 	return 0;
 }
diff --git a/include/linux/fwnode.h b/include/linux/fwnode.h
index 0d79070c5a70..4b3f697a90e8 100644
--- a/include/linux/fwnode.h
+++ b/include/linux/fwnode.h
@@ -220,6 +220,8 @@ int fwnode_link_add(struct fwnode_handle *con, struct fwnode_handle *sup,
 		    u8 flags);
 void fwnode_links_purge(struct fwnode_handle *fwnode);
 void fw_devlink_purge_absent_suppliers(struct fwnode_handle *fwnode);
+void fw_devlink_pickup_dangling_consumers(struct fwnode_handle *child,
+					  struct fwnode_handle *parent);
 bool fw_devlink_is_strict(void);
 
 #endif
-- 
2.44.0.478.gd926399ef9-goog


