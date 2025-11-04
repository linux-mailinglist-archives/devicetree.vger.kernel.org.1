Return-Path: <devicetree+bounces-234878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED046C31B97
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:06:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5A4E188A0CC
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB5D033B6F1;
	Tue,  4 Nov 2025 14:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="glzUlcxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90FB338592
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268319; cv=none; b=QONfNvf8wkg/e1kTumB1L/oLALEn2D0H+2E97mjJzwRZ6u5dEi1btUDFJpf+me789ObQIkGp59cTw92iBb/PPY/ZrCybSpTWShDgyx7QIy82uktEnef0OCc+3D5ZgtfUUWVwhjxJcQsaxaNneyVyrGIF7YS/pvfDW4hGnY0O4n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268319; c=relaxed/simple;
	bh=DSWwOgT5tbBOJuCemE10iAhhCX0NXJ6//wZV+1vI2/8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kGsWV6w9zoXYoFyNVd6qM3UWYctQ19rHy6BVnM4UeRxJHIwbu5UHfMmHO5k/zp5ueBDjilawzVruUi+5GdGNxv9KC2A/Tk1xf2N6mM4l3g22aSgKC0Ui28uLlF40oYOYh5m15GkGnb23OgYhYQXs3s0u0BoLQaWbm+2fuJQmjfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=glzUlcxO; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6409e985505so4922959a12.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762268314; x=1762873114; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jvcX/auKEZgjRASVFTmjnc1+2Gff5FK7VQN+0M14FnY=;
        b=glzUlcxOqSApjfvJlm++H4Tqayxr70WlK0zJ+D6Ld2RCnKJfGlcAcxWIaU6fJHzO70
         pP7FQoqteNSFg5wvMrWeMhDNyPaFKJ+NLVY7Q08b5W6yGiOAqV50BFPVCyE6npqbMk2z
         jdmxg5kQml/aEqcoUwn+E5rA+Kyl3/8YRnZXoH+xFEDy48va0rZZtifITrWcZPqqiMVm
         NZa1KlHspKhqcqWYASSJMw8xnMeNW503UzxKmGo7HFMxhZVZOom+wu53RGjucsRsE+ac
         hgjM0hzMZKZgSsjsqpfrtX49KXr9e5IMH9GLAr57bnmFH94d4/GlYuznwC19LnoD2VOR
         A2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268314; x=1762873114;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jvcX/auKEZgjRASVFTmjnc1+2Gff5FK7VQN+0M14FnY=;
        b=PzujZjd7HC7RPQwsHxcAb0a7t3yk1o6iCWWysdz6BrnheHhpjAMwoketrfPQ6797fd
         NNRuhb/y1K9yqN5BLSA9VWmbI/ZjpKvGm+sAqZL6857uTkiCU5gPJHPq6OHoZx6gDneh
         mSkyYf9zcRSZYNEaWMTe3V4bpZGoXk9nW9EMGJ1vUws2deSWbELott+YtPNKRaHfha99
         0GNc40XpnOZS8dqO1CUvqHY6zqFB93MgsINARp2z43WNNOerb/INKPdcgDsOut8Ho4El
         37rciCuNR6+Xfjt/u7t5nEEwGGTpJZjfJH/GrWH+3x2HV4tlhcpUpYZlFBRUHusN9lkh
         /2YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkBdXge6/Ew9f62R5/D68zaq+EJW1vLC6nTJx0vExqO7Wwn92TWVmJc68Ps/gbTQ7JHTCkKtGwrFOk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0Wm/JCvlf0qLRYZAPkeHqVN45fog8bv9T/786Va0DmEtl55xe
	FJVyYcndpyUYxtVBQDSlY5Xzg8OElJoxjGsrlwwVB+UVmSXqiCKBWfZL
