Return-Path: <devicetree+bounces-101898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A0974B4F
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:29:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 156D1B23211
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44F17149C6F;
	Wed, 11 Sep 2024 07:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z/JS5XU3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C20E143C77
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039712; cv=none; b=TnRAmFJhupTt1MJtB6XhufJU5yBZ3ERWKJ1FfBrNlOAoK58/4bjKd59q21jlf9FymXENdvwk+SC6utcJwVpV8IfiIKzV/g9/THhqqHPymh5Oz6/VqwgTELPgr9xoSL+MrQkTJpZwFfdqrpE9QtOyFqmGm8KB0L4IG2ps1/NFfYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039712; c=relaxed/simple;
	bh=GcyKgQsfjkBKNwaAizHmmILs0FYR28hHW2QvCF0Pxwg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h7AHPmgHmQXTSWxNd1le21v+2Qg5pbHoTCLCIHXOiPfFC3emFy1fcrwLgsKaRBzl/XntJ2M+IQpPQmdf6eesPPaQ7lTvK4gUmS464MCD5w3cKcgB8KldUTy6PSaJtRx90ZDwGvzRQbrh8/2Uvi1GnknkqMoECD+NVLTSxwAt7VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z/JS5XU3; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71798661a52so466125b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039709; x=1726644509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uo9H3mi08AzEIcyFPjnP71nK8rUWm/O6uNXtiPTxfPw=;
        b=Z/JS5XU38S7Q+WFE6PlkpaNvoF4jMuQ4eIg8ui1HL5h5vASOgRtuZTXAKf40hyZDK9
         305hj/QMmvRDDCsJknAOI7AGC++SlKq0AxT5HxeC7DVElVKWk4t33PtMVU7Puag/h+WG
         +zLoKtSnlUKdBWIZZkisPNdObBUbtFFr5+Ngg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039709; x=1726644509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uo9H3mi08AzEIcyFPjnP71nK8rUWm/O6uNXtiPTxfPw=;
        b=i8MWrJc5HS/+LMO5EXEulxkVD7J9GEkqfeQwwXnzJgmP4UAzRmZwCYQwJcue5CUb5a
         6LzVW4Vsp2IqfVdlSc8bzSNjPphK3WysB8cLUjXibJStSqX7uySo8isIQYgcw+2cecwE
         zIWkaFIU4n/j3NLEGkqqJm56VufAGY+DgiYHTnvdTmUyTJ79GZitMLnUDwBwz/AVpxhv
         CoYaXByjNeS9bSFRurH8Gl7PWdP/Vbnr76wLbp2+rxrmUcEfYhnplCkVorMpppWpAXyH
         jIXsfDKs3sYC+4fayAohE8qWEvqDRVWa5QXXfh+KskQzAzwRBG0XwVeVnIE7c4g9gkEe
         4DQA==
X-Forwarded-Encrypted: i=1; AJvYcCVxiqztBSG7woASmsgQq/44rzxMod6sQj9iHVF8iEgNZFcL6JrCjI8yvsARoaRVzUovpXq1YdskTCbt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyze7hQVIWnNxpG06vek8/HQfduPWYUMpUdb3w4AH+N88aqfkXJ
	MgS80XvTgzBuRdkOOfb4TXqXgFrAs0phvk3uucIDQ5VJUl/mfeB0ZPICV3DcmQ==
X-Google-Smtp-Source: AGHT+IH8y/5qgaRg14jmmESJlTP33GJD1mpI9XyvqpkYm264oWkGo2r0XR7RzXDvrRycmczgHdwVfQ==
X-Received: by 2002:a05:6a00:6f0c:b0:70d:26cd:9741 with SMTP id d2e1a72fcca58-71907f29d40mr7749073b3a.12.1726039709427;
        Wed, 11 Sep 2024 00:28:29 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8398:fe34:eba2:f301])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71908fe4e7esm2399415b3a.80.2024.09.11.00.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 00:28:29 -0700 (PDT)
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
Subject: [PATCH v7 03/10] regulator: Split up _regulator_get()
Date: Wed, 11 Sep 2024 15:27:41 +0800
Message-ID: <20240911072751.365361-4-wenst@chromium.org>
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

