Return-Path: <devicetree+bounces-86054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F41193240F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C53D0B2283E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 10:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5F0F199EBE;
	Tue, 16 Jul 2024 10:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oOdrnT2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA92C199E8D
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 10:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721125852; cv=none; b=VCrx03mq6BYJe7Yk0khQ/8oO+zi9sKIOZJE3u8ny9OQWjxsk0Q5OmhdRHgu2YV3Y7kdGDXwWyDufshIhQCzBFNAFBJW1dg7md8AI0/FPkuFJObN3nw7f6BdqwnGVzm1JxZ2bQDJQWaP90wUg9v2c+GpeRO5+97Q22nij+/1iNxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721125852; c=relaxed/simple;
	bh=kHYvG6Jmfou0a/3H3JPJCy+a3te9zYGMB7WNF7i3CEI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FsmdaG8orKgPKWn4HKY9XZx2eG2IsA6LjNrq+YS14SVLtid9gA05uRCPCzI7CfFPpYfOXtq2rp9Wj6Yb5k6uYYZk1BHa2l9qmm89i3iIoHHt+AmmPu7nzhylU7/vHSU7jTexYnRS26g2cdNLlkp/4D77homMqgZHwATH7Rcc21s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oOdrnT2j; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ee91d9cb71so54860191fa.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 03:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721125849; x=1721730649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SgEFJU9TqEeEi7v4UfFzMf6SUYm8BDlnIzCjSGdepnE=;
        b=oOdrnT2jlbBMpxuKx3C0WXIRN4heqySo5g9u45cJHalGbz/kK0wpmpgg4xzpStvp2n
         omNnvyDO2vgDq5lY1yniqfUOiAd784/GJIc00gk/zaxDmAEVIrIWW0tG5dC7R98Ui45p
         FFy2zXBlWdGKcoZWotI39hVEy3FUwQ4HorhV3tVhvwDqE5ENL6PF3lO/6MNf/Tcif4y0
         Uhz0iBxTnQpThrHwIzwSmdYhMy/DK8EZSSdB1whVlpYutT/pq7OUPBMVIXzjli0eGcef
         zHdHqzvlJC1K5wBu562357GNLliijHt2ikXQ8omDzAY37zdSlFu5U7C/vpN29zZsykXk
         vmxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721125849; x=1721730649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SgEFJU9TqEeEi7v4UfFzMf6SUYm8BDlnIzCjSGdepnE=;
        b=Z190TdgSX5QFoNbrJT+M6JmUxwdoSSurlzMsVpk7meEWGGOTyso8QuQi5asr1lqdMr
         rIYRvjImvVizQXSVtyHeA/SMY49085COePIRq1tbgIm5yWeqXnYAdOBH9riM43MKygIP
         jHNWqbLWaNMj7Vi6ZSD7hVPPi4BBGvTWt28d9/HO7v6YRi0tI9xMn6s1stN5SpFVmcNl
         wsCoz2J1NRmNQjwc+kLtws+X+suiQFHK/8leqlQvlZQZ5gpHiHa2elsxu+4Gpsi0MvHJ
         qMaDEqXakrFAyhbt7/UbETjxgV9xFStn+S5KbNKu7xiLWQ8l92B2VJnajthTYzfI+JW/
         rvkA==
X-Gm-Message-State: AOJu0Yydzm8JnAnQ1CAnCkKuyxgjcxDo0Dqg3m7oUZDMj20hNf+4hm8A
	LKVDEud+Cc1rC5CTAv0dbZDxi4HRjL9zdLOWU/Ru0SU80EC1Xkk8v+F+LBkTbqs=
X-Google-Smtp-Source: AGHT+IE4UrP8ocZy8DYCRi6ljSVc7gUaTDEwV0MlfP0Wt1LcKXTzKRIXgiUNL8wbFViSdsnBD2NBxA==
X-Received: by 2002:a2e:9ed9:0:b0:2ec:5699:5e6 with SMTP id 38308e7fff4ca-2eef4190aedmr11234431fa.26.1721125848934;
        Tue, 16 Jul 2024 03:30:48 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5e77488sm121546145e9.9.2024.07.16.03.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 03:30:48 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 08/11] arm64: dts: renesas: rzg3s-smarc-som: Enable VBATTB clock
Date: Tue, 16 Jul 2024 13:30:22 +0300
Message-Id: <20240716103025.1198495-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the VBATTB clock controller.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 8a3d302f1535..517ce275916a 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -341,6 +341,19 @@ mux {
 	};
 };
 
+&vbattb_xtal {
+	clock-frequency = <32768>;
+};
+
+&vbattb {
+	status = "okay";
+};
+
+&vbattclk {
+	renesas,vbattb-load-nanofarads = <12500>;
+	status = "okay";
+};
+
 &wdt0 {
 	timeout-sec = <60>;
 	status = "okay";
-- 
2.39.2