X-Gm-Gg: ASbGncsKjLgOG805rKgWGPCJolX/LGvTqX7XnSkwuIqxnM52aPq5pdAQpnhRnbCRpEA
	/Kn/Z0ZYM4yx+OgePTjwSNrFvH6iJ84AwtFF4hTYrI6ozhkqk3Ks1VBbFApyOTgCgoXTm7wfgFv
	jV7REigZaqLlEDwJduviyNjAiYFHCT4TkGu+CB824u2GHI0rvyXB82X6KhsyMW9nKx4qxUc2X//
	1TKowvNmJtaGFoG4jldNjuBhgxD+Gd6GLU9nCnRTJCg1KadlPLCMWDVBeOQMFYnRL6J8FMRKuiE
	aS2cE0X811qmLa22sqweuxV1S0C/50M/0OedOmShJMmiMt4n2259dieFA28rShYH3YisVvWxz5H
	2OtBHPWV7PGD6Jq7orvdhAPcjy6HeMeBEC8itUIbFMes8EsDOdlxz7X9xbWPjJ3eCri7KFtbj4z
	49nAacbbRZIOe/LcdO/oQJ+TZw+cEXlHmHJ5FXOlsiaXypAKQ=
X-Google-Smtp-Source: AGHT+IHZUUsGZGBtlaJoXWS1ySzHKciLjAZo/SuEhSLnYmO1pEob8UZ17/Np7x/XSHyNvnKfD+0P5A==
X-Received: by 2002:a05:6402:35ce:b0:640:a9fb:3464 with SMTP id 4fb4d7f45d1cf-640a9fb36ffmr9455039a12.7.1762268313877;
        Tue, 04 Nov 2025 06:58:33 -0800 (PST)
Received: from tablet.my.domain (83.21.17.47.ipv4.supernova.orange.pl. [83.21.17.47])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6a7fcd7sm2288874a12.37.2025.11.04.06.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 06:58:33 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Tue, 04 Nov 2025 15:58:24 +0100
Subject: [PATCH RESEND v7 6/7] clk: bcm21664: Add corresponding bus clocks
 for peripheral clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-kona-bus-clock-v7-6-071002062659@gmail.com>
References: <20251104-kona-bus-clock-v7-0-071002062659@gmail.com>
In-Reply-To: <20251104-kona-bus-clock-v7-0-071002062659@gmail.com>
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
 bh=DSWwOgT5tbBOJuCemE10iAhhCX0NXJ6//wZV+1vI2/8=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpChSO58K/GaAyCzMSSY6ye7b4jny16XKR0l4zJ
 o79TmPUjR2JAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaQoUjgAKCRCzu/ihE6BR
 aHHWD/4v2Qw9VrLNQZSN7Q30cKwEsR+zIfo+zZKngZivHpxP+mnxJ+ZERE2Kb6ZVbiM0RKRHZqL
 irpncIkpgvOctJQJJobF1UyWg8IYBjAVWiLh5YOYOwLqOGKnNIAesJU/VrNEKJlgRTPwDMXhxYN
 Rdn+Ldgmlcd/gHzrBXJvxrx09gUKf29bu/NQBFyTbTmn9WGAFjwT+SCfhegtROGg/OLZe7wUB5x
 qVXne26FI04QT8rh5N/McogfQGyjUebaMZ6wgGI9yCBS2alCsd7IcNVVYUMB0OzZEJV6Anx1gxZ
 3d2hj8qT7ViH2V47LnXvGQ0EnX2DNVqgVnIkh2dMBjlqWFEcEUTI/9PchHkkrJyqe3sfV0B8bv0
 nA7Ti3muhkf4irAvWbAhLncBY7GdumksSwMX0pBRQEauNa8NB7QjRzgWW3oR5TWNlN0Y8XlPGCH
 7a/ykBIBNYMVaFnCvXCb1YIbTBiCauE8/OsGjFYtm1+mIG1615SJaY6yrzrDGGc2NIZfmJlCmO2
 JKekrls9PRkoOIyVA8BJRxz99814xAi+iyTx77LZ3aEB0693iFekVB4G0d+wlfweOSpYUzikaIa
 5iw4Dps9sSt1uuiV1SrqftCrpvvvzqEfYINTLCrdT72sM+EolBKY02e3zIZ7HvDylICEl5PTwht
 CgHk1kiLT4YXYiw==
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
2.51.1


