Return-Path: <devicetree+bounces-224807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE81EBC81C0
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8952F1A60E47
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4542E28D83F;
	Thu,  9 Oct 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c/i+9ZTf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B962738D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999553; cv=none; b=O8tk5dAtI4FFwDRdGtz+wdCm0D+ysQnHcCS/srKY1rKA6u0qfUA7Cb8x/oiHbRDqGslXGFN+LQkzHwiQUEqyyIZdMxWKa/l5GaPkHbC7/GGizvkg+OJQD99qESRXB+NpAi5vKijhN3VMIxi8u93csQfSUjghyBOOlcJHauJh5Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999553; c=relaxed/simple;
	bh=i8ILy3efLeOoD5Qf+e/n7DFmvbPzfKevH825MWgSvZA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sU1bkZxSx3OTu8ffMjXgyPa3f2CSFxAqw4rNCE/V3MrPdZesU9X7QfKJOx3AyI9PYRPCeAqSxdT0Ku4eEpDbiiIkqHWZ0Yh702dKmszVhml1FMXmSXSAn0RXmw27uo6MaJUAxOGcGNE8HQzCsDTTYG/TUQPidWYa2qSwm3nSVnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c/i+9ZTf; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-781db5068b8so592772b3a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999551; x=1760604351; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=c/i+9ZTfkO6eFrNmVI1vPuMFIy2blOAwtm7fGMZoN6vc8cq0sHweMdvhA+amIrB7kR
         BF1qtLEZlXfwHkaOca9/VcTrNMS11jZZZ1pboioQ2uTS2PtfGUNLYdEMmNRTt5bGpZxI
         ahTpnCH7I9NYlHpULwdzeNQc+jOmQQhmBbvf7zefc4j8LYK/Fifx7QitV27Ik+JJiv4F
         uvxGyNaEGPqlU0xj1PEC9AfiPtf6bUZ/uh2uQ2XBVzWcnSDxb7pkCdDT+nK9VGzkaAYo
         CNNsVcPKqqbSyFm5OvBcHSXHQGKMQB7fJe12ZI0H69V6wDdcoyE0q5pX9uM5F66nn+Tv
         b2DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999551; x=1760604351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8OhPkz1QMasSzFJcM2SsPKD0i5kQ3GIw9/NmjM3cWc=;
        b=aQShgR866fRuyUTUEboGp/ZYq5xfqUWuKhYCHuhAozWGgmCC6DbDhII6Ph6D8JE4HD
         0tHZ5qE/dpR5c299klXqICFcFA06OcskwpkVRYrh+NlRJlFyMl6PlT17sXigZEFL90Gc
         T7Rh8+ebAzs1BGYCHPYyWjAd8sPD3oH7ALcgO5QCvPPionfgz4Hp+v+CGAmhFql66IWs
         YzZBORib25aPS6vaj+lvYxEURYCU4POkkIJdvwcI9IKdU7mLXyVdhjrp/Q791xW6Ow+3
         +Yj9to6CGmDQbVVcwXvC55uKb3e8YoA+SSrvy2wPAhF0ZJRU5EMZmB+baWM8HdnCYFFE
         O4JQ==
X-Gm-Message-State: AOJu0Yw5Y6rC7YALEy28n6FBFsDPQdIri6plEE2TnLzqgioFr3Bupj1p
	V79oRwqsExTG7gTl7iRpwR/7+JG5Xs91i7S/2Lc+i2CAeaJvAhoGMMFl
X-Gm-Gg: ASbGncvPD6wc8dr6Au5NDdRIvvS60a9OG2uVHBtSlWkGhFDlW3kBXnweSB/iaJLqLQC
	rj5rf1Hz/1/kArcH/aFphtGfykYqnpXiwjGIC8LLDsDWBzBXmO8BJep5Tx0g0Snk93/u5V/43vr
	pYEARGbDn4iIFCBk3S+3tn3ts88cGmmc4vFtZak9CIH8zHtBBXgBjZY4tSwflLP21REpuvynUk8
	uxKCr4cXixA/VStEyRlTrlucUIyF/eyeNNeqIdiiQmZI+BMsy1bdxuJwFL5V1Ahk5CezHNI/55w
	BwJViLkKFgNMlfwVNM4hd83MYda5ZxYYJ7bcHI4yw32LMoKPeoGkBVsW2Ksyh05hcVSoA3hTsLO
	aMds97vFS3s+ED5U3YqXbd6GqTWlONLCBypWSSkPNFYTlECelaUFAnUkb25eugjpPrQPdOvRyYB
	TP
X-Google-Smtp-Source: AGHT+IFsUYI+Uzlw6afQAv8v8QE4Z1XIw1leKiEaEKz3k8e65BDwjgKJwZ8Au7x32eU9NmkOPg5Kxg==
X-Received: by 2002:a05:6a00:3cce:b0:782:ec0f:d279 with SMTP id d2e1a72fcca58-79385ed579dmr7200904b3a.10.1759999551109;
        Thu, 09 Oct 2025 01:45:51 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.46
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:50 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Thu,  9 Oct 2025 16:44:14 +0800
Message-ID: <20251009084416.45542-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009084416.45542-1-jjm2473@gmail.com>
References: <20251009084416.45542-1-jjm2473@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


