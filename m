Return-Path: <devicetree+bounces-193156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEF5AF97E3
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 18:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAF6A4A260E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 16:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524402E0900;
	Fri,  4 Jul 2025 16:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kNsxm4aQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B42DC359
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 16:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751645695; cv=none; b=sjzuq8JIuqVLxw+FzeJ94CgSHjjN+Lwy5ygYREMiV+Ne8WQJYxykYEQBKADWQhKm+J8ZHmAmBFrAmmdykfpntwvKYz9UlVlJDmVBQ6VOfNGo+6J3PJuNyBiFChCWhVpPq7WxK/Ca+TsytanUmGP5lDHVXJOgCyzr+JLYj911s34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751645695; c=relaxed/simple;
	bh=WguPuQh3/mnSf62tuhpCluxDoAVKFv7lhwgnIqAg2mA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XCCjgO1lyJYOQEhkfuYanXICWom0Plt8WSRi7+UYmIy6nmmCSwlew3uziuHNPv0iCrz+7GDUZ88QKV9RVP/hgRZjt3dKNvRuWOIIoAQ1BCbJlp8Z3cvAAfftybzLlAYMK5GcSXri1P04Rih7abAxSvZsAw1ugr6309QEAT60C88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kNsxm4aQ; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad56cbc7b07so186521866b.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 09:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751645691; x=1752250491; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDg1DpjdtfK3/pj3Ed0aWvzIW/qZbuuI4Dyv55kxUjI=;
        b=kNsxm4aQzR7UeO/Sg2pPhSVSa/aBvxxcStZmcjSqc6NnX6y3RNzAaB4a45xbKHnCl6
         OjURboHgmHjDqY0UcT2awnFZGMJTtMLgk4gziU9qQ1TbNb1ouWGsB0xtNEBHanWq6CCF
         q/Y79U/XX6PK15ZK8mFb2I8UBmyDe5kH9xPMaYfoTl4Efw+y1mwOm8Q7wIfxYRT3fq/E
         E7AGP/eBjdDMmFSw8+yuMCJWyTbqmGIoBpk47m6t+rDEJKGFXtngaFACVEuEICuXj/rC
         bEI4NbTz+Aq672q6ZUiVP3nJCUIDvcghA1Ta/+BjifYq48r7l2WRJq0HWJWH+SJ4QjYo
         4GzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751645691; x=1752250491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDg1DpjdtfK3/pj3Ed0aWvzIW/qZbuuI4Dyv55kxUjI=;
        b=Ri7/RHITtgfluxrPmewGcrOQs0zszREzyZVKYdWCa/BAm32EMrNAPUxYZa/jDoeU4u
         3LlKuo65jVtee+Jq3X6pxgAgYm7OT5Tf0rQ0dH7pk2yrGLlcva0y2SWSj6VleukPOg1y
         6yLRBtuMW5FcROZVHDJByHFbDx9PRlzFJE08At//yj6jBJVqx4lmdL1zWSUPU54D6SIR
         Av5Uaa9rRd1TmMlfhnK1jhAmFhuDAsbHCBVgmqIaPtDbrzW/96fwTd4wnb1DZjCj2pSH
         IWRw9XoLdBDE3DafcHZtQQv8yOJvpESOns+hYGDuuPbMMlwZZBB+GjEgWcqXYPJLXn0q
         3Zbw==
X-Forwarded-Encrypted: i=1; AJvYcCXLeSSK7iynSrio4JwZhbpS6R17YPac/o7hcJndtM34m9CjBWWmKhuPR5xOV1dpAi4W7j6gApmT/Mbp@vger.kernel.org
X-Gm-Message-State: AOJu0YwXypBh8JMPUenZLIYxyZk7c8DtwGikWeTfS9j2JproVJ5ErCVE
	1og0mmuFDhfyfpDO9Skbj7AxqxMaAsTONrFApd0p2kIK7VLhhXRJ3IUE5vfhz+KUy0w=
X-Gm-Gg: ASbGncsmnVXG3W0xAcYNUW0zDyq7T0B+M4raYtN8qCLmtI2DlHCzmAzWNiDjbejUfL1
	/cIf32Kq/8A9cjA6tv0PAWy0qeCat4m+Af6pwMlvOsIKV+KB074jrNisj4elOPNuIaQRx/0zoxk
	Ius8Ykkctbx8mEs1fz/RvoxlhN8ANe54g6IW4uuZWnw6KPX9PoMv7ukIAD7sA9NnG5Tifu7IKgA
	Nq0PWKBFuXuu5gjZiz4vmjWFr2gAYSd6GvdeLufQLKpgVn+aX2uRf+DQEyZNhadVmox6rZ2vseA
	d+5irWsYvzvydSqvrrAUAFks4YNJm7iWlOJeeRGPleuJ7HXepNdGg97BiF0e+c7QmYsyJ838lcY
	2UiwD7povfm7ITJo=
X-Google-Smtp-Source: AGHT+IEZfr0ji4LDK9KAfq64DmhYMTWRTB1pQDXq1rT0Tuj0QwG5y9ROAnPBq8wcVt6C4csWmuVLvQ==
X-Received: by 2002:a17:907:9621:b0:ae3:a717:e90c with SMTP id a640c23a62f3a-ae3fe695451mr259268966b.23.1751645691353;
        Fri, 04 Jul 2025 09:14:51 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f66d9215sm194703766b.2.2025.07.04.09.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 09:14:50 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	lizhi.hou@amd.com
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v3 8/9] arm64: dts: renesas: rzg3s-smarc: Enable PCIe
Date: Fri,  4 Jul 2025 19:14:08 +0300
Message-ID: <20250704161410.3931884-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250704161410.3931884-1-claudiu.beznea.uj@bp.renesas.com>
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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


