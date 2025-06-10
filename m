Return-Path: <devicetree+bounces-184180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8A4AD32FE
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9946189709E
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:02:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D0C428B406;
	Tue, 10 Jun 2025 10:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZrRM3T4I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C721288C2F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549707; cv=none; b=ewaTjBgzj3kCZ9XardzYZqUjhAO2J02U8G+uju8fYu+/AlbGAtv4JI4iQp1s3qE3MXZZ1egSKgE+ZQCMLRQWVMT4zjxXKbUfJrwOU1wl2NmRJ3xbyf4qSm7HngMK8y7U0AcJV+lEQJzjYd2SkA23IjrLj6d40ZKQ5JCOCvANAgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549707; c=relaxed/simple;
	bh=BBsO/QzFamCFKBviOR6aJuGOuWb7j+QU2IdRMrxiOmI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ht/xXJ7jB/t2/4RiUxi5RUakyyGiziMasnsbvTQcLy+8FS0R7z87L2PJh2tDydAUtZywZUmHxsW3DgFxgxvA0l2lTDe2Q8CNAezvAN4fvNp9p5On907eUd0Eaw2LvcbfxmHp6S5MPY7bJYkM9Gp4ROakxucPW/wyr3vZdO7gds0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZrRM3T4I; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-607cf70b00aso5065822a12.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749549704; x=1750154504; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tNFLgO9kfRuOPSKdW9yn0XSFMUHevRdsYw2FI16nNfU=;
        b=ZrRM3T4Ips+MJzOc/Rxq2l2QGashZ9i+XwfKruzhsugt5TRMZTTT42885G57geHtTm
         hw4vlJrRC4tpCKfFx46qaAjxiBM/qrfmPnqmmov5dwrKTgnvM4jyzMHCQnTZpSEDf9zG
         +FOh2EEmravMG8C31hKM2FKw5Ni72PsE6ZTNo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549704; x=1750154504;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNFLgO9kfRuOPSKdW9yn0XSFMUHevRdsYw2FI16nNfU=;
        b=edtUoK5ozyxgnroWZ2KybJENKjUJXZtHEOFudy3Dw75wciiD9nOYr9lGUKzF6G3KKZ
         eu3eOXu7edV8YRbDLVFuKoKMWDe+YfpDhm/W7HrVPe342Q5XGnGVARt/tZ0liVkLwWQc
         hsnL1k/CYzH22GRJ0o5JF+eVFG94A5E/O69o8SqwQ0o5nnsXSh/GYjCMzl1SX4TEg12m
         k3QgcgEY5zTaSo2m3i6UqIovybJRsO+sBKAUD06hykCpfkElNRYjdO5H/9QASXwZ17Ev
         WNd1OHam9KaOLpat2MRo6bxSQm3r8wSUk4djtfnESF2v0zU/O+bs7BO5IeV0LPad0SHT
         UYpg==
X-Forwarded-Encrypted: i=1; AJvYcCVB5nE5t9dnoNOrFuhQqr9Ze6hjQzRPgDF0RjxWRDKaD5uFbLMqmb4uRrdjCa09GPVqvsP2/2c8e+KS@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ablT9A6rIbV99XP9v1gjqt/KEVND5qeucKVKs52FVJSG+eUq
	PH4l6+mn0xFMZwKOXy33Y8mxckUQCJ/1TWsR88enMBltnSOb9WPigh17UeGXy/Y0ljU=
X-Gm-Gg: ASbGncsOLtpz8XP6F0wi85MTyvHidSB6MyKQB63gPulaiiOK3HxpWX2BQ6tb8ByK6Es
	czUBC5P252RYEhQu6Z12EVOY4TNVThVfFOuKAnRReypzijcDnVPDOcsWMylZ8wCa0AMwHxynbzw
	N5F01byeG3v4tRxzB6UP8dWDr32UXfPtxDXZbbg3sfh2/JtZ+ZT7wlbf1McuSEizyLU2C62tFmg
	hh+jFVE80WiTACwDpI9afHswQs9r0DYu8TnnGJRN3arNaQvY+21VLME6/yCzvD4gXwLHM0jMlfC
	eypsNXLuA+KlIy8pXi7FaTIKRg61zu6gm6Yut0HcvZdMDjuq540L71v6/dYu6F9xVv1a0veKbpj
	khlYl9/Jg10cLehQe+IoVWono/CE=
X-Google-Smtp-Source: AGHT+IG57PZ6Xm8M/Dqr4czCnzfYZyTYEAAg9doQ7EidKIaUDhSXFwVRX2wpqWFLIhoaLQHBuY9O5Q==
X-Received: by 2002:a05:6402:26c6:b0:607:5987:5ba1 with SMTP id 4fb4d7f45d1cf-6082d9b3428mr1770004a12.20.1749549704176;
        Tue, 10 Jun 2025 03:01:44 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077837ed0bsm5953438a12.36.2025.06.10.03.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:01:43 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Ard Biesheuvel <ardb@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>,
	Eric Biggers <ebiggers@google.com>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 00/10] Support Engicam MicroGEA boards
Date: Tue, 10 Jun 2025 12:00:13 +0200
Message-ID: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for Engicam MicroGEA boards:

- BMM
- RMM
- GTW

based on MicroGEA-MX6UL SoM.

Changes in v3:
- Drop extra blank lines from iomuxc and iomuxc_snvs nodes.
- Rename sgtl5000 node to audio-codec.
- Move the reg property of the audio-codec node right
  after the compatible property.

Changes in v2:
- Change local-mac-address to 00 00 00 00 00 00. The actual value will
  be set by the bootloader. The previous one was assigned to Freescale
  Semiconductor.
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS file.
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS file.
- Drop an extra blank line
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS file.

Dario Binacchi (10):
  dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
  ARM: dts: imx6ul: support Engicam MicroGEA-MX6UL SoM
  ARM: dts: imx6ul: support Engicam MicroGEA BMM board
  ARM: imx_v6_v7_defconfig: cleanup mxs_defconfig
  ARM: imx_v6_v7_defconfig: select CONFIG_INPUT_PWM_BEEPER
  dt-bindings: arm: fsl: support Engicam MicroGEA RMM board
  ARM: dts: imx6ul: support Engicam MicroGEA RMM board
  dt-bindings: arm: fsl: support Engicam MicroGEA GTW board
  ARM: dts: imx6ul: support Engicam MicroGEA GTW board
  ARM: imx_v6_v7_defconfig: select CONFIG_USB_HSIC_USB3503

 .../devicetree/bindings/arm/fsl.yaml          |   9 +
 arch/arm/boot/dts/nxp/imx/Makefile            |   3 +
 .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  | 303 +++++++++++++++
 .../nxp/imx/imx6ull-engicam-microgea-gtw.dts  | 162 ++++++++
 .../nxp/imx/imx6ull-engicam-microgea-rmm.dts  | 360 ++++++++++++++++++
 .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi |  95 +++++
 arch/arm/configs/imx_v6_v7_defconfig          |  27 +-
 7 files changed, 938 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi

-- 
2.43.0

base-commit: f09079bd04a924c72d555cd97942d5f8d7eca98c
branch: imx6ull-engicam-microgea

