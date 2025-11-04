Return-Path: <devicetree+bounces-234801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 35123C30E20
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 13:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF35618C3E90
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 12:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 592B42F658D;
	Tue,  4 Nov 2025 12:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l9VbWWH+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE5C2F60D5
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 12:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762257857; cv=none; b=GOL9xXQRV5fu7+3XMSJc2VL74l2cf2gSDpsdII2Eb5BUAytbFSgxz8zq0FxetOYRDi1bdzieSphQXiG/ELqzbrH6awJof58qMMYeSFWbCSt1G/wxRuiBDHjhLktGcMCs+DgKudZB73MTXoXwbA4aG1qrofOVblUJocrXMKx6w6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762257857; c=relaxed/simple;
	bh=v9PIaHoOGqn87lRlESH/AuFgCy5K1+8Bo9hGHBVSeHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OdLpYNehc/6fygWFnrO5mG9RxL/Esa3duLYnCUW89sKm5lDaFHJ0wiRTokjxp5A32Z2OBTcXwYU+Ry07yJ5CtHRPN7wdWEAe/G6O6veIsUJHp0jAbJzeauS+GuLp1kh3X2i97yGE0K966oETAuzktGHNZmeXetJcaWpFs9VL1gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l9VbWWH+; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b5b823b4f3dso876459566b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 04:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762257854; x=1762862654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=l9VbWWH+WWl/zAn/ZQ2nCs+THHbJlBUkZ+oz8GiM0AkTgtNMk1Qi7bprLFhnpkN2fi
         9g5ByrfbwmACZi2dciDAIbHYdyrQCjqeperr6Pvzphfns2Q3E3kcWucR1pcaWrkS8SkA
         H3gSM1JOShq4rmKmOKnfq0EOe+yH81r5gSHt25O/wd/5EQnFKza3bTNLOXMdby1+5CJO
         Nwc8gH/FunX0a2fryHbqddbHaNLiEqom9JMKOwq/NCClJbRz8ln4DzsxhHf/Ff6P6olN
         4JQ1X8ZsSIXqRRQnS7/LwL7aE9MFtV6j6S1of+I/MiyQACX/nV52sFmHSFRT+7sNshCQ
         1hIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762257854; x=1762862654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xHtOrvUe+VoHbx7eNPs1dlQDZqVpXM8AHRrOkF3QMQM=;
        b=dpg6tucCE6cJ3imIHE8PwXy8S3LnVnryqEmOJmauTNkG9xCAz9OX/RAxOOjD3ZaE68
         MEBIdc5qyK44J2Curr/ZHzFA3vygqcbjb3ReM8R+RmRkU4CHrqYFhd8QoyDanHF4+SwV
         aGShjrxCoITzC2Dkq+SqdMQ/GaYsAkPCYwJblGRT+dmHKJEI+3L7Smn/VrbDg1b6j3+U
         1giwNk17PRX+zJRVdDlso/38D+ItO2PsT0zWdm7HCl6lTYnv9CkvmEKYOZIZbN6k1gI3
         r8RvrcvVMnzbKjQbhb9Ikh3/oonK+B2AsdZ/s4LLmIljtT2GKz+ns9yP3OLgmdqndJZN
         K8iA==
X-Forwarded-Encrypted: i=1; AJvYcCX5MZlXlGUXgbEVKRWLxAVA/WxQeuYsZ8PUXdMfloWJGyq43gvWFVSZ8u8/csmhvAWE+7wzLyNnmUWT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc0Siym0WpXEMOLi/OqCwOowoqTxTlN7l9QuDE80B+dv+B6S1M
	RXj7kE3Vf6YFB6o6pva/HjuismKApYFe+3+UC1rkR6ZOql7GIMs5rG7A
X-Gm-Gg: ASbGnctMdObVaYjltfEpmLIYDOcBVHqQLhowv0lWinEq6rDoDpR0ODACoyDnK4NWx0k
	DWpsQ47J7KiSJTfpdaXV65mre8XISVzJyFc2wGNAoyo3UkBW8itwsZXb/v0eE81OQZgl/L9OVy+
	N3uJHbUWdAkfG73HnI14Xs2y9p2kt/QzK6tZSGw7a8xL1tGRhNRYHJvliHGAmISRyWMhZMmtUrY
	1WaCwZZxPBwcevV6zXlUj283r17DPRE8IB1qHIiEA7BcFupx4u3bzli1u0zWzL+oT1kRBiv+ryo
	9LrJ8AKUBjfmieGE+eHmXyEclUJf384elFJxkcGUO2ga+PhQAPmB30RpnNR3vbcTBMapanOSll+
	FTBeQj9TjqeIuwZRIlCyP4havDSKEwlC71J+sAcRpnSHbfk+0iewsLc3wNJ4I+MwewPzL9DE8Mp
	Suupc8bUW0Wyt0nTT1G8uSRuOfEQ==
X-Google-Smtp-Source: AGHT+IGGkO48Aav2aGVAeolzrPvhX0A2pS6by5Y49cTXFSpgxjQYcLbUpUeQ6msVNN8zrd86kzhCLg==
X-Received: by 2002:a17:906:a24f:b0:b6d:6c8f:6af6 with SMTP id a640c23a62f3a-b7070139726mr1396558966b.16.1762257853806;
        Tue, 04 Nov 2025 04:04:13 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.157])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723fa038e0sm200894166b.54.2025.11.04.04.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 04:04:12 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Abel Vesa <abelvesa@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-clk@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v4 8/8] arm64: dts: imx8ulp: add sim lpav node
Date: Tue,  4 Nov 2025 04:03:01 -0800
Message-ID: <20251104120301.913-9-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
References: <20251104120301.913-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

Add DT node for the SIM LPAV module.

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
index 13b01f3aa2a4..9b5d98766512 100644
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
+				clock-names = "bus", "core", "plat";
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


