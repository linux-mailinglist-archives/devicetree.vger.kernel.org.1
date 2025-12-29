Return-Path: <devicetree+bounces-250306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A97CE8398
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 22:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD6F33012741
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9C32E7BB6;
	Mon, 29 Dec 2025 21:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iXtYqSdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B0423D2B2
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 21:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767044256; cv=none; b=svzORfkLz7Bo8uSLB/V+oRPfSNcpTQp9GNdEkrXlNm+T73QLWI0VVKKfgKkMAQjyFgf6cbVSziJymK7Cmoe0ZTkELA8RDGRbTxBpmEj7tmc4Y+Aj9WcvXPovQrQjHGuqcK6qRxkjOhoGUWVxUgHYVJINObKuB4nUlE6iwhD48sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767044256; c=relaxed/simple;
	bh=zIbPbz4p9WDTi045QfNFdh8jBTca3i1CozlJVdUl9KY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sIRyAtVsP2DLNChAvLPAurqlpqb3V3Y10hc7AuyxTbV++f9iLxWnALHr1dAFfe1KcshaY3rroSY0ZJnq+o5ww/ppnHaSxUsfkDvjY+CoQ0+JX3rJViHQbo6AEx0R1gXhbFgPxl8cqSYFgaeY8pWt4SYX8VZqbyEbQcIXfFS4WWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iXtYqSdR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso90070205e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 13:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767044253; x=1767649053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qGz6E3CsAxGfK1c5nO3wGu40/ZtakdbQb1FmTqKeIMI=;
        b=iXtYqSdRgpPw8wJMcaAg+Rc6XDKlm/JXX4LLIeR8fUraWAxLa8PJZeUDjn1AHhEw0Y
         PcxO69SYbCmukLdjYWHuv/z4XoooT5+0U3nb7UNKdoHbfS9UqUphVl1mVNOmf3IarHfC
         oe3hJcWFtq6G/lN74xGQmRMPv2dJ2XLoKyzDl7lW9ZEwhX2P3KLkWUn0SnW5OF5ZJ2IQ
         ymWwIWhApEFMtlp+mx2DQcGPNCKbkQUgdCAgu9J9Eap3FxCyLQ4WGwV8ChK/VusdrbX9
         7Su8V4Hs7fLVnGqG2lcyCfKxHE6teLljg7D7+YfoyAalmmxSCeW0U5DfDT/eBG03pUo4
         uv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767044253; x=1767649053;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qGz6E3CsAxGfK1c5nO3wGu40/ZtakdbQb1FmTqKeIMI=;
        b=oo3VEbAlTFRqIv1qN3P1WozAFapnTtNKL8TZ98VWZYn3fqzKvqSX/87DNGzuuUVRF9
         m4h6ks3k0DMmwDtvqg2DewXTWB+kjPBEiEPQXf+tPfwo4ziiDKeDAx0MTekmdx2yLVQ+
         BXcrjJjU5RHlDKsLRUcLs8sLsr23HC9ZBanj3KuK9yqmfqXZCmBf/W0AoQmbNzd2+d35
         gMwu1gXZ1LJ4ib4gCMSyxGEBhb5OGJUuCZNK3CVrmwskpQzElXvTdY/nwXb5TpWXm/AR
         qns6+njtzn5muO1wLhBX0Lj91j2ug5HNfpEPnUhjw3nb4M10Xgp4/eKpb4hsfLbaxSiB
         cCMQ==
X-Gm-Message-State: AOJu0Yz+mzQEloxOKgl/DYnkQS2uyFr+nOIWmTDOz/LUZIzSCtFKFkr5
	eSHkkH7ezTS7w4Z1SQBRU8r6GgaBIXeRbZbWo7sW4Yi/9UUEds3Imb2ER8yalnnl
X-Gm-Gg: AY/fxX5OQPhaDTx6L1mG0GKOzmR/eCO/fOPLUM92WWKFIviGn8LD2EswLJzvCWDFVT8
	MTkAmiKV4TLq/Zg6TSqBFpyD3YWQmmrI8t24UZXHxzpJqjL70047IFyap8YiWvf5U87eomAzddX
	3YPc0g8IyfPLBx+uRZa1mmKCfzUtPjCa5z5MoyQB05fwTe196zrBsSVmJSgev1a+W0lpQUVV0ld
	XFUoeuy9XJ+etvfMPHIyLTQ+nXcz5lvJG5/apzcc5wOzWi4sD8MpWJr+V/PyGyZI45pggeVqi68
	P3wx3h4wz8Qlv3ivQKaM+1pmF3jSb5T/HeagRdepuOfco36bVLmbj3BHTAF2GqkERnh5Eq/wMyY
	+Gu401Vri258ooSYRMrjrLE1T45FHy4q9W4qDKG0EdZWhUW+knuT5tP9UVUj2cXUy6XAz/ueFDG
	QVpoP30LVwfjyK+4IObIWlj5DzPmtLzXYgiaC71xrZO0XWXP9Lq6ic8ryKtjcax19NCMGfuJbf0
	1bqbW3ap06M+dbl7cqC
X-Google-Smtp-Source: AGHT+IEJqCt8LPEO1gH1XPCkgXU5Nau72TepR4FWtrEw6Lak1kKcRdl1oqPEMIXKOijGtZuQP2wEew==
X-Received: by 2002:a05:6000:178e:b0:430:b100:f594 with SMTP id ffacd0b85a97d-4324e50d9bcmr38628906f8f.50.1767044253036;
        Mon, 29 Dec 2025 13:37:33 -0800 (PST)
Received: from Lord-Beerus.station (net-5-94-28-220.cust.vodafonedsl.it. [5.94.28.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b36fsm64046230f8f.5.2025.12.29.13.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 13:37:32 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Mon, 29 Dec 2025 22:37:14 +0100
Message-ID: <20251229213726.79374-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefano Radaelli <stefano.r@variscite.com>

This patch series adds support for the Variscite DART-MX95 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v2:
- Add SFP cage node for enetc_port2 following sff,sfp.yaml binding

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 595 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 462 ++++++++++++++
 4 files changed, 1064 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


