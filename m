Return-Path: <devicetree+bounces-95872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E3595BA4A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 17:31:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 055A6284CDA
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB6D91CF2A9;
	Thu, 22 Aug 2024 15:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TALQ1WPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE581CF283
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 15:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724340517; cv=none; b=dzwennJv+m8nVPUiOF1HCygqEVUaL4oQpQVg3/xmP+f9Gz1fEXjMdGAHmamJUHF49P/MIfNist6v1sZgAOQSaMhg7RzsvJ424d2cFaTLqRLv41xgU3iw042S7LH25nO58pmN9K+0/6jahxp9kSHIOQY1plFNrDO56cUtrA6jatA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724340517; c=relaxed/simple;
	bh=mG2HhfWd8qCb8fqq+XG4F4xVuNxXzEDJIM8/ycCUv/E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aconfUEjp1RcIO0IXNlwaJtPkDxK0kFDTODy2fF0wP75Ngwp+bJz7eBOmHhXo2nnZcEZZgCD2kki8hecwqA2sMUV36yEcizWv/XuH91SoeUT03OR9o0MG/b23W0qhuqLi86g2E4fHysYnoOnNOTkrh6fd0uuSMdYVBjhyt1Ojx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TALQ1WPf; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5a10835487fso1627195a12.1
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 08:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340514; x=1724945314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mGjGXMgxdEYAGo1GbGD2zE9hgBaB/Zwy6Dj9nf1BYt0=;
        b=TALQ1WPfsGlwnkAcUoHj25P9VKpYFU+aShb4VqPEViLtKjkDktCDKkujlRbazFzGh1
         rJrB9FsJ0frIrXfCw5BxgDbCwI904Z+3cg0ISE/ZIsLYWFaJW8rzMu/SIAMXUcRp5ZT8
         +pGkiBKnhlCbiIjiyl+rn4vtN4Jh8WCBaCpi+6CB5ubtAaXCf9/L8QqRn8TT9knwphwu
         a384FK2gmqWDdeSMb+7DRB8sTH9equo624fxXNZvIwpiA0aYZJ7n4dDbAmDkIbeex7QN
         4pANwMKr7a2weQdFgZua7+0NdbXJxxYpHDjZW3UOZX2Io776w76AkeLRS03twigAEPpq
         CRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340514; x=1724945314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGjGXMgxdEYAGo1GbGD2zE9hgBaB/Zwy6Dj9nf1BYt0=;
        b=Fw12H3gjElPLTvGbEy8S+Q+JMmn5zsIBFKe084NQA2t3AfQZt/wPl9qgIu0ryYq32h
         RWqnxZT5ePYdDbU/5OQSo6gYSuHAKcVRMMjjcC8PPUa35NFyRmNYlwBVtQbCh5xb1uR+
         ULOzsAUnLAI42oebanUEG3eBhh3csm4N/DoClsnjXTwYTFO0dd9pqMbitwsaSh7vI+gA
         Y2n9nKYhaaHoTgNdEld6EvNNgbvJ4x1yhEj5KXHLrP0Yl+tpt2VHscxO/n149N5pD61p
         +L6G0rjaWtwWbFi1f/ZbZFiEOaVAD6pXWhOavMPHVAze9BBJg0W0xAdVAqkCTA8vgRaI
         cwlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJLseA5xC9qIbMsWknnB/BQRz8WqBovULma6I4Svs+hC+SiRVqB1t1JzPYFIqTOn+WdcOyveJEHpB7@vger.kernel.org
X-Gm-Message-State: AOJu0YxhrT3ZZlh6YUbt0e06Q7GluuEynicrQSLKsfu6sbLDR8bOagjx
	G2M3SSnF092MffafeO3iTbJZ//mqe/WWFjg6cUMr6A4avya0l+aouIzAeJaSdyo=
X-Google-Smtp-Source: AGHT+IGJeJoxOq1tlRUs+MCEa5uz16WViXX/h9LB3VGUBluXlsLHOcyR6hbTFMMPgE0Rs2wdaLi06w==
X-Received: by 2002:a17:907:f74f:b0:a72:40b4:c845 with SMTP id a640c23a62f3a-a866f70378emr511233066b.51.1724340514344;
        Thu, 22 Aug 2024 08:28:34 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:33 -0700 (PDT)
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
Subject: [PATCH 09/16] dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
Date: Thu, 22 Aug 2024 18:27:54 +0300
Message-Id: <20240822152801.602318-10-claudiu.beznea.uj@bp.renesas.com>
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

The USBHS IP block on RZ/G3S SoC is identitcal to the one found on the
RZ/G2L device. Document the RZ/G3S USBHS IP block.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/usb/renesas,usbhs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
index c63db3ebd07b..0f84cba872ce 100644
--- a/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
+++ b/Documentation/devicetree/bindings/usb/renesas,usbhs.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,usbhs-r9a07g043 # RZ/G2UL and RZ/Five
               - renesas,usbhs-r9a07g044 # RZ/G2{L,LC}
               - renesas,usbhs-r9a07g054 # RZ/V2L
+              - renesas,usbhs-r9a08g045 # RZ/G3S
           - const: renesas,rzg2l-usbhs
 
       - items:
@@ -126,6 +127,7 @@ allOf:
               - renesas,usbhs-r9a07g043
               - renesas,usbhs-r9a07g044
               - renesas,usbhs-r9a07g054
+              - renesas,usbhs-r9a08g045
     then:
       properties:
         interrupts:
-- 
2.39.2


