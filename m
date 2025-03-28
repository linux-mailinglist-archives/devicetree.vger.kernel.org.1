Return-Path: <devicetree+bounces-161510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F7AA74575
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 621BB1B617AB
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 08:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B842139B0;
	Fri, 28 Mar 2025 08:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q4cwuRc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D119D2135A5
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743150628; cv=none; b=ZOwg8WEiV+Avy/CmfrTMvpYICWYNlE6qarHev/sy6cd7D2TTjhM5SGEWREFM3fOUUbbBgmanCIn4fwHGg0igoEdvKX3mOjtcB13NkEpzf67DiNqVz62hT6Yy2ZuNMO7Qhl6Tts83HqzL8UR/aIv/y19GZGZgbEK3b6dpyuF2ATQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743150628; c=relaxed/simple;
	bh=9HztVfNSSbsFpEOdHla0tUCKIZ0HhA//ZtU7g1Uu4gc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rYxw6PjHqs7I3pcDA4LWpzbo5dSSzvT8l4avdHXLdJo2961KH03HRDiY7cZGCwgM5E4WL81nbDWzE28GkGDEHzoedtbY3podCCDuzX5AcTQKH2SutCbDoVtNhXaIwsoeLNicqswIFYCOhqTHSM2UR4w9eU8ww9VmniJN9PCR/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q4cwuRc2; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2243803b776so58694215ad.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 01:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743150626; x=1743755426; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=makVc1Wy6ZWe2mpSuhAdO4nGFknj+sYe3vzqlSz4ovw=;
        b=Q4cwuRc2LSEDvnKeLtulkgb3zJg5sk3KvQXbrXGc/onbQwdDoqG2Lp95c77Elvytiw
         Hnt4dGsZGyAAsrshsRp7XgqNkhvxkIKP0VNwV8XC1IBmXcIO8elKfS6CStbyg8hOwVPQ
         O7Kt4ievZ6WDBno7Pq+uBZBLFqo/FKzctrUgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743150626; x=1743755426;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=makVc1Wy6ZWe2mpSuhAdO4nGFknj+sYe3vzqlSz4ovw=;
        b=D94psfecxKsyhUXplerLPKkMqRHlT6Anu0DkMlitI74DxKmM3PZa54CMzr+48dbISZ
         huou8AraIvM6FV/HilQQirEbQVTiXyu2dtkCJS34L4VEF1RmPLyjK2CEYyQ1cbujYuFw
         AUF8LDNm/EQZo/VPr1OKPTx8Yg32WPsHIEevMMaXZJtMcAaSVbw8brJOwI40cUsI6lCB
         Iq3rJN9As3WAj3yjxWIBjBQwOVz3vxlvGqgY/S55eVVYUJAEf/QLxKyE06uP256NuFW5
         4GX6W8LEJu05xIc0ENexzWjzZJOmxuQecEMu0UK5IUFBjDfCq64vhBhwm6d8HJbfkdyQ
         GBMw==
X-Forwarded-Encrypted: i=1; AJvYcCUs0og/cWuwEx6X7CtWk6bESEUUVwH5cia6PMLrkuwm6WWF/GNRb/6gdZgLTRIlBvxbdCTINY3X0iCY@vger.kernel.org
X-Gm-Message-State: AOJu0YxWAJ/5m+q/55z967W5/aWoNXrbTwamZtyqz9Y4yoUwwPzyCtnO
	NmHa1DNAX7KQkTn7o9dX/dIuNXr+AUkw3uMGyIX8mHm0l8Ok28qw/iVW0yaTUg==
X-Gm-Gg: ASbGncuhG+3eqA+dnlGA8621PVOMI83ejjsypHy3QoYLdnN/TqXIoovJ1sE94pC0XEy
	4y/LBWZ6wGck4Wv43GMYX84mOv+I0tyInW9k2PSz1F+5vP8jzT233K56zrjhLIV2iLVMGnN6E6j
	HTrTYTXLZ+E09/IYeD3rwdtlHuZh8na6IL0w6Gmz8UCdiOXdlWTOvPf/XliKLUXrM5vecgIMjhp
	iKZoAaXR82E4G7NluvrXSFMXpbLQOHYieD0ZFk5o1gpp8JbN5fGd14ydX37N/0cRF1YPhznkxUL
	7MK80W59TOdBsREjtNdnjybxmRR0Iuz6WKLD8gQQELYg0JLoRbcwZxXp3rG5GQq8dg==
X-Google-Smtp-Source: AGHT+IH2qRVjHIYQ63E+yeqheYOjTukGTZ19Dk/wXORZYgbt+7wPPWlRjGtmaSz0/LvLJcESsokEfw==
X-Received: by 2002:a17:902:d483:b0:224:256e:5e3f with SMTP id d9443c01a7336-228048c7c17mr112158025ad.25.1743150625904;
        Fri, 28 Mar 2025 01:30:25 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:9004:7029:99b:276])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1ef62asm12283775ad.217.2025.03.28.01.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 01:30:25 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Kaehlcke <mka@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Stephen Boyd <swboyd@chromium.org>,
	linux-usb@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] usb: misc: onboard_usb_dev: Add Parade PS5511 hub support
Date: Fri, 28 Mar 2025 16:28:46 +0800
Message-ID: <20250328082950.1473406-2-treapking@chromium.org>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
In-Reply-To: <20250328082950.1473406-1-treapking@chromium.org>
References: <20250328082950.1473406-1-treapking@chromium.org>
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
2.49.0.472.ge94155a9ec-goog


