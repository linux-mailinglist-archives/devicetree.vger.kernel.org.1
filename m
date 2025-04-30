Return-Path: <devicetree+bounces-172366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F21AA48CE
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:41:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2977B3A54AC
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D3025D55C;
	Wed, 30 Apr 2025 10:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ggiA4Hxo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7308725D544
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009200; cv=none; b=YKWD/VT/C85eR9GGxJep425K7T8uGypBizgzl858kP2VavSEQ5UFBHWz0Uewzz4ssQiJz9rweWvu9ouE3fe9bAM/0y0FKwO/RqabEdbZ5PK0tBvIi3GqeCby6wyArL978gxJMWEywymYQg6A+fSrd7EGDYKUF1jUZG6i4DxPOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009200; c=relaxed/simple;
	bh=EGBMN18CVdfmHkc+brVcq+MVtXLfo7+2eoARAWS5P4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j3evTiCP2xnRhJg5JAvsHG7BWNI69fpdh8zLw8l5gbkn99gCQ0kCWHY3ilLQhUqTs34kePlPjhbpVIKT+HIYG70O9MBEkjgajxIPylzN+HGLCdyV3ntKW+KSNz+s/BwHZbq0njpBtc9wQYZ949NvPEto6i3GokDduu6zgTgpZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ggiA4Hxo; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-acb5ec407b1so1141688466b.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009196; x=1746613996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLzaKZV14Vn6EMb9E2bHvEtZk0V2ql8+6m7239vNBfc=;
        b=ggiA4Hxo6OuwqDkz3I+mb/Y6975pyRApoNvAqYV1u1V7Bx+45217nLDBqPT/YQMzJ8
         IyAuOo7S/DQoiXfmzHTWe70XSYkgpOaOQa275zJytBz15KA6UJiY3l2expo3O6lc3NWr
         zqpM0YT3aaFc+soUoBnmj1/Ins92ihEPwFo99iXeiFIepqw+O+T8ZFOle4uoOtIf3ddH
         AE371+2rHn+8BZ8krOa4w28GE7Ve3Sj4Wb4wAOfMRifRzgdM+p5qBx0XFMyQq3PsEUi+
         AZqEOKkZsXYeSWTe3qkLuXj2nAcKUoODH2NIbWKC2RGk/QP3GEmqpxPzTvb6btT6rriL
         Vu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009196; x=1746613996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XLzaKZV14Vn6EMb9E2bHvEtZk0V2ql8+6m7239vNBfc=;
        b=qB1hiL4AabIVnQ4hn0u1DE8Nk4BGQVrr3Q49fMll2gSedq3PNyEO3gGYWBcejisw/c
         oqBzs492FOpvUCJSILKQSltcY+WarlwuJILTjjmD3zunxtvAFAdwmOR7/do3Ma1BTLcT
         9CF7cV5hxkgAbh0JfRW5yesG1DuoXaC9Ia8bqqjefDLPC+Nv1EBM0oRC2OUMwHMNFEth
         HAHyPNkKvpgPLV+xuCWhzNoi+ta4GsCrDTT3hbQkYDbwElTfi/La6DfqT/YbCJn8LGPb
         m0Yb5ugjKUidest030GyPXThMc5dyXjpGymxHwNgmJYvmLj/9nJ3pzvayM2MNq+cDH5K
         OJ/g==
X-Forwarded-Encrypted: i=1; AJvYcCXMPb0Fichc9Lk1uGfbuAnpu/Wj7o/5TtAuIE5qP03lFqQOn3vVqIDmlxusmwhpu9xJqOK1/C+CxgdD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc/niyJM71vpFJiM4WmNetQ9XIadu2oXB/6BSH8OXsqmpSAsNK
	72rUey8tZ5iZQXeQdi7LnB7UxSKbKQPUvQxzZCMaSf95p7djF4P5O+/edQxScAQ=
X-Gm-Gg: ASbGnctu2FR0huh9TnOI5wc381lBxbiOGxj/DdmAQeRpc8fI2SvGyuq+MF4ANZhE3x/
	HAd44tpaAYvqQx5W99gW0m5Y4tFCw8hlq+sXJKja84DrtUbxlz4QO0IiT5RCkb4zs8+H9jL5VPx
	eyX+Anzn5MjAPmEmM10Tk36nELj410RqYNavF/HrF0ens6jPmU6i1Na+KryJ9dyH9jV8T7bNsek
	JyiWWbAOFKNw4HuxmvFvEyr5vrxy9s5UyPeYka1kizddDu03JugWMV8o5uv5MNtq4Y6nOfx4Mz1
	/0e/bRZtuO6qc9MapoxujGX6gtwK6aIVkUyR6l2tFO8UsVDeINueD1PhbN3iXatWe0DDfNM=
X-Google-Smtp-Source: AGHT+IEKSM0IXh8jKv5O+IVSv4mJ6z4oh82fv68+fLwY5atxsSRsGcvPXRiQe2VBDa9mA8yPM7H+KQ==
X-Received: by 2002:a17:907:3f0f:b0:abf:6aa4:924c with SMTP id a640c23a62f3a-acee21ae83amr165748366b.17.1746009195599;
        Wed, 30 Apr 2025 03:33:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:33:14 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 7/8] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
Date: Wed, 30 Apr 2025 13:32:35 +0300
Message-ID: <20250430103236.3511989-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
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


