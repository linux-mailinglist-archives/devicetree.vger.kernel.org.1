Return-Path: <devicetree+bounces-113142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BA39A4C5B
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 10:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0993283157
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 08:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E0FE1E1028;
	Sat, 19 Oct 2024 08:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="JC/05x2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271A41E0DE6
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 08:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729327694; cv=none; b=OJnAYs5l8IV9zrRCKWUEWn9uPs8w2AMVVqAJLNJy3yNk6Au+hzK9rCAMi38wyi+7WKkCjXpx2+bhFTZmtG4vDsyluwSEKHFrFWbYeB4JrIoAcyQQ6Emvd9f0QMOJ9EwVoJADzL7+0BEsuwQj1wxslawX2wjOQEHqpQFK0HofSCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729327694; c=relaxed/simple;
	bh=QkgHvw9IBOeGPAakrzCTmrkD96bz5qPFYSsEtoUc+6s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S/68KbNlDQvnIDfdDWyI2PgBQepycPxpxxt+oeM1Df/qkz2knsaYgb5O3w/mg9TMB5vkvBv8mYEqDRpL0T75GCeuTpHqh4djzIZUjSf0CNfxtfM8vwou8buOcXYEbzSEuxv7/mj9ZISp92PVxkqUsGVQZQ611IXEIa9KBIKH3dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=JC/05x2I; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4315eac969aso15005125e9.1
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 01:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1729327690; x=1729932490; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1BDFdSyg41e2LABdQN1el7m1GZPq2Uu7y0UUTGsVos=;
        b=JC/05x2IHqKMY4XIqE+GHpMTkBvG0/11CN9YZc3OVSjOKYWFvQ1atbCGQaWR+GH59t
         QkZz4ydXhituuzlsJ/l31CPa6n1HuCUjFdebymIKmmL5wg3/wqwGUFMw0CX4NlRkX8qq
         Sd+5hCBt5o1Yv3jZ+y416VU5R3oH/rCdgd6TjG+FelftvsAsACKXFVxUDdqQjOW2ABny
         tgjIs6e+Gq3Uqr+IR0Xcwf8bzvs2m8JWl9SL4tkg1XnPVdc/XTAEqc7Sr9CQO4MXGTmI
         GVL7DMuGZS0pPSXJxA0k92zPplTIEg7+N1jgULjon7iXnk1ECU/SVao7m/vrKAYvhwiU
         HxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729327690; x=1729932490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1BDFdSyg41e2LABdQN1el7m1GZPq2Uu7y0UUTGsVos=;
        b=l2PXkiXT0Z/n5Ch5PIbt570O3UE3YB79OmfgEPSjm37qIUQIVeTXURnHnIu8O4dewK
         nEgYNNhcmu0SSY+5oweW9D4F5qTi0R6FVaFJZvAOdSNHPkLOi+B2791eEJToOo5gEGiH
         7tQEm5mWS8thIrCuBh0CQfC9DuC8g5xYrVXKWlE5cpTsDb0CcBoBjl0TD145VufSVqBL
         W9rW9NJzwSkmb0aiNiFFqfAvAubS173G/0On3I7wMqfP00pPk/Ek5RWpFFJsp/qvJjnN
         +CP3zT4kKUsGReJMlO1jw/zwsne1kn3e/HC+qtjelPj9x1sAq9LwiM2exL3B/vT8SFCC
         LavQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqOQN5x43YQi61sKHjoaToNQJ0Vt93e870r/RdYNqAz5Udr9tRGiXdQjjpJBau+BSRzCtEtGYkYA74@vger.kernel.org
X-Gm-Message-State: AOJu0YzQE/GJHKwuxWos9BkSO2VFVF+UQfm1ItOl8z4uMM981iNIr1/1
	ARcOMJdcWnTWB/PB/BJEW2PjHppSs/mpFaXsgc2UNyDgRQjrz+yompavwIDe90U=
X-Google-Smtp-Source: AGHT+IGHzPKJDiCrpkrv0zEGse3U3VvdpNmMFQCy8z/QXuS15hpNd6JHm2gDYDjdinG8u1jiTCFuqw==
X-Received: by 2002:a05:600c:3b85:b0:42f:84ec:3e0 with SMTP id 5b1f17b1804b1-43158721801mr65450245e9.9.1729327690371;
        Sat, 19 Oct 2024 01:48:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf0eccbasm3898731f8f.81.2024.10.19.01.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 01:48:09 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 11/12] arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
Date: Sat, 19 Oct 2024 11:47:37 +0300
Message-Id: <20241019084738.3370489-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241019084738.3370489-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable RTC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 6be0ffdcb87e..939820a925d6 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -347,6 +347,10 @@ mux {
 	};
 };
 
+&rtc {
+	status = "okay";
+};
+
 &vbattb {
 	assigned-clocks = <&vbattb VBATTB_MUX>;
 	assigned-clock-parents = <&vbattb VBATTB_XC>;
-- 
2.39.2


