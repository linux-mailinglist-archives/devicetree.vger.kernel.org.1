Return-Path: <devicetree+bounces-251440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB49ECF2F7D
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 11:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9EFB3002699
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 10:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA0212F2605;
	Mon,  5 Jan 2026 10:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R9MlBATh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FAC2F0C7E
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 10:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767608682; cv=none; b=XXMcmdKYbkGqqnk0G9MUaPDASGGun2rMGsWLug9Lb+n61gqkAlAgHEuiZhzhXu+EdfWq+S6tbrwka9HMASxEkU7WdcJIM9MtSSbSbzHykxLdICPKRxVqy3hcsaIS/qYCenOxK2YhO/Ywtzam+Z3jw9vpJbCRACHbjVHnQRvoVaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767608682; c=relaxed/simple;
	bh=SVZiyApNgvZG9HDs/b2smpla49hxwIvoRNlQkDM0jqo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l5N1NoFRrUEWYbTesEwcBs4tDwBD+WnskV+MoC4nNdWJa1wcDNZrLNgDiJltrTDRMU2LeTsaWZ6PQspEFmjM/05Be6Qec5q4to8x3idav8ShBlYUQ2PoJIias1jTkzbTOwFOLPsVSD1tBuehnsTsl2F8hDfk2dUTTD4pGOTvMhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R9MlBATh; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso131073775e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 02:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767608679; x=1768213479; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IN6vRkNKEVxOczX1saJPQdmukp5i6BLBmJn4SGM91Z0=;
        b=R9MlBAThDJAZUcc70gBMli2mJHvRo/N7m7jkYQqqYOV9JIA8PQ0GmOHx0E07y9KIhF
         3fwTR75mJFdoeZPT1uCab0ALeIlzrqRP6qVTLCEdohH/pNNM0/UGRg1P/DOvXjDpU9vb
         SgOlqDjgXwfGUYifAshFTs1d+TqrbknqSOCohJk/iB9XWvFNZ97WL+JBdkizq/Jw/Rj+
         89Nvf4zouiS78+gLwBChYXFvKXeai28XFCVbqnZ2MPmF8FaayBqnfnLwAKqOsdzVkEdo
         oS/XIP3XHpDFqb5cqSVMMiA62MigJtMSJ0WWH2JCkDcjLCY9pjpSKTfS/+lehlEygRXa
         kSbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767608679; x=1768213479;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IN6vRkNKEVxOczX1saJPQdmukp5i6BLBmJn4SGM91Z0=;
        b=wGanK7Et7ojH146Okf60MZbzcGKEPyqEnwLcgSF1MY3ZK0dYBKx+nYyVf42kmV/wcv
         d0ooU+quabzGTwQC8wEis7pExP7KrhzkRmL1YIPU5QjD6tkN7OaRzRXcm4WtqgnrCr61
         Dt3ry1G5gEVdD6xeB/Q5cH0TznaPsRerAp16nd4fsytqYSTHD1lAUje0G19t3OyRauOf
         as18ITswMHKpbxdhTT3tHG0dZ7F3TwMMLTkKwNHKfqCImwBUZuGnRVFec1uP+vcfRs2M
         9UeQroPHKx6j7NOb/kRmhdUNv0rmMqCmSZSkkanGpa8TgwMZvhwPhTJ3w2ZqxhXmXUeb
         ociA==
X-Gm-Message-State: AOJu0Yyh2umzvZIzxpfB5xMIJ7ynPsIYQ44p9hxW3Ks/kDerMGfxxvUZ
	NocD4IhF3/FpAmrioMGbvxu1HIwiTxs2CCDEl/Yfun8xGoZM62/3E/WCn1FiJXyS
X-Gm-Gg: AY/fxX6pBRXl+kt2dTmhR2JHkjE+cFApJOA4szJL7ls5lldH70IkY8iTppIYvC7hLG0
	8NGr2r+nGzJP+5B1tBQEfzEq8yLaAg7lqsXBpw0GK29afjrcexMivy/sUnTB1XkvEpEcUl3j1d3
	ozZKmyC+DMDampSS3in3HSppGaAA+01AMxXEgWTwI7YVCHnIl/6zZHej7rVH6QEpfQfdD48ekVB
	zFX0nXHqjRyAykw9iQuTNJySqsc5JHyZbqXkKSTqct73GtV8XTkrluaJ9Hjf1TTQy/zlHws+vUN
	d39u7qAg4rrvx3zeL//GdlQC2FpGReSYaKVDBzYa5cFKAsw8xhNs43InDqUSkJauUiSgAkQTHQ9
	mLjb6ZLNsx0s0W26ac3c+WcRIOYtObpgJNgBp7mEtyEAc7p81KafdR+HuqK8F1zhpHI1SoY52vf
	bq9pqDMBbnX5O5IArOZzniyzaAU4Bup5kEXBxitM2cdGWuS4MnsAGa1YoKOLD+vYk6z8nJE2cZe
	FO0C0h3NIVkArz6JLviKu4s4w==
X-Google-Smtp-Source: AGHT+IE6Ut/zBvkgGiDfA9fqbiDTp9MkLewGpq779KdJeWNbVM5HNW0RBNC8pVKNFd6A70hzt18tlg==
X-Received: by 2002:a05:600c:4ed2:b0:477:af07:dd21 with SMTP id 5b1f17b1804b1-47d195b3c08mr635442425e9.25.1767608678952;
        Mon, 05 Jan 2026 02:24:38 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d452be4sm145607205e9.10.2026.01.05.02.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 02:24:38 -0800 (PST)
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
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Mon,  5 Jan 2026 11:24:00 +0100
Message-ID: <20260105102412.6674-1-stefano.r@variscite.com>
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

v3:
- Fix specific node names with generic ones
- Remove fixed-link property for SFP
- Audio regulator cleanup
v2:
- Add SFP cage node for enetc_port2 following sff,sfp.yaml binding

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 590 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 461 ++++++++++++++
 4 files changed, 1058 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


