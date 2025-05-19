Return-Path: <devicetree+bounces-178598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E7CABC4FD
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 18:55:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89FC84A1485
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 16:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 427DE28852B;
	Mon, 19 May 2025 16:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UlmZEmRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20FA288514
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 16:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747673667; cv=none; b=fVPY7lx08iYZtYvQI4UBvwAVDEJ/cw/a58UWmIqBGiFM1Ih+z3BfNPcUS4O3sbrghx5LT6MoU/Vc3R8OdJ+hzyyNXoRoqk4aSU3gGFCmEajaRCuee2UiTTl+sen9NJUxKqkiDdspVqeooy9WbTQ7fgQ+TdfsGY0Nbi2iPyQ6AMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747673667; c=relaxed/simple;
	bh=nyuCTSfWb6+fQ4q9SQX96n2dJFZEop5S3D1Wh9yemWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qRUaGrdKd0dOa/vMjHvQlj07wTY3FuT/NGm6ZP+2XUS5PStWVBwOAUx7DHfvZI3yFzEfYUqLjwCUYNiKyZ5g/WqSbKGa/tkXXfqq1268tzfB+3Frc+LypxaQciKGRwCqSG065yE2Y5XGKxmgLe+L9VY2SlswBS2gfHFm9WK59Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UlmZEmRr; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-86715793b1fso1222236241.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747673664; x=1748278464; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhIrVHwGSFZ05nBRjG6lvTsPjni98+/+X4SN22sS+iU=;
        b=UlmZEmRr07YOiVnjBRR5J1WnLwU0AFutBofZzAX47uCTrFFWwFTMwHLOaXsv7bgqTO
         KTLckBMAj5fL6GPSqxtU9/SNn5MAovBZrbTaJtQWaEg0+OZlXBIjNZHA8YxMLGaWh8iK
         6MnKOkb8CXpRJpUigxEXVzLdsNYS91HN2MNg5w/gAdk4GsXxmS4pr6b3lQASv3Nmqw7c
         FU5bQ/1PHcfDEDR/vA5r+7AfNEfX7n6kffqJIfyodaGaH8fhpvofvcqy162vc1Ts5miq
         Fnu/gjWJ8DNbnYJcoSRKemsZ1/0DSKLwbvlhftaxsbHVRY9Fj/2fE6EYGQ3CqHK3HBPR
         CJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747673664; x=1748278464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhIrVHwGSFZ05nBRjG6lvTsPjni98+/+X4SN22sS+iU=;
        b=TKglqPP71xb2kzGvDsYePR0jelYFq9TpOZA4AjhA0brvj+KDT9qUeGnANnmejtfnJs
         6+fr+onB/O1HNpEf0p09dsfz6FRgnQJ2Muetaddgg9V0WEcTb9OBfsUfHi+OS0Jw7+6s
         JA50aZKq/LWhl/IfSVGynNoHnFPXGZxdM2N3qw8ETWW3+9xey7NDj+XNk9gu52pbJu4R
         WC1XulpTThBHhOF2ioc8Pu7sZzPjobpNsUvqPIP9BGbMW+P51o3MDP32prIm8/9ai63e
         KHdR1RsriRRq3uNRr2Dgf5ibjT4o3IatpJC+z31Gsuov8FKqqd9M+PMD9YJ5m9rva8RZ
         Uvmg==
X-Forwarded-Encrypted: i=1; AJvYcCWwGK2UWJ3ISGyG6OYAlqxxGalMVsPN9YyxAnapCJ0VteTqCX/zZBAwkBIQeNmEjKwY8rxh1kNKzQ4z@vger.kernel.org
X-Gm-Message-State: AOJu0YyEq31w4+bQ70BWfM1HeFx6sHJuathrFo/JpiT+suqmNwMsNV7T
	aWVfr6+CLJroEHJRq5cMVsRsNKxvJtKVc1LRUN8/dHCuupAdW+Kqwuey
X-Gm-Gg: ASbGncsqLbIEFkXWQOif0IMsC2LF+j7xwfIEMuuN092/vzb3TSMgc1/i3/ScFtVW5xa
	O136mLYmP/7d5UlII5rmb4D7Lmy9IdLiaJAjxJHd5S63UzljSiklc7ZyoQQ9EFUW73Y9lxHrhfL
	Rvk2SfP/iGdMYtWj9WvBjSqGF46UG49LcuMIpVCGOSd7lq8ThAnP0IFbnQqMfKtpNkfVxB3u+yN
	2ovOGfzvFRmE/3I2oA9EvHpxM5vj/h9mhoVu07KCKx0jFdroVYupliD9BZAX6GDPYUFmOX1n2uN
	sX+akk3Sji3oAIioVNUwFMKtBLI2/08U24soR0QmeZvvRkG2HPkF0R7BY3XrCiRS8w==
X-Google-Smtp-Source: AGHT+IGNAlmpe/4UpTfZp0v7Qkx7tVnZUHpE9aJTaQ6+lOIzV5Sj09f6OAWMbJDTSiHTczUaASsxKg==
X-Received: by 2002:a05:6102:3ed0:b0:4dd:ad20:a333 with SMTP id ada2fe7eead31-4e049e6529emr10850873137.10.1747673664482;
        Mon, 19 May 2025 09:54:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:276e:c8c9:6d13:9b45])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4dfa687ed41sm6671528137.25.2025.05.19.09.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 09:54:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: nicolas.ferre@microchip.com
Cc: alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: configs: at91_dt_defconfig: Select CONFIG_WILC1000_SDIO
Date: Mon, 19 May 2025 13:53:52 -0300
Message-Id: <20250519165352.1314199-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519165352.1314199-1-festevam@gmail.com>
References: <20250519165352.1314199-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The at91-sama5d27_wlsom1 SoM has a WILC3000 Wifi chip populated, so select
the CONFIG_WILC1000_SDIO by default.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/configs/at91_dt_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
index ff13e1ecf4bb..d195aa31976a 100644
--- a/arch/arm/configs/at91_dt_defconfig
+++ b/arch/arm/configs/at91_dt_defconfig
@@ -87,6 +87,7 @@ CONFIG_LIBERTAS_SPI=m
 CONFIG_MWIFIEX=m
 CONFIG_MWIFIEX_SDIO=m
 CONFIG_MWIFIEX_USB=m
+CONFIG_WILC1000_SDIO=m
 CONFIG_RT2X00=m
 CONFIG_RT2500USB=m
 CONFIG_RT73USB=m
-- 
2.34.1


