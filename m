Return-Path: <devicetree+bounces-101896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C3A974B41
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:28:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1F111C243D6
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE61513B288;
	Wed, 11 Sep 2024 07:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AJRaz2EC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7C813C80C
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039704; cv=none; b=oiVX7x17CdWroICwt89wJ/492cqhjg2Wm0wzA6nvk5Nd5qeZIu6gy6FBJdnMZCEPV2gk/eZ8daFpr4Ijg/PHJ0C50MvoW70CKLd8cswFT12U/YuOhZWWH+Q9BuB6/sv4OW8WA9siN22S8aqR52ZSHiYXMsugIEzfH3nVIQ2mjXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039704; c=relaxed/simple;
	bh=zj/HJDeowM5ESxF1vN4op15RGlHBPvxyJE3xPNXJ1vg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GO7ZdqLP/Qe5u+dbQGgMwAUE2CUS3NZ50sPnKltSnLxP+KiFR7lAlXzYqD5viRARihNXQdxodcUuF84vYOHR/Tr7cnq1QEyoOhjlAEHTOokklZt4s4HnJLk0f4MzIb7SJLtrH2X7s8IuCsAafVm9fP3n17juWeZCKzYRjJV4k24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AJRaz2EC; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-718d8d6af8fso4206688b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039702; x=1726644502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9XBl4KvAxY2W5qf9J8VaXaQIQeHry8eBV5yNyqGAqXM=;
        b=AJRaz2ECRrMaSSYChDorTN36boQKfK5SgRqvgFrVS2oIj9ZUZXalqsMEqWU0WcW56d
         B866SeSDc5StFxcNQKc/Wsr+dNgmPtmXV+S5hPWeJ3eIn96LiVm2fMg5zcCrKZLeSM0+
         dqNbDJalScNFR6wNsCme9ZwLD+xvhYe8sHqOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039702; x=1726644502;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9XBl4KvAxY2W5qf9J8VaXaQIQeHry8eBV5yNyqGAqXM=;
        b=C9u+Ts57bq98vtWocD9LuBHyjT4GhOFXrDVmVNQaey8dPc0IfZQFk58DKPjiC4hRzT
         LMw5cSBLEHdKkrg03ZlW8I9kk/ak4cAT6MBVrhqb5zEtV0KiwNeiQPnNyu5h94xRvFYz
         rcPeqDFeHdJ+XCVpX6ApL7UxH0tGZBQXxUT76NIkB9iPoXphBSrjzWI2Shc7fBfRN0Yl
         INv0WwAqfe4naIcSFOqpR4WVfriVHOb16a1MzFCQ5xTJYXryfTPUkE5GhJ5fWbVXmiyu
         rU0n4XaJI+kjEcWo409J4GRHRpLWHHP3R2KB9l4/QN2Nr/CWQSAYZ6GM8ZTvCs5TMZWY
         RDYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOSLd872vGrK2Fs47Xmyc9O8ox/prhX+5zVl/AFCqAnhZHeAOoeh4L1OB3o3iTdjRzgswguLCj3ykC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9uK9tRIgvT3SEzi5bB0yow40dAEMBjip3qZLpqgXk+bePsuLu
	4CI0GLkYQj1pmaDT6/CmC3Y977eOCa8O9EvyVKt2agyJwyUK8zlQRdQ2oEMhsg==
X-Google-Smtp-Source: AGHT+IFjUTc14exhMNLPWpC6tKqxzxp/QnxrLH5ALh3HkEgdTdW2uDtj4xbh/J245j8YHjY14LvqFA==
X-Received: by 2002:aa7:8887:0:b0:718:d96d:34d7 with SMTP id d2e1a72fcca58-718e3f9caacmr18512422b3a.3.1726039701972;
        Wed, 11 Sep 2024 00:28:21 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8398:fe34:eba2:f301])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e7esm2399415b3a.80.2024.09.11.00.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 00:28:21 -0700 (PDT)
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
Subject: [PATCH v7 01/10] of: dynamic: Add of_changeset_update_prop_string
Date: Wed, 11 Sep 2024 15:27:39 +0800
Message-ID: <20240911072751.365361-2-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911072751.365361-1-wenst@chromium.org>
References: <20240911072751.365361-1-wenst@chromium.org>
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
Changes since v6:
None.

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
2.46.0.598.g6f2099f65c-goog


