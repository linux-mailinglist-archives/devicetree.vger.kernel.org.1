Return-Path: <devicetree+bounces-95874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9FD95BA57
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:31:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E3351C21C03
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822821CFEDB;
	Thu, 22 Aug 2024 15:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BIZZ65t+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9721CFEC4
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724340522; cv=none; b=ASxpH+F3UvAaK9Ezch3q82vVlZM4L3Wm99RCO8p6XY+89dXqibydJXjMYiYbXXV0qSB0X10yaJqAW5rkbdxlsoSZgWGE2RPQqyGqjmLNeM5ZI74ZS1GHprDYs1M6xpzJ8AW2QnTJ3/KwYWodzOOrnXUhaZOAR7p5tqp4htqS+ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724340522; c=relaxed/simple;
	bh=yuidYBMLBf2+VSQJ110PhBMZfyJYFJPb3Vp+ConTnzU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GPy7ioq/5Y13RerNp/WYBY0x3pWPuZ/VH/psYda/Pq3j5s7gPTldqI9V7uw7S0CmX9PuBLX19wSDNtQvPDbd3ds7oc0hysa7zCfgzhLRNv9CWb9vUnhWsOeW5nkE1jtlmBnet3JgzwZpNLeEUo6xTfNd8TY1Y7OUOxeieidW1Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BIZZ65t+; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f4f24263acso3194851fa.0
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340519; x=1724945319; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EG858HP8in5mb9F5t+mQtv5qilS1TpleLRM5JdIQFA=;
        b=BIZZ65t+EBCwelqZxt7RgTyWX051Z6YOYkR8N7yRfgSbXa3xS/KwwTb5a90COE4XYU
         SaamMYZuyLZt7wLewii5p4LHIY5cRvR50pOgr9S1ycUU08xOXOvrC3gtyv0p+MQBMsD8
         XscARBcGkSNto4N7IeE6K8lxYSalwrJ7AD1qqU2S+cbrUiOVji3Zs1QW4cAE0d0ZcYzQ
         S5jKxWiy+M6y9fM8PoRc3owa3t1hyc0O4BjguGpzfVx3zDprxtpNTKSi6GtDa8XpLIwu
         IGIOmMvk0MhM7HuN8fr9EE2p7T/+Yf+1mhy+WvIDwRYPZEcuTXs9BbbZCldtC8Bs1QAg
         uxkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340519; x=1724945319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0EG858HP8in5mb9F5t+mQtv5qilS1TpleLRM5JdIQFA=;
        b=hDF1iszMZgnyJuc1nV6Wbu3Jj8IS2mkL5VkL5iP6p752xP7g0UIrvhlVMjrVPr87op
         FjWAryPtdAQ538o1eEs3Rjdl56+rwZfTIbPFOC68HNc/kTe61YPcDqcLmKiJs6kfh8TS
         +V7AryWOjck1oYNys/CCpEmpppcbFhn3pK6iI5skdrhdjiyemdCoQvtoJk/AUJ8XFp+9
         t39vtY+xlmIb/IyiiRwCyeDn/N30AFyHvhq80oYyHTuwPNmAezTmqPBgVIRFpf/pEAUG
         0j1BWLwvJ2AjMCqINDyheV8Nuy7PdMcgmmHaPCvwjZzAn6k9sSK3JTfjBaUmD41LMoWs
         E2bw==
X-Forwarded-Encrypted: i=1; AJvYcCXTL7v1ObsHpfDuQqqHtWpr30fNs+CuzyF6qsbupzNPRalZYDamjd5P3oB3M5RgOd09zFZfrIEq3Kfh@vger.kernel.org
X-Gm-Message-State: AOJu0YwAE7HGpTRTqUu7jzt0Tv+hWqs7Tx3y6s2xmIf8Sak6FGxY1sSD
	ZMLpHuF2iqn3RH5NWdwOtCP9wWmhqxWpE8nSIuV02B/CurkhylpRom+vmtTf6gI=
X-Google-Smtp-Source: AGHT+IHayguZj8Wa8CKYZZKYCnPQ7ddSFCBCknAgIFfJUW2xU8Ead14TNkyeRYtLahQze0o0yKHgSg==
X-Received: by 2002:a2e:a988:0:b0:2ef:2677:7b74 with SMTP id 38308e7fff4ca-2f405f0057bmr21390771fa.41.1724340518917;
        Thu, 22 Aug 2024 08:28:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:38 -0700 (PDT)
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
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/16] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings
Date: Thu, 22 Aug 2024 18:27:56 +0300
Message-Id: <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the RZ/G3S PHY bindings. The RZ/G3S USB PHY is almost identical
with the RZ/G2L USB PHY. The difference is that there is a hardware
limitation on the max burst size used when the BUS master interface
issues a transfer request for RZ/G3S that is configured though PHY
registers.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f82649a55e91..af275cea3456 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -13,7 +13,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: renesas,usb2-phy-r8a77470 # RZ/G1C
+          - enum:
+              - renesas,usb2-phy-r8a77470  # RZ/G1C
+              - renesas,usb2-phy-r9a08g045 # RZ/G3S
 
       - items:
           - enum:
-- 
2.39.2


