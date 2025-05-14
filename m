Return-Path: <devicetree+bounces-177074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFE1AB65E0
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:27:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08812188EE28
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8053022424E;
	Wed, 14 May 2025 08:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hJsmYaRW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F4322371B
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211127; cv=none; b=KwnXeAjKZ7gAN+Z4tX6DVe3gprGiRbQmuCnkP1kW81BH3kyGcE1NpZhOtiB4oZvGFYWGIYmkXoXWpT7XJTUX4++xGhP+ijtsa1haiuiB+Yd4I8G+l8LvG1gxMOu/dgFS4PNrljCTVy5jU8V9ly9rQ7zX+KQEehbFPNj07zneDzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211127; c=relaxed/simple;
	bh=v1lj6aIoiBJtVUQdgMlwatZDrIj+3w6BOUH1TvFoWTc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oxSER6a490313qKtmTpUsb+QJhLOcOJmBkIL7pwUufrk0nZwad/W/nAyTj9aCV7ms1oaYQX8Mt2liZNrucH+gjeiuUsgb8rO3pZcU3zftJgOMAzq8erukJSLb5RygLoFlkXW1djRFq6SAMw0FcOKYjIdBjX163bFgCd4rRvT9jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=hJsmYaRW; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso43640775e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211124; x=1747815924; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhlcmOITgWC0ZjhzH5YcAyhWpu7bV5qwJnw5n2FjucQ=;
        b=hJsmYaRW7HNHK0L2Zdi3JE5rzMq2I+0EsbEVC+0WExVXn5R4heh8PJFniZwhcEXIu4
         6TLK7cpM2A8tkJpQFPo5SKFaY4MNt5Bw/TR/vWTUcfzhlz42tjlZTbbraaUIXxO6lKmR
         RId5Lz6j4RaIVAJF2oAslm7iB6CaQhryhnrZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211124; x=1747815924;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OhlcmOITgWC0ZjhzH5YcAyhWpu7bV5qwJnw5n2FjucQ=;
        b=C4LD9iU47zRnTGLtTCrrX2EC3bpC3OfWwb/xJSYuimkYfPQowvdvVHg2FEQpDX97wF
         O697KTWhYfJcBrx5Myamn9PYW+ozx050Xa9ZC7M4mSMCV4PEKUQ6ReOMWfPSWZVzWU2w
         4oFT7Shb9kYg4linJJCAUAXTBYPC2fH7sy2Z6Lpmll3EXFp6z3cl6kQ/KvTGCqoGvtK7
         CdvvwkDhzbTglcLKJfFCM4tjot0ZGAdZ/E3hL9j5LXKDEclPM0+IVHx71DIjag+oparK
         Hhw+U69vzOacTKEnNCHIgOrdN8diB8Fo5eX+622nXWJ1pKS+HIyMnnAlrFqxbccivliG
         81sA==
X-Forwarded-Encrypted: i=1; AJvYcCWNXXgazV4DfZPdfHBoqvka9rv6b8pfSXDgxuIu3r4foG32XiGOTsR0oxvEVAWrzHp/2MGBCf7F02MH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0KnFfXkZa2EnTYUsBswZuMedDIiD64nfArrp8g3v6iH87/DnU
	47vR096VtZcP3NKdtQalZ4gJQFg3freoDunD6SngukAeE/wBymYIccaSDK9bMCM=
X-Gm-Gg: ASbGncuVgrPI4g5XUsyKyuz9hY2Lcp+Mmm3YzvkCdOa29J4FRyEwIuwyTCfNkezdhRJ
	3DmCxwzNLjokwJ9Frfqq12UOqAdGcKKMb77INhHMa8pGvGlV1+ZgGPt/Nw4FCFtcE8SlPaNoFcZ
	lSgDYz2XsYSS1BnQ79ZmBQcc1DDiIwIGTpLqmspZUTNGjL3gGeDDx6vjErProJ+33/LJI24S/+7
	d/pocbXpnYDhIhAtpPrXT/nHbGVGw1nL0oPQuBcGS2+7t2qFei8eef2l2JZhmNv9PLh+C5cecdY
	73z/ws0F2SyHToBprQD4ywm3LhhzBt+VNrCqExVDZKW71wrekL4PaGsLvNG5SgwJXfZQtI+BpZR
	ZGcTDcXqxVz+sDGsvudbQ+90LLC68U2kUip+j0w54dCM=
X-Google-Smtp-Source: AGHT+IGAQQ9NlUKuvedZ7pLG0Sc9I8RQwhVN2gN0j3XvRSIGwZgxGrZPudb3M0+2G9JZsIqwK0mXVQ==
X-Received: by 2002:a05:600d:d:b0:442:f44f:65b with SMTP id 5b1f17b1804b1-442f44f09a9mr11192865e9.32.1747211124008;
        Wed, 14 May 2025 01:25:24 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:23 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Simon Holesch <simon.holesch@bshg.com>,
	Karthikdatt Anantharamrao <karthikdatt.anantharamrao@in.bosch.com>,
	michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Wolfgang Birkner <wolfgang.birkner@bshg.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 9/9] arm64: dts: imx8mn-bsh-smm-s2-common: Disable PMIC SNVS reset target state
Date: Wed, 14 May 2025 10:25:03 +0200
Message-ID: <20250514082507.1983849-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
References: <20250514082507.1983849-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wolfgang Birkner <wolfgang.birkner@bshg.com>

VDD_DRAM was disabled on standby, therefore the reference hardware did not
wake up reliable. Use PMIC reset target state READY instead of SNVS, to
keep VDD_DRAM active during standby.

Signed-off-by: Wolfgang Birkner <wolfgang.birkner@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index ea8d741c6904..633874b3bf66 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -94,7 +94,6 @@ bd71847: pmic@4b {
 		pinctrl-0 = <&pinctrl_pmic>;
 		interrupt-parent = <&gpio1>;
 		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-		rohm,reset-snvs-powered;
 
 		#clock-cells = <0>;
 		clocks = <&osc_32k>;
-- 
2.43.0


