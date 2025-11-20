Return-Path: <devicetree+bounces-240763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA22C75312
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 16:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 2B9742B02C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F13E3612E8;
	Thu, 20 Nov 2025 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="D8wz3VpJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB77635A12C
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763654313; cv=none; b=OYTviid0JFtINNY35txJeEBNRT6Ug2RWfh2RxIxJDEzjo1wAYWfv+FwOjXn26MbAjqCSA3NkylCfVlWIPvLGmL1AXA/5BMCCLF1MveJYbKaQ2rZAecEKrADPCCtRa863IFJXfXix0gKTCw00DpcG/qo9lHzw3vRXAQ7J3tJS2BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763654313; c=relaxed/simple;
	bh=gowrLjtyOcvjBL4p58UCz9xf7QYOPtC7scsXBhW+jFo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H0BB1NH5v7w1xHaokO9VIHbIYNdchL2fLnxa986+qLXoy7G7v09IEfiMd8flR+5SkVSrRxG4NfRlqt9+tK/8gRQy4XHTy0MGDwn+mFnWLPQbiK/QUt/HT8oXaOIrwEasIV2YrXzE8CMiKOAifMY9VbFWXiyomMH6xnutypI9SnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=D8wz3VpJ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso5093365e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1763654310; x=1764259110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ru2x7aLzVd5WoKQZeYoG79pGESHgaomXnpzW+QmhDU=;
        b=D8wz3VpJbNwvc47NL324mejleX2FosXoop5srqmQuFpuaw4F1Xa9GgJCYfbOZwVSaV
         icn4jciwFVWJ7Ly5WjKuBU2tRT0jVN1i7AnAAecP2GmXPlPnYj0qWpab7EBuFphMVyJc
         n0ehYARTzuFgF4HbYT3SaJ7ih3IKEsnxIzPRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763654310; x=1764259110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4ru2x7aLzVd5WoKQZeYoG79pGESHgaomXnpzW+QmhDU=;
        b=o5a6piheQnZxTLfZfH7I2ugW3h3HfbWpveqtSaPErdzAjoUDz/FfSm2JYVmSb9KqqW
         A0pE138BtSvuxDQquBNFJ5bQHx/NbBeAwEbBQS9YdFn0Og2Zl3IRMUrhQJe+Juf9Of38
         PNq+PHdd+f624hmOfB5S2RD+k/DuMsLLV64lBI4LjDn+WJMGw8ebNnWrgiJvv7WnSOka
         9Qdjhn11sOV010j0TaxGCSnl6hpZWEk2hgbfl4nYKJJMh+PYxbkojJq4+QmXCRP48iJF
         ug5OaIRmpVOAQn7CjfoWPrtWGxXLhtIZrDT2Opo573L4E44fN8TmKT9LgKDL1lqsZobt
         2vWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg3IstqhPu7fNtm4N8cBJkVaGt7U617VVUpbnTC6tx/utuQAs4lA+Hb4hyaPSq/5NhTALvRD12wx0Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yzly0IQadg9kzXKumpmUICRfIN2HIpgdsulDmfQJx66D1BSKGT7
	aZ9lDzxJ3MRg0gIsMI+I2skVvBBdxO7MILV4RNwmZoOoBm/tLhsWL5akCZIHNedPrDc=
X-Gm-Gg: ASbGncu/p71RS8fLai3dTvWaC7+BXBymeuXIGme7gk5OoI9vYzG6ZvdIRcbLT5i8D9X
	8lYjgFJaOJhr4Bp68G7Umf4JjUH955OTB1aggwk0xtouIi+p7Njb3d209sYOc0YgyegGzPTG0Vq
	E84Zegwboi+PKBtx6ob0apmrQX0DejQRbeBap6QVVvEOzPoz6UlOqOlFvMMS2ETjjA8VQ7DX/gq
	4rDVOsEtn7QF/j+iNyCLysK7HK/Nfr37XmjnTu2iOsGMuy1vmfIr1AkUl4bFX8Q+YHLHESK+0kz
	2o7rMEzp++hIS7F3dM1Z5jx5gd4ar7KF6SNUfhU8H16k3pcsM7o6tAcfWDk2ho84DzWCb3GbJ8Y
	3lfou7ig8e4BPoIxyO0bbD9yQKUjT+N0zQbKkChIPgJpVPU8SGMjQdch3zPAyt0UZ8LSNU+NjDh
	x/X3ZFsG72erKfkoMZ1QI7yiIOBsgwF1ozhMl+cbzYp23VgaOiIyj8lLw=
X-Google-Smtp-Source: AGHT+IF1vyggDCykNrANwtKViOmaLZ3/x6iQowIS3JkPfpzvxSMEvUjs/y8xWlfNkK9IfscfEbzSgA==
X-Received: by 2002:a05:600c:4591:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-477b8c8dd99mr35889515e9.24.1763654309847;
        Thu, 20 Nov 2025 07:58:29 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82e8ea6sm55552185e9.8.2025.11.20.07.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 07:58:29 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	m.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH v3 1/6] dt-bindings: vendor-prefixes: Add Arduino name
Date: Thu, 20 Nov 2025 16:58:20 +0100
Message-ID: <20251120155825.121483-2-r.mereu.kernel@arduino.cc>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Riccardo Mereu <r.mereu@arduino.cc>

Add entry for Arduino SRL (https://arduino.cc)

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 42d2bc0ce027..07a285c9387e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -158,6 +158,8 @@ patternProperties:
     description: Arctic Sand
   "^arcx,.*":
     description: arcx Inc. / Archronix Inc.
+  "^arduino,.*":
+    description: Arduino SRL
   "^argon40,.*":
     description: Argon 40 Technologies Limited
   "^ariaboard,.*":
-- 
2.52.0


