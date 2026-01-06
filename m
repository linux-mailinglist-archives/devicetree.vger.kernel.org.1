Return-Path: <devicetree+bounces-251930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DF8CF8767
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:20:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 517333022AA7
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4099632E72B;
	Tue,  6 Jan 2026 13:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yy4CJ07o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D53831D393
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767704916; cv=none; b=IESb6gNpfWyoh2rBGdqsfKBdzLZEklKj3CvWH6dnmtr96+U7DfLk9zEzzIRYmug0ZLVwpmVQHp6kHuiEZfGdylMvqK3eQFNDlDcn8QBB/Z46pq9euH3mU29bpmTlYAV8uJK3kz0ClIUT31N60sF3clvkbrTnSpt79V9pFGOGbXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767704916; c=relaxed/simple;
	bh=3Yj3IoUFPWPcV4vDC4ntfKd6PAML/0x47IaIe6uKki8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RHecbAorL+musDWhkbnmWBSTfSCbR7xjbOFDdfdwrmPL7l09yzcn0wLT+ONsVifwoJdpzbeWvwpjEMJ2KHXEz4f6RmfvYe1wtvA9H4pYsI/QE7F2CvKcmGEO4+V/1gQ1ZQt+M6WQusOQI7/IWw6eShQzOKKt4rkSIWqzvMHMwRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yy4CJ07o; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4775895d69cso4825105e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767704913; x=1768309713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=knA82HoFVq5Vl5qoZqEkHj4/fd3hThuMjeSabaCgNw8=;
        b=Yy4CJ07oN2o3/agRSBu7ZWdmWiMuP+SGKD4Xc3B3AAz4eox3TAhPQ5GB+1tA7Img/a
         fb3oDAB03TZYvZ/g3thypmJjv5ez9TeEF9pB6Um83FsixJgWoa80zOtdXKHPKpltmDgN
         cuaDnEIc6PEFBZP6CCw/tWxrVDPXi0d22vwMw0VcKpnvyB0Nll21FPA2s/Rdm2mfVYtI
         ADZzO64BR4lFhYHWzVDXCsF/MSAkfR8Gt7AGbh08gmG8QXOmKddJTDPZcRRs3DJQeXGW
         03d/sqQl++TMWNVuUehA7ydT8y1czPZ5D2eqmPMt31kFZx835zS8UToR8Eq2Z23BXXpF
         RBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767704913; x=1768309713;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knA82HoFVq5Vl5qoZqEkHj4/fd3hThuMjeSabaCgNw8=;
        b=QdvGVm0r970RJveXdHtAo6ExFrzArt9PfrmsTljWDzPhLIlwOx+LMRlHlx/i0QRCeL
         EYUav2k8ePq+hIVVTtnp+MsigkRv36ZTTxMQaWuwgZuvuHhUUAFXaZFfHBRKX2i0Hijz
         OXZEkfanp2/t9FaP5xnJkuZkGIJcmikdMLtZr4gD4aV4E5QMwJndEFEXzJwGAkFb7gn/
         Ec65hQd4XDprakWEysCdXH4dgHHAxk6r3skuzyR2mIy9dq8MvO6PaDKOe3k9k9W4teq7
         x+h3ZFigX5F5Q4J1jacKkrILL8kOYxWTZMgVMvvvNX2ZnMN1a9vToAfFbQT7btzUtSEf
         caNw==
X-Gm-Message-State: AOJu0Yw92CXCmasXJ8s048QfSV7f4AQyacBm9AKSEkviuZoTe98G9Tvh
	m1l+CtS04oAa9c5ahTykbLZjYPSiRZQyEErAhlu0jqopS6H85gbbT4WwhBf+Zg==
X-Gm-Gg: AY/fxX72RUQClJP7AWGcuYtnn2d5h7JLYtVXJTU4ifUE6smPh1JaKxzaCKBZKutpRrV
	Ii6hUwr++/HmfvSw1toLQPs+hGYbT8ux4eF6jYVZpZogundekOtFRHDvP5FzXSHb/a7zE0aSxie
	3pTFDKNTjkzqLt4w6OoMyHqv1ngHoELMQ8qO0koSu5xD9n7X5v1/U3LNjmVdCjfX1WXxOFMK7BE
	3GliwPKLAh1t3gxW0xpqpJ1BFcQ37ZPh0KbDU2nfXOVOVf+M1Vn0I8labRjlfAgJLe1jgfk4LNE
	5g9p6kzLZ3K6Plu9HKwFrRQsFcHBnRGKXD1gKdIxPumlHvzHuQATO9KLSpJY7Ax6ES4RroVpSfo
	rdQHDjad2h3C1BgicFgJ5Jk9p52vupDT86sUb6PdLMN3e4sS6/qqIum2zsSbv1XQO7Bf0ZGr5yy
	LM9/oKgW8FCRmzoysGulVRs1DO2TKryjEiE9S46FyitauwlroCy0LeCEBkiJklEyUrTcN0gfPGh
	krnK3rk9ObDJmaI/wW41nma0w==
X-Google-Smtp-Source: AGHT+IEgdDduQB8C1wxDqFC9WBdiYOJOB1Zvyi+DFvPEzDYlB1IWXSDoybQxNllxp6wpNzMK+ExQqQ==
X-Received: by 2002:a05:600c:4f93:b0:46e:53cb:9e7f with SMTP id 5b1f17b1804b1-47d7f0929c2mr31848395e9.18.1767704912499;
        Tue, 06 Jan 2026 05:08:32 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f70bc4fsm41601635e9.15.2026.01.06.05.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:08:32 -0800 (PST)
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Tue,  6 Jan 2026 14:07:29 +0100
Message-ID: <20260106130741.91532-1-stefano.r@variscite.com>
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

v4:
- Fix typo in spacing
- Remove vpu and cm7 reserved memory
- Add GPIO_OPEN_DRAIN to i2c gpios
- Move pinmux to eof
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
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 425 +++++++++++++
 4 files changed, 1022 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


