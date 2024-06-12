Return-Path: <devicetree+bounces-74887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68272904E4E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB93D282F1B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0A216D32C;
	Wed, 12 Jun 2024 08:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="du3fKvOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709AD16C86D
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718181654; cv=none; b=R4AXgvaqzvjdGQde2Rg49IPVDhjOY4QLV+IDDQz2yfAz8VA21wKz2kOR5wTwOJvVSk9nsRvA2RNYQi672yIPkBMSx8pPl/i764ljjdd1dxnInVKcMdF5jcWi4+JfDG73ANU1I78aYdPW9hcLSIlZiUVa9VGXJ40stwOHrlXk7RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718181654; c=relaxed/simple;
	bh=DRwMk50Q5ZERjqin0kgpH9SsCM8/Ay+il3Ft2/qkOy8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Mp3CitRlkATQwAZ1gIt9AAYXL4GsXRTGlV569THWuzbVH3CSzEFzvmlHvLtTiVnO58hkh5MfRcwBkPV/Jb+fWHm3vjyp3cJW9M25IGxF82Ep/K7AeHSePoM1yD+OttdXQoOF4kxuza1Ta/8WY+x/ThhMPK3gdCy1Quu2jH+ULg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=du3fKvOu; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a6f1da33826so269147366b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718181650; x=1718786450; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CBqkwyledWDoKomBjA7EooqDlwqm9RQ4FDDh9XT1SX0=;
        b=du3fKvOuWI6z0hGpT7UJBfWWBX11BmfvGtqdL4w//JWWj2y9d0BUVDyGlHPrp+y0GR
         saBsmXaKHaTKFgjNbw3qsFqzRzicW7c5n9LvYkTs8Jk8ICJ0o9OAmxu0g780CvyL3312
         /PkT3+L+6neIFmIpEVXLuN0f4R7r8WjhZs8JnbLi1UD5j4V7nfE1qbflBbtqSFyIVA78
         KyssjsE2ibOfhR909OuZQDRbww3YTp7L1sGkcLjd5FSF99LTVzs2re2bcUbgZtbnVaE/
         bXCRnmfWcQbQU9MvT9Cqnmwf9w4EOYOC6tkpfQCOKaEDVhOCSsR6eCqhKWRV2zaLD99H
         1GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718181650; x=1718786450;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CBqkwyledWDoKomBjA7EooqDlwqm9RQ4FDDh9XT1SX0=;
        b=Ld5Ax443xP7O4jvY1wx5MGnxsWqD1N1E7d8IJcB9+wTGv5FrpQ4m+D1AfC6jn5q5uc
         thCzfb7hLszgqCekBdDwvG1WEAzMIbSTAmZUOXeAWw6PAFwwuGJHE1v5B0MoYAcrhoxL
         5av5rH92cwttPXkKpvKTngTb6HmTC1M+9B3CqpDo4tM0vdkAF8Gxy+xNmaMjt2N8dlR2
         wwQ13aSR2ghwssyBvrb9OSNDWgU4SHZmMTtKo+7mQ/TZR3WHJxZWvKAO7hJq13Wax8/W
         ZOZpH75AH9R0ecjcC52vYrX1BIidHLIhaxYAa/LseTSJlvpJzPuW5RgpVNpWDGSo+OWV
         PWqw==
X-Forwarded-Encrypted: i=1; AJvYcCUvxgj74T6ek2N/4AdqqmhcTCs1pLDgoVAkYgJOaW0Mvcprmb1By0ThlIAD/+6roVZiLolZqSZ0Plnj/e7h95bQJIvdmTmQ2xXq8w==
X-Gm-Message-State: AOJu0YxMEMNTf1uMtIvpMFKr7DxESsWAs+uxilIyTsEFJ/AXR9tCnImm
	o/khL4a0AqEQG3pKCCl5idCNHDzz75HuAggBqDgJWiimserIRf/1RsesWDt51bg=
X-Google-Smtp-Source: AGHT+IH75PTOT0paPjqMnY/iJPs4xleR7i4cuMCQyz5XdUYS9YsW2cY6K59sOro/O50yc1412ToTQA==
X-Received: by 2002:a17:907:86a5:b0:a6f:4c90:7958 with SMTP id a640c23a62f3a-a6f4c907d27mr35442666b.12.1718181649661;
        Wed, 12 Jun 2024 01:40:49 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6efbcc252esm604812366b.143.2024.06.12.01.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 01:40:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	=?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Paul Walmsley <paul@pwsan.com>
Subject: [PATCH v2 1/2] =?UTF-8?q?ti:=20omap:=20MAINTAINERS:=20move=20Beno?= =?UTF-8?q?=C3=AEt=20Cousson=20to=20CREDITS?=
Date: Wed, 12 Jun 2024 10:40:37 +0200
Message-ID: <20240612084038.18519-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Last email from Benoît Cousson was in 2014 [1], so remove him from
maintainers of the TI OMAP platform.  Stale maintainer entries hide
information whether subsystem needs help, has a bus-factor or is even
orphaned.

Benoît Cousson, thank you for TI OMAP contributions and maintenance.

[1] https://lore.kernel.org/all/?q=f%3Abcousson%40baylibre.com

Acked-by: Benoît Cousson <bcousson@baylibre.com>
Cc: Benoît Cousson <bcousson@baylibre.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Paul Walmsley <paul@pwsan.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Arnd, Olof,
Can you take these two directly?

Changes in v2:
1. Just add tag.
---
 CREDITS     | 5 +++++
 MAINTAINERS | 2 --
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/CREDITS b/CREDITS
index 8446e60cb78a..2721aa9122bb 100644
--- a/CREDITS
+++ b/CREDITS
@@ -796,6 +796,11 @@ E: luisfcorreia@gmail.com
 D: Ralink rt2x00 WLAN driver
 S: Belas, Portugal
 
+N: Benoît Cousson
+E: bcousson@baylibre.com
+D: TI OMAP Devicetree platforms
+D: TI OMAP HWMOD boards
+
 N: Alan Cox
 W: http://www.linux.org.uk/diary/
 D: Linux Networking (0.99.10->2.0.29)
diff --git a/MAINTAINERS b/MAINTAINERS
index 0ab2fbd8b6e8..0a2c9163933a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16374,7 +16374,6 @@ S:	Maintained
 F:	arch/arm/*omap*/*clock*
 
 OMAP DEVICE TREE SUPPORT
-M:	Benoît Cousson <bcousson@baylibre.com>
 M:	Tony Lindgren <tony@atomide.com>
 L:	linux-omap@vger.kernel.org
 L:	devicetree@vger.kernel.org
@@ -16429,7 +16428,6 @@ S:	Maintained
 F:	arch/arm/mach-omap2/omap_hwmod*data*
 
 OMAP HWMOD SUPPORT
-M:	Benoît Cousson <bcousson@baylibre.com>
 M:	Paul Walmsley <paul@pwsan.com>
 L:	linux-omap@vger.kernel.org
 S:	Maintained
-- 
2.43.0


