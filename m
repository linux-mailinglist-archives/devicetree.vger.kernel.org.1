Return-Path: <devicetree+bounces-228128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6B8BE84D2
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 13:24:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC95662347E
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1633570AB;
	Fri, 17 Oct 2025 11:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="niyy5DtK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E6134F49F
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 11:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760700125; cv=none; b=KH1UiKP3PJtJTJGwieL7azSbo/RpiJjTw4OPBb5d+EoS2akTOflOsd4edLgIO5YxeiF+o3OCYgr8ZUYvVDeXcWwxLdOBT2DMWlAINM4DogW77c5oSMxMel6V4m8UGlDAaugIWnY++Q0uvsfDa6etWvkX8qXyPErir/43c9P6OQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760700125; c=relaxed/simple;
	bh=y613Fibuye7rvTibD+68qb4oNwl+ydXU9k6h+6Dna6A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qehed7tPuKaIPDTzbILGOOSbLgMDzvLoQXKKvQWzA/XSVoZfVUq66GqNTpiM4IqbmX7y0PSWhIaiGGdKW8mR8oOxhN7rLShaDQ7aWp80ZG7vnU9kwqDwlJeWkmFJBe0mmmVcml5db9q6Yy2WrqdkLZ3aXbyCJ7s6T5zAAz/Q0Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=niyy5DtK; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b4539dddd99so307610766b.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 04:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760700121; x=1761304921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07Toi2vUIU+MWGlot8kMIQ1ee07JBmL9YfZNkL4sfI0=;
        b=niyy5DtK/jIqiA/dpFcGD8XGY2TG1/EBgwRWvMgT44+eZ5c40GsYOxjZWgK9xMx3oJ
         Ub8ppWIKnhpL6mFxaHI7eVX8M+d7R9ThA3MaeUDMqPecxRXxCYqLewPINElPIZgufd4J
         CxgiDjEBtHdlyczcz2/x+y10CmJmL+jiQFjudfTN64G1bJvHofnY5h4eZEPzRJhHQEPs
         qwy4GzPp+9srKAdaOVD9o9ZAREt/yd7xn7kkDN5vjWKYb+yl8olWCqsDQRShre42SEEo
         T+Pr/HabeP5C3YDNcyXxK8O8zBm8NGZNRB6EIJpdgDmERmtVOJ36eQCIFUSB1cBdtTOM
         1umg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760700121; x=1761304921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07Toi2vUIU+MWGlot8kMIQ1ee07JBmL9YfZNkL4sfI0=;
        b=Kku2XFhc89fcJSDFRV0bQVNkGZBsu/XMFWip58k/zoTCCMPKs/wojqOqeV+6sxiEJX
         ZJEu4cfqIYaBC3n0+iWIpzMkU8RSOyuXbwsp9Of0NzshfzmP8fR7OftWMpbY4KR0OQba
         +leUJ2e84sVpikb+aPaWtW3fTLEqy3y0FnaSdIPnvAuH0HINodKsR+WbamKTUKLbQFQ0
         /1gIxpXH6qGf0kgCQe6PW8+5RqMThTBIvWNbQrwAyYgwTQWjaiFF7xPZhG5exIY8ESiC
         RJUoFkIGv8j/R8msKJqqkKTnsoPYobJgKeyoGqONPM+N5pwZKp7aJFwH982AtVMLr0/a
         Ak/Q==
X-Forwarded-Encrypted: i=1; AJvYcCULqE6EZ5OrzzpdMx/yIN9s1tHO04c0WMqhXpVc5fcE1UNGD4zZJ9R2ijsMD72rjO3w+Ptoh5y2SvsG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcl2xBILqN3TMJdeWVQ1C1TrWGCN8wu8DCj5Wnq8KM6NPdAQPG
	4R8N84JlHTCtC57A5n1Da6RzNvy0k29pSHjDggVFTZmk+K8N8iS2ObVj
X-Gm-Gg: ASbGncucAUBl3iI7ocvv7ZJ55+k3L6kHx3xCPkRwNNQjs4GGnxd3HkTpto+MjURznzK
	lAE/QDzZ5Bmt6Pbo3UjxgrKNBGLYuCThZZfC5Pnb+vDcWfIOPDDU8MJoDNsicJaqRtsroxb+NAu
	ESslZZRoRBfreEcQh+ykqFCEQCGpIG/r1RUKE8BmRsm43gdiIoRgMq+8lOGu30pkoe19ZHBllbY
	OBiVIvVJE8eFIaleOPo0rZCksuPM0UCWJIkDi02R9KfClRf26+WuyKVVN7yPgv2Jdbl3iZ6DS7/
	HfY8wixGlnmvM0j+Ept39kIjkti52sRDL+/d1qOfgsfKmyGFcDgPpkr+bkv+cPKjd1jWxgzASns
	jF25RbbS9DDZdF8BzF/eXVrLPwjW+RrsglBMujVXnDPSlSovKSHO6p9M94zUHGwwW1hViIBZ+dV
	nUuz1jUMM2+QIQex+xky2Vc3A3Ti84CmcEFPUpkQ==
X-Google-Smtp-Source: AGHT+IFm4WIQFISVomrAFV51FZBLIpyrii3K7EFFJhRI3QtwYUrQCPmRYno3c3emRFDyrsQdPdKFXw==
X-Received: by 2002:a17:907:7ea3:b0:b41:873d:e220 with SMTP id a640c23a62f3a-b6474f18597mr313933066b.50.1760700121004;
        Fri, 17 Oct 2025 04:22:01 -0700 (PDT)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccd1af35fsm788256166b.60.2025.10.17.04.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 04:22:00 -0700 (PDT)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 8/8] arm64: dts: imx8ulp: add sim lpav node
Date: Fri, 17 Oct 2025 04:20:25 -0700
Message-ID: <20251017112025.11997-9-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
References: <20251017112025.11997-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add DT node for the SIM LPAV module.

Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index 13b01f3aa2a4..676535c3fc84 100644
--- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
@@ -776,6 +776,23 @@ edma2: dma-controller@2d800000 {
 						"ch28", "ch29", "ch30", "ch31";
 			};
 
+			sim_lpav: clock-controller@2da50000 {
+				compatible = "fsl,imx8ulp-sim-lpav";
+				reg = <0x2da50000 0x10000>;
+				clocks = <&cgc2 IMX8ULP_CLK_LPAV_BUS_DIV>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVCORE>,
+					 <&cgc2 IMX8ULP_CLK_HIFI_DIVPLAT>;
+				clock-names = "lpav_bus", "hifi_core", "hifi_plat";
+				#clock-cells = <1>;
+				#reset-cells = <1>;
+
+				sim_lpav_mux: mux-controller {
+					compatible = "reg-mux";
+					#mux-control-cells = <1>;
+					mux-reg-masks = <0x8 0x00000200>;
+				};
+			};
+
 			cgc2: clock-controller@2da60000 {
 				compatible = "fsl,imx8ulp-cgc2";
 				reg = <0x2da60000 0x10000>;
-- 
2.43.0