_regulator_get() contains a lot of common code doing checks prior to the
regulator lookup and housekeeping work after the lookup. Almost all the
code could be shared with a OF-specific variant of _regulator_get().

Split out the common parts so that they can be reused. The OF-specific
version of _regulator_get() will be added in a subsequent patch.
No functional changes were made.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v6:
None.

Changes since v5:
- Fixed kerneldoc "Return" section format for _regulator_get_common()
- Slightly reworded return value description

Changes since v4:
- New patch
---
 drivers/regulator/core.c     | 54 ++++++++++++++++++++++++++++--------
 drivers/regulator/internal.h |  4 +++
 2 files changed, 47 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 835a5531d045..d60c86477ac2 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -2103,26 +2103,43 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
 	return ret;
 }
 
-/* Internal regulator request function */
-struct regulator *_regulator_get(struct device *dev, const char *id,
-				 enum regulator_get_type get_type)
+/* common pre-checks for regulator requests */
+int _regulator_get_common_check(struct device *dev, const char *id,
+				enum regulator_get_type get_type)
 {
-	struct regulator_dev *rdev;
-	struct regulator *regulator;
-	struct device_link *link;
-	int ret;
-
 	if (get_type >= MAX_GET_TYPE) {
 		dev_err(dev, "invalid type %d in %s\n", get_type, __func__);
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (id == NULL) {
 		dev_err(dev, "regulator request with no identifier\n");
-		return ERR_PTR(-EINVAL);
+		return -EINVAL;
 	}
 
-	rdev = regulator_dev_lookup(dev, id);
+	return 0;
+}
+
+/**
+ * _regulator_get_common - Common code for regulator requests
+ * @rdev: regulator device pointer as returned by *regulator_dev_lookup()
+ *       Its reference count is expected to have been incremented.
+ * @dev: device used for dev_printk messages
+ * @id: Supply name or regulator ID
+ * @get_type: enum regulator_get_type value corresponding to type of request
+ *
+ * Returns: pointer to struct regulator corresponding to @rdev, or ERR_PTR()
+ *	    encoded error.
+ *
+ * This function should be chained with *regulator_dev_lookup() functions.
+ */
+struct regulator *_regulator_get_common(struct regulator_dev *rdev, struct device *dev,
+					const char *id, enum regulator_get_type get_type)
+{
+	struct regulator *regulator;
+	struct device_link *link;
+	int ret;
+
 	if (IS_ERR(rdev)) {
 		ret = PTR_ERR(rdev);
 
@@ -2238,6 +2255,21 @@ struct regulator *_regulator_get(struct device *dev, const char *id,
 	return regulator;
 }
 
+/* Internal regulator request function */
+struct regulator *_regulator_get(struct device *dev, const char *id,
+				 enum regulator_get_type get_type)
+{
+	struct regulator_dev *rdev;
+	int ret;
+
+	ret = _regulator_get_common_check(dev, id, get_type);
+	if (ret)
+		return ERR_PTR(ret);
+
+	rdev = regulator_dev_lookup(dev, id);
+	return _regulator_get_common(rdev, dev, id, get_type);
+}
+
 /**
  * regulator_get - lookup and obtain a reference to a regulator.
  * @dev: device for regulator "consumer"
diff --git a/drivers/regulator/internal.h b/drivers/regulator/internal.h
index 8e5506c5ee94..5b43f802468d 100644
--- a/drivers/regulator/internal.h
+++ b/drivers/regulator/internal.h
@@ -121,6 +121,10 @@ enum regulator_get_type {
 	MAX_GET_TYPE
 };
 
+int _regulator_get_common_check(struct device *dev, const char *id,
+				enum regulator_get_type get_type);
+struct regulator *_regulator_get_common(struct regulator_dev *rdev, struct device *dev,
+					const char *id, enum regulator_get_type get_type);
 struct regulator *_regulator_get(struct device *dev, const char *id,
 				 enum regulator_get_type get_type);
 int _regulator_bulk_get(struct device *dev, int num_consumers,
-- 
2.46.0.598.g6f2099f65c-goog


