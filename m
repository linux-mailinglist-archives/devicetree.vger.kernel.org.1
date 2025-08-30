Return-Path: <devicetree+bounces-210715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4B1B3CA0A
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 12:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CE0214E277A
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 10:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A932749E0;
	Sat, 30 Aug 2025 10:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="opyLd51d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A148426F2A8
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 10:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756549148; cv=none; b=UpAun02CmgVAboUZ70vM1E8B61z/EgHbgys7HWx5WRQxP7YB17vUfVw7amWxZZEhYPmR3YyOeDbFDF7gHcGewfcGQpS4tgMSK4XrPYNrfd71MrrLq0K4A2TjYvyjwQvfum+rBcfkVFaRKnDmHlvYwyu3B2ROdJoAulFDPV0cLJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756549148; c=relaxed/simple;
	bh=mBL3wH8Zv3gv3XD9pXxPdu8BLbNtjAnS1/nt1THHYdU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=L209jVGktC/EBjmlJ7cdvGTZKiiR2BMB4qVVbPoKc5OvjH45Z+RQlofslbyMNDw2OqpS78CUwf3V4KLxrcpIymbndyIVNGt4rGlgfrBO4JtbVcqOapNchh7af+ACifjXFSb4U0h+n/d8zJFp6P4loXoRYtBv0yorHP0BLGff2n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=opyLd51d; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3cef2c300afso301004f8f.1
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 03:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756549145; x=1757153945; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5sUn7QP2kz00DztPqMuLvh5JhaL5x74fWgbdKmTLlw4=;
        b=opyLd51d+GtF6e8bu2Z6jF8iXcu3Qtrc2PYP53ILlsPusb3RmErsfCCT7p2ihVGB/+
         sG7K0nJ/kQ1bG3L5BQXkfjtc2AmfM33LPMl0xqdiQ/NSZBKbLte8hMFF/9c1ytDFNm9g
         FXlft6xUjRyJXCAqNMiVjQa+0RvRR3LLXBWx/QZs3YmEqfdONVfF0TkBPd0yaQyureGZ
         3v+jfFFu5ZgwZ9+Ar2BCrKIOD9uLOq9dpE6ATm4R93fstT1dMrrQHBVr9URq6GKHDbk5
         QEuFqsl9dKJH0yVR3xoWkl2pZH10NGbdsfCrlTyhxobEPAVgOdBl+g31YFluvJHSP4Rd
         lcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756549145; x=1757153945;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5sUn7QP2kz00DztPqMuLvh5JhaL5x74fWgbdKmTLlw4=;
        b=GSHcInBHkqqdesmK1yuvc2zDEtYTCdUH2JI67w/0H5yvXMGjJM0H0oMXBO6woPDjJF
         8P5WyiaptupIFQeUWLTWz6fcuHTpgPD/ZeoFZ8n0/9ItH8l0KWr9MrRzlWZnhMy9uMoN
         eXvncXcN2+3SO/ngfSZ8lpea0vrVbBNLE3OMKmoItRnqpCneaMUuEm1g/27eTiDEWd8a
         lHqhk3Ao68G4nLfv958oRGLyzMHAoQrZsbwXL1t25oYRC3PWpczOYXxM/oBa4hNcEJSW
         gc3qDbWWOvves7KKrZujd3vtIDvQ1G3hDxjQbntnIxu4OD5YcpURxRsBuBQj3S8hsa5a
         e23Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYvnqiP0xhNPjBes2aYSODhVRwO1BrGkNTseaLuiR7sViQ3NhSv8l/UgomzXMJEFmApPbx37GEZNA5@vger.kernel.org
X-Gm-Message-State: AOJu0YzFJRc+K0H/JxHVsOOE+Ck5TLfDMxzDNgupRn27Sts+EPa5xeMP
	elWDnqb44i45KQ26ZsJXaXaC8k20A9QcYaQ1JWY4JjdulYujsYN3DhEmVypVZMaHLkBlTiiAHTE
	gLWqO
X-Gm-Gg: ASbGncvWZ0lCv2Ed5bJXxjGbOJ2skO/KCpnq0Bh1AapkQ36z+7VfSe+T88DYzpE8Z5i
	RvMTxCzwCp85TXETFBOEBM+IqDqtexC/SEBDX68Mb363wXBjQ2s3qSwrxVu1wdMM0T9M4BKaOok
	5pCFgLf1qbiXeEfx8tND+aeYpI8Aj8b0PdpN7zStWe7eSqKIREAAoGuHQPy+V8xSDHYuHUTIZgW
	P96FcBX4m38Ep2iv0KGoummlap8Hgv9C5v+SRKrfLiqn4qQtOOv33ffGk3QEwrgJGxmVAwtcxkK
	cry7naqCW4lNqB1Hl8KN8sAM2Cus6RMeIWIHUUPvY15JaZaSTs56nt6tIzwT6AOzkg+7WVkcpoM
	eRe31UmkeLpBfiP9yFalioQUBXymyG8NRRqlMpy02q7vuComqKg==
