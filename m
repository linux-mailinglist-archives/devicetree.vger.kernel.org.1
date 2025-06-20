Return-Path: <devicetree+bounces-187776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CD8AE156A
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:06:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 676547A94E3
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D53B233128;
	Fri, 20 Jun 2025 08:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Tek1Y5Ec"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73261204096
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750406795; cv=none; b=kDDyMe8R+wyZUaHOdOGRmoNRWVTnxNtkri1jiJYJc6+C2HqlujCmVAnBTlh5BIM+m20ik/xM5kRqMLalv4Ps0sRBuooP/sMB6JgB6Jg9y0TQmYgaa/HcUuJzNk3Nn57a/dPF7J9Ifea+KBUCyKkLXEQkF03G1Ccoh8Mjclvg8uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750406795; c=relaxed/simple;
	bh=KnTtT7H0BDAXwRML/nK7OxrH7+Yn6paLBhETbSoOyfM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sWe/2rPP+7Yo06QfE6gz0vMS5oXOzmYrdgwYz4+eHVXovhTDIov80svp8aKIFgghx4RF67sv8BGcksJ41h//70dkrO4198qO+xF32mp0/67y10pd2NpLFbqysPyuCLp3ATbrlExNcLdk0H4MfcK3XLum00PgX9mS3sUtzLGpSAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Tek1Y5Ec; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-450ccda1a6eso13768865e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1750406791; x=1751011591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w2eNUIeZ5UwiRp6oWlkiO1U+c9h/DGgR+XfrLwmwISU=;
        b=Tek1Y5Ec147rJi2m9BtQcujHPuixf8oYvA8faTq8BVHSkKxOLLjFunpuC4qGUvmhYa
         iV2Dt81p/NKuhdT9hwn/9JQ78cYwWMehS3PQaC+AbV4wn5SMK7dsDGVtlniY/cl9rhGp
         qpZGD93AVDa2el/l/6eHs2Xsebc8aEb9JFICo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750406791; x=1751011591;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w2eNUIeZ5UwiRp6oWlkiO1U+c9h/DGgR+XfrLwmwISU=;
        b=uKcvDAvlIpH3LTVAfbrKeWfmO/lXRCKO9oI7stVq7VPfDGMxgfCj12C5xfvuJ3Mr6Z
         GKBoc12nY5ra/s/8oy4/Q0J/DTn9JuwRaSKCoFwW8821g2FkAqZ2UdGRYoX+wj1U5eOs
         2FtGlZsKEsgJrd6XYbyCIyL5h/WujRelgix3gvjGuccvJ+h93AwDzGNft4EcTGhvmbzX
         a4dUxaaR3GQqNDInNUYW2hTFGSczEoCfLi7IPzwcbmIhogNkZ8gArUEtdoyT1UKGaupG
         JIpGBf3h0zRr+ZAPgeh/BWOTIa1XI2sp22LHDjOY+zIUUVOw0owu0ntLTumZPVu1BxTu
         ftFg==
X-Forwarded-Encrypted: i=1; AJvYcCUDdBsA9paH9i5GXQM9t2SCiqOWSfx8/iiochmkW8OpT4NN/Eqr8wKY17igb5hgn+45fYDLCH+7cLn/@vger.kernel.org
X-Gm-Message-State: AOJu0YyP8YAAWIdtvMtEMrdv5DZBlzQ/uN0zRFThGyYsUcnhdldo87Kw
	rVVyAbKL3fKyjHpzAZqReV34WA+ldlBGmNmFsS8Mu0lBL1rtxNiwZJJwcYBIaTARZpQ=
X-Gm-Gg: ASbGncuFCqG8jmCCD7ktTnhs+NMZfVPuH0dmScw9CDrpgXAa95Brvyhou7RZKD4ZQZK
	M137hgkNQPeBMza0pmtztTU5KQ2rG+i4dpbGixeJjUq8lDHQyGTEvNrl7GAoDfEVcRUSlAiwhgX
	hvxWvBR1K4aQkJzMiU7+0USRmS0qDrf/K2acORA8q3NibHiXkL54eu861T+0f7eFq4ibQHkyZn/
	3Aiu4dtH3FaIjoZIv+FEK1Rtu3zkvoyfskSq9SdyYTx2XGKnrgzNZkkBBpj+TyjS+brhdivkuD/
	WUzrn+OW4gt5qywFkHzOZI4zYogd5fKOKmLZZkvYCgzzgfmuQ4iNce8yYdqRxiYjj6F2PT/FWCx
	jFTPGta2qKfFjjGoYtG/QgzoTZ9Uq6SPTJluI03AL/mGcl3yQcR+C
X-Google-Smtp-Source: AGHT+IGex2m7oBS93TBsbAaINT6CSOEuBu1mC17t+mWbAEvl99cHeitnaXtcBxitr8TCel6t0Kgqvw==
X-Received: by 2002:a05:600c:4fc1:b0:43d:3df:42d8 with SMTP id 5b1f17b1804b1-453659c4832mr14575205e9.6.1750406790643;
        Fri, 20 Jun 2025 01:06:30 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.224])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ebd02basm50137905e9.39.2025.06.20.01.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 01:06:30 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eric Biggers <ebiggers@google.com>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
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
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/5] Support i.MX28 Amarula rmm board
Date: Fri, 20 Jun 2025 10:06:16 +0200
Message-ID: <20250620080626.3580397-1-dario.binacchi@amarulasolutions.com>
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

Changes in v6:
- Drop [PATCH v5 1/6] "dt-bindings: mfd: convert mxs-lradc bindings
  to json-schema" because applied by Lee Jones.

Changes in v5:
- In mxs-lradc.txt:
  - Fix deacription formating
- In imx28-amarula-rmm.dts:
  - Drop #address-cells from gpmi node

Changes in v4:
- In mxs-lradc.txt:
  - Fix typo Low-Resoulution -> Low-Resolution'
  - Wrap lines at 80 char.
  - Drop '|' from the description
  - Describe what each interrupt is for.
  - Move touchscreen-wires constraint for imx28 to the top level
- In imx28-amarula-rmm.dts:
  - Drop label property (deprecated) under the leds sub-nodes.
  - Add microSD comment above the ssp0 node.
- Add patch 5/6 "ARM: mxs_defconfig: Cleanup mxs_defconfig"
- Add patch 6/6 "ARM: mxs_defconfig: select new drivers used by
  imx28-amarula-rmm"

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

Dario Binacchi (5):
  ARM: dts: imx28: add pwm7 muxing options
  dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
  ARM: dts: mxs: support i.MX28 Amarula rmm board
  ARM: mxs_defconfig: Cleanup mxs_defconfig
  ARM: mxs_defconfig: select new drivers used by imx28-amarula-rmm

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 300 ++++++++++++++++++
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi          |  10 +
 arch/arm/configs/mxs_defconfig                |  14 +-
 5 files changed, 315 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

-- 
2.43.0

base-commit: fb5103df1b24f6cf8bdb333b24bbdf45d4186b0e
branch: imx28-amarula-rmm

