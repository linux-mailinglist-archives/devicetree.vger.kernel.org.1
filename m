Return-Path: <devicetree+bounces-169254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE03DA9625A
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 10:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10DA618980C8
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 08:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79C8629899A;
	Tue, 22 Apr 2025 08:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q0U0vOb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFBB2980D0
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 08:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745310621; cv=none; b=UYQy3HjvIfIQkRQjuL3zxJTD/wwxaZeDFl/9zHKVRPkhlPQnSUAI7R/OzerWCkEBI8BoHkZCfabvgwzR/1OXuSxjzdgv7sWpvGS+bbSVwF/LE/3ZE4BjlEcWohmPgytatX/U+tEz5Q9RgIzc2OzvXdRxPjR5cEqVq0ptfGKdjZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745310621; c=relaxed/simple;
	bh=gBnvR1I1ZnFzb4vg65PBtlZBg4X6LVpbCReLzWaUhJg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FJf6AnOiIPRKRVfN+NCrv7ITP+IRLXfVLizclA9JvzANkWLIlESHLUr4LrZ+bovqs/Sr0XaauYFQ2DF7WfW9eEiZ/b1aForBNROX8GJSJXFifPOlA0XIa8GkucLriwzmCAyH1vdhuggWBJChNb+3GScmdvR2D6AYrRYZt2/CWZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q0U0vOb3; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-736ab1c43c4so4945827b3a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 01:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745310619; x=1745915419; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mhnP5fHmR2Q8bheAgrl4QJ3VtrLDUwvDbOgI8e/2CDY=;
        b=Q0U0vOb32HFqTuyURLC878BQfNxM7IzgvSOIjD55i/oMdzYfGjga3m1eSUNcB5u2lO
         hL5rBDkkuUAeUZaq6ciCdsZI1o2unSZFGms1rfJhAegNcQVyFcYsEYAT5BbESQszm77s
         VSwIox65hVUfBDa46fAzqtcxOsRZnOfzF4q/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745310619; x=1745915419;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mhnP5fHmR2Q8bheAgrl4QJ3VtrLDUwvDbOgI8e/2CDY=;
        b=mUHsAEemdpve89jd0S7TCsBtJdl5pK7CDWbMswBuEfbNp1ckiETH2Z8qnqlYO9IIB+
         0jMxKbGqgFn/TmtsgSwwMAInvoKUbwFd0q8iw7sEjXqzlzdOzNj9j67w35rAdVdAgjiZ
         NtQpqtckU+Od6vFwm2h7KgD9eIuTvNP3MG7u2M5LgNqmRCBLKEoeJwlF8MYuPGsiFwCs
         y5jTKvWETkdkA29wRXgCgKD+9ZdoEm/6lfq5fWE9+niVkGzGmrhtGEycP2RTs0/WamVQ
         5+1egitCe8aQKFqCzYeIaBGQTKKeyitdA12Xs7YB2WEi0mfwYe5DT25P0lxHJn12R+dP
         FBOg==
X-Gm-Message-State: AOJu0YxdNPHzb3tkTBfhXOP1DHAMtnCVeUHYkllNnwdZ6EfApdIK54kx
	qLRRjgosnefRzSh6m9auzeH8eoIq0A7M1oSnXcbLbrYYIVJU4walS4fHfE6I+w==
X-Gm-Gg: ASbGncuMTK3lx8PZNTDcb9S/koJoq5PygKeOYPAfYY935QWoWtKQyYU4SeaL/TWXTOW
	ZJyrkGjlMPJCvL4lL5GvceX2v16Df/SyWaVnbDzX2g38HUfm750qpNfCs030YLjzzjE/lxjmXWe
	p5w8W+3Kuqsr8Yi5yihLjzwHw5hSv4Kl+bsXDX1QddpyuLqAk0a+RPE5T0tOR6K9AcOoB/Fj9Ac
	dLBQWs17pM5GUkJdZhdDzHN7B07clj91ulqkUAzHZoGBG+NMxAQdVOiUGZjtj8MvRYRNXOlsvxu
	c7Wew4zo3FQyc99Kv3vkoIXF8JlCd6uFErJG2SYvmOE4p96mGJ6YHDmYH2oV9TS0