X-Google-Smtp-Source: AGHT+IHbvCTcAI6lW9P8ZAuKzeHNMi6YmoSOvGR+3NoZENtf5TPqRuQC7jK7/7r4VeX5isvy0wOxHQ==
X-Received: by 2002:a05:600c:8289:b0:453:7011:fcdb with SMTP id 5b1f17b1804b1-45b81e930bfmr19246945e9.1.1756549144734;
        Sat, 30 Aug 2025 03:19:04 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf276c8eccsm6547492f8f.20.2025.08.30.03.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 03:19:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/4] watchdog: s3c2410_wdt: Simplify, cleanup and drop
 S3C2410
Date: Sat, 30 Aug 2025 12:18:56 +0200
Message-Id: <20250830-watchdog-s3c-cleanup-v1-0-837ae94a21b5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABDQsmgC/x3MTQqAIBBA4avErBswJZCuEi10GmsgLLQ/iO6et
 PwW7z2QOQln6KoHEp+SZY0FTV0BzS5OjDIWg1a6VdYovNxO87hOmA0hLezisSEFp60P1ntNUNI
 tcZD73/bD+37RmBCIZgAAAA==
X-Change-ID: 20250830-watchdog-s3c-cleanup-cfa28bf8bb2c
To: Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-watchdog@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=823;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=mBL3wH8Zv3gv3XD9pXxPdu8BLbNtjAnS1/nt1THHYdU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBostASNGDkfBHqdI8SdUYlxbtH7WC94z0R+uy+A
 mta0ZnarceJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLLQEgAKCRDBN2bmhouD
 1yUzEACOf59cQzzBtTDBnQpXT72uFzQBgLc2W63iuHo7n8Z4baF+xyrn3IfvoPv2BnIthmCepvu
 oyNYaxkaA7XirALUW05Cz/y07xi/hqJanb7ZuNWqSZgBA31+V5Za+6iWFcb40Ik5bfBDMYALJb/
 iDPMyE9/20a7onCLRgGmGKhbnxHIXw2RoxZ2l888N2iMnf3/NuZcUVRtnfR/Qz5G2W+FvgejKd0
 9j7gUwxSZ0VCM7LlbBHSW/+1th8Ab8xvcRAnlnRa0/E/xv7usrcQbDtnyqf2xxScVeBjYoOYniG
 cEWMSjCBnUv9xRJb0+vY0W2T/GFXqsoNFaCVNqbMGzU8q/AFDvekCz1R+welxjn7DzeXihYpFF6
 FXKk2BtaYFdtJ7UuV+ID296cy+IsRraPW1llrw/D6iSd22SGT+IL/cCn1qJ0InoQyC1yaHoviZD
 TW/JVxzqS1ggNI/ey2P7ogV7OCWnpFZCeCiRu3Q9yPyQGRasZbXUwV8AoqjqJG9JjYzlU0ohGmj
 dBYSo+BI4/+DU7Mc3wgaBRIXJc6yCt0k3aryAmtxz70PVjfKgjJIl+6gjltG4Jr/v/7kI3bL6aj
 WFokFak9Ri+IneCymYbboyPmhNB0LyKW/7E7AwjdnN4ds3naV8e7J0Fz+L/ph/cz3KNUdEvG3Z2
 N+1dsLyX4sVubZQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

S3C2410 is gone from kernel, so we can drop its support.  Also cleanup
and correct a bit the bindings.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      dt-bindings: watchdog: samsung-wdt: Define cluster constraints top-level
      watchdog: s3c2410_wdt: Drop S3C2410 support
      dt-bindings: watchdog: samsung-wdt: Drop S3C2410
      dt-bindings: watchdog: samsung-wdt: Split if:then: and constrain more

 .../devicetree/bindings/watchdog/samsung-wdt.yaml  | 72 ++++++++++++++++------
 drivers/watchdog/s3c2410_wdt.c                     | 22 +------
 2 files changed, 53 insertions(+), 41 deletions(-)
---
base-commit: 3cace99d63192a7250461b058279a42d91075d0c
change-id: 20250830-watchdog-s3c-cleanup-cfa28bf8bb2c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


