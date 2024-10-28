Return-Path: <devicetree+bounces-116354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5918D9B2A3E
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 188DB2829C1
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3714A192B8F;
	Mon, 28 Oct 2024 08:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nrl8l10x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37813191F88
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730104098; cv=none; b=pR75m3q0WXyd5KAlC76GWPU8Rc22aLhhG7cAimwFaVektkQ2uUMwn6NlAY1fSvx5lcS/sbLtYeJKG4KElAMp8o3RholnFHHugopY30j6S4xhGsgc1Dm/UcaBP2KtA1+OX0RsCwGYfssnx4A1ztyCHjno+vmHx0S75XMqQh4Gers=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730104098; c=relaxed/simple;
	bh=0pfJecxT1M0oO1SppP48VH3pXQdKQ2tBolbB4llt/iA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rLfntQZQl6Py+2PIgwnrnZI2odHJpjTWl4k9ESNpDQlROnW1YQK9OQDdZK6ivM+7OaGU8Gb7E1cUhyxzmRyBwe3tG/T9FWKEYtX1cj1TU5uneOsLkzffGn4vdCVziymVouehQwIJ/YA+mjSb7EZbOGv11YtenbQyQdHIAVQ3eIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nrl8l10x; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7206304f93aso1527861b3a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1730104095; x=1730708895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqXCN/PxPQRRYnCXep+m11qCzkhu9vZNihUxCEwHTfg=;
        b=nrl8l10xCePPHGK7aVKUvrQSzTa57nMNiB/pqakWZDF6v/Qf3SQGsS5cwbgHwldbgx
         US3Q+iW3MBgwaw2aT/j1zqNj5tQZAx4ccoBK5hZxFLP3l5G/B7/l/uFvZfx700v3zUL7
         rtNk3rxX3IV1ClmPmpzp3LHLRYAuV9aGF6rn9v558PXH/hG1ba1RBjkiruEZRd44gJKF
         X2670mZpDlibtcb0mWQpCwkSy84qjSr1x+pgcxthUgG6H/ARKGyNavYot1vHSgDbtITn
         TfO0QWcTf1ws58aoYqPBlUflAnjn5RjHymzEphvDkHjOf/+H/5bTajqU5KcRGE/MRXD7
         XO7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730104095; x=1730708895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqXCN/PxPQRRYnCXep+m11qCzkhu9vZNihUxCEwHTfg=;
        b=tGfiirBOZ//balArPzzEk++W/GEyGnEXsIsWAwZM8NqpDdDmS+lHec9E7RB6hcwGE1
         mTFVfb1rbEZX1ciBkiov9448wTzYFl2tTXx5PgmJlfRdqi6l3ZFBF48eK1RcedDXLEji
         xrj5DSa5vNXRgFLNHEnmMAIZqOUcu+OfJv+L5Wc+GKxpwT6+IPrTwvd5gQ8LfQ/GHstu
         2vgzZZeeaUnIcqoTP4gZmY8sWGVJIYJko0+YmPGZlSNZjfvbcy2FRPejRQ2oRHqlyIn6
         AH0ot86cSadkCmxDQpF2UqWwSRTvPbNOXOtdYV9fQlvNtAvvutRJ/9Px818v1LBTw/SV
         uYvg==
X-Forwarded-Encrypted: i=1; AJvYcCVv7sNu355ZLphzh4TAWMfz/ZUVu2mYB7eveEWGKlMDo0lW04Stdr05oq2Yu5DKYVjVslLW0tGy0q78@vger.kernel.org
X-Gm-Message-State: AOJu0YzmOCY56exqxUo/flNh68FSYE5dV9+t1Q1b+HPMPli9KqSY9bvu
	vU8Ew4OxbzCGXehTLC4Ch3yywM89mGFA+4dvrZzIWY3U+xVysVNLney/TYzIlGs=
X-Google-Smtp-Source: AGHT+IHZq0hWR04lWWSn4VEvShFoeXQ4WUdujwmai4DH9ODyeYFBL8qZVtGaYzDQnQwGj4MtLa5Yhw==
X-Received: by 2002:a05:6a00:84a:b0:71e:3eed:95c9 with SMTP id d2e1a72fcca58-7206306d443mr9996199b3a.22.1730104095411;
        Mon, 28 Oct 2024 01:28:15 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::401b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7205791e451sm5195419b3a.24.2024.10.28.01.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:28:15 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	rafal@milecki.pl,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Michael Zhu <michael.zhu@starfivetech.com>,
	Drew Fustini <drew@beagleboard.org>,
	Alexandru Stan <ams@frame.work>,
	Daniel Schaefer <dhs@frame.work>,
	Sandie Cao <sandie.cao@deepcomputing.io>,
	Yuning Liang <yuning.liang@deepcomputing.io>,
	Huiming Qiu <huiming.qiu@deepcomputing.io>,
	Alex Elder <elder@riscstar.com>,
	linux@frame.work,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v7 3/5] dt-bindings: vendor: add deepcomputing
Date: Mon, 28 Oct 2024 16:25:51 +0800
Message-Id: <20241028082553.1989797-4-guodong@riscstar.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028082553.1989797-1-guodong@riscstar.com>
References: <20241028082553.1989797-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sandie Cao <sandie.cao@deepcomputing.io>

Add "deepcomputing" to the Devicetree Vendor Prefix Registry.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
[elder@riscstar.com: revised the description]
Signed-off-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v7: No change
v6: No change
v5: Removed extra "From:" line in the commit message
v4: Updated description
v3: Add Krzysztof's Ack
v2: Add deepcomputing into Vendor Prefix Registery

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b320a39de7fe..f8bb3df65797 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: DataImage, Inc.
   "^davicom,.*":
     description: DAVICOM Semiconductor, Inc.
+  "^deepcomputing,.*":
+    description: DeepComputing (HK) Limited
   "^dell,.*":
     description: Dell Inc.
   "^delta,.*":
-- 
2.34.1


