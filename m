Return-Path: <devicetree+bounces-79693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CF77B91674A
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:16:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C53BB259C5
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 259F916B741;
	Tue, 25 Jun 2024 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="h/gHlTGI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776981667C2
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317678; cv=none; b=okBIf7SyhEPs9rq/3yI6fs00HvTOZEvM/h3j36ZGvJ4d0oHvMEbfNJ2Ddn7COPvngnOp6T9jxiIrWKPiBzKflkEQ92sj5m0CuIJ3tKYkm1fjXk+VFM0mZOHi1X03A3osgGokXNcjijr1WutPsdaV2nvv4lgf6wsOJzzs3ZFpORQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317678; c=relaxed/simple;
	bh=G+BtkmivEpWKO42JZ/b2nYWC06K1BWJ8enlG6hWRiGk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=V9H0pX7PkxPCaI1PLvDtgdNXATVgAwLVXoFCKXK3H4MffXPwqq/V2i6YdZiwM6FfkKycGeyAxVOCAIvbKxdlcl5lCDhE0hlonH9JhUCfJqgaRbR4343umgePtsuPInAA3K8dcm/RvpJmKnFJTYzQE2VJLdt1ogJSoz0eKEA+oY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=h/gHlTGI; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-354b722fe81so3634370f8f.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 05:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1719317675; x=1719922475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmpNHRRU2OSWCKd+hVEeWAEb1vupeZqAg8vsnXJHwhU=;
        b=h/gHlTGIDkFVEDFq1QHC6bePIxIIx2MqnlMCnhGfqXVYAJxJHaZY1ipDS4Xt/b5tAB
         tdA87XfdbEaUwquSKwsn6B9kKR/wuiNOLDJlcVue+jsJFYd01tKBev5ly+R6u9/5wLll
         aHH06pO5E6NIKeGN6V4YVStV8PObjoY+Hqgcc4EHGcg+Wmz91ec0069F/bxzcm4vzueN
         sc7v8FIgg7OZ0BTJw1Kxh11adZVuhM4nUUWXV7E6ZYi8E2DS7xcKFak8tH6K3ETDTAcv
         hbsPa8664U3Qz3kMy4WgfTv0MQsBFJJh7N0euKqrj+buN3N7aziFf4PjhlKkweYUYnfy
         u7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719317675; x=1719922475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tmpNHRRU2OSWCKd+hVEeWAEb1vupeZqAg8vsnXJHwhU=;
        b=OZnpi03vbM98CcWjHC90AWIXZMDuIR47tqh4L1bw7gcev7v1LD93p3KJeXNVRfRa8S
         XoCnoINoViboz03bh3TO95g5j77gpjt3yH+J8ulojTqlXP5Tf968Q1kky+eq84p0pWM+
         dQz+dk8SdQQ/WLuhdM14ZBV+oiKWh2woUUjJblKZdZIZzhMeN6e6D3/2ButBpdNmwwkQ
         wd+NoJ6e0IYGalzPFHYToQSVbOOCswzDpmJ+Qe/1oj0jr9fw08uuvLmXBwjlx62g4fUw
         tHosPPTcwHKmGkKFuTgy9NLlwnrV0kv6yOTB73Yku/YMy6GvHf67e0tvW98F5hxYOVaS
         8qsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm61AVSE0spl1dRuSFQkJxzHCGlfFOo4BxabnMBQraN2SmdCpdqguV/gJUPawa4/XzcyJ/7QdaO+V3kyDm4PHFQHyouRwzbMQbdA==
X-Gm-Message-State: AOJu0Yw+3FG1flKrb7p0ubEaHitBEjJoze4kF54b/pqwlB4d0kfHkyF6
	YmSs6n0f/cv7w7G2B3Inncw0DuhH6atgtXck8JeTJQIhX+PiYfsZFwl34BGWvKI=
X-Google-Smtp-Source: AGHT+IGAVzLeqxpQgHotNBmPQhFcmvugsk6GvG5kW90f7EiAkNWBop3X/RiZQeIe6Ry3+t47rKzRVg==
X-Received: by 2002:a5d:6483:0:b0:366:ea17:94de with SMTP id ffacd0b85a97d-366ea17953amr6038644f8f.5.1719317674869;
        Tue, 25 Jun 2024 05:14:34 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a8c8b32sm12798437f8f.92.2024.06.25.05.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 05:14:34 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 08/12] dt-bindings: i2c: renesas,riic: Document the R9A08G045 support
Date: Tue, 25 Jun 2024 15:13:54 +0300
Message-Id: <20240625121358.590547-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Document the Renesas RZ/G3S (R9A08G045) RIIC IP. This is compatible with
the version available on Renesas RZ/V2H (R9A09G075).

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- dropped the renesas,riic-no-fast-mode-plus
- updated commit description

 Documentation/devicetree/bindings/i2c/renesas,riic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/renesas,riic.yaml b/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
index 91ecf17b7a81..dde37a209b6e 100644
--- a/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
+++ b/Documentation/devicetree/bindings/i2c/renesas,riic.yaml
@@ -25,6 +25,10 @@ properties:
               - renesas,riic-r9a07g054  # RZ/V2L
           - const: renesas,riic-rz      # RZ/A or RZ/G2L
 
+      - items:
+          - const: renesas,riic-r9a08g045   # RZ/G3S
+          - const: renesas,riic-r9a09g057
+
       - const: renesas,riic-r9a09g057   # RZ/V2H(P)
 
   reg:
-- 
2.39.2


