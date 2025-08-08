Return-Path: <devicetree+bounces-202577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34713B1E21B
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B3E45802DE
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 06:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1850D224AF9;
	Fri,  8 Aug 2025 06:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kkvgosaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B8D2063F0
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 06:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633909; cv=none; b=a6RPzVejd+fXhP6lVa3ZWGVq4FTgyet+IIuYkfrzuci5Jmgu5PBMskio6rjDCLklkDqd1JkBxHo0cp96p9fZ/3lHUQIQPflaObOVPs1g7qyDejMEaOjVBWizgH/BNeM9zQH78MCKBGoxqWiIe6fc6RXxdOb+d4v1CEabnPW4+8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633909; c=relaxed/simple;
	bh=DV7qaSxkgQncKuv/GTzdbgjK+UuA/kfChHmdQOLS6kU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mUOKVrspxkzT3eA9mF3yEsoOe9nGvrmZL29/IvhJqbbAIOgu9drFKEM/bxfVnhYXwZbAgs8Mc43DCFffuPdiqRqZB7MZwkh/z/LKRw2sa0DR2ARRFMfmM1FOhndymsYfqbRad5hTqSteZHSbbXPv2xUuoB+XYaUDj4Huq70ouNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kkvgosaJ; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-af939afe5efso216991166b.2
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 23:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633905; x=1755238705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhbtdj94kG4NkUv432zTOJ/Zv8zWX0enR1AW1GYhXCI=;
        b=kkvgosaJAEmUps23nxR9V6gZEqubmaPBOPT/YlrZCUu10c+BtK7DlqmY58XwU5CFdb
         HadjUNU5JbD0i+cSlRmx2Ou5JL5MOmppi0R42Y0vqUgLle1hBfmaCXgnp/YsQGT25EoN
         tZ9rSsuvQWj2BWbn47z8tVkyJbiw/S2QK5nTS/+vkvTgmwR3hVE+tFw9EN7t8g1KBUyI
         KF1fJsMMoFZb1FFFg+rZvrpUpPXOKiUNUtQd+DFQgbJzYCpOFwJ53hBx6U/jR+iz1QnK
         T/L7tn05mkzLafeQeTC6VudLuT7rY7yFl1uobY3JLVQaVEWNm1yVrSMLXRsGQZrzN2Cg
         jy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633905; x=1755238705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhbtdj94kG4NkUv432zTOJ/Zv8zWX0enR1AW1GYhXCI=;
        b=fsgjNL6DoCg9H98wGh9715kRTkQvEDYRJbnz+5WjcR2psx8Tnh0fZXF9ZnIp7nNc8D
         pCR4geBivihPga3mxIkSGlhehxhI54Wapcjkl6wVrhB1KXdwfBq1bj2EeyIr2yUu9Vq9
         qrRSjs2vgnI1rJqbNk+XRlsTiBhO7mlIrXmHtjae55J76/FkdrlRFRsG8omKr8V+vg3k
         XopQsN5LtzVwepbIce6CpE2lAYvb0JPHPvACoS/VYd1SGd4/kiIFMzFmF2DCq2x0e7OX
         q9NeTFV3vtwxiS/08vGnetC1pZVNm+6BK+J1XK9ONyAEcTIGxeiF8dxZZv+KDWfGvDdI
         iRrg==
X-Forwarded-Encrypted: i=1; AJvYcCUokmkahPeIz31frVpra6IwO8iRcQb0BzUyNsrcl6ZVzxj/6MyoieJ9DGdivwpV45VlOelF7HvFLLLh@vger.kernel.org
X-Gm-Message-State: AOJu0YwW96ceVZlr8FyVHBIXhFMLYHbBr/awlJzU/pZ5Ot1Co3Vt4oOQ
	UAWFJc41J4eUDPamXlbH8FBQ0PT/Lu32c6yS/GUB6xSGgOzKPR9zFZp8Gvmvn49HGSo=
X-Gm-Gg: ASbGncvlYSWcp0jEd1aVPMJWRC5C2N559iOX01FP4b0XBVH3/h8abYah8uaJkqaFsxh
	xGWkR22biD9zTfS5+bFdSClsIOA6HBWEg+hWzoCxPHjtDbrHgsA4pnY4qKAemwzxwxj4ZAnVNBN
	NakrVu6wBUhKYni2DcJq/DInwh5jcpaDMAyCYYD730nwS9uJxZkgu/rWXSyj5v4mJbhhpIZNoWb
	UUTRVEWCb3koyj29Xs6vqHQBScCXumMy3ZXLMPI/Sgo9HuBPqv6WoteLFT9G6WjilcajNKNW4UU
	Tw1aIQUI2L+Caxuof8Hvhi2wGTc7HManisrpMvxt8tiUkggQ9KcfVV2LxPLINnDs3asUpxvVfdb
	6Xjyhompik838PIIZzRilm2okLZyQE+RIAymZJbaAGQYE2vr2b6YW
X-Google-Smtp-Source: AGHT+IHjyrVfPv/9Ic5LGXUUAuL+aPH600lqb/NKnTolyX4B+YeUK5CzWrXMgb4RJiQ3RI7UIsodxQ==
X-Received: by 2002:a17:907:e8d:b0:af9:a53a:6b38 with SMTP id a640c23a62f3a-af9c63d4439mr171415866b.20.1754633905418;
        Thu, 07 Aug 2025 23:18:25 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:24 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/8] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Fri,  8 Aug 2025 09:18:00 +0300
Message-ID: <20250808061806.2729274-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f45c5f039ae8..52d777057281 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -112,6 +112,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


