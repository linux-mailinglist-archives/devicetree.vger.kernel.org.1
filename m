Return-Path: <devicetree+bounces-220564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1B7B9774F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 22:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E256C19C79EB
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 20:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF69830ACFC;
	Tue, 23 Sep 2025 20:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GdaLm28z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5730AAC9
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 20:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758658376; cv=none; b=B8dcz/DVGKdTg5A7+EZSFj4pvt5qud/TJtMYuXIR9PPNleA4jVke1Y+7l6vgFTuCWXR+OZwr9Z4RkZyFyywltMApshCZUvTl3oIwn12uln47plX/3hBFJ1QynCwEgduLNL7/BdAY32F2sMQQ6kbzFDT6/jDJAvTavvDv9n/WoRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758658376; c=relaxed/simple;
	bh=pQQc50aYzZqifBZLt/GUeCSMwtVtlqq98lQJ7t3A0hk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QeYa4DsMWWB0xb0cwoMkq3x6zsYR28UKqcssLP4/e5bCUcPhrzPvGXh9hfB1tndSWpA/dRvg7p3oRY97oT2CQByNCyFLvWWU+wBJBA1F7dlVNmRqOx6WU+QRBQXCLhYcvqhYYx8EI2MnBaSQ1m1216tbckJc1k1MMnzBH4k7PjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GdaLm28z; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e29d65728so596315e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 13:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758658373; x=1759263173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S/aSYEPITl7MXFUBK4l9sWKvsSHUrdrtUDK4IHLwFVI=;
        b=GdaLm28zJdmARM/vjxZu6Cy1UUqOuylADCdBvQm7kf2zMRz2kiqhqlP/29XylFicbc
         88QSqo3TUiBydYebyvW6p/8/BUCTk5auL+9pzKFyEnMoEQqanJAiNDAeUJPkUj4TJy6T
         6fMGQeL52htGG8cfrfnO405If6BVbeZ0M++0YM0O97DKwe6QxCf9Qz+YhHkSolXKSHrS
         fcbWJ3p3KOuucvQxTA9CafhIHoB5Tbfvu6VEMG2zHPXOIIhtFhXFBhnmo9it6YsDfHfx
         N4tWA6tRJknC7CGrBrbBVELPBF6XKf0bckQLymGBHgRX/7Y12xuUwRNQHpxBQPLrf+Pt
         aIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758658373; x=1759263173;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S/aSYEPITl7MXFUBK4l9sWKvsSHUrdrtUDK4IHLwFVI=;
        b=lxk7C9ZYuBu4GQhJknXxQVhOFz4Da396tcD6DRwmlgI/lTXDDLIX1hRn1x16KtpSvi
         cN5i5bgKI8kFao9Xso3W71TqGU6IX0BlQZ7SmtINW2u0FAKvnpSYn2Z5iroqLvszSgLX
         9dP696Upom7khoWLjkEJ0zrK2g6s16KCnPFT0L/Q1tXnQNqmpORJILjpSyvbY2NXG6qK
         P0cNjCCywwVq+XB1gQTB1BhmUoRpBEpSqZPoKXCNlB+KeZ9LTrF0AfOZUmD0UC8/8C6j
         Tv+wThvtGFH0g4brNxtOr7iJ66iiEJuClXqTZwINX0DZ3XYfiF6qt5QDqe90AZSWcBV8
         SNig==
X-Forwarded-Encrypted: i=1; AJvYcCWo5HhtxPZeUJYBhVo8SSFhJetjjjYbYPwIpUAE2lR1bmyNHXKAUuR7UfKXauSa9++tpsH5y4NGCqIv@vger.kernel.org
X-Gm-Message-State: AOJu0YwvxdYVYP/wnSOo4+IO2EUi1PNlFLZddyLzY4oDcKjU6yyFbz5V
	aq4CHS5R+Yru6YA1FgiKxKi5oT3378iFiXV+glunh5wQV9F+lqIkv8Uz
X-Gm-Gg: ASbGncta1EfqayQS9gUT6lpZzzfZxqEIKcyh75/NMO5wu+LylmebBsd2IGuUAQL9YH+
	50oUZLbfbcvL9dv+L2IJyVtgJ5A64FOAm/9hsyXVBzJ5tul4qc1tA2WaJpa+uac1ZkOLBqtat+7
	9UBuIJdvoBLonAURSIp7ezLR8BPAFiuUKuS7Kw8IEhrE+awuwiltIBqkH5sEFfDpNq+nlBWN6w4
	8S9EABM6tT3KFvMWfeTl2DclchilvPprSU1TTyZgtLVRFzq/2StndyykiLCR/Aue/oiAIsE7mQS
	uEZ9aeSf9mle1DeXH4FDrStMxhvJrIUKFJ1KRBjlK0aOTxHO6Ue2QoXOUFgcWS2FtuUnnYC6MpB
	FciZJfJCgbjrx1oAI6W1/kROM1U3OEU7X9eppd8AIksYLm//zpefJFXXFvIIka1n9DL4CEog=
X-Google-Smtp-Source: AGHT+IEEsRLoHeCjXxyp+KHw/4kToNUaWd3xzTGb2VSF+HgIp8CNjCGOmpc4a03QsHuOffoop0UVIA==
X-Received: by 2002:a05:600c:4f44:b0:46d:996b:826d with SMTP id 5b1f17b1804b1-46e1daca1cemr38382195e9.34.1758658373435;
        Tue, 23 Sep 2025 13:12:53 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3ee141e9cf7sm24889690f8f.12.2025.09.23.13.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 13:12:53 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-pci@vger.kernel.org,
	upstream@airoha.com
Subject: [PATCH v2 1/4] dt-bindings: clock: mediatek: Fix wrong compatible list for hifsys YAML
Date: Tue, 23 Sep 2025 22:12:29 +0200
Message-ID: <20250923201244.952-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250923201244.952-1-ansuelsmth@gmail.com>
References: <20250923201244.952-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While converting the hifsys to YAML schema, the "syscon" compatible was
dropped for the mt7623 and the mt2701 compatible.

Add back the compatible to mute DTBs warning on "make dtbs_check" and
reflect real state of the .dtsi.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../devicetree/bindings/clock/mediatek,mt2701-hifsys.yaml | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt2701-hifsys.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt2701-hifsys.yaml
index 9e7c725093aa..aa3345ea8283 100644
--- a/Documentation/devicetree/bindings/clock/mediatek,mt2701-hifsys.yaml
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt2701-hifsys.yaml
@@ -16,13 +16,15 @@ maintainers:
 properties:
   compatible:
     oneOf:
-      - enum:
-          - mediatek,mt2701-hifsys
-          - mediatek,mt7622-hifsys
+      - items:
+          - const: mediatek,mt2701-hifsys
+          - const: syscon
+      - const: mediatek,mt7622-hifsys
       - items:
           - enum:
               - mediatek,mt7623-hifsys
           - const: mediatek,mt2701-hifsys
+          - const: syscon
 
   reg:
     maxItems: 1
-- 
2.51.0


