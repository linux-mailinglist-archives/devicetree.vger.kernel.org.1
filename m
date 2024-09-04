Return-Path: <devicetree+bounces-99860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E2696B5B9
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 11:01:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59E9B1C21034
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988031CCEED;
	Wed,  4 Sep 2024 09:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HEJoQ/3S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07462136330
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 09:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725440429; cv=none; b=VwDgnth20u1Yhjxq2YVaPjfrZ1cBxHv3ve0IR/MUqlx9i5GeTAH1yZUT1LAh0lcii7HOnn00tgScjqBkKAVfGik0K3rqySyNEhO+wVhNu25d/BcfFBBS/ZfTAFS2jxVxyChVyfYKInGzJwBoTGRIUCHywYAkc1rmD0R2dNztzhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725440429; c=relaxed/simple;
	bh=Aeu7pCFnO2BARKJiVMSEYiClHg8V79pM2noeL3Ikwhg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JIuorbb63fH1JM6MFqi+Ugy58XtgzNpAph/y4PHWcK2RPN9dIE4NkR25Hny7LJ3riQpFcgbEB0GPfRfCfufkYjBgWSiYU11XlqjERcvN2w+FDpiOivagRoHFKOkHQWaQZeOtw3QpeC0vbrRNSPcF1l+bWnFtLrbtmyZ/2W9jVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HEJoQ/3S; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7176645e501so1963739b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 02:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725440427; x=1726045227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=URewZP1CjuEapcOrKzsC3z8bnfBtBnJFc+7fenwYvsw=;
        b=HEJoQ/3St4tqzpLFHA7pmkThP05Xv+ePlQ17QePbLQk6QUcQGjm6KFqz7pwMe5uf83
         8yBnQcSVg41qkLCagWsKtTWan1ea5LKaxpi4ur3KCF0YpOStyx4LgYpLJZQnMX5NGCZA
         TkIN85ihaMnN1UPWJgxInVP6IwXbVhUjjG6hw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725440427; x=1726045227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URewZP1CjuEapcOrKzsC3z8bnfBtBnJFc+7fenwYvsw=;
        b=G0PBy7rODh2QWp6OnoLN/9ZJAu5XSRoRiz3N6AIlX6GKIwnl6yntd5PrpLKZIsGhz8
         G458/M18c1/Bg37Ad4sdyhuodzMmMr2NtWbuO2tT/a+GM8lDs1iXdMo84lwfPZNQRCcy
         kCSHjSLpX6BlVdsKB0wNvpBWPxf81PtGErgo3McOsJeIwuuSK0XPWpBDgrJ8maTWz1tX
         h7sDU5WfjoOVPIJ4bAMglwxMJdebWe2tJq9tQRd/CR5OE1KQ0SDUaKRwZaAf5cgnO0uu
         geLJNLuf9WQq62WU8E/QXWHWyFHfPppPlRgvcIcIHpdWxW/DutL5frmegIYFvO/uWyH0
         zb3w==
X-Forwarded-Encrypted: i=1; AJvYcCVDYR57K7znOwhviqv1oeW3+I6D3AH5yxyHz29bpMtXGnriS17R7BMBxqMZHBjJXjxQpFHaCPycIXfb@vger.kernel.org
X-Gm-Message-State: AOJu0YyqRVLKHtelN2/HAzeBfmLISz6l8OgCAjPycFg50VpD45O9DUxr
	leV0IDkwFdCIJYM9VvLKLgSsc7yLfHbme038qZ4rf8WXKWgQmrW4wYuUz5KivQ==
X-Google-Smtp-Source: AGHT+IHf+4oWltICBIad0flKpZyWzPtxz5hqcWd60IFNv00gyZa3rQlflgcNL2YbqnsGxF7j26kYgg==
X-Received: by 2002:a05:6a00:2d05:b0:70a:f65e:b13d with SMTP id d2e1a72fcca58-717449c6427mr11999072b3a.27.1725440426991;
        Wed, 04 Sep 2024 02:00:26 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:83fc:5c8e:13bd:d165])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-717785b5183sm1153279b3a.197.2024.09.04.02.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 02:00:26 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v6 01/12] of: dynamic: Add of_changeset_update_prop_string
Date: Wed,  4 Sep 2024 17:00:03 +0800
Message-ID: <20240904090016.2841572-2-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240904090016.2841572-1-wenst@chromium.org>
References: <20240904090016.2841572-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a helper function to add string property updates to an OF changeset.
This is similar to of_changeset_add_prop_string(), but instead of adding
the property (and failing if it exists), it will update the property.

This shall be used later in the DT hardware prober.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes since v5:
- Collected Rob's tag

Changes since v4:
- Use modern designated initializer for |prop|

Changes since v3:
- Use new __of_prop_free() helper
- Add new line before header declaration

Changes since v2:
- New patch added in v3
---
 drivers/of/dynamic.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/of.h   |  4 ++++
 2 files changed, 48 insertions(+)

diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
index 110104a936d9..daa69d160a78 100644
--- a/drivers/of/dynamic.c
+++ b/drivers/of/dynamic.c
@@ -1072,3 +1072,47 @@ int of_changeset_add_prop_bool(struct of_changeset *ocs, struct device_node *np,
 	return of_changeset_add_prop_helper(ocs, np, &prop);
 }
 EXPORT_SYMBOL_GPL(of_changeset_add_prop_bool);
+
+static int of_changeset_update_prop_helper(struct of_changeset *ocs,
+					   struct device_node *np,
+					   const struct property *pp)
+{
+	struct property *new_pp;
+	int ret;
+
+	new_pp = __of_prop_dup(pp, GFP_KERNEL);
+	if (!new_pp)
+		return -ENOMEM;
+
+	ret = of_changeset_update_property(ocs, np, new_pp);
+	if (ret)
+		__of_prop_free(new_pp);
+
+	return ret;
+}
+
+/**
+ * of_changeset_update_prop_string - Add a string property update to a changeset
+ *
+ * @ocs:	changeset pointer
+ * @np:		device node pointer
+ * @prop_name:	name of the property to be updated
+ * @str:	pointer to null terminated string
+ *
+ * Create a string property to be updated and add it to a changeset.
+ *
+ * Return: 0 on success, a negative error value in case of an error.
+ */
+int of_changeset_update_prop_string(struct of_changeset *ocs,
+				    struct device_node *np,
+				    const char *prop_name, const char *str)
+{
+	struct property prop = {
+		.name = (char *)prop_name,
+		.length = strlen(str) + 1,
+		.value = (void *)str,
+	};
+
+	return of_changeset_update_prop_helper(ocs, np, &prop);
+}
+EXPORT_SYMBOL_GPL(of_changeset_update_prop_string);
diff --git a/include/linux/of.h b/include/linux/of.h
index 85b60ac9eec5..046283be1cd3 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1651,6 +1651,10 @@ static inline int of_changeset_add_prop_u32(struct of_changeset *ocs,
 	return of_changeset_add_prop_u32_array(ocs, np, prop_name, &val, 1);
 }
 
+int of_changeset_update_prop_string(struct of_changeset *ocs,
+				    struct device_node *np,
+				    const char *prop_name, const char *str);
+
 int of_changeset_add_prop_bool(struct of_changeset *ocs, struct device_node *np,
 			       const char *prop_name);
 
-- 
2.46.0.469.g59c65b2a67-goog


