Return-Path: <devicetree+bounces-95758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B3295B16A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 11:22:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE93F1F238E0
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 09:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F689183CAE;
	Thu, 22 Aug 2024 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="D3bNgzNz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD01183CA4
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724318434; cv=none; b=bDg0NCb9xMnXvwSxjOSrkDi91Nv2kH4zvJd7SIakYuS0CKCUJ5cN2w3RWVx7NJe0Gigb7a2N7va/t1gMcWdD515FsiVhBUobg1fSvI6DOhZaB2MsRGfpiRqnVoAvfZ1b84bh5WqLYvVYpNZZ/Z9iIscqhqmOZ79hjQ4xbbP/jH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724318434; c=relaxed/simple;
	bh=F4P2nmGS6A9jyMX3gZMS4FBUKJs6ahBUb0pWZbTHLOA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dqyT6hAf7dUDfIIhcdKPz5DGcRc5BPC1bXE8S/u13OYqtsTP+b2yJajQqZrSAamZkiPH7QdUSjUnRVtOxKH7yMSDENe03de+OXJGO+BUtuqLfzt0l2Mmy5hn7G2h5x6Z4K3GputGlkXGwXtw6rtG+exppwhqMkd4JkKWZMHKA/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=D3bNgzNz; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7b594936e9bso431407a12.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 02:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724318432; x=1724923232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dQ/ais/DnW2DhkO42fRSNxxKCNt0O583PTfpQXJv2Js=;
        b=D3bNgzNzAG+WeGXfqA9KQXemJQsFfydskP0dW0Xzx2f+K+b3fSXM3u/dphwUnivZsf
         MogL86NL5kXlIyWcZyE2PoNbj8cFAmRrRH6XgTmTbdEVKfoyPfjMcZT6sSkyCMrxVj7P
         kTIhEK/DkD3becfGZEdV8QbVCoaE3vr0Oa/yc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724318432; x=1724923232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dQ/ais/DnW2DhkO42fRSNxxKCNt0O583PTfpQXJv2Js=;
        b=fZUdga6bhrt4sUZ5S8DLmqZ7YRcc1D004FqPo7ZqX0uzznf46EyfUfab3Wqblc3deA
         JGM5of/PaeeOCdw9xr1A8QWCtudBsTPvvO7VMF2Opa08ZdRpR0WJMuH9cGjBOWbUXiB8
         wxKfBk9dMOd0MBMlhK1aSG6LzT/kNtoYfjlatKccCOoifQ+DK9/54fImmZNE+H4wQvCy
         OEdNxiYsN5Q54RMT6NMuwRWXWqEik5Stnp8JGI0dj1ZzyCNHXQLG86gLFLACbdRgFOR8
         LRqhmKLBLrXNnGcccgI/ObymJ/IvPjcB3IlEK9MvmZwBspGN5g5RgbZobdzdGlwu1ov5
         plaw==
X-Forwarded-Encrypted: i=1; AJvYcCXEeXG1KxNRShEFYxiJfh6sAPdRJje5pKRinb4J2tQyCYIy7eGs14zIfD5uH0o80DJM225J2cjz8wlV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4fG8NzMEfsJplCxu+aOG4z9KOit+oWD9deRrVGkwHVVRKSVSn
	39PRusYB9qgEOp1vIO6A/qBYWeH2vnrcVFq74y11LXmSD4I6H6K50KYD4SX5QA==
X-Google-Smtp-Source: AGHT+IHNX1mTbdGkDuNm269HAAWFLZMuunhBrLdO555YXJUIWEo+jUShOHk7j43VZg4OPf7/Roe+/g==
X-Received: by 2002:a05:6a21:398c:b0:1c6:f9ea:f2df with SMTP id adf61e73a8af0-1cad7f89598mr5999512637.12.1724318431795;
        Thu, 22 Aug 2024 02:20:31 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:8470:6a67:8877:ce2c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71434335e69sm951398b3a.194.2024.08.22.02.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 02:20:31 -0700 (PDT)
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
Subject: [PATCH v5 03/10] regulator: Split up _regulator_get()
Date: Thu, 22 Aug 2024 17:19:56 +0800
Message-ID: <20240822092006.3134096-4-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.184.g6999bdac58-goog
In-Reply-To: <20240822092006.3134096-1-wenst@chromium.org>
References: <20240822092006.3134096-1-wenst@chromium.org>
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
Changes since v4:
- New patch
---
 drivers/regulator/core.c     | 54 ++++++++++++++++++++++++++++--------
 drivers/regulator/internal.h |  4 +++
 2 files changed, 47 insertions(+), 11 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 361309fcae57..4d1c640cc030 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -2093,26 +2093,43 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
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
+ * Returns a struct regulator corresponding to @rdev,
+ * or IS_ERR() condition containing errno.
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
 
@@ -2228,6 +2245,21 @@ struct regulator *_regulator_get(struct device *dev, const char *id,
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
index ffeaef22169e..3718459fb0c5 100644
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
2.46.0.184.g6999bdac58-goog