X-Google-Smtp-Source: AGHT+IHvMg/U3wawJMIjtv8NdwlNXjSugJsH0Z0eeETts37HBEVjcFftSg9+DA7CLUjYcHqi3e59Dg==
X-Received: by 2002:a05:6300:42:b0:1f5:8a69:f41b with SMTP id adf61e73a8af0-203cbd41774mr23233480637.37.1745310618738;
        Tue, 22 Apr 2025 01:30:18 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:90d6:56e4:9d90:9df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8e0be0sm7993576b3a.49.2025.04.22.01.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 01:30:18 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-usb@vger.kernel.org
Subject: [PATCH v3 4/4] usb: misc: onboard_usb_dev: Add Parade PS5511 hub support
Date: Tue, 22 Apr 2025 16:28:30 +0800
Message-ID: <20250422082957.2058229-5-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250422082957.2058229-1-treapking@chromium.org>
References: <20250422082957.2058229-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Parade PS5511 is 4+1 port USB 3.2 gen 1 hub with a reset pin and two power
supplies (3V3 and 1V1).

Add the support for this hub for the reset pin control and power supply.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

(no changes since v1)

 drivers/usb/misc/onboard_usb_dev.c | 3 +++
 drivers/usb/misc/onboard_usb_dev.h | 9 +++++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/usb/misc/onboard_usb_dev.c b/drivers/usb/misc/onboard_usb_dev.c
index 75ac3c6aa92d0d..91b49e58664d6b 100644
--- a/drivers/usb/misc/onboard_usb_dev.c
+++ b/drivers/usb/misc/onboard_usb_dev.c
@@ -490,6 +490,7 @@ static struct platform_driver onboard_dev_driver = {
 #define VENDOR_ID_CYPRESS	0x04b4
 #define VENDOR_ID_GENESYS	0x05e3
 #define VENDOR_ID_MICROCHIP	0x0424
+#define VENDOR_ID_PARADE	0x1da0
 #define VENDOR_ID_REALTEK	0x0bda
 #define VENDOR_ID_TI		0x0451
 #define VENDOR_ID_VIA		0x2109
@@ -580,6 +581,8 @@ static const struct usb_device_id onboard_dev_id_table[] = {
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2517) }, /* USB2517 USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x2744) }, /* USB5744 USB 2.0 HUB */
 	{ USB_DEVICE(VENDOR_ID_MICROCHIP, 0x5744) }, /* USB5744 USB 3.0 HUB */
+	{ USB_DEVICE(VENDOR_ID_PARADE, 0x5511) }, /* PS5511 USB 3.2 */
+	{ USB_DEVICE(VENDOR_ID_PARADE, 0x55a1) }, /* PS5511 USB 2.0 */
 	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x0411) }, /* RTS5411 USB 3.1 HUB */
 	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x5411) }, /* RTS5411 USB 2.1 HUB */
 	{ USB_DEVICE(VENDOR_ID_REALTEK, 0x0414) }, /* RTS5414 USB 3.2 HUB */
diff --git a/drivers/usb/misc/onboard_usb_dev.h b/drivers/usb/misc/onboard_usb_dev.h
index 933797a7e0841c..2963689958fc2a 100644
--- a/drivers/usb/misc/onboard_usb_dev.h
+++ b/drivers/usb/misc/onboard_usb_dev.h
@@ -38,6 +38,13 @@ static const struct onboard_dev_pdata microchip_usb5744_data = {
 	.is_hub = true,
 };
 
+static const struct onboard_dev_pdata parade_ps5511_data = {
+	.reset_us = 500,
+	.num_supplies = 2,
+	.supply_names = { "vddd11", "vdd33"},
+	.is_hub = true,
+};
+
 static const struct onboard_dev_pdata realtek_rts5411_data = {
 	.reset_us = 0,
 	.num_supplies = 1,
@@ -122,6 +129,8 @@ static const struct of_device_id onboard_dev_match[] = {
 	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,5414", .data = &realtek_rts5411_data, },
+	{ .compatible = "usb1da0,5511", .data = &parade_ps5511_data, },
+	{ .compatible = "usb1da0,55a1", .data = &parade_ps5511_data, },
 	{ .compatible = "usb2109,817", .data = &vialab_vl817_data, },
 	{ .compatible = "usb2109,2817", .data = &vialab_vl817_data, },
 	{ .compatible = "usb20b1,0013", .data = &xmos_xvf3500_data, },
-- 
2.49.0.805.g082f7c87e0-goog


