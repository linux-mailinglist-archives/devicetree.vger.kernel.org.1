Return-Path: <devicetree+bounces-43586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2754585AD13
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 21:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D6A80282BA8
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 20:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A03554BE1;
	Mon, 19 Feb 2024 20:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Lk50Vlzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E3E53E13
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 20:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708374214; cv=none; b=Bjuv0oXZBVL1UUcSBZmKURnIeGMVA35Sis96B9iOLgvMk0Etf3xbQiU1pbviOyYtZZui0NnTcqMrGvQbrK/TZ1xFemAp0jhVckSgmCU0gmb1xDSUrqFI1SuQ5/S7sQeLMmLqZiq/oiTIOvvYkRgHqJetV8Zu6snpxuO+nR8Z46I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708374214; c=relaxed/simple;
	bh=1LpOcOPE8NF67KY2Om+0rc+yLxqoD9d+aNt1OJgcsWY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VO4oBSAD0cePSSAcqfRE8RVltapFDOVBdk3izsRSz+GaxYlPqeuDgheHgD7PCi10ApocdX+Y6UwP3AjryYZPeIjGchASxS8d+iLUlRx0FwmfbsqYJlDMUJMG3NCDzXSfPJob4DW0pvTR5omszD68BObczgkIrAoMDbvQTeED1Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Lk50Vlzo; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-5dbcfa0eb5dso4491329a12.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708374212; x=1708979012; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GaHCMRLTHpVjbQpn0nm8Soa0CT5I0pTuDvK1Y4TvoOs=;
        b=Lk50VlzoWwTHtFvsPUYJhB0ed6Lu8/AhLLfJdlMIo9L1kEo4eRRXLbizWAzh6sxvEg
         QKEwNOSbmbqU9nGjbgF8hIdcKiTncogBz7a/OzxyuXHYb3TQLc4sC+lHI/4HG2IS5e4L
         2yqr7pUjTYKhuvVEgCCH6sR80EsP5jyH/K1rU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708374212; x=1708979012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GaHCMRLTHpVjbQpn0nm8Soa0CT5I0pTuDvK1Y4TvoOs=;
        b=j/B0Mv385ZTI06BdMTgURJ+sJYPqXLXJluio1EwQhcnes9e0Y9qoUnADpyJq5qwa+A
         FrwxjswwVLvS8NoyvLTpvOE1qFCidAWz8qpC9Ip8eC/n7fz6NchukdULAKxwpRpLUuEu
         itqIoxAqXAam0QmgNijWfNK+7qK4XRL0RCZgme1Vxx3vUbjF7lODW4gOOos9z59xSGQb
         9Wx3A0nMEtFG/2Y9EQFpf/01OEkO90Xazw9gn5QPnzwztNHpUF3mrKXmS5DaJxx8E1VO
         3PKRhnDBpwDyzW/22kVK+Y+plBb1/6DPMVX+SMOJ+OlNJpTlHAteMJFvldN6k250GWpR
         dWng==
X-Forwarded-Encrypted: i=1; AJvYcCV7ypJVbDhk/A9CQcHBCSdC8QWdcNU/FP78bvAjgQZe8R3m3K/DjV7hYnO2S9mizncjq6wG3DRT9NUHdZU6SmdGt65VNFupusXLmA==
X-Gm-Message-State: AOJu0YzwWGm7utIpwJAtao4g9w5wFzOouuoQ3jZOhfh0HEaAlVNIFcYy
	0oQuJr7H1L28lmcoQuedPunxg38SYzJv62TcytgFLdBA+puiOYvlp2npI4IOHw==
X-Google-Smtp-Source: AGHT+IEAUG2tvGVJGd+hj3U8ybO/DpLRVg66FdpMvbg2eIV6gnVcioXBOcc/U9zxzq4OgB0t7uZbUg==
X-Received: by 2002:a17:90a:b382:b0:299:3e54:83f3 with SMTP id e2-20020a17090ab38200b002993e5483f3mr6532900pjr.38.1708374212270;
        Mon, 19 Feb 2024 12:23:32 -0800 (PST)
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id e21-20020a17090ac21500b00298dd684b8csm5810598pjt.32.2024.02.19.12.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 12:23:31 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Lee Jones <lee@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Subject: [PATCH 2/2] mfd: cros_ec_dev: Add gpio device if feature present on EC
Date: Mon, 19 Feb 2024 12:23:24 -0800
Message-ID: <20240219202325.4095816-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240219202325.4095816-1-swboyd@chromium.org>
References: <20240219202325.4095816-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ChromeOS embedded controller (EC) supports setting the state of
GPIOs when the system is unlocked, and getting the state of GPIOs in all
cases. Check for the feature support by checking for the GPIO feature
and then populate a sub-device for the gpio hardware on the EC.

Cc: Lee Jones <lee@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: <chrome-platform@lists.linux.dev>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/mfd/cros_ec_dev.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
index 603b1cd52785..9c3f8488b416 100644
--- a/drivers/mfd/cros_ec_dev.c
+++ b/drivers/mfd/cros_ec_dev.c
@@ -74,6 +74,10 @@ static const struct mfd_cell cros_ec_cec_cells[] = {
 	{ .name = "cros-ec-cec", },
 };
 
+static const struct mfd_cell cros_ec_gpio_cells[] = {
+	{ .name = "cros-ec-gpio", },
+};
+
 static const struct mfd_cell cros_ec_rtc_cells[] = {
 	{ .name = "cros-ec-rtc", },
 };
@@ -97,6 +101,11 @@ static const struct cros_feature_to_cells cros_subdevices[] = {
 		.mfd_cells	= cros_ec_cec_cells,
 		.num_cells	= ARRAY_SIZE(cros_ec_cec_cells),
 	},
+	{
+		.id		= EC_FEATURE_GPIO,
+		.mfd_cells	= cros_ec_gpio_cells,
+		.num_cells	= ARRAY_SIZE(cros_ec_gpio_cells),
+	},
 	{
 		.id		= EC_FEATURE_RTC,
 		.mfd_cells	= cros_ec_rtc_cells,
-- 
https://chromeos.dev


