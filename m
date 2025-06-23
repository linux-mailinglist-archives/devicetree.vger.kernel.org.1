Return-Path: <devicetree+bounces-188267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28378AE3609
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 08:45:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFF513A3CB6
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 06:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2325B1EBFE0;
	Mon, 23 Jun 2025 06:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="c/w3szZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6F41E2606
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750661101; cv=none; b=CTZn+g641dpp9+D3osuhfYiYzknP1vSK2TKJ5lrW+Q8PYRkrn+9rtvydu7WZspZ2hZ/+OpaHZN4oT34KnF7TqfREO78B1+FYN2RPGVwZKMlQAEv1/Sv/WNeguh+Uf9H2PgK6lQurtkAUXcI5tfakgz9DsMatpt1rP+q0oBDcbnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750661101; c=relaxed/simple;
	bh=D5wB8GTFVDuCJiFhGrONiRmhnC4J1aRZ8kfkMi+2S7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IN3YrLR2eMz1VYLr8WCi7FoQUr5++OFMnrTr1Bq90Zf86CuzaoNGnfrrDn3GNd+jKCME8cTj67FccAYfnwUurh/ZBiYwgJB9C68P3bCIRVICfGjCDORfhhpLAm1EI1CJnC5ow/MxiFofTOdg8I1PhRBcHDNu90exz36zkVoyZVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=c/w3szZ8; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ae04d3d63e6so480112166b.2
        for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 23:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750661098; x=1751265898; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbu48gx7NEhId69+qzMyPOiXCZJK31FbL3aO14F5yf4=;
        b=c/w3szZ85ohMGqFSsB9gaUZl9R9aJ9UCT9FESYf62/xJm0K0LI4gWQCsZFw4J7tXSC
         IdVgyxIsf4jtHrqnZgsRh3Rals+o8eJuzZcxB3H4jb3+6YLKsPV0HGwy2UBm+rjpEHSQ
         Hp3jkP/PsKYs9G/MhU+J200fIP7XP2ylUr27dgZ3jW8ZOPmh1f1Lb+q8Z5ZefKdcpwkU
         B8Pzrx2DU3iTHhvesHUgvAca0+eTdBiXW7AeA+h84tjz8uAc7Kt//lIFXHqJSAoO8UNV
         c8DzL8/sLbkx4QqIMzNDEeyfgjHU/Vj8PLrU0LtdxgyiGG3xKo5XaY4CRGbKWKsQUduZ
         h/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750661098; x=1751265898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vbu48gx7NEhId69+qzMyPOiXCZJK31FbL3aO14F5yf4=;
        b=BqlKSPoDHZN58hJ4fJrccHPGyuOgCMcLFPH33KPEmk+Uez/q1h/zCXneWUO6Aeo6e3
         eZxL0cUVy1/9Svt7icDXlOveGeZUcDmtkG+FxHJIkGqVXhCuCW4mrICAcCDD6VVkGhmO
         VmFmY4NvpjUetc4GdSqpIS3eFTZFbSTJeikRtfKs+6YMupYyYCuU7R4c/7RLkaJdZ5D1
         lt/QjE+xGCW6EWpSm+0e7HOm4u4XWBNkbz3triT+AMFn9VEkwvt5E2BwGvmzLKRMzfp4
         XrwQ2Wuo86MmJtWgF4vX5Hl1LtRPi1/OFWigF0Gr/3b8xoVuC/5VP+1/1Q/gAG3T9d02
         ikuA==
X-Forwarded-Encrypted: i=1; AJvYcCWYzulBnP9dgeeF3zOqOEDizZ8eGM0bbIyO1nXK/PuM17zeqkJm3gvceIqVNws9KbjIXiKt9mDGQClp@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq1bZ/m1UWJUa2SeWCJIK7mKM84xki6FHB7YmWLadM27CLv/lm
	2UzCBQK+vpyTDJAE+wSnBNaWscG+QDcOJnBR4tO4C2sC1vCJlablpbxZjfSgunS0ud4=
X-Gm-Gg: ASbGncvoQqirQ5aReX7o1T9vIQSlLEMGQRFU3PsYKQ5rqNZasbb8oT3Dg+2xQVMrAR1
	+28ZbrjM7BKAb1PJHTrn89pfuHmyVsNEl/bghcpPY6eEul6lQOUcGk5Rf3V4zYtV7lQpRS/v78E
	9yp84VhZeIxH6sPpil7jJAdhqtaMJv2kyiix3jHiZGvOpQNASi0etaG1Wz+Tcw76SBIMmZW5c/9
	rMvrXGsJRfizXVaF4oUoSQHbJoMXPOBHnB8cwyvNCuH8h5KENhvChhqCEzkzLM9NXelqq3TFrRT
	NwvhgVLuut2RB3cbsKbNpDy6U2RkdiAe+62bpaWArmKFWozjgqdNjMz4s7Tve5cYy6nlBM365MH
	u4rg7vvQLWTiAkoM2ItIzdQSuBbKFzqGp
X-Google-Smtp-Source: AGHT+IEOzTOG7c7R00rqnL+INk5sjS4mj52ZR4xU1BeF+DiFIb5jKd4us01mqAW9xyhdkYM3Dd47pg==
X-Received: by 2002:a17:907:fd87:b0:ae0:6283:5d58 with SMTP id a640c23a62f3a-ae062835e1emr846280766b.1.1750661097735;
        Sun, 22 Jun 2025 23:44:57 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4ce9sm659258266b.69.2025.06.22.23.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jun 2025 23:44:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 23 Jun 2025 08:44:46 +0200
Subject: [PATCH v2 2/5] drm/sysfb: simpledrm: Sort headers correctly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-simple-drm-fb-icc-v2-2-f69b86cd3d7d@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750661095; l=812;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=D5wB8GTFVDuCJiFhGrONiRmhnC4J1aRZ8kfkMi+2S7c=;
 b=NmoLdHl/zy8/Ccu5xTGjwDXOdaQQcr3O/5YtL18RtixZv928CEKzL1gkps+b4W6pfu7E3uThf
 DcKk9lC2NhrC1nEiqi8avoRWgJ/zlM71+o1oVF8JKPfU6UAHI/If7RX
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Make sure the headers are sorted alphabetically to ensure consistent
code.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/gpu/drm/sysfb/simpledrm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/sysfb/simpledrm.c b/drivers/gpu/drm/sysfb/simpledrm.c
index a1c3119330deffc9e122b83941f3697e5b87f277..349219330314e3421a6bb26ad5cf39a679a5cb7a 100644
--- a/drivers/gpu/drm/sysfb/simpledrm.c
+++ b/drivers/gpu/drm/sysfb/simpledrm.c
@@ -2,9 +2,9 @@
 
 #include <linux/aperture.h>
 #include <linux/clk.h>
-#include <linux/of_clk.h>
 #include <linux/minmax.h>
 #include <linux/of_address.h>
+#include <linux/of_clk.h>
 #include <linux/platform_data/simplefb.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>

-- 
2.50.0


