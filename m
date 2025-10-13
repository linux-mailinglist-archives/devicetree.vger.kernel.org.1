Return-Path: <devicetree+bounces-226054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2041ABD3411
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:43:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEDD93A56A1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A26B3090D1;
	Mon, 13 Oct 2025 13:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nhCwPbsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387E308F32
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362929; cv=none; b=JTQZeTkx7nUSOhFd7zuqRbtpFeaKo4Cb7W9MmQH/VkzuNJP5DvP27DnGV13Q9iob2HHTPeSeLjLLm0HfLbpkjGsLmjAN7r068d5kFowZQIbQo1BIh4KsnYLpI1rzhVtyg2YQMzFShadeVQZ4A75J0ezU9NwPJRA6dwbga4rPVOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362929; c=relaxed/simple;
	bh=UvckdDHCIlUvhCo514yvPszt5ku8/k2a2D+TilE2a7o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kPUeAcIVXx2cy1M0JFeQ2LN9mcuqkNtsmxdUH6S7G5s5ZB3u9VmO3azgWAaOzz+XAzf+1PGj1mPiWwUVpuXPMXxmbQHnwUiFhTLmN0IEDcRE01rmUZRBaAwapcT18XRKdK05O/Qu1iBIrNZ2zHbt512eSMft9uAkgDww2MXvYQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nhCwPbsL; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-636de696e18so8837989a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760362926; x=1760967726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P2JNmAsQMXwBrZ+HkGZs8U98lPNd8boTV07cCQ2PUdg=;
        b=nhCwPbsLitAbEXY6TiXzvWQ8xk6RB5Za/x2jo5LhlbxSmFP3c97c/yNS7cv/UPXo4O
         wobHF6VMV3enjPvRyYrXpH+du1Evy+xnLSDrrP8m49p7mtTgF/3ZvxrEEd444Qsu0ZRq
         hU0YbCzxmaqdK2Alvh2KbZjXsLFgJHi+Qf5ndObREfvHc1ZZn0H34gURv7ulNuDSqZi3
         eJMp8HIe14Ozy8BZWUPtY2+K5+ut77hVPHWHCx7ixPZPhPir4/P1TK5/Dh0Snn8D5TaY
         44nvH0jXv6EyP0qW7+EvmQkVAvgt7WPKOPP74emib8L8hvTdL9XQON0FAiB8zqMkJCOP
         TmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760362926; x=1760967726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P2JNmAsQMXwBrZ+HkGZs8U98lPNd8boTV07cCQ2PUdg=;
        b=QC9UuyA0fZf6WYam/+L48ukdm8rAUPclGIQ6M5DCvFL0TNd9AWnZkFlISiegYsWs0t
         ersIP5NxzViv15QPRQq6x37absL92j1hxnVR0NDc7TuWM8/40vZl5E1asU1NBOwvhPvI
         aBN2obmm3L6G/jDKCNtlbSN3nlIvSzIlMQKeeHS7kTKj97JcHx1WIybBdzCiH1e+Yzv2
         6syWDC/fjoc99SfjGmy60DFcqIx/DM6M7nrpkmJgEpVQAFXiJVKFJuV/OpJ3jH8U4Hox
         rsxFHsOzxQSs5f97zewbVXa/85/UhrgBhwCuZC4cbNy1g0Q0KDyNCIVdPSGn1H33Lx+9
         OEZA==
X-Forwarded-Encrypted: i=1; AJvYcCUVxtsycXCiKIIVt5dW158dZ/UBK1xB8yq0HD3iQ3ACCDCxVd+ztyDQ0PSlfNpKZ7R6qBNRFxbAse1V@vger.kernel.org
X-Gm-Message-State: AOJu0YyL2NaYu97ZHO/t1UAKWTs8+yt/XWgXYFp+YD5eSpKkFw7Dj49E
	WmEBBkkw1kb7HGp5GE0HK0QM16by4eyqsCinYYIn02tL3RFs1jKagdEw
X-Gm-Gg: ASbGncvIK9D+hUgZORqQN4UM+xnmcHu1IPpdNoofk/iAW/KdAzUdbpy1QzQDo3HN+To
	tolzgxB/FTJH35VRvuh7gBLpQ3y+YtpeNIb3EY5O5ueksF4eztrIvUZlFnBZujLnyJPiYmpXFj/
	aAVn5coPC0qhxO5/fxRtzRYOlnpIaUq29aLUfPRtnjCNatl8AjmJH4udxhhvoHOf0gKK8IDFqMo
	Eo+z7D0hiZhWij5627ZelK6+t7JkZ37dGxPv5VXL2LLN5R99+9NYBGoB9ux4+n5KlV53ErlyMR1
	YOMXZcd8esEV9FM4pTC2o7WDNnoEUAT3+OTESfq/s1hoOFsMnpkINLASvoNyonl3nIrAoxMYtJL
	EHb08N8oP8l43L31MswPRn4bvQ8c+73JVm96tYhtf2E9KasALlObzsZJt7IEgr6scE+m/um32em
	2B1/UkGfWPcaZR
