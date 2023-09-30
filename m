Return-Path: <devicetree+bounces-4888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CE27B4284
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B73372831EB
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B14A21804E;
	Sat, 30 Sep 2023 17:09:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290DB1803D
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:23 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 682CAF1
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:22 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-405497850dbso132142545e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093761; x=1696698561; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vP0+gS+a1flrzX1mvrP/DkuvCGlYGfyvWtEP75LeBBM=;
        b=EqixhkYDJxCnhdTSjcbKvO0w+6YdZ3MCSk1zp9GSTa4Y/ylrw3BG7PB68mYlMh5Tpm
         3L5zAvs/Z37O9cdZqDS6R14DJg9TpBHU21e5x8pDtRymD0h9gYUk6FZGK26LRB6QHggi
         ZKIzEp0VAIx3F/dDkHwoA56iRZzbmE4LyZgbhIOOXhilnNBwko3iQxJTic0CHag4blpr
         yPuXeKqkplCUxOEZTBrfR6One4cZu7vNlJV5AhVqKTau89h768DkWy6Xb8RhAywv9SHo
         /TWHMBKNzc37c7cR9bO/GXzr+khMIL2Ma4Od6WCp0B/qebv4KDRzGbDKg8fb2AzYtWz8
         9Qyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093761; x=1696698561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vP0+gS+a1flrzX1mvrP/DkuvCGlYGfyvWtEP75LeBBM=;
        b=rV02thZjxLAkFqLHqz94Kxc8vsi0+UtMisFhyfUnZxCg9s6tv5TcWXpJnoocpU9gE2
         52lqWpGgRl2/18rOyMN18UTB/wJhKelmZ4xzfQ89J3EPZSEloTIYZ2Jwfa2SDYiLFhHI
         HtKk5NKT5OZ9CzSJ616CvHYuYlamEVtcoZKwD/sy1LfwJwLh3G5x4hOdc5BuaTN4TC3q
         ff8fFVqW3uTxdykfIL25edud8ImSn9iRqW7CegPHWPIRJWfX2G78hIT43+h8T7GLUuPm
         koOoXuqHgxplOSF8/6wo/fH9gnp9Yxha/G634LB7Yzofd51JzG4yWLT8f2dIjv0fCGWL
         2i5A==
X-Gm-Message-State: AOJu0Yy9DihKaM8kEzBM5kL6Un78lDBvMMJ4w8tTNzS8Tqpp4pG//+o/
	mzvrO93+U1bW5hR03ztiS6P5xA==
X-Google-Smtp-Source: AGHT+IG0cHbhaYP3c4kVnqR7M79ML4dOiXKAjMKVcn0AVDZk8jzsHcJRfyyfB0izZYkUCJs5iD4Lfw==
X-Received: by 2002:a05:600c:229a:b0:402:cc5c:c98 with SMTP id 26-20020a05600c229a00b00402cc5c0c98mr6263267wmf.13.1696093760831;
        Sat, 30 Sep 2023 10:09:20 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:20 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sat, 30 Sep 2023 18:08:46 +0100
Subject: [PATCH 2/7] Input: synaptics-rmi4 - handle duplicate/unknown PDT
 entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v1-2-cc3c703f022d@linaro.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=3674;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=/ncxkYBOHJ0GuwBcZcMHJFqIgTv8HA9Y09NBC9ADCPA=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMNupl8JZl9hdYKzWsTU8Wi8mEdTzf0Hc5LadRzI3P
 wswePq1o5SFQZCDQVZMkUX8xDLLprWX7TW2L7gAM4eVCWQIAxenAEykSI7hr/QzZeebTd9DDs2w
 /7gxQKTo1+nik2Zp11KZK5ZI/nY+EcDwV0Z5wV/p/v9vK9wXmLsqxsw97xxw5pNzSOjhDocUrmJ
 FOwA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some third party rmi4-compatible ICs don't expose their PDT entries
very well. Add a few checks to skip duplicate entries as well as entries
for unsupported functions.

This is required to support some phones with third party displays.

Validated on a stock OnePlus 6T (original parts):
manufacturer: Synaptics, product: S3706B, fw id: 2852315

