Return-Path: <devicetree+bounces-14773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EF77E6754
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7038FB20D50
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:06:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D02D14285;
	Thu,  9 Nov 2023 10:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RxQLjM2b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0887113FE3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:06:45 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EA662D51
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:06:45 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1cc53d0030fso6522205ad.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524405; x=1700129205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGm2vHynu/hBFToljMIoyOJ5nVIf243JSwQjqrxxy/0=;
        b=RxQLjM2bpQKhpTuVZYebaJEIhWTLLYFe2dDFIchDI28Yf0eDype1TS7wThG0GTEenH
         qlbre4oclTVVYs6pRFJZ2NZVUOLMadbJhxKxUTln0w8sak6nNsXVQZ1gKipnx0fun9E7
         3+T8Fnpl1WI07B0G3Cylkf8Qs3GBiwsmN7Wz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524405; x=1700129205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGm2vHynu/hBFToljMIoyOJ5nVIf243JSwQjqrxxy/0=;
        b=QvAp15znK07uSNF1xgABNNosDy2Pe4SoBqXS25xE1mEGquD9ysNduoGv0Xzk/pE/c9
         Td5KsITwIY/OmmCOEBE+1jN+DXur22f++1fKmSuTfkB3XR6twGYp3lvnRKNojI/Sazhu
         Ye4mMv4ao/3rxSSEf7mBeqr39sLaGLYak1lxhUGHz7X8iNv+5+AehZnrv+sVyPHgKhya
         hLJ8qviVNwjXlT6nCiXEl57q9E1V2J5OsLV2voeYNITEMbyUOOQTGCixePhR4vVG/N0o
         dYFy+WCib+pQHkIv4PNCI7NljqLjBQGcJMEgALT3uHMef2mSOBbvjWr1c6ZqxiofPyho
         qdXA==
X-Gm-Message-State: AOJu0Yxgvy+n8t/8LrdfNXE9jFaWHyBoXpjr1O6WSo6o8ILiNyODsusv
	c7r783WNl75dWiFTVt6NIQqIvA==
X-Google-Smtp-Source: AGHT+IFiKBNutMsj7ANOubArOU/tBBm0unUxGA8equMZgzL/JO0wpYcbiQ5Wq/R+556TKcVcpFKnlQ==
X-Received: by 2002:a17:902:ec89:b0:1cc:436f:70c2 with SMTP id x9-20020a170902ec8900b001cc436f70c2mr7534166plg.9.1699524404876;
        Thu, 09 Nov 2023 02:06:44 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:06:44 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 1/7] of: base: Add of_device_is_fail
Date: Thu,  9 Nov 2023 18:05:58 +0800
Message-ID: <20231109100606.1245545-2-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231109100606.1245545-1-wenst@chromium.org>
References: <20231109100606.1245545-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In some cases we want to check that a device is not only unavailable,
but specifically marked as "fail".

This will be used in a following change in the hardware prober driver.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/of/base.c  | 20 ++++++++++++++++++++
 include/linux/of.h |  6 ++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8d93cb6ea9cd..2726e5dce1bf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -486,6 +486,26 @@ static bool __of_device_is_fail(const struct device_node *device)
 	return !strcmp(status, "fail") || !strncmp(status, "fail-", 5);
 }
 
+/**
+ *  of_device_is_fail - check if a device has status "fail" or "fail-..."
+ *
+ *  @device: Node to check status for
+ *
+ *  Return: True if the status property is set to "fail" or "fail-..." (for any
+ *  error code suffix), false otherwise
+ */
+bool of_device_is_fail(const struct device_node *device)
+{
+	unsigned long flags;
+	bool res;
+
+	raw_spin_lock_irqsave(&devtree_lock, flags);
+	res = __of_device_is_fail(device);
+	raw_spin_unlock_irqrestore(&devtree_lock, flags);
+	return res;
+}
+EXPORT_SYMBOL(of_device_is_fail);
+
 /**
  *  of_device_is_big_endian - check if a device has BE registers
  *
diff --git a/include/linux/of.h b/include/linux/of.h
index 6a9ddf20e79a..463fbf0072bd 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -350,6 +350,7 @@ extern int of_device_is_compatible(const struct device_node *device,
 extern int of_device_compatible_match(const struct device_node *device,
 				      const char *const *compat);
 extern bool of_device_is_available(const struct device_node *device);
+extern bool of_device_is_fail(const struct device_node *device);
 extern bool of_device_is_big_endian(const struct device_node *device);
 extern const void *of_get_property(const struct device_node *node,
 				const char *name,
@@ -584,6 +585,11 @@ static inline bool of_device_is_available(const struct device_node *device)
 	return false;
 }
 
+static inline bool of_device_is_fail(const struct device_node *device)
+{
+	return false;
+}
+
 static inline bool of_device_is_big_endian(const struct device_node *device)
 {
 	return false;
-- 
2.42.0.869.gea05f2083d-goog


