Return-Path: <devicetree+bounces-8701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 275437C9BC3
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:12:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E73D1C2093A
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA86134CC;
	Sun, 15 Oct 2023 21:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WqZVAhmi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6692B12B80
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:12:04 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B6F0DE
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:02 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-323ef9a8b59so3783497f8f.3
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 14:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697404320; x=1698009120; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vP0+gS+a1flrzX1mvrP/DkuvCGlYGfyvWtEP75LeBBM=;
        b=WqZVAhmisB2gW/uwFwZ1ScSRSfYgJywJgIDHDBSmnzrwhsiKsD/jzuzaFidc3ho1gT
         EKfDd2zIervGiPqNnK2nUHFtmZOX8pTFdbO7PpTlfIK6J7rs2uqGITyWJGtlBFnWpJmk
         iJt56mOr1aQQIIqAoeW5LntR1t+M6NNjmzlQyfJwQIruWr129v3VcS6FPp1FWEVdQTN6
         Kt2e7G6NcZsSrSXmdtk9iCUBjudWUgWbe7lnYNsJ9WJguk8IBkBw+nO7AmazhsSiVsRX
         LEPr9i/dxoBekuMUeg1bPONTRsEWTZsMTt6iW/5nuiUyl3rq/G+o6sPo+5lH9GUTe/fz
         c1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697404320; x=1698009120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vP0+gS+a1flrzX1mvrP/DkuvCGlYGfyvWtEP75LeBBM=;
        b=KCcM/jK2LVYhfUAs4MmBXGZBZ6XaEcKPM7fS3MzzQC5qWlylT1x4RZ/TV4gaQMXyQK
         3BR6Ubq/emmbXRfaL30ifnCWE3g/CeSlnqFGU9vW1t79iLIICEUcQdufKEN2zL0t4ZI3
         5CDk2sL9OwPiEJu6Iml5FqTqg6nRCLB89WDKBEONZ68EKuV+j1kuTDY07kwqGNnWXliJ
         uZ15jmA5oPxM6PkzMRjQIk7McErBzZ+5EvlxiEK8TFb3rZPOTlQ4tDwC2nTtrmulK7ft
         rR6CRhobL5iFCyabkJXdDUNJ+TepJxuwcuMPlI+6cUKYvDfQ8Oele9PU4LGnkl7X/rDI
         vLCg==
X-Gm-Message-State: AOJu0YxQzJtKfPa9BEUPEv13gQ0/t2i26xqsBg6h8tNwvkc/lJMy8btD
	xwlSgGSGYnBURTcWx+EHZaCeo62z2VReIgAk37IU0A==
X-Google-Smtp-Source: AGHT+IF24tTLuoUnIGfRI13o7XyLfy+Tj2m+c1SfgAtpjLWn6WVV6NhpPgdqIsXnKT8QjDfPvWKORA==
X-Received: by 2002:adf:e50f:0:b0:32d:aed9:413d with SMTP id j15-20020adfe50f000000b0032daed9413dmr1403995wrm.16.1697404320547;
        Sun, 15 Oct 2023 14:12:00 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d4d11000000b0032d9548240fsm8456734wrt.82.2023.10.15.14.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Oct 2023 14:12:00 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sun, 15 Oct 2023 22:11:50 +0100
Subject: [PATCH v2 2/7] Input: synaptics-rmi4 - handle duplicate/unknown
 PDT entries
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v2-2-b227ac498d88@linaro.org>
References: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
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
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSd0LmuCrFxbhGXD/m6virX/1k0QUmlb42HlWb7ogOB8
 8xCq890lLIwCHIwyIopsoifWGbZtPayvcb2BRdg5rAygQxh4OIUgIlcqmX4X26rP816mvkKX9Er
 dvlXuV6ZVTx7+3uzZHHNqu19Kxu7NRl+Mf3/u4xr7uF1OasTvjP3sbtzvPDLsvlQXWC9TJChdFf
 2PQA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
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


