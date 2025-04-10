Return-Path: <devicetree+bounces-165435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE297A845B7
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:09:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A8A49C21C7
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCC9028A40E;
	Thu, 10 Apr 2025 14:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="AjHQi5o/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD245284B3D
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294002; cv=none; b=qPPyn1vX2aIQmv/kcOFjtc9A7I4YeWEr0sBq5duAaMoiR9J0Wegde6Tai4tkbe5Y0ONYxPsHERbhGrq9VurB+HIY7fTPJPmdtiH5KVSLojl+pjMYxVFCQyWL23X6FrSbbaI055s66MXRXS17jC3pXVz1TBqzvUIgZ0Zio0lNjOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294002; c=relaxed/simple;
	bh=70O+m5jMJQAgg9qe/fZx0v9qZJUtTNWbcE/fmW9fTHw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WDJ9V/QQ3NsBxTurnGBeH952PNVENyBX86LZAUStvaz1MT6tjQiTQOqNpByVcoH5y2eR2fyoYCPZrR0YZwShLJJIVUXN5v/7KS5/aIFqXempxVDw6ArLdl3LX4wyRyXvHMb7U8P+4AMLfL+qn9u7pljUyQSVI/GBb8NWZzZP4gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=AjHQi5o/; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so7423515e9.1
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744293998; x=1744898798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cqmxZUvPf6V2A1Cezn9tnOYvckuzJKW+Y/kXwIn43p8=;
        b=AjHQi5o/hILZFwDbG7swqyT6AchVDQctb6uGJqopwsBDZiXdCkxoY0nx8nIpakOGWt
         MGhlGlqe7P5ZK0E0ul7J5VGQkjgG6kjs6xRZasrA7Ab2CZFNrDTmwoRwX2wso2CG8izI
         9EmmDEbxShbeQNpadwCJ+uD2VOTdwWVwL716j6acSxWyNBzLI6IdNlHuC0wRY6+92Sw4
         Q86U6NIU3duTyHJTNwqeOcMWPuUI5gMl3bqTdLjol1XiLv3YTMH5tihkOm4iINcv/RmG
         K0afDbjfCnEDPFUr9eyG8ge+R35hcA5CvG37/Tez8v/seeDBGnMx7k1qObjwODYYgM4G
         DXXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744293998; x=1744898798;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cqmxZUvPf6V2A1Cezn9tnOYvckuzJKW+Y/kXwIn43p8=;
        b=eUlN9rMWf3v+RSjAe5YZLgiH97QzrrLbWX2i0Xcz/Itajxr1i14SJPyByu0lWz/Xms
         0BupKMPbn8LqWC2dxw16dExE9ObQyRSOlgsMmUgk9OaXuUGsRcjA+fhQ/q1xn2BDFa0x
         WFNToOZSIctsYD7ZrM3fqwErybLZLDIp4gWo31OYc8qCkJWT4p6hNU1ussYzADN1yyJ7
         6a+vVKFwrSqJ+RkG7LrkSV9VAy5nuT2Gt6Xr+5TGl6GoEXmHkhSk/eCmHNBiN32xdMP/
         NlFp76sT6GyUFKMycKIRR3o0KPNhSaFr+yivY2ZBsOMJfayRx3cyG3ZBep3g0DioaRte
         jkjA==
X-Forwarded-Encrypted: i=1; AJvYcCVsXO4BmNLibP9aVkpgoN4AuTfeJylBmzQ/tOBQQtZCPIX2X8cyPEy9hrJN+JWw/VLh9JJUe4W5tOS7@vger.kernel.org
X-Gm-Message-State: AOJu0YyXNZg3F43jbZPcIMMonK8aiem3gVLWPqcUBdyIT/u3vPXtuc1T
	4q3epX/UL1fqX3Fkv8Sro7krtD/xl8MC2tgNFlV5skagcofuwkXycm7GY64QkfA=
X-Gm-Gg: ASbGnctwOTFcSnCD5Lkipnya7MUQpNosEtINDJsZsOeY7lIkeASfYmS3awVwHNeDk3X
	flh24i5LdPYkGyCf0C/hs+n7PETFGxakePqLEBwXKaTu85GR7Y+meHxhbb78ZVYWrUC/9Jqif5I
	0LJLfX/lrZOu7ez5d7FmuOYts2XtbdsjadJ2sP7uygaGYQwJUs+L3kiWtmTO1MeepfeXlYNH6k6
	xAobAcUvtsIEwx1+lz1wHCohrHDcV4fimbmSPo6Yy+OpoxEdSoB11od8tDSowFjAmhGOuh2iq+c
	5pz1OINl1ObmjYCmIekkEDl7QeWfxMK6u5/+hLGxollNSdfjISd0H4Di23/PKRDBbp1l3Q==
X-Google-Smtp-Source: AGHT+IG3Kkwoiog4nj2/Gc1J31GMD5PU0317zNvjLp4mPJY4J5I/eRdRLPfLN1hG/KXOYT+0675X8Q==
X-Received: by 2002:a05:600c:1d20:b0:43d:160:cd97 with SMTP id 5b1f17b1804b1-43f36c78b22mr2008515e9.25.1744293997785;
        Thu, 10 Apr 2025 07:06:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:37 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 0/7] clk: renesas: rzg2l-cpg: Drop PM domain abstraction for MSTOP
Date: Thu, 10 Apr 2025 17:06:21 +0300
Message-ID: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series drops the PM domain abstraction for MSTOP to comply with the
requirements received from the hardware team regarding the configuration
sequence b/w the MSTOP and CLKON bits of individual modules.

The initial MSTOP support for RZ/G3S was proposed here:
https://lore.kernel.org/all/20231120070024.4079344-4-claudiu.beznea.uj@bp.renesas.com/

There are no DT users of this abstraction yet.

Please share your thoughts.

Thank you,
Claudiu

Claudiu Beznea (7):
  clk: renesas: rzg2l-cpg: Skip lookup of clock when searching for a
    sibling
  clk: renesas: rzg2l-cpg: Move pointers at the beginning of struct
  clk: renesas: rzg2l-cpg: Add support for MSTOP in clock enable/disable
    API
  clk: renesas: r9a08g045: Drop power domain instantiation
  clk: renesas: rzg2l-cpg: Drop MSTOP based power domain support
  dt-bindings: clock: rzg2l-cpg: Drop power domain IDs
  Revert "dt-bindings: clock: renesas,rzg2l-cpg: Update
    #power-domain-cells = <1> for RZ/G3S"

 .../bindings/clock/renesas,rzg2l-cpg.yaml     |  18 +-
 drivers/clk/renesas/r9a07g043-cpg.c           | 132 ++---
 drivers/clk/renesas/r9a07g044-cpg.c           | 168 +++---
 drivers/clk/renesas/r9a08g045-cpg.c           | 227 ++++----
 drivers/clk/renesas/r9a09g011-cpg.c           | 116 ++--
 drivers/clk/renesas/rzg2l-cpg.c               | 498 +++++++++++-------
 drivers/clk/renesas/rzg2l-cpg.h               |  68 +--
 include/dt-bindings/clock/r9a07g043-cpg.h     |  53 --
 include/dt-bindings/clock/r9a07g044-cpg.h     |  58 --
 include/dt-bindings/clock/r9a07g054-cpg.h     |  58 --
 include/dt-bindings/clock/r9a08g045-cpg.h     |  71 ---
 11 files changed, 622 insertions(+), 845 deletions(-)

-- 
2.43.0