Co-developed-by: methanal <baclofen@tuta.io>
Signed-off-by: methanal <baclofen@tuta.io>
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/input/rmi4/rmi_driver.c | 47 +++++++++++++++++++++++++++++++++++------
 drivers/input/rmi4/rmi_driver.h |  6 ++++++
 2 files changed, 47 insertions(+), 6 deletions(-)

diff --git a/drivers/input/rmi4/rmi_driver.c b/drivers/input/rmi4/rmi_driver.c
index 258d5fe3d395..cd3e4e77ab9b 100644
--- a/drivers/input/rmi4/rmi_driver.c
+++ b/drivers/input/rmi4/rmi_driver.c
@@ -493,12 +493,44 @@ static void rmi_driver_copy_pdt_to_fd(const struct pdt_entry *pdt,
 	fd->function_version = pdt->function_version;
 }
 
+static bool rmi_pdt_entry_is_valid(struct rmi_device *rmi_dev,
+				  struct pdt_scan_state *state, u8 fn)
+{
+	int i;
+
+	switch (fn) {
+	case 0x01:
+	case 0x03:
+	case 0x11:
+	case 0x12:
+	case 0x30:
+	case 0x34:
+	case 0x3a:
+	case 0x54:
+	case 0x55:
+		break;
+
+	default:
+		rmi_dbg(RMI_DEBUG_CORE, &rmi_dev->dev,
+			"PDT has unknown function number %#02x\n", fn);
+		return false;
+	}
+
+	for (i = 0; i < state->pdt_count; i++) {
+		if (state->pdts[i] == fn)
+			return false;
+	}
+
+	state->pdts[state->pdt_count++] = fn;
+	return true;
+}
+
 #define RMI_SCAN_CONTINUE	0
 #define RMI_SCAN_DONE		1
 
 static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 			     int page,
-			     int *empty_pages,
+			     struct pdt_scan_state *state,
 			     void *ctx,
 			     int (*callback)(struct rmi_device *rmi_dev,
 					     void *ctx,
@@ -521,6 +553,9 @@ static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 		if (RMI4_END_OF_PDT(pdt_entry.function_number))
 			break;
 
+		if (!rmi_pdt_entry_is_valid(rmi_dev, state, pdt_entry.function_number))
+			continue;
+
 		retval = callback(rmi_dev, ctx, &pdt_entry);
 		if (retval != RMI_SCAN_CONTINUE)
 			return retval;
@@ -531,11 +566,11 @@ static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 	 * or more is found, stop scanning.
 	 */
 	if (addr == pdt_start)
-		++*empty_pages;
+		++state->empty_pages;
 	else
-		*empty_pages = 0;
+		state->empty_pages = 0;
 
-	return (data->bootloader_mode || *empty_pages >= 2) ?
+	return (data->bootloader_mode || state->empty_pages >= 2) ?
 					RMI_SCAN_DONE : RMI_SCAN_CONTINUE;
 }
 
@@ -544,11 +579,11 @@ int rmi_scan_pdt(struct rmi_device *rmi_dev, void *ctx,
 		 void *ctx, const struct pdt_entry *entry))
 {
 	int page;
-	int empty_pages = 0;
+	struct pdt_scan_state state = {0, 0, {0}};
 	int retval = RMI_SCAN_DONE;
 
 	for (page = 0; page <= RMI4_MAX_PAGE; page++) {
-		retval = rmi_scan_pdt_page(rmi_dev, page, &empty_pages,
+		retval = rmi_scan_pdt_page(rmi_dev, page, &state,
 					   ctx, callback);
 		if (retval != RMI_SCAN_CONTINUE)
 			break;
diff --git a/drivers/input/rmi4/rmi_driver.h b/drivers/input/rmi4/rmi_driver.h
index 1c6c6086c0e5..e1a5412f2f8f 100644
--- a/drivers/input/rmi4/rmi_driver.h
+++ b/drivers/input/rmi4/rmi_driver.h
@@ -46,6 +46,12 @@ struct pdt_entry {
 	u8 function_number;
 };
 
+struct pdt_scan_state {
+	u8 empty_pages;
+	u8 pdt_count;
+	u8 pdts[254];
+};
+
 #define RMI_REG_DESC_PRESENSE_BITS	(32 * BITS_PER_BYTE)
 #define RMI_REG_DESC_SUBPACKET_BITS	(37 * BITS_PER_BYTE)
 

-- 
2.42.0


