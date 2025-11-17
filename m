Return-Path: <devicetree+bounces-239308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C4970C63DD7
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:40:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DF27C366FA6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:35:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 331BF328242;
	Mon, 17 Nov 2025 11:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="cNr81J7A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E925320CB5
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 11:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763379345; cv=none; b=kowj7cbcytlIWXJCHcrMOoXzxCmlI36vweSaXemSxDMJQzZEXRVEcrmWkKAF5DhAAgTa1NFmtNZbGNXhNl3L4o3XkbRf/xOA7VsfFvVeTIN/XsK5espeXklePy0jZUr8b/laapaJjYU8mY1OKTU6fL6RyTW41S6u2jh9kwZ0LMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763379345; c=relaxed/simple;
	bh=WiftEgWE0FulvyCc46TPvmGM7oMzkxLf3p+Eo3a2SkU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=E1Fic34lhay01YOGlRqGpS7lsqUek8yoO4p8U5v70wX6yncOlquVkNbvRe5iqefLyXXmZH0Bkyh4hljR2GlzPBdpTEkZPL2QeXbytlmnQa9ciHfUXCyJDzfPvdocpj8hXu6OOb0lLME/T8ybPpUl53MIJj488T6QsJAiezUwQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=cNr81J7A; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b727f452fffso859137466b.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 03:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1763379341; x=1763984141; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6j1jC1MII/GGRlA7Bj0JeQmFN1OaXZLJ06hTBOtEjEU=;
        b=cNr81J7AgbRN7nePj8ZqgiQzRTv6rVmsiQLT2LoP+Giop/oz4Jf2tQ76zNRxc5vvTl
         Oc3ThnPe3HyYskagZLyI16LrJ/MuYEb8zH3FnN2ezvINgr+2wDz/txFeEHivARCj8xYh
         jfhUh8JJ0vjB07bLNWCB7cC1dRptayEIhD65iysHG9Bn8lcuB926ELibRAHpKsSiyHTp
         q4jTm9ydy+JkO03DSu70BKcxheeUg3Qfr4oSkWCRzu9XnpG85mDL6/HS7jf0V7/O9ILl
         FHyrPHUeqyGJeCTx+9Kh4ZjqHhkEOmZhBKraE7jlC4YM0OFecF3siNqgr0wt1UjA7v8Z
         2Z6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763379341; x=1763984141;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6j1jC1MII/GGRlA7Bj0JeQmFN1OaXZLJ06hTBOtEjEU=;
        b=gvs2AxCibdnI16in8nTT/aTz22NvUdPqQyXVkGkv5fDzJMscVAWPiAL3nkoQJN7iok
         E0c2YN2HwQo1Sw5gyUJPtCKZ/GPMsORoFYEp8NOJ2WfQNZgkWdNVXTmk/Ud43468Tpb1
         25FSWyIg/DqzLs/VVi0Uip1nG7sHwrk46xlREp/6tOBfSs+eNYjzFJobJGKUO+LeBlj3
         e8FhGPrqOZY1jLrmdKRcpBepSIyB+ogmmuvrl7t/3EBIVitOX+88MYIt7I2HfgcW6y0G
         03aZ1cLyJcvJ2RARdA7To8gRedaQv2w/KevY3A/N62b38RSr+sZPWGyws2gGFxUyji+V
         rZ9w==
X-Gm-Message-State: AOJu0YyNuJiJo4s6BgwKZXp7nyW/dYeJ2b2hNkh7i3bhKtQseWaCvvMy
	8FxcqzQByDX9w7cl794oXxSPHU6lB8+MAGuCXQHcXC1O/D5Hy5bgS4rH
X-Gm-Gg: ASbGncsqbOrYr8bSN+SETfEx5BPHgS3YWO4/kNAtVjZSWaVghDshYcF6/2NOCjNV5Md
	6lS+bueBlQD1B6F3g6L8n4joNzA1vYZ6UL9xo/1pK0dPxa7eiHe7AF+fNisVqsTTOQaKI2RgsNI
	0WRXGF6y1AxN9xxFZOUU4fqjGjizDKLNOju12CYo9OnCFC7u89ZYPGm1jaPksaaw8w77h6eV2VB
	7kKE35NKhcyRZxxiSD74/c5Mv217UtLacPT1wjgDmGPpPz8mMDDzZDRdHrfXyv0KHkkGxtI+M57
	Re1azkvgppTU6TLhhfepExUU4LP/ND8U1YvsgfBBqH76hHRN1A4OOGefCOf3ZLCWWbtgH5Te51U
	ctI60QyHmL7SZq+0zBTuCtAAHGH1VvGuWYUIwz1DQUbobjDWzo5vwFWufzaJr9h6puIypwm74wU
	U4kTePdblTMUGZJCgvCPvfcBPQXBJ0173oRr+DmGhuOLHyENAQlD4xv/HQTzPzlzCHZr4=
X-Google-Smtp-Source: AGHT+IEY8/FYRH8jH1ucnj4OpkC12V//qTEWDzEyJMcYyd7FNoOoiIFBENdZdvjEr6CpKcqFcsOR4A==
X-Received: by 2002:a17:906:d553:b0:b73:28da:9ddf with SMTP id a640c23a62f3a-b734860e02cmr459509466b.25.1763379341364;
        Mon, 17 Nov 2025 03:35:41 -0800 (PST)
Received: from development2.visionsystems.local (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4c5834sm9899372a12.33.2025.11.17.03.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 03:35:40 -0800 (PST)
From: yegorslists@googlemail.com
To: linux-omap@vger.kernel.org
Cc: devicetree@vger.kernel.org,
	khilman@baylibre.com,
	rogerq@kernel.org,
	Yegor Yefremov <yegorslists@googlemail.com>
Subject: [PATCH] ARM: dts: omap: enable panic-indicator option
Date: Mon, 17 Nov 2025 12:35:35 +0100
Message-Id: <20251117113535.2248177-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yegor Yefremov <yegorslists@googlemail.com>

Use onrisc:red:power as a panic indicator.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi b/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
index ed194469973e..a827153ba6bb 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am335x-baltos-leds.dtsi
@@ -22,6 +22,7 @@ led_power: led-power {
 			linux,default-trigger = "default-on";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 			default-state = "on";
+			panic-indicator;
 		};
 		led_wlan: led-wlan {
 			label = "onrisc:blue:wlan";
-- 
2.34.1


