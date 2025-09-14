Return-Path: <devicetree+bounces-216933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D43B568C5
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B365D18953DB
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1395F270EBF;
	Sun, 14 Sep 2025 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="est7Cdnw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFCD26C399
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757853764; cv=none; b=HzfxZf8wAfufsdxAlSxb5ai9lHD1sJkac4eT4it86K6eVaGTt403y570C/qhjzAxZ2WX0n99NdZYbqBfu088olCVll5LRg6VDZwstPlRFNg9MFY0/UhoPTcolq4eiNPnl8PgJoNHJYpf1U2S/BKr31TCA+f2uZqhPjME/pKhkkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757853764; c=relaxed/simple;
	bh=BohS/rc6qOfBI1KkyLNcfUimneuQ7sG3nV/JMTpWO3w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L76mAOYs1TsHOzDQFQqmLdblI3r8Cqbm6ZZgRsYiARkr9r+JxTLRvT5Vv90WDtIV7MwRH47X4FMoVJD4ULmHMaiGsCKL//0+2qBsCa3uUdAEltdI/iyjCbkJzOL0uJ/WCwwO+DdM2rJNSMQXvAam3/ZKwmAT9Sl/zx4YvBNv9wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=est7Cdnw; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3d3ff4a4d6fso2366027f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757853761; x=1758458561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJlsN1Jaqy7XiIrMqRe29GOaxskmgZS6O5NApkSCPIc=;
        b=est7CdnwjfHJ8I8fx2plLYIVT8IyjZE2DFzVong6BRhvoA8lbrCXZFgcTdjDE0ooIr
         YZLx41m0N62rTzdEyAmn62YBdh0PRwYYu/2KAYTYwF202nTo6VB1nqctNgthAa7c/ikY
         oHbkd0hHAg1L31qsPzysIUkLz21GycWMbqbvo8rFidAkFP8TOTfIVWrvl41EokS53Gdp
         D4/H2zWhTZpHlnWlCHTjLcqbWTlWX1fzaqmr2r5INMtDgBJHi5dtnVSaBrowyAUss82E
         sZzjgjnfQnEFjMZAnYu+Q031Ld5x+endnHkbmXkIMkxPQisDTOmYZYPL0rvH1nZ35tmQ
         28fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757853761; x=1758458561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJlsN1Jaqy7XiIrMqRe29GOaxskmgZS6O5NApkSCPIc=;
        b=JLUcXfDu2R9GiFxuaWZ/bBKOC3mQroeuZNHUg1doqyR4QKHeS+j36K5jp0bXnFArII
         15e7RQmlsyiQdxKdPZPaJlUv/9Gk8RTSkurJJM3CKRihJbxhk+9nb6Q/MRfJX04HphL4
         1rzCeVyvmAx4vemsYss+qVDOByWDF0l/rQzJa1mNx6/i4TX9NM4uzqoI9CRGiJmy3AdD
         Z0QdcEx/nAaam/VT0gJ9wXFO/J9oKkuIELb1WgZaeVg8DydfAG/5jrcrlqsV0OgovV+H
         Vu3eR7Q/22gCYNK0UHJhGHHBg88Z2jIKEhSIBiGHkCI4Re9888cToBI/8ZSvpEoauP5D
         +5ow==
X-Forwarded-Encrypted: i=1; AJvYcCW7mWS64/ufdnzgfL0U4sUrApQSO/v1SBsi62JQ3VYuNXmL/A3oukVZ5OSyTGHy0GSO3MHJz6K9Dkz3@vger.kernel.org
X-Gm-Message-State: AOJu0YySizDJAWppeRMRuJLCkfJ8G8lj1bsAbyFY5tJ38NHdhn6Q6umI
	Jc8G0r4ABJtME6PvsT2Tp50rlXzdWRR62+qG2hUAPGjViampJk5yZjW1
X-Gm-Gg: ASbGncs0n9TiMyvOL1om7cBmIB1m9tA8TsdNwlL3QyDbek9qHg1Q12HyX84ocEDO+fs
	krInrVztg8bfC+i5cvBr1UZ7rezj1aU2H87qcA2HXnimZbclFbHKGyVaQej0zeJpCyRpfgZPHNo
	SDqQLi6UmfOJD7xxA6wcBI95ugINl3yeau+eRZzuW8nXOcHEJhqC5P6GPqGuc6+JB8+69Jf+lXk
	Dm1cuVAkwI8ppsfR7DS0ne/M678zUSRr4N7+j8B5COEv7l1gJCmy5MrUcRl18TbXuB5xmN9nRPC
	AwogQESAhYFjXy92CI3Hc2N+fUtUJFP8+fAaPEML1I1DNUzsnnRfHgN/bPj5Hg6BloAFhks6Mvb
	iajfwO5e3BR72jcivGKmhoeaJjdUej/9/wBNzaF1x5WbkPsq9fmI3I21caWC+slNnxmICZT9jmw
	==
X-Google-Smtp-Source: AGHT+IEXZd7reUDziErOplgPo67Tm47g/zLW7Hg9UIF0v+P6mjh3cSDXIBSb4wSjeIaZ8c6Ls42mhQ==
X-Received: by 2002:a05:6000:2504:b0:3d2:9cbf:5b73 with SMTP id ffacd0b85a97d-3e7658bc950mr7945343f8f.6.1757853760855;
        Sun, 14 Sep 2025 05:42:40 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9511abbccsm3727773f8f.9.2025.09.14.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 05:42:40 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/7] dt-bindings: clock: samsung,s2mps11: document the S2MPS16 compatible
Date: Sun, 14 Sep 2025 15:42:23 +0300
Message-ID: <20250914124227.2619925-4-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914124227.2619925-1-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S2MPS16 PMIC, alongside regulators and an rtc, provides 3 clock
outputs, just like most of the other S2MPS PMICs. Document the S2MPS16
clock compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
index d5296e605..e1666fff0 100644
--- a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
@@ -13,7 +13,7 @@ description: |
   This is a part of device tree bindings for S2M and S5M family of Power
   Management IC (PMIC).
 
-  The S2MPS11/13/15 and S5M8767 provide three(AP/CP/BT) buffered 32.768 kHz
+  The S2MPS11/13/15/16 and S5M8767 provide three(AP/CP/BT) buffered 32.768 kHz
   outputs. The S2MPS14 provides two (AP/BT) buffered 32.768 KHz outputs.
 
   All available clocks are defined as preprocessor macros in
@@ -28,6 +28,7 @@ properties:
       - samsung,s2mps11-clk
       - samsung,s2mps13-clk # S2MPS13 and S2MPS15
       - samsung,s2mps14-clk
+      - samsung,s2mps16-clk
       - samsung,s5m8767-clk
 
   "#clock-cells":
-- 
2.43.0


