Return-Path: <devicetree+bounces-183759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D861DAD1B4B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:16:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C81B16BA02
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB791EA7DB;
	Mon,  9 Jun 2025 10:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZjvXe6cl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE011A5BA2
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464206; cv=none; b=Y56BFmNCu24IVJsCKsvpR0CrhYYbly6ab6UdPUjhRAEbNAbQ/DZjKxHUS6QyGTZq51NbVlfvl6i2ipV6ZadWVH3Aqe1QlpVNKnYMiZ1PjmvL/IIeaD7/sN0wd9fhra1nPi51m2CqwsorN/v6dgopYu5888kDpqNKH7ua4DjRuPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464206; c=relaxed/simple;
	bh=M98Y1kBczwFCvKhTPGpt7ZrMVlfH8rYymkcXq0nIq6w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LZwMaT3rX9IYM3zbfv9InzXg6Dht6DMh3woI5IshBPgVxLFy8yXmW/3ycz+suAJx6MfYXhKRqcEn0NVdjbtnku6Zf0LnF5lbyWiQYT0Euw4x0wylzvYLfkH/oTe0jbbCdZ4bSYOFVbcE3mTUgIWbeAl5z8SB3xNBgd2L0Un3/kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZjvXe6cl; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60794c43101so3304278a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 03:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749464203; x=1750069003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TbJ1tbrVzaq9Eu0evFfvKDOWxuNNrI779QMTpMN0PYI=;
        b=ZjvXe6clPKCvL8de09jujigO7sU0pZDP6QWh6pMtwc1K+a6xLtbeFZtmZ9o08yM4rb
         1e+33Vzu/sICzAODsCesvt70pZzTT53iHFcK/t9+DU1IaYCYkp/USGYgNvJz6eEbiiz3
         SZEPrlLJaqYaePrQE9BtjLMzXXGLL04qGjpbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749464203; x=1750069003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TbJ1tbrVzaq9Eu0evFfvKDOWxuNNrI779QMTpMN0PYI=;
        b=FqxuHSi2AQQ3j0xK5v8SN0+PfPoogfIUhZO5Yqj2Vv9hWyO4yWMrhMhLtfdMh1gxLj
         y0GcNruKrcuXnL/a2hwxnwVN0AMBgDJ85Yfjfy11ex223rZT2ZdKSBuqV0iiaLO/VduY
         +tVL+WDOtdgHJ8yV76Ctrq3ygge3TFwIGUfdLHHrIcpMQfgtZdgu84gM7tbFZvdqNllf
         d6YbsYoAPynOuo4unAG+yWJCCfOH1Ny5Yw2YS+/3S1iSk9QOpsV31OrJ/IQoLs0BpUxC
         Ky0CCdkn6r1CG0VCUQY5llxPVnKFN+u6OmBgZa+R4b+y52wnIIAF2AM72qSaTwG56KSy
         jZcg==
X-Forwarded-Encrypted: i=1; AJvYcCWoIXrzCJFslRzTq6Dui17d73I/R00bQqsIzxU9ZBBUBntWo93yFEGp+3J7y2kjP5GNAKnQRsNr1MYI@vger.kernel.org
X-Gm-Message-State: AOJu0YzrhEFxpUQfKOEa599TQyKfUTN7m0SNYFir71wYcNgzCNpCJH84
	UHKOHzxFIkXAlhWeponyDcYRjFu9kPDXVbhvCIMvxreVbIQxdXKAJXHDpvNNkDt9XFA=
X-Gm-Gg: ASbGnctFu1jGxkb05weZOEl9+bVReeWOj8k6/NedjOm2bFWAOJJ+upkFjHSoUpLN7xh
	Re6WS2k2NhIIWpvKC6TqfjY668RAAhaQcodWRENedFquKDeP6aG/9lwbY0wk1qSLYIaOTq4WLdO
	SVp+jxwSdKcaAyEYwn4IygdZwk9j8+61pBCsr439hVSdB0k3AFGLU0VowV7ZS7vfO9aQ4uhEU8c
	1ouS9bC+11SnUnqApg4uCPKJg9xYt+VrFrpvigD3KCOcOpqmpQHcvb9SD2YIZP0zoNzgNdGHrdW
	sO+XTiP0zXU61WwZwfj/0hm5T6/aS/Mbxk6M7/JVj8bEzYT9UE7UukqhdYtnKKBIs31ojUIPEXL
	Fmk0KjRUR6ww879z7k7g3vdmv9bR95zm3zKFgqfSM
X-Google-Smtp-Source: AGHT+IENu+cN1K/Tck/lkp6DHf9W71FZqSXJAShei9q/DyrSApC2JOSHLAClYdMgr/5JU1IPWNRyUg==
X-Received: by 2002:a17:907:940a:b0:ad1:81c5:5ec9 with SMTP id a640c23a62f3a-ade1a9c9e50mr1280776066b.4.1749464203323;
        Mon, 09 Jun 2025 03:16:43 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.40.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1db55c7esm529257066b.49.2025.06.09.03.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jun 2025 03:16:42 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Matteo Lisi <matteo.lisi@engicam.com>,
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
Subject: [PATCH v2 00/10] Support Engicam MicroGEA boards
Date: Mon,  9 Jun 2025 12:15:33 +0200
Message-ID: <20250609101637.2322809-1-dario.binacchi@amarulasolutions.com>
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

Changes in v2:
- Change local-mac-address to 00 00 00 00 00 00. The actual value will
  be set by the bootloader. The previous one was assigned to Freescale
  Semiconductor.
- Move iomuxc and iomuxc_snvs nodes to the end of the DTS files.
- Drop an extra blank line from the DTS file.

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
 .../nxp/imx/imx6ull-engicam-microgea-bmm.dts  | 305 +++++++++++++++
 .../nxp/imx/imx6ull-engicam-microgea-gtw.dts  | 163 ++++++++
 .../nxp/imx/imx6ull-engicam-microgea-rmm.dts  | 362 ++++++++++++++++++
 .../dts/nxp/imx/imx6ull-engicam-microgea.dtsi |  96 +++++
 arch/arm/configs/imx_v6_v7_defconfig          |  27 +-
 7 files changed, 944 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-bmm.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-gtw.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
 create mode 100644 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi

-- 
2.43.0

base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
branch: imx6ull-engicam-microgea

