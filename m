Return-Path: <devicetree+bounces-187795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C39DAAE15E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:27:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F94917F215
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE702367B8;
	Fri, 20 Jun 2025 08:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="op74Z+2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CEB21FF31
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408063; cv=none; b=dA4NasYqmK0tQgpc9MbK9qAWDj7HkxswQPH466BwQ2l3yaFhHWvCfA3/0KJ5C/oOjtd7nGg0vrwhkzjPh/ouK+BzXi8LRe6RJKl4nU3fNGXtB3e+XIS4tn5RH9A/DmRD7Gh2p+07Wx1wkopwtIukbjtopy0NVmHuPF3/nJQzOqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408063; c=relaxed/simple;
	bh=7+iFhP/KPJUOuOXLm7a+O04Wu6GwPCVk074jNvsJ9ro=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CJQ5nmWEXZQTnQBfDqxIiFSIXFQITpbSP/noQ+DPzzXeUTEtNs4YYNnJ4guthX24fJWLekFadzzwMS8xoKpPi/7z6SvUuh1taTo8WghOKjr3bC4+qvA0OTvzSraBI6m6jXk/XR8EDGIDDaZ37Z0YbPLmLjz/46qRRRhVBIG9fIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=op74Z+2n; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450ccda1a6eso13971735e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750408060; x=1751012860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OL5RYRK2xW8zpfGNlxCIqPA3FpSRk6s+VzdpwCEyABE=;
        b=op74Z+2nQvKVjqPcaLCU+bCGKefhnJm+2+M5eIM9XR+5UDpsU4hsJGLR5/3nTXABaO
         GOLoI3KYPs9O5rpHKy3dsy17J6961SBPywo0vg6jdN3fodoORfqjn7oEmXkiUi6N1ITw
         hXYv7dJg9rXIQoMR3q68igAdPHRGDK9wfqYtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408060; x=1751012860;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OL5RYRK2xW8zpfGNlxCIqPA3FpSRk6s+VzdpwCEyABE=;
        b=mL0VZ48e1qI/HzHaxPjnPZaBMzYK/+6SFy/uZHI1vIBbx8n6n/ILd2bQzQDX0uhIaN
         akT8qA0i7rwgjXywkkBEWiZa5LucQ7Z86zCngGd8jbn5W+hqNr6YfLjOHIdmkfl1I0sl
         Uh2Oef0uC52ga+cZQ1lA4+IkWvk1iwQGGPrCS94qMne29ogueqGxPunRzryBy4YW1a+Z
         NedpO3YRv8jBhqqTJxC4kPZcSafj7DYBsCwjP4OLan9ob+VSth7Viwpvmya3rSX9BEMV
         MVInD/LIbH+AZPJ4+Y/Q+V1LVd+c4W8jwoHV73V51ZafmVktTG99Z6Cztu1H1xtLTba9
         5TuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVP9fIUc4RrNgnTN8FFsr3+dgIMRDKOqbEauTJQLIrOL8icavLaHEUshLD3Z376QhnUtxPnuTIUmBt2@vger.kernel.org
X-Gm-Message-State: AOJu0YyOSMSw8cO5950ZUHzPCRVPDEzrO4/YOKJX8XVwHLHcE8KpsxiJ
	A0BdOmETPLkjxmXZPVnSxby3fqJeBTIf8XlLEwz7toGp20Bd2UsnpC4H24qQ2wxN4G8=
X-Gm-Gg: ASbGncsznU3oyd2QTGsdJqE03r7Odhgm7DLf6qg956TMEd4sP2ATTJkbmxDt7x3jYTn
	sZIAN3Q/IWcNDXFI/HI9O/TCi/p/f8bdUTd9CQcm/HCTJB7b2+E2C+X8FVgCOIe9ViKN5HbHHjr
	BjWhOZ3LWQmLcWi+SGhjpD3OQpRANHhsdQdHN1kuyLwwHT2c/hwdUdo2sJ2qzuI4VSjFXAToP24
	phy1mrGd68dH3lyecRZep5U53HmnGbiHMSpxxMqnlw5zKSZPmN9ErzakoHZ7rDOYy40S4manrw3
	9EIUxNwvleTJGQVd0jQX3L2uHNEsl4Difr/MIC/HAb1Bz/2Tzqzg1YZoMQinwyeWW1AbcVps5br
	6vKDLcopMeILz6XWDCu6lLMxIvou2QY7/pePJjPIIpip3cFHF1ew9
X-Google-Smtp-Source: AGHT+IGsnvq3aPtcZJNsLrMJuMg3R1s04T36bsYu97E9L1l5W6bV0L0RgKZbLxc2RjE75y0x1FOIIg==
X-Received: by 2002:a05:600c:4e8a:b0:43d:1b74:e89a with SMTP id 5b1f17b1804b1-453659ca684mr17891535e9.9.1750408060027;
        Fri, 20 Jun 2025 01:27:40 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e9844a9sm52274285e9.12.2025.06.20.01.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:27:39 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Ard Biesheuvel <ardb@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>,
	Eric Biggers <ebiggers@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
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
Subject: [RESEND PATCH v4 00/10] Support Engicam MicroGEA boards
Date: Fri, 20 Jun 2025 10:27:04 +0200
Message-ID: <20250620082736.3582691-1-dario.binacchi@amarulasolutions.com>
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

Changes in v4:
- Fix commit title. It was referring to a wrong configuration

Changes in v3:
- Drop an extra blank line from the iomuxc node.
- Rename sgtl5000 node to audio-codec.
- Move the reg property of the audio-codec node right
  after the compatible property.
- Drop an extra blank line from iomuxc and iomuxc_snvs nodes.
- Rename sgtl5000 node to audio-codec.
- Move the reg property of the audio-codec node right
  after the compatible property.
- Drop an extra blank line from iomuxc and iomuxc_snvs nodes.
- Drop an extra blank line from the iomuxc node.

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
  ARM: imx_v6_v7_defconfig: cleanup with savedefconfig
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

base-commit: 75f5f23f8787c5e184fcb2fbcd02d8e9317dc5e7
branch: imx6ull-engicam-microgea

