Return-Path: <devicetree+bounces-124566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81D9D9440
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55D971610C7
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7EF1D5AAE;
	Tue, 26 Nov 2024 09:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="m8nlkNVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A4B1D54DA
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612889; cv=none; b=r7JF6/rNJiMk3ZjrQh0NViFyTYPWlBbYATpp4O5yQTc8DJqQ0Bh6Kw1vXIG4kDD2NIRpuJ6RyqEiXL9+I0YSb0iH12vJL7XCjTO7GAjGPe6TZu6Nc65Kv0CK638USWag9FaIFT+i7fC5O7ZB0W4ZsR/RZjAR47ci3H1cKrfK8Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612889; c=relaxed/simple;
	bh=65f39XdX+JOlbTHLjNv6Nr2gl6HREhiCkJ3xGoC26cY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oAUZnD1w4kU1MqqncMhhE4d74Dt7h1IucSiL8bkXbgz7v2ElnqGNdRaZVMhU3PJW/lBODIRw9RjOFRZStA/yDpfdF8rh7AONGNd2vX9b9VRGT40BiscmCj2d6pHNiPR5frzSLUFGnyz6F3/kSp0j7xc10kVOA+EKUvA/UIoL8JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=m8nlkNVh; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3824446d2bcso4767580f8f.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612884; x=1733217684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z4yY5kKHWBOgnydB5P9+GaDat1sMgmo5I0rPUXNWFHQ=;
        b=m8nlkNVhsaB3jK7XongGdX628G4LHMoP0RQb+Fy2eThGVVjEpYrIwzavXgidYzXjpU
         Akrc2K7sKR/89kelyfMJHdrFuLjNXnRe7qLuRhmkQL25PTdqWdrLdqfV4KJ7lKxB/Zpe
         AsBPGroAlW3ebNVbLZ96mDTSxMaeIFRj85CXXA4R0Bu6HfPNCyXQtgrk2t6HhhutSHHk
         Y4szJqEUgY19SJU1s1cXtwhWV2FIolcF7Op8oeYeKnpetH7MZTiTsWXHmQtIS9K2+2L1
         gyHrEC26t/ks/8oydQHYVQ7AmO/LpIoRpakONOsedYvRhYPxKsBRh5E0O5kgtRD89RGD
         HxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612884; x=1733217684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z4yY5kKHWBOgnydB5P9+GaDat1sMgmo5I0rPUXNWFHQ=;
        b=MknWiQqDyBhm/TyzxPWfcmB6rwPDWoua0ISKfTHwyrHkhuGPKUmz/r3QHhebxv0XPl
         Hn84PrE/yKYUTigOFsIsAjvbpQztDkKbBH/GdLThiFFvJfQUaDDnafoufuapnw1KKRgz
         uR89/iw2Ox+9yTfpAVOy/dt5BbPjq44cgbb5qiAVSG45IbjQl3lEjss8x/2WUCjeEzhV
         wn0mI2b2R7uKwDkg0dkePiiGKqTCBDUabwtpYs2rsr7Bc6P2P/bMEcFRboAwDb9+b/iT
         HMiJ6beBZPJS76ZHnkXWW0HqIyyiiksRuxWwNizWUYedL1xWeDXWW1Y81Mk2t5IboLpM
         6urw==
X-Forwarded-Encrypted: i=1; AJvYcCUAF3gvC9NtGeTtPOqZcV1IiG5bqc22K/pfgmI0Lmlnm7xEyoJMboqdJ0eXnZx6m9IVPxKaIJM47aJU@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxt0w/5oHQR5jpfRVGDSC7BEbLEcabJNSf114Fpxa1gFuxVjpb
	DF5AXoIkp/9vrYujxANXWEScf+wmqOJTYnSYKm2s7OVgPrn/u13wTqsJ6nvcuVw=
X-Gm-Gg: ASbGnctrbS1gbhP5iF2qSvjTg0+bIkrtcV5k/+XCD6MyCk4oQl+Ce9AwRb5VYpGxaZP
	IjSgbFw/lO0kTMIENI1GuZF/y129sqEHYtmbg9BEa4EIFbyuq5R5d8myhh5cFLIoKeufIGK/Xm0
	eziLHvi1e9mFICDe/GAtLBy6e9Y9WkxxSaJtmnb0WbG9B3aNOmWvzvHDB4Eo06Pq577xPveThJb
	vZsBqqNO125oIkQtwgEZvKveNJbzCR3M7rmELmk3lAH/GWCz8BXqhzeElJxST6CAHXjNldDRSBt
	V8s=
X-Google-Smtp-Source: AGHT+IECNxqnMdsMr8sIEyPl41XrbsF2Eglii8m3iIb2siIoiQVCnnx0E2A0rJ4JNGhhSHg/JoNpCw==
X-Received: by 2002:a5d:59ab:0:b0:382:450c:25e9 with SMTP id ffacd0b85a97d-38260b8ce0bmr16781285f8f.35.1732612884408;
        Tue, 26 Nov 2024 01:21:24 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:24 -0800 (PST)
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
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 11/15] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Tue, 26 Nov 2024 11:20:46 +0200
Message-Id: <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S USB PHY control block is similar with the one found on
the Renesas RZ/G2L. Add documentation for it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new

 .../devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..ae59c2dcadbf 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -20,6 +20,7 @@ properties:
           - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
           - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
+          - renesas,r9a08g045-usbphy-ctrl # RZ/G3S
       - const: renesas,rzg2l-usbphy-ctrl
 
   reg:
-- 
2.39.2


