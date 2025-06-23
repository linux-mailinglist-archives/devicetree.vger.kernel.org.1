Return-Path: <devicetree+bounces-188269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E26AE3615
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 08:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 245A07A52C2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 06:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35D221B423B;
	Mon, 23 Jun 2025 06:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="G1OUBWLo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AF01EE014
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750661104; cv=none; b=jWgP1mxoen3jOdu06MsE5IGL7JBYqE3eKPlBQx4/GHO6yjMxN/G/mDV/F+jRE13+BstBQn1xg8vf28cuf1uS9JecRzd98a7jhFBSpSDu3gNGfuFed1wSHl/ASvyzZOgpRMvWZDfP/aPUj37zwx3GwP5gIg+14FCDfGuKvLCpG0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750661104; c=relaxed/simple;
	bh=FuWpotRDIyEvFRCG/nxmNN/jO2swjOVfbhbhqHJw88c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SZlJ+S0L/INZFicBdDZuanx98uyijWRTSgbaStwBYpqmVNnBUYy+8+2N9a+7oAV/wtVxItBJVaw/6vQZU8Ugnjt+4LW/9MDgKRW9iRUL8UtPtDC/T4uhEzclhEprEvNsKmiXgfkLdjht7DqgrbLaONViDylTK4LAG//YWKbG7Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=G1OUBWLo; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60780d74c8cso5923028a12.2
        for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 23:45:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750661100; x=1751265900; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W8j0earuMk91sZoSa/Jgd1WatXgxkmiiaUFmqx99Roc=;
        b=G1OUBWLoRGJO5hYXNyYDrAC9ZlJGqa6YS9GWQBWHQXacu1WKYLBvL+jI/JG94SplEK
         HVBxpc5HVXz1xFpG3n+TKkptVlCosGg1jMhKOi0crexvFzVlaLDKUMMLMYJBx9qwRgUu
         QOrI+iddwSwsFzXKIv75vNHGgD6bdIRhL8oa2lnrpsAmv+cQQ6bsh6620LiqrkIaTgXR
         brpgt3P2buMYeJpQW2vuQhBd+r7/IltDu6STgxfbNsk2ICN/Vh4g7P/1UOI18uxEFlHa
         CMNE+I97Jj/Kz1zlubLVfKdaSe1Sy2pl1eXOvTSXatGyQOMEDv1qSrRLKk0MFXJ3zHBT
         CAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750661100; x=1751265900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W8j0earuMk91sZoSa/Jgd1WatXgxkmiiaUFmqx99Roc=;
        b=af2mXT4ZZu9IBegWe38TJbFkC6eAsBLfzJEVNCzbz6Y4GxpNJRnf0NW3QcC9uG6iFF
         UyJtEARDhn/7yl6LUlKDhqhwg2rpl25Z0eUrxcyKHlzaEHOziVCs5yXTraQx6WnX9ABA
         Va5Ji5vYYeiu/+IR0E7VjT3wTubY0QDWYJecJfgCEBC0D2RIrsT4zQpEPDWqifYDefJt
         QuqZuc4ZSBfZHNkiojNl6czgbtKyMKKnYKOALjMG74bR9RO2V+/T/kPsqg1t2rzQsZor
         OvsfbEuZMpt/G4tTVEr20+ifeFcLRl8i/0YcQIVaihsKjNC5yTwgKI4B8uorK/jhE0Lu
         tHRg==
X-Forwarded-Encrypted: i=1; AJvYcCWc78DbdP5U1PgTVm5UYr8f0/WYJsBe0FUjTKWDaS92DMjm7qBdhMdUac433/4gUKJS+VcKc9o0bA7u@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp49FdCLCrf8aKi+jxxL/ffCh4Dwv4meuAPYfuHGU1PB+RHINu
	GS6zdvzWkUevwqj2iuDbGkP4hcigeqNoeggnlgcTZcH4WnTAo8szrPXY8MxgRVnyjBg=
X-Gm-Gg: ASbGncvBa8OIKcUYTvlosffWW9hZETMxMp/dDsxTgvSOW1AqL3r/hQMIV+ZBpt0zATI
	LBvLTAcxYIPm+tqlcmoWgNJluZrYjDVvyNeZD6bXd4sjyD083xJic6HCNdaKeJHhUdgJnH+Q1r/
	VI7R7GbZZFhhYQ7Lql6CAICquhVwHiMxhaGD0Dt16QuyPmfYBQfaDrQpF3lZjtSpf+R3b4XoIg3
	HNISGYifMhIN99rw1LDSycot4RXHzGy/9Orxe0yk0r/HowWGJF1S1U/WAL+8lpzsEiDJnXkCBfi
	sInLzYGrNhTt41v0RooHjfSxSCNGlDicPDjO5LI96Bq9WuAveJm7kwK5/N6Cv4WpB9jdnPt+x5T
	plibXJ0MKI2c/AbjaGl9Z/OrOddfo1NVQ
X-Google-Smtp-Source: AGHT+IE8m6sV6mGT4W4Z3eOR9YDBYYzBxtwk7TVZKt44W93HSiVrTunOecK2T81aA/Q+qJNWY1i1yg==
X-Received: by 2002:a17:907:1c95:b0:adb:449c:7621 with SMTP id a640c23a62f3a-ae057c0f672mr1169047266b.29.1750661099726;
        Sun, 22 Jun 2025 23:44:59 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4ce9sm659258266b.69.2025.06.22.23.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 23:44:59 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 23 Jun 2025 08:44:48 +0200
Subject: [PATCH v2 4/5] fbdev/simplefb: Sort headers correctly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-simple-drm-fb-icc-v2-4-f69b86cd3d7d@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
In-Reply-To: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
To: Hans de Goede <hdegoede@redhat.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Javier Martinez Canillas <javierm@redhat.com>, Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750661095; l=1094;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=FuWpotRDIyEvFRCG/nxmNN/jO2swjOVfbhbhqHJw88c=;
 b=kXVSPEOY4GhdxIVGXUvtFGyi8NaioGV03rhp+XgPSoKPhDZTGGSFak070HpEI5tJff8X94PQS
 azxFMPS9dLaDcaEfVYWwQaXl3Ps5kdOPKrCiKnmBij4JtYNIp525Z22
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Make sure the headers are sorted alphabetically to ensure consistent
code.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/video/fbdev/simplefb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/video/fbdev/simplefb.c b/drivers/video/fbdev/simplefb.c
index be95fcddce4c8ca794826b805cd7dad2985bd637..db27d51046af5cc3c46a0bc81ad9d9ed9a0783cc 100644
--- a/drivers/video/fbdev/simplefb.c
+++ b/drivers/video/fbdev/simplefb.c
@@ -13,18 +13,18 @@
  */
 
 #include <linux/aperture.h>
+#include <linux/clk.h>
 #include <linux/errno.h>
 #include <linux/fb.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/platform_data/simplefb.h>
-#include <linux/platform_device.h>
-#include <linux/clk.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_clk.h>
 #include <linux/of_platform.h>
 #include <linux/parser.h>
+#include <linux/platform_data/simplefb.h>
+#include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 

-- 
2.50.0


