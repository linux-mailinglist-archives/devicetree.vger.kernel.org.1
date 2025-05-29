Return-Path: <devicetree+bounces-181449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3841CAC7A3F
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 10:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68F8F7B36BE
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 08:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86A7221A44C;
	Thu, 29 May 2025 08:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jI5/L4t3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6682DCBE3
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 08:32:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748507530; cv=none; b=RohJoyTcceGakqRxO7LgnGmiqhZqbNwRx/gd2Yf76D/60YakZeZUaOj+T5G0Bz1GIK450AEGn/61/j6OO8NEEB5Xh31B4tqU5VQdYyQUSdkWCkrfVrvwSITxSMLXvB4y18MbM+9PxrtFx6nzICd144ne9dHrwc31Iz3D194PI5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748507530; c=relaxed/simple;
	bh=SVloibZzQ4wI3ACpPrgps5nlN9IVxSsCtt4+bvmRtAA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mzn5j0ZnqEdIBp/JvBwQNk1XRJ2jFCDBTQ9TEKhN/yiazMx60s55zmHD5+WWb7TLQo08lJBi47kFMc8KoBGrngkgacDmLLpRo8dvI6UuVhMHrUUd3zBzb8YchWuyaaaMjWM+hNVVz0+mnQpmt9rSJDsUSWV1GBtTYKwUa6NeZLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=jI5/L4t3; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ad574992fcaso111949066b.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 01:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748507526; x=1749112326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+yd0OdHrM2Itm96/YuqXehoTn8EREnI2dfLKcvCeLuM=;
        b=jI5/L4t3DHoFHs+OSqhHJ1HNzLil4PI2U3V2qHamws2Hg9ncCEhOqD6fTrxZzkmB4f
         27k0Nwe7CTb9NZ3OoppPJL1+qfNj/Zp9ysHqoWZD0VcZeBvbBqWkS12EVLdSA6tqMO4j
         W1/CeGKYpboeQUor7vkPpxCzy+ixD8m3bnbA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748507526; x=1749112326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+yd0OdHrM2Itm96/YuqXehoTn8EREnI2dfLKcvCeLuM=;
        b=SIcLwNkduFMuVOidvpyzXMseQdLgWeTVHlTMQentHBZSlKHMPu8PRItr4B2uPzQMMj
         jtA6FA4AU3xFzlt4GF3kCy/VeTSSs0tAzNV3xSIwm9bIxQSOAMOIDhcx6Is0qoCtJbec
         As0c/QwC2STZ3Y5BcIeFgJ5iuqhNs4G72nycXGwmF07Y2bTUnW0qr4ZNhKSEAMV1cbKK
         cydm34wiCupeX6eSjjYWpuX2SZrzfvZCuye2oaq+7sX3DD4ojGmLxnq+8YjlWxwz5Aq7
         dZUfjlwCQ4lWwAfyfxf+UbUbTK2Frv4EZBXpBSFyfMpZ8lwWtCGgOB12vcTlHDHbehV7
         k6/w==
X-Forwarded-Encrypted: i=1; AJvYcCVMbU9TeQ7ICSj0H67l+br0HCGguTm0tOBCSz1c9MK4mk9dzNyrfdrv5hyuC8DV8KSnqFknLG9dFpJM@vger.kernel.org
X-Gm-Message-State: AOJu0YzJhVsOGLBUA/Ed1dpL95vxrTN44UOrD2K1vNV7QdWxHsSq4e9a
	bTKJwYXfLYBrXYGTwADe3O7TzyB3SaT0AG6XMx9nAhjsyJzirvDT6N50iP9QOPK504Y=
X-Gm-Gg: ASbGnct4S6aeU/CdNjAZDUt/Vn22S3B+ntqaa+EqgqGUucfW0130hhtYhLKTyeZ/9rb
	n7OETKoSSec0xBAzN5EOqfS99wznv5/MtGelvz2b9YwgXlXM14V6clxmxaypyCZTzDxlimBtsaD
	pVhWkzEu57k2WKOTu/psf4LBq5+iIC4xK/EVkDLg8UO+qJYMv3/TyS3qIE38tEaMeZOWFVIKzgr
	sBLGCbuCShaOD23UGQheFnKzIKMBQKlTjevqdTjoXP6527r2gXAveweHM9jCyuVe/GOmJ5uITZV
	RqHmat2adQHnu0bVIbHiCgBinpo+1QJ81cHBncJNC9+89713918zWfqrjbb1okiym5pT+S0n3uL
	KAEDLR4PuBPZqqDsL
X-Google-Smtp-Source: AGHT+IHJPmyMvrXWwF+oJ+y1YEj0csZRYNNz7OEbL3/Z3gW/L6Zao3qlTysBk8RNZogBxgTqOB++Gw==
X-Received: by 2002:a17:907:9611:b0:adb:1b2b:fe1c with SMTP id a640c23a62f3a-adb1b2c0f71mr86246766b.2.1748507526094;
        Thu, 29 May 2025 01:32:06 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e87esm100609866b.63.2025.05.29.01.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 01:32:05 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	=?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/4] Support i.MX28 Amarula rmm board
Date: Thu, 29 May 2025 10:31:03 +0200
Message-ID: <20250529083201.2286915-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for i.MX28 Amarula rmm board.

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 128 Mbytes DRAM DDR2
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Changes in v3:
- In imx28-amarula-rmm.dts:
  - Drop xceiver-supply property from can0 node.
  - Rearrange the order of specific nodes and properties
    alphabetically.

Changes in v2:
- In imx28-amarula-rmm.dts:
  - Replace '-' with '@' for the pinctrl sub-nodes.
  - Replace edt,edt-ft5x06 with edt,edt-ft5306.
  - Drop LCD reset hog pin.
  - Add correct #address-cells and #size-cells to gpmi node.
  - Replace edt-ft5x06@38 with touchscreen@38.
- Drop from commit messages all references to LCD display.
- Add patch [1/4] "dt-bindings: mfd: convert mxs-lradc bindings to
  json-schema".

Dario Binacchi (4):
  dt-bindings: mfd: convert mxs-lradc bindings to json-schema
  ARM: dts: imx28: add pwm7 muxing options
  dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
  ARM: dts: mxs: support i.MX28 Amarula rmm board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/mfd/mxs-lradc.txt     |  45 ---
 .../devicetree/bindings/mfd/mxs-lradc.yaml    | 106 ++++++
 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 303 ++++++++++++++++++
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi          |  10 +
 6 files changed, 421 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

-- 
2.43.0

base-commit: 2d1e9b3978bc041336f1bf6c611fbbf435a297f5
branch: imx28-amarula-rmm

