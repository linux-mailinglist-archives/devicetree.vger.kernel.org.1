Return-Path: <devicetree+bounces-96802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC37695F825
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 19:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 19F401C223FC
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 17:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C50AB1990AD;
	Mon, 26 Aug 2024 17:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="msJAr3GR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13C5198E9E
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 17:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724693483; cv=none; b=EGU3L6BOIt9C6GtLry0RpZH4U8D/9/RNStL0bAc3Bf6+0TijO0oc2I3NAywkA6/oihhF443DKhqur6fMZuQtTBczmsSb/RPaik6UA9cajMuGBugQoio4fNlFOBtyDFpSjLwvKDN4VNB4x7NQ8XPtT1mZ5bIacj16qzrUuAfSbJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724693483; c=relaxed/simple;
	bh=6EPFMstT17CvrhQmN+sTCcfEDbYVO1ZcIZ5xV/q7u8E=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ZarFcUMHZ+AAmI8a/kgNSW03Ve0A95pGlZLeVac1e8hCFDJ4MxpbAeunFjF6/f/+nnXTFTnJKIpo0AqE8o2JbdfLz3ZE2VEOezEBOX8DositEae5X5Dd4UmuAwMTTLk/jBRkzkm7gm/YSLCJbXQ+v1pBT+73DrbRlvwU6VBGkRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=msJAr3GR; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a868d7f92feso573464766b.2
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 10:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724693480; x=1725298280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sdCwGFBcrT49Pisvj9J9Vzn1hnXxwd5sYiWDmNdzZNY=;
        b=msJAr3GRGYUMaWcgdjt5pyn+MMulnA1u8Zx1aFI0cjigMc6jppHun9oIeB1M72FxA3
         7Vqm3xz3AV0lQNqvW+AyyTxgrV6waJF4/Vc1VLD7+mgrRDsagHfesh3hINNMVBFmQE11
         gdYEPUbqcCDXsuQ/3a0hSJVxhZeHOT2N0a3RI6kuP43CV8AHS7oUkPeg7lb7wlhqk+3i
         MpYGJ8ppUD2VJQWRrZC6C1yDee6LcsQupAI1u6cGAqk7CPRKUdVdaReyttXqFL3USSmH
         iOxo8Cz+XDGzPunbyE1yIHdHssCn1BlJ3xyqnJnHHcAfaR8FXxqdYJ8bXYnpx15JwGja
         We+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724693480; x=1725298280;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sdCwGFBcrT49Pisvj9J9Vzn1hnXxwd5sYiWDmNdzZNY=;
        b=pKfYWZv8/JIT0HGmrzLPCJpu9aJ2p0u1z37W9norzvkbc4W5uw7Q29VO7jLZuOvtot
         fKN33Ey6W8QeSeT9DCr3Hvk33l1/uiqbtat1cq1V5X8LrT/eiJzsbFYPAkPDEeEVIhao
         BCSukKjLgdYA1q0FJLw/OsbjGkuYXA0N5x9dmuflzwbVKY35ktvCY4Vve/dYfmtjd8q9
         S3r/aTdXAsuLqxS4ZXA9oM/s8qjrmhNsS2E/0yAsyBu3umYurz1WWKrKQqPdn/k6iEci
         JXkOV0eJeS41MSmNIiDgWYYK4eImpgixPsN5vFhpeZWI0BJKj/hiqfDy4TKc5uc8zFIE
         k5AA==
X-Forwarded-Encrypted: i=1; AJvYcCULJxvs1xBdLR1RKBLEysM7CTJAHsjh3a5FRuKsESqBKl3tiWuUw7jN0fZorNofD8OSfg8oyE67MfYd@vger.kernel.org
X-Gm-Message-State: AOJu0YxP9g8x40niq7RbhRIt78Y8YKtXbuhJlOWk9WI3TUihWDcEgE7q
	M+yCu/HQCkrMhZwtLtB8W5BzV+p8GNOw+6eNrRimjvINHmkkR7xhyobmZEAsZhc=
X-Google-Smtp-Source: AGHT+IERD9TGRmX/KhvrCUArHMw9rId0+3mqlQ6S+/Jy+Jl7phDihtOezbZJke0mH4gTsLm+tymTWw==
X-Received: by 2002:a17:907:1c0a:b0:a86:a90f:3025 with SMTP id a640c23a62f3a-a86a90f3de8mr781015166b.59.1724693480118;
        Mon, 26 Aug 2024 10:31:20 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a86e548781csm446566b.28.2024.08.26.10.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2024 10:31:19 -0700 (PDT)
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>
Subject: [PATCH 0/3] clk: at91: sckc: Add macros for the slow clock
Date: Mon, 26 Aug 2024 20:31:13 +0300
Message-Id: <20240826173116.3628337-1-claudiu.beznea@tuxon.dev>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Previously raw numbers were used for the clocks generated by the slow
clock controller. This generated confusion and wrong IDs were used on
device tree. To make it simpler and less error-prone series add IDs.

Thank you,
Claudiu Beznea

Claudiu Beznea (3):
  dt-bindings: clk: at91: Add clock IDs for the slow clock controller
  clk: at91: sckc: Use SCKC_{TD, MD}_SLCK IDs for clk32k clocks
  ARM: dts: microchip: Use SCKC_{TD, MD}_SLCK IDs for clk32k clocks

 arch/arm/boot/dts/microchip/sam9x60.dtsi | 18 +++++++++---------
 arch/arm/boot/dts/microchip/sama7g5.dtsi | 16 ++++++++--------
 drivers/clk/at91/sckc.c                  | 24 +++++++++++++-----------
 include/dt-bindings/clock/at91.h         |  4 ++++
 4 files changed, 34 insertions(+), 28 deletions(-)

-- 
2.39.2


