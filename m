Return-Path: <devicetree+bounces-5096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 233947B5336
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C7C712842DC
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D68CF18C24;
	Mon,  2 Oct 2023 12:29:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83849179BE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:29:21 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88648B7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 05:29:18 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4064876e8b8so64044465e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 05:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696249756; x=1696854556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjtZbkwdpi5si6/60UmQ8elk6PzuUnVoXbmSTS24hh4=;
        b=kvzDiVPBJcoM0lxiTfEdxRfR1uzNe3zxlkE1wmUHzAeppa1FzTCYmkmQxLfpNNJlqd
         ydks87WYg0n7cgpNZaF5RWMPJrLSUyWI/qdov4FCWc0PRCThuQ/+L4L7hirS7Q93i+jE
         SX/cImg5iFnWgZAixyqdQnxgar5FnNWTqxCOjEoIWN0zhwh9DKlQzy4H18KyoftdmgM0
         SNhJrFucAOFf4vplQQbGzksqDIkmYSDMHVDeBdDDmRjuAB5/lCmtu0rNNy4BpX8GeBQW
         0UwRRUIOspcdPSN5C7qZaida+gQZS2QFJYePA09EGOMsMi6z5WlDxg6naFtv4VPZKCpb
         VL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696249756; x=1696854556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjtZbkwdpi5si6/60UmQ8elk6PzuUnVoXbmSTS24hh4=;
        b=EUiCSS0JXcsKqIoq8i+r/9LYZZoggszcsTmcXXd4v+eTd7uOAb/l3gTu1/kUyDKzUs
         3KdGl8bMjppXRxM83ojEJOXWX+zqjoYCFERRQJ6HRumPDvlN9ldN0CVnoUJ0OSVqjFSG
         nHkZesKuno+XvjFsiovxxR4gRMVGj2yBClj+L2enTeRn/nsQrrG28PILvhT6oMINOPjq
         5eNUp71bhEK6p2C3ikBygvgi/6l/hBAmxuTs7gk9SoJTUzJhbgIt5ODADeMBHJcM9wpB
         xc99oLMHnwzel0CmLurz2cm+J+5DyzMsmVrni4v+bne+/QDI45gvvQ83jP6r6bvyhCjG
         bYYg==
X-Gm-Message-State: AOJu0YzZBt97LVkxY/fm0foFxcS+OhZl4W4RI72WIb3fktxgQrZhoGr+
	qyj7m3n4DqizbXIcMEOtqiLx7A==
X-Google-Smtp-Source: AGHT+IH8isDJwI38R+Jr+Y0fVPCC1GD2OBeFxwa7NTNH6jyRP11hujd1uNryVGx6f0C1STiu8GM1/A==
X-Received: by 2002:a05:600c:1c1a:b0:406:53c0:3c71 with SMTP id j26-20020a05600c1c1a00b0040653c03c71mr9496024wms.37.1696249756516;
        Mon, 02 Oct 2023 05:29:16 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:fcf2:65f1:853c:13be])
        by smtp.googlemail.com with ESMTPSA id s16-20020a05600c045000b0040536dcec17sm7144819wmb.27.2023.10.02.05.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 05:29:16 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v2 2/2] usb: misc: onboard_usb_hub: add Genesys Logic gl3510 hub support
Date: Mon,  2 Oct 2023 14:29:09 +0200
Message-Id: <20231002122909.2338049-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231002122909.2338049-1-jbrunet@baylibre.com>
References: <20231002122909.2338049-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for the gl3510 4 ports USB3.1 hub. This allows to control its
reset pins with a gpio.

No public documentation is available for this hub. Using the same reset
duration as the gl852g which seems OK.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/usb/misc/onboard_usb_hub.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
index 4026ba64c592..a9e2f6023c1c 100644
--- a/drivers/usb/misc/onboard_usb_hub.h
+++ b/drivers/usb/misc/onboard_usb_hub.h
@@ -56,6 +56,7 @@ static const struct of_device_id onboard_hub_match[] = {
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
 	{ .compatible = "usb5e3,620", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,626", .data = &genesys_gl852g_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
-- 
2.40.1