X-Google-Smtp-Source: AGHT+IEr7XS2hclycN+mnSi01hMV+OGRLrukOUNurb7//LhjBIgEma/XQrndjKGOVHUypiZxAKTeKA==
X-Received: by 2002:a05:6402:4402:b0:63a:4f2:95fd with SMTP id 4fb4d7f45d1cf-63a04f2a1demr14173897a12.10.1760362925582;
        Mon, 13 Oct 2025 06:42:05 -0700 (PDT)
Received: from tablet.my.domain (83.21.75.22.ipv4.supernova.orange.pl. [83.21.75.22])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c32249esm8729019a12.41.2025.10.13.06.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 06:42:05 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Mon, 13 Oct 2025 15:41:53 +0200
Subject: [PATCH v7 6/7] clk: bcm21664: Add corresponding bus clocks for
 peripheral clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-kona-bus-clock-v7-6-8f473d99ae19@gmail.com>
References: <20251013-kona-bus-clock-v7-0-8f473d99ae19@gmail.com>
In-Reply-To: <20251013-kona-bus-clock-v7-0-8f473d99ae19@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5074;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=UvckdDHCIlUvhCo514yvPszt5ku8/k2a2D+TilE2a7o=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBo7QGgr5uUByjojIQJxP+Z4YZm92iUq2cPgfNyg
 QKlWr3LN0eJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaO0BoAAKCRCzu/ihE6BR
 aEmBEACKgfsKSr42+oPEwgv1AHLiKQJuBWHTC+Kzq0rE8JTwfUjCQNLZoKIJ2/JdiaqV7/CKa7Q
 xESb+Ey2IHBUDjRv5yZY84EYfKi4JFQQPYKZL++VeEV0v+Tg1zka6Nz5TQlPKKv7NCxMRnqIZLl
 3osc4ORjN/CLC71rfrxnYzSlBWGG1h3epBtn9Goiesrgdwif3D6Fk9XB8EIgr0/VgYdU9o4DnEp
 CES8FQtlvPV0YpPy58OK+ra9KClBkksk7WgOZFfUl7QrGSI/WLXDyTvLfuFBHF3dxZZee2AkNGg
 59J2xaBms/g4iC+Jh9RIW+E0aUvyKCA230AlnYRXP1nppVJADhDtvfO18yyA4UxJHHD+LdQukdT
 naj617ObLIPKVWfRyA2SSCnhW2sUEA7Bq5WXnRzxOv3n16g0Wvls3kAhn1vKJnbUxpjTRqZ0EOg
 wPDxwb9Bdd4JT7ZHhzQ+aoxb8aO31tccbBtPO90f7J8CFpGRN0Ka2IrxE5+QgUEAWjPLjVIwCPl
 /uxo6tVmO7jGszkzn6mc3NXTLCIf+7QDT8SYPtRExYQjn0/Wl0RNUiAV2B3kdHXqWWGTF5JChrE
 bhd8AZf6o1iQ7LP4B6q4JA0WLIM3M/we11AlUJwrYYxl2UniQpWe3Und8/Y+RugOLIKJcAsvJjm
 CDAgLWNlXNS8FDA==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168

Now that bus clock support has been implemented into the Broadcom Kona
clock driver, add bus clocks corresponding to HUB_TIMER, SDIO, UART and
BSC, as well as the USB OTG bus clock.

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v4:
- Adapt to CLOCK_COUNT -> CLK_COUNT rename
- Change commit summary to match equivalent BCM281xx commit

Changes in v3:
- Adapt to CLOCK_COUNT defines being moved

Changes in v2:
- Adapt to dropped prereq clocks
---
 drivers/clk/bcm/clk-bcm21664.c | 89 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 86 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm21664.c b/drivers/clk/bcm/clk-bcm21664.c
index 14b7db824704..4223ac1c35a2 100644
--- a/drivers/clk/bcm/clk-bcm21664.c
+++ b/drivers/clk/bcm/clk-bcm21664.c
@@ -41,7 +41,12 @@ static struct peri_clk_data hub_timer_data = {
 	.trig		= TRIGGER(0x0a40, 4),
 };
 
