Return-Path: <devicetree+bounces-10439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D017D12C7
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 17:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 315461C20F9C
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F8E11DDD9;
	Fri, 20 Oct 2023 15:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QMuVssfg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1951DDCB
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 15:31:11 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A6A210E2;
	Fri, 20 Oct 2023 08:31:03 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-53e04b17132so1446030a12.0;
        Fri, 20 Oct 2023 08:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697815861; x=1698420661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBxrNimSjl2GBOQ8H36ib0tWv/gZxO8BkrOrDWOE6OM=;
        b=QMuVssfgGUrkF0F8PdnIZN0I1GmjB0YZRIFSWUcYO22Bj9YnmOb8O2zKwEpjYgD/lE
         Akczo+xut/86heJvSRlWAEFXxr6BqNFXmn6+76ZjUiIj9ePquPsWv+r0zOA8MGmcUMQd
         rPEYvLiIimQNGelHbN39SoxZSPkxM+RLxv1A/pxg87HaLRzR8BcteE8+zKdDXwSF/rR+
         kJ2RqH5jav5R51VB2acP+wxhwsG/CtsYo/p7N1oYZ9JFoVRR69G3dV0Omzox54gG9AOI
         OxjhUPe+9mECMEdZDAU7HgUBNnzHRvljhbRl+8mZCelrLHqMU1ZLWIuGEGowkf0bSlr6
         PHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697815861; x=1698420661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBxrNimSjl2GBOQ8H36ib0tWv/gZxO8BkrOrDWOE6OM=;
        b=j4kqhvhouX0NgxufqIUrTRzAQY0o+SwQ0+qTHjMmMEMI67ukx1Srf3RH6qNC7sFgxP
         oeP+XDNXIthtV6FR1+dz5DnUAKxK9U99cpL3Gy2gdIUf5wyXTdK5grnIL1lQB9o+4Xvg
         65+f2hV/oLN9WbV/yf33ol8GCqtofYlxAgLv/8qtUjkkvFi9unoDk/sxZ0f07nHFYmvB
         s11bSikMm5jH/FL/z1ubF/icjbb599i4fGaTpfAkykDwsNYWKLqX+Ld3xsD66NCyimGX
         CDOkDGv2Ht3ZlWDCjCJJEmMcWippenQMO1EZ18BnvF/mmOvJDTAhV5bp7SCUVZejXKil
         OdAA==
X-Gm-Message-State: AOJu0YzOY50x4V7PAM3XFv+Owc5Cl7X2ZIultdokkR6jkoxWAUO8vkNf
	FV6YFPrvNZ/xU8iuFjK1ZZM=
X-Google-Smtp-Source: AGHT+IHZ9EApz6QicYMD2pUHgWL1XMcpe9bCx52IL9m5mwc3xcIc2cO7tUHYAjIY99FbEcFMw0Nr7g==
X-Received: by 2002:a50:8754:0:b0:53e:bb41:7506 with SMTP id 20-20020a508754000000b0053ebb417506mr1819869edv.33.1697815861112;
        Fri, 20 Oct 2023 08:31:01 -0700 (PDT)
Received: from andrejs-nb.int.toradex.com (77-59-154-235.dclient.hispeed.ch. [77.59.154.235])
        by smtp.gmail.com with ESMTPSA id if5-20020a0564025d8500b0053f10da1105sm1631199edb.87.2023.10.20.08.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 08:31:00 -0700 (PDT)
From: Andrejs Cainikovs <andrejs.cainikovs@gmail.com>
To: Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andrejs Cainikovs <andrejs.cainikovs@toradex.com>,
	stable@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: imx6q-apalis: add can power-up delay on ixora board
Date: Fri, 20 Oct 2023 17:30:22 +0200
Message-Id: <20231020153022.57858-3-andrejs.cainikovs@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020153022.57858-1-andrejs.cainikovs@gmail.com>
References: <20231020153022.57858-1-andrejs.cainikovs@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrejs Cainikovs <andrejs.cainikovs@toradex.com>

Newer variants of Ixora boards require a power-up delay when powering up
the CAN transceiver of up to 1ms.

Cc: stable@vger.kernel.org
Signed-off-by: Andrejs Cainikovs <andrejs.cainikovs@toradex.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
index 717decda0ceb..3ac7a4501620 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-apalis-ixora-v1.2.dts
@@ -76,6 +76,7 @@ reg_can1_supply: regulator-can1-supply {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_enable_can1_power>;
 		regulator-name = "can1_supply";
+		startup-delay-us = <1000>;
 	};
 
 	reg_can2_supply: regulator-can2-supply {
@@ -85,6 +86,7 @@ reg_can2_supply: regulator-can2-supply {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_enable_can2_power>;
 		regulator-name = "can2_supply";
+		startup-delay-us = <1000>;
 	};
 };
 
-- 
2.34.1


