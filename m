Return-Path: <devicetree+bounces-177070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A4DAB65D7
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 10:26:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062823B139B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC921221FDF;
	Wed, 14 May 2025 08:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="WFsPp595"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086C5221D94
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 08:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747211121; cv=none; b=CCmCFrBhxmQySPKR9jl+v0w6Sm05DOAbrRzy5tF5x1uQH0dmK8XVKGJ69XBCOfe7jY0cImysjREza3n9lPR6T17tfAPJj8vTtc44V0TVgU9vr2IOf43SkMzAbYoJb8rXMrLLPrOyQfsSw7GquYDQwWkUChrQSeSvOU3HsGVpRhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747211121; c=relaxed/simple;
	bh=7oQJKT0hR0eKb35E3LfSQrJKLp4aFEfnTRpv18T+szI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fp0Z8egSfY+S4lRpv8gm3vz7EMNjDlXTHI1E6XD/6z4HsIZJiUvSquAaDWFEsONaETYAnkOc0WCkUWSEJ8AU/VaNuhFKSNv+x03IWDoxvdu5BGmpCUhRBx+zlSTkGRzicurzkyr1sFUJ53XYf6gnnLbJvx7W84uHlWYCkUiomiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=WFsPp595; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43d0618746bso49984095e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 01:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1747211118; x=1747815918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CYagY+dR/IQMge1Auis5M2jpDPCa31Qjss93MGAu7M0=;
        b=WFsPp595Ddy168iJh531RDxNYq+IGIC5pdaZlq+QS627b+m/pASLEI96kliHYxDk0E
         +aSW5H2fZv2FgR+jZWHBPGwcRov4LGHaT13HlH3IDYIPspAjouNGj+A7O+Pzyw6KgHmn
         uoFuHKMmfeRjt76pBejDRb42F09cPfWKAs7OU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747211118; x=1747815918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYagY+dR/IQMge1Auis5M2jpDPCa31Qjss93MGAu7M0=;
        b=KX5/f1ar1BXpE7m+Zw2vwt0Zgckb9DNYAxbxkt+4gSHmLiIW/afLSHWftcJgRlknTD
         ZySVKYsbTIWRDLZ71GLjA9Qo8ccWKqsyA3kWJQfVS5ZKjJQ4b94TxIce1EQ0xothzihL
         o+ZxuxWVGaMxzMpZ7qpPe/iTq+zA9ayUQTb84J18SFPbLjYAvhtoJQOS3xM9oQXrD7Gp
         xUpSvmiX+y60D+fzmsAAIwSn1XdxNyEfQgNYmRQEWDdcoJDkn+HWNTEa77x1dOoa6/CN
         wKudBsVYdOle9KM2yVIHbZuJ8+CsIe98Sjdp1fW9l+RlscbwWQROQebRPZ/mYgINewvv
         zt1w==
X-Forwarded-Encrypted: i=1; AJvYcCVDWhhPpmcAbpc4V52ylnyl+TeGR34fa+KUxGeDv1pIZA94VvfDHqZsb27Cp3bcdBiL8Q8a/pA7KJSc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzixh4g6yEI9T+ZD2HXNAwLMpeSQsHkWsTuHTtvEd/J23FkDd2p
	YsEfIjiniWaOrfKL2HtKzK7YyKBT9NcsR6URmUGB7CkMO5GDlOpYPLLtm2Ct6aw=
X-Gm-Gg: ASbGncuZFJA/hw2h9jfLZj9nEr72g/hhEwl4/V7yzCvKceYEePZaXr5qAj2NJkezNTf
	JTP/97kz95Jg/pXZAoBsG14RGl1pOZjDkPkMzj5vwyqPbekJTng0KaJHw4oQBrwG/mQhFDbOeQ6
	ZeI7CIu5fN+mAsiy9qLDXC4EZpE7igQOVKUxYg2xnpLcSSoILNYR+EwHNWwTawJnAzof+9pCPXP
	SjOl6k8QVGpp77yQKF2Nl1T3nLNeKYrqlD5+e+4WvAs38OoSnxavrDpfTGGOS7vF0Q59lAS+AaN
	RYtan8o+Pt3PZ+XqjKKL3bI3vfCnMtO3gu/MNhp8YzVtMcY5/NOn2pXBILMT+Y82XX+BQpp3pkr
	rSRhZAwRJue3DQViuSDijinsGSd2yjfPOLpePhQHMVik=
X-Google-Smtp-Source: AGHT+IFleRd326SrUnZHoqkzu6suoQz94DWWC/XeS2n9NtmmwCPboKZ/eBmAx4ZEBG6Ntfy5At/YEg==
X-Received: by 2002:a05:600c:a09:b0:43c:f513:958a with SMTP id 5b1f17b1804b1-442f20d65f9mr19154735e9.13.1747211118349;
        Wed, 14 May 2025 01:25:18 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.client.m3-hotspots.de ([46.189.28.43])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442ebda7d2csm30987365e9.3.2025.05.14.01.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 01:25:18 -0700 (PDT)
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
Subject: [PATCH 5/9] arm64: dts: imx8mn-bsh-smm-s2-common: Pull Up Console UART pins
Date: Wed, 14 May 2025 10:24:59 +0200
Message-ID: <20250514082507.1983849-6-dario.binacchi@amarulasolutions.com>
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

From: Simon Holesch <simon.holesch@bshg.com>

The UART pins are floating, if nothing is connected. This can trigger a
Magic SysRq (e.g. reset).

Signed-off-by: Simon Holesch <simon.holesch@bshg.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index de70cd3a392f..fd12b97525d1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -386,8 +386,8 @@ MX8MN_IOMUXC_ECSPI1_SS0_UART3_DCE_RTS_B		0x040
 
 	pinctrl_uart4: uart4grp {
 		fsl,pins = <
-			MX8MN_IOMUXC_UART4_RXD_UART4_DCE_RX		0x040
-			MX8MN_IOMUXC_UART4_TXD_UART4_DCE_TX		0x040
+			MX8MN_IOMUXC_UART4_RXD_UART4_DCE_RX		0x140
+			MX8MN_IOMUXC_UART4_TXD_UART4_DCE_TX		0x140
 		>;
 	};
 
-- 
2.43.0