-#define BCM21664_AON_CCU_CLK_COUNT	(BCM21664_AON_CCU_HUB_TIMER + 1)
+static struct bus_clk_data hub_timer_apb_data = {
+	.gate		= HW_SW_GATE(0x0414, 18, 3, 2),
+	.hyst		= HYST(0x0414, 10, 11),
+};
+
+#define BCM21664_AON_CCU_CLK_COUNT	(BCM21664_AON_CCU_HUB_TIMER_APB + 1)
 
 static struct ccu_data aon_ccu_data = {
 	BCM21664_CCU_COMMON(aon, AON),
@@ -52,6 +57,8 @@ static struct ccu_data aon_ccu_data = {
 	.kona_clks	= {
 		[BCM21664_AON_CCU_HUB_TIMER] =
 			KONA_CLK(aon, hub_timer, peri),
+		[BCM21664_AON_CCU_HUB_TIMER_APB] =
+			KONA_CLK(aon, hub_timer_apb, bus),
 		[BCM21664_AON_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
@@ -126,7 +133,27 @@ static struct peri_clk_data sdio4_sleep_data = {
 	.gate		= HW_SW_GATE(0x0360, 18, 2, 3),
 };
 
-#define BCM21664_MASTER_CCU_CLK_COUNT	(BCM21664_MASTER_CCU_SDIO4_SLEEP + 1)
+static struct bus_clk_data sdio1_ahb_data = {
+	.gate		= HW_SW_GATE(0x0358, 16, 0, 1),
+};
+
+static struct bus_clk_data sdio2_ahb_data = {
+	.gate		= HW_SW_GATE(0x035c, 16, 0, 1),
+};
+
+static struct bus_clk_data sdio3_ahb_data = {
+	.gate		= HW_SW_GATE(0x0364, 16, 0, 1),
+};
+
+static struct bus_clk_data sdio4_ahb_data = {
+	.gate		= HW_SW_GATE(0x0360, 16, 0, 1),
+};
+
+static struct bus_clk_data usb_otg_ahb_data = {
+	.gate		= HW_SW_GATE(0x0348, 16, 0, 1),
+};
+
+#define BCM21664_MASTER_CCU_CLK_COUNT	(BCM21664_MASTER_CCU_USB_OTG_AHB + 1)
 
 static struct ccu_data master_ccu_data = {
 	BCM21664_CCU_COMMON(master, MASTER),
@@ -151,6 +178,16 @@ static struct ccu_data master_ccu_data = {
 			KONA_CLK(master, sdio3_sleep, peri),
 		[BCM21664_MASTER_CCU_SDIO4_SLEEP] =
 			KONA_CLK(master, sdio4_sleep, peri),
+		[BCM21664_MASTER_CCU_SDIO1_AHB] =
+			KONA_CLK(master, sdio1_ahb, bus),
+		[BCM21664_MASTER_CCU_SDIO2_AHB] =
+			KONA_CLK(master, sdio2_ahb, bus),
+		[BCM21664_MASTER_CCU_SDIO3_AHB] =
+			KONA_CLK(master, sdio3_ahb, bus),
+		[BCM21664_MASTER_CCU_SDIO4_AHB] =
+			KONA_CLK(master, sdio4_ahb, bus),
+		[BCM21664_MASTER_CCU_USB_OTG_AHB] =
+			KONA_CLK(master, usb_otg_ahb, bus),
 		[BCM21664_MASTER_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
@@ -231,7 +268,39 @@ static struct peri_clk_data bsc4_data = {
 	.trig		= TRIGGER(0x0afc, 19),
 };
 
-#define BCM21664_SLAVE_CCU_CLK_COUNT	(BCM21664_SLAVE_CCU_BSC4 + 1)
+static struct bus_clk_data uartb_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0400, 16, 0, 1),
+};
+
+static struct bus_clk_data uartb2_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0404, 16, 0, 1),
+};
+
+static struct bus_clk_data uartb3_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0408, 16, 0, 1),
+};
+
+static struct bus_clk_data bsc1_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0458, 16, 0, 1),
+	.hyst		= HYST(0x0458, 8, 9),
+};
+
+static struct bus_clk_data bsc2_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x045c, 16, 0, 1),
+	.hyst		= HYST(0x045c, 8, 9),
+};
+
+static struct bus_clk_data bsc3_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0470, 16, 0, 1),
+	.hyst		= HYST(0x0470, 8, 9),
+};
+
+static struct bus_clk_data bsc4_apb_data = {
+	.gate		= HW_SW_GATE_AUTO(0x0474, 16, 0, 1),
+	.hyst		= HYST(0x0474, 8, 9),
+};
+
+#define BCM21664_SLAVE_CCU_CLK_COUNT	(BCM21664_SLAVE_CCU_BSC4_APB + 1)
 
 static struct ccu_data slave_ccu_data = {
 	BCM21664_CCU_COMMON(slave, SLAVE),
@@ -254,6 +323,20 @@ static struct ccu_data slave_ccu_data = {
 			KONA_CLK(slave, bsc3, peri),
 		[BCM21664_SLAVE_CCU_BSC4] =
 			KONA_CLK(slave, bsc4, peri),
+		[BCM21664_SLAVE_CCU_UARTB_APB] =
+			KONA_CLK(slave, uartb_apb, bus),
+		[BCM21664_SLAVE_CCU_UARTB2_APB] =
+			KONA_CLK(slave, uartb2_apb, bus),
+		[BCM21664_SLAVE_CCU_UARTB3_APB] =
+			KONA_CLK(slave, uartb3_apb, bus),
+		[BCM21664_SLAVE_CCU_BSC1_APB] =
+			KONA_CLK(slave, bsc1_apb, bus),
+		[BCM21664_SLAVE_CCU_BSC2_APB] =
+			KONA_CLK(slave, bsc2_apb, bus),
+		[BCM21664_SLAVE_CCU_BSC3_APB] =
+			KONA_CLK(slave, bsc3_apb, bus),
+		[BCM21664_SLAVE_CCU_BSC4_APB] =
+			KONA_CLK(slave, bsc4_apb, bus),
 		[BCM21664_SLAVE_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };

-- 
2.51.0


