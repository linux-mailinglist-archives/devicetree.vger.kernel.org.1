Return-Path: <devicetree+bounces-84997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5521F92E7A6
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 13:55:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F664B27966
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 11:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D1516B3A9;
	Thu, 11 Jul 2024 11:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OoxcBqpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3B116A94B
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 11:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698762; cv=none; b=Acd8W7mv6N3198Bha+X+6MMelvZm2V4xMyubrk+agJYNKzWbVlT17t9Zvn3hwUv6Z56PWwtsFD8arPZFx4bpPvFPZqvNjrZbqtF7DY8RPXE4W2dQhyAVFoCOyFvFBKFtP77wCwrT+cnGGlgNBWzBUmoAdeTThZheQ0At4VuZtYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698762; c=relaxed/simple;
	bh=95locSstQZk+WQ96XV1jBWvUwnxbuUngt/qXjiWkMOs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=szhQz44SEqqS5jKYGGYGZXrcY398d/IioT5O8ibz20fUBQgKuSrOz6Kzx0Q+kN4e+KMF1ysmGcAC9drFm2deNqZqgxv6zZIGBpD0SsDgyEzcjjGAoGyrjs705tGaXHF2WdSDHK8Oio9wsgyLYjM2LEUJcovHppWCLVWfl6nVeVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OoxcBqpO; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-367ac08f80fso367646f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 04:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720698759; x=1721303559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F3pGGFACRfgSIVGH5tKVs4BFUSzbWenTGaIvHE0eHnI=;
        b=OoxcBqpO3XAG5tZvVnxya3uppNd7TVdxPkmIoKG6U4z6X9YZOxiEpecckzXtWp+wiC
         1H1mZuGGnOykWRMPDmKU1PbSbMB2u69CwL7wr/HXtIJO3zQ5ntHZCDYZLgbHVOksaqUC
         MgD3LUePkEh9V28OPDIERrCHRalXtPLDA3AWufs3EHxIoI4OLrJ7Cn/QshDSfObgv+9y
         wCf0HdGAGrEHtktxhb19l9qYi6ktRtrY4LfIpwt/3vg5nkFzGjwd73JmgEsT5GbcIn/l
         UShN46xI6/kLbdcEXXTR9axG+aPiQfsfJ3oR/hh3G0AM1UfqDkdf6zPYW4ldSaSbIRPq
         9eyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698759; x=1721303559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F3pGGFACRfgSIVGH5tKVs4BFUSzbWenTGaIvHE0eHnI=;
        b=eYl1NdKXRPU7mNO6/+7TplqEh1ZI+3PiYJJHuLKa6xyw3GPH60wkRLCIyLiTvdtpSo
         K19K1F36ML2JDQw7Y+E4G8Gj53uhRiMYo1DD+jcrrMS3CcyQmygO9sETRAY8qJeqxme3
         vwcPIUG0tJd1pEwd15+YbX822WPQt7iL2CN4KwvuG5i02cMnJDVB9jRfSSnm6fLmZtUc
         SKw9kcTMc9+Jpkqt8x8BvAZtupXMIY9vZNN5gryjyqvji8SjKpdwutm9UHk9/lW/J55t
         j3dpQo8gwBAQY0akXtXwvyjCQfJT/13vPwQ7tWR9WoqJFzJFHgcw3gN0zn+NB60dw5Nl
         Z9gQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7Wul0twf6W5CZGVmwT4yjcVZEGHQClomxb4UhPBdkyYvuvYZ8S55JlDjnUXhCB2PzI2m62zcHvD7sM6zwx55LX0AMi+9MzSJCUg==
X-Gm-Message-State: AOJu0Yz9kr9tZI83VyITgfBEeq9DS/GORcS4O5f6KJfRShncHiPZU09Y
	aiz+YgLAzu32CBCxQIZsePOgocIKf8y1lt0eyrwdygNo0Yd0TZ4jTOHySfNL9bc=
X-Google-Smtp-Source: AGHT+IEPdVFkMH+rbfa2Od7mb4j3MtN3RJb5+lTw90ysggtVHZ6xUjmLWMzoFfuJ/73Bd+5oZEDmug==
X-Received: by 2002:a05:6000:1814:b0:364:d2b6:4520 with SMTP id ffacd0b85a97d-367ce5df304mr5840712f8f.0.1720698758857;
        Thu, 11 Jul 2024 04:52:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891cesm7615728f8f.62.2024.07.11.04.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 04:52:38 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 10/11] arm64: dts: renesas: rzg3s-smarc: Enable i2c0 node
Date: Thu, 11 Jul 2024 14:52:06 +0300
Message-Id: <20240711115207.2843133-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c0 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index deb2ad37bb2e..7945d44e6ee1 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,7 @@
 
 / {
 	aliases {
+		i2c0 = &i2c0;
 		serial0 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -66,6 +67,12 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+
+	clock-frequency = <1000000>;
+};
+
 &pinctrl {
 	key-1-gpio-hog {
 		gpio-hog;
-- 
2.39.2


