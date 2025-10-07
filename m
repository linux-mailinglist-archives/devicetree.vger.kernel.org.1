Return-Path: <devicetree+bounces-224191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 945A8BC1860
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:38:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B783E3C568A
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAACB2E2850;
	Tue,  7 Oct 2025 13:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="pNuHoK4E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BC12E1F08
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844246; cv=none; b=TzdxIFebiZ4APgNsMXzxijh05e7mirV8kSjXgTLszTJdE9yvKsed/p26f9HIzIURkqh0/bF3oLxkSmZTDlxHkdCPIRtBopkGHo6L02MtE+5mBxKu8oAHVly8haw/sWy/OawVtL0JSJuB1V7XWyhOHmOV+P+h5osH7n1XOD5RSyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844246; c=relaxed/simple;
	bh=cUxUchjJqZ9HGjKYpIlmaz36YSiv2DD5GuVZNfeSgh4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QBZApPHJv3CiwQpGau0vM30eaNVmxYNS6tV79SgNLiJv7ERFp9WmvfC9n1jvjKTmDzyhWYXLViP/SQHnqPis7du5p43dtVnavMkmaw1V6PKycZeTYlFQKX6qz5QuN9iNrRLHAGzGmyZy/EOtHjHsNXVQRIwCi5pvHEy6u3kwip4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=pNuHoK4E; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-46e326e4e99so37852565e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1759844243; x=1760449043; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+4Id5q3wpF7LlskwSU/49ZXvfSykXZK8zUhTZu5WHtk=;
        b=pNuHoK4EaRV/YIqIh7eTgA0XjwgLnjhO/k6vNEEa+VqBj8DFUEo7zNeAfttkXOLbkR
         p+lS0zlaf0OE54dyUXn7D9B4Ze16kfDzUUg8x+sJheR9ZNrbOdEQbiOPyGEusHzReToB
         Pu3Y5k6HYn6sbOuKKynRdvW+WKjdwlOPlG1ryz1sjoX+asLgWh+1hWrd5U3zRvCR5wCc
         BD7Wy0PCgmmeS12YLWr5qucb0Spy8eLEdvAYKjWdS+WcjpRUMGEk/tjsMvJxmSYMmugp
         2KdEhhE18pEWqVhYfRn7WrBgNs/MymrvNT4iYnEsBInuwL/MUpHtVErR+OMoug51B+7J
         cprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759844243; x=1760449043;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+4Id5q3wpF7LlskwSU/49ZXvfSykXZK8zUhTZu5WHtk=;
        b=nQmngvE2h0VCq7Bjg0tXjRCxCEo7fH4vmMWsmJq4CLFxXqyTUbw+q05bVoIwFLOLPi
         8d8qz0VufPeQs2ocmdqOJahZv+z6FlXf3sZliDgWuV7MnKkpDLlsjSJWd+haRD+t5W4+
         GA7UAuT9HTojxqNz5Im086ACX3mCwUGD2RSIKrunzZvXNd49K+N96Uj+M1LEfKib3Oa+
         1broZqwcfVlg4t/K1+/5tGk1bkyVgpyU58BD/rSCsRiqBBO6kY48o+PXKHHuGrnWfqGw
         g8e8dz/FlsyoObN22vYB/6eQrilmc3WFFGpCWPW4bFy+DwLLnelnKsmcXo17e3uuur6M
         z3Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWJOn65+fwWEoaHUnkwfOxvgvsF/a1pduT/vWGe1bbQhqU8r4l7jNsogefp2ZrpDYUTyu6Rw5Hpkbyu@vger.kernel.org
X-Gm-Message-State: AOJu0YzUMb0D0XCs2+UNQh6MzitYv+IfdmckmnbYTMaRNyeeVqRCcmwT
	kLJ6P75JCZ1xFi44W58sO9WCuwdv15LT8YGGZYUJA6VkNrHwyV3kLrBwYSJ571Ft2h4=
X-Gm-Gg: ASbGncsuEPOX9BjbBTDaRShqAvCzM+R3+2+V0DZRb/yFgPFbGYi7bvenSNzASygnd6q
	Nef1UryhPjYS52GXudIm3xmVxdVCbE8eR6tN4sZ+VdPFh11J0cdOOdVzq38FFnLLp44G3RpIjY3
	IIFdWookMg7Mytl+2N5ScoXpPExjWui+LoHmH/njK0EnVK1CodKRLR6JOJ5fSo1nr4IConSXGoa
	NURDyORpugw217imJ2e8CzhmhmnLYJUNCjgq18xFgd5WhrYPgV/yCWf94q1eo9e5d3cFWn64akJ
	X2KnvEy+By5qWkmX4iflgq0OrqCaqCo1pcNYMukmIQSk1kD4k6L/wuq4HGfRB1RdcG1bL3CI3jI
	Fh8d9aB6TgFbD/PxCcAV+V+ZG2SY8aoRg
X-Google-Smtp-Source: AGHT+IF5cwjJHPiY/TZQqHJWoOYv2ZL9F/8mleO3QYxLBh5SCar5Iq8CK5vEUS5ZcoQX2NAXmukRMA==
X-Received: by 2002:a7b:cc06:0:b0:46e:7dbf:6cc2 with SMTP id 5b1f17b1804b1-46fa296e763mr15549145e9.8.1759844243119;
        Tue, 07 Oct 2025 06:37:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e674b6591sm272189625e9.4.2025.10.07.06.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 06:37:22 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v5 5/6] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
Date: Tue,  7 Oct 2025 16:36:56 +0300
Message-ID: <20251007133657.390523-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The RZ Smarc Carrier-II board has PCIe headers mounted on it. Enable PCIe
support.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- collected tags

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 5e044a4d0234..6e9e78aca0b0 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -132,6 +132,12 @@ power-monitor@44 {
 	};
 };
 
+&pcie {
+	pinctrl-0 = <&pcie_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	audio_clock_pins: audio-clock {
 		pins = "AUDIO_CLK1", "AUDIO_CLK2";
@@ -159,6 +165,11 @@ key-3-gpio-hog {
 		line-name = "key-3-gpio-irq";
 	};
 
+	pcie_pins: pcie {
+		pinmux = <RZG2L_PORT_PINMUX(13, 2, 2)>, /* PCIE_RST_OUT_B */
+			 <RZG2L_PORT_PINMUX(13, 3, 2)>; /* PCIE_CLKREQ_B */
+	};
+
 	scif0_pins: scif0 {
 		pinmux = <RZG2L_PORT_PINMUX(6, 3, 1)>, /* RXD */
 			 <RZG2L_PORT_PINMUX(6, 4, 1)>; /* TXD */
-- 
2.43.0


