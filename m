Return-Path: <devicetree+bounces-181189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F268FAC68E4
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 400894A78B1
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC78C283FF6;
	Wed, 28 May 2025 12:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="T9ExcSXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C34718DB03
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434395; cv=none; b=reoqT7A7SpcCXGyDxcVEYpOXv2hzbRXH+mHksvqU297E13yoAhypm+zzhFIlfCIQu0c2H9scy3/dm2SEV7lnnfZw5PXl27zpAqIU8arJe9T6fu585g2R/OxsQftFQCJD6ni+FZtkurFs9XVODG9eGR7ci2kJ0hu2BikOmqS5yHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434395; c=relaxed/simple;
	bh=RMtFUse+IKv78RNPdpuh1ai7TKuWgiCBZr/6gVgYYoc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Hheb3SZNfIFcMgGSGBMdMZ0q0QnStpMT2ANMafQ/OEvWFo09ZfhlTm4Q6RYIvrUeZK5EpUoP7rSgeXMHyWEzD2bK4BYjT3ETuscFW8EAaDwe4JShDmUktBLoLlQroe6nhOdpMp1Jnrj03v+vus8lfNEef3qorXkx9/BWY6rd1A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=T9ExcSXS; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad1a87d93f7so735861266b.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748434391; x=1749039191; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kIm5zjYKMN6OFYzQuz3a5OKGZSsL3cGIU0/LJYInxwI=;
        b=T9ExcSXSztrgqI0DbjkOienfTTa6lisU/T9zkMpnnue6+umYgZZLZSkwwk16pljvpG
         feYuELtIniJNHISdC6VRdd9DgbHu6cH5w+pbIv9tbWFlVue8q5AKChralKFnGMXzxMTY
         UH8M9u1CAxd1ib2wVxplgJahY6HNy/sLwCQ9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434391; x=1749039191;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIm5zjYKMN6OFYzQuz3a5OKGZSsL3cGIU0/LJYInxwI=;
        b=K7iRQsPMhw8lVVzvjtBDTbpF8TkVrEdaws9Ld3dkmXpn2X1qnPFZgvbQ2ba+cnuf/w
         EcciHdoKaTY7dkaDrnE8OSsqhpO6XpXSAxuVg/JQawIru6BCaruT2jM1gZx9M/qKx6MQ
         PWdBPb7Q9tDeA2p0SaH2E3yUClD6si/Y3td9/4kNbAUxLEPYziy/d+NrivxDm24pSA0y
         gdNTGZeiCvR/xhJwnAqLgeAC1sKtZB+hiJtAgvNjuSKdCLl88EBCsqXkMPzzOcRfr57Z
         S8hRmyd6J7iiBQcsmt1giJyq0NBJGOpjGuDvUbFXycuDhMR6zAo0xSNg8//6X1aikrqa
         7Vag==
X-Forwarded-Encrypted: i=1; AJvYcCVXWCVjmXI/rx81S4eOpSKk0nhQ8AG2HzJLEw6eNYtBzBd+GSnRrp0QpnQganKEsxYWGXBuWk+t4Dlq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3rX4WymltUXtL6a7HrFany8hVFGklejtlIOG9+71f+0cdKrIV
	Tg7bX8LcVLS3SEiw/2xiBkk/3m8Sy3KeUrbEeCqjqUpk10XVe8IscmsOdQImadBNhbQ=
X-Gm-Gg: ASbGncslWVeGtOaP3MZRCMeR63ibJBGnrZ4gCN+2H0cuQZkX2KFIB3s+2tPPObiASh6
	rqWdMC7SuPzoLBqrxjoJdBxpf/WwiPo0UZhTRPhBSWNUgSuIiiAANsVgvE+bEdhFnmDSNhp0e+p
	NXYYgVu8CfZKzmiodm3OCAleETo/nasFPoENG4XOYnsh2RZZuQ88KAFRa1hLNdsY6BrbjhhNWUC
	JA2cDXP6Gn7BTJBPoXjVKG69Xaq2PipZPngZeTfY39l8pgK0oCkXdI9tPj4NaVuQDBGi+Z1dcCB
	dtjDahRIj31P+22wDs5E5GKcv+v7S60EDAWpLMCskXyPD5kVzNxWB6OAQFwIwrTQzMYSRk81prd
	nZ/ycMbuYmfPo
X-Google-Smtp-Source: AGHT+IETyf2GSBL4as/yohckfyx/K6gSToAZaD2CCVz7+dNiszWCRp1kQVLr9GgDovIvyA8Dl2hlzQ==
X-Received: by 2002:a17:907:608b:b0:ad8:91e4:a91c with SMTP id a640c23a62f3a-ad891e4ab51mr577513966b.29.1748434390436;
        Wed, 28 May 2025 05:13:10 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:5631:61bf:398a:c492])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b5b8afsm98523266b.170.2025.05.28.05.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:13:09 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
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
Subject: [PATCH v2 0/4] Support i.MX28 Amarula rmm board
Date: Wed, 28 May 2025 14:11:37 +0200
Message-ID: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
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

base-commit: 33f410b0eaf4ebc3272720b4a68943a73a59cb05
branch: imx28-amarula-rmm

