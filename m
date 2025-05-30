Return-Path: <devicetree+bounces-181841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F11AC92FF
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 18:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15AA27B5A82
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 16:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CFD2356B8;
	Fri, 30 May 2025 16:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="ZQB7lhVN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6FCC194124
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748621277; cv=none; b=nSbWlmTnjM+ELTMcrrxHT0XR7zcQj5ag9n31LlmsNR477ww+j7RRqguagIuy6C4wLgljBc8ClzhTicDmt8HaVJRcoopzgD+YviMRv0oG5wf6R3qKKK99crklHa53jYGpqzuN5ygaCS4J7BhpPMqdnvaBlhJRut9oxCVQ+SeiC+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748621277; c=relaxed/simple;
	bh=KmLizsZC/EHsG+B3pqWO/Yxj0X1XdikxJ6WfhvkFKkc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YVwZUKFlxbrY/NT/5jgWfDPIzfapHM+qfuT0uKqB1tyjiZr6NdVjkva8dfWikCKfKhHqazNLFH4jpOBzF3WxBa943tEYr/H3LwbPdYn7zUGzQiDInXi9oNyBPXxgrf2Gu2tP4iYVa//Nuv9WHN4Aik9CjSV1VhsRS4G9RKWWvao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=ZQB7lhVN; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a375d758a0so1868481f8f.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748621273; x=1749226073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=koRnW66k+022ggfFoSoQrqqTLl823zuv/376lcTR9I8=;
        b=ZQB7lhVNliQktHrvBDzHNyL5o9MeI/nVYyAtfHIKQu8sceJi988rOX6/qfcDjYSnEG
         Q+k5iwoK2MhOkOfj3TsG8xsetsVdM7K9AVnyXRJfzlyGBPaCupYKUetB4cgcRzuZhmt5
         Y9skRKUAs01z4OVPJOHlsAxpb3jWXujCtOxCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748621273; x=1749226073;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=koRnW66k+022ggfFoSoQrqqTLl823zuv/376lcTR9I8=;
        b=uruYnRWh7COAM3sNohtd+4fYHAfyN9FNr4a31Ocsn3XdOG0B1fHOl8l6ek/oFbkaG7
         iAnesinLNJSeyJrcns3lidJHA9wEhWubHdyta8iVU0NGU238xpoHH7r6zGLZYoTLgbf+
         agw216k1bDDcoJHQT5OGpoTJzaeiVzDe2QBlP30KUjtRDEgZHxxfpPmH1S1FkQhtFf4f
         QiegMbmymqRA5rRBKI3eLi09I4F2AO9Duf4MeBxORgXAiSLyw3IPw6HzCRBbZSMGxhDO
         wPFOZI3YHOL4qg0OnrAASY23QDJjoSpEa68pSet4Ko9HhpnJGGMWZ+QWAJcy8YIcwnCk
         HxRw==
X-Forwarded-Encrypted: i=1; AJvYcCVy5cyQzM+3COWEn2F61z6tbGTnFD7O/K2aGEftSOtZhNvo33gttfQQ+cRqaNMDdY7rdQtTSt2bkEtM@vger.kernel.org
X-Gm-Message-State: AOJu0YzcK1w8dpiOqeRgFZFQDcFQef9+Wy4QP56ohL33zf0IyY6k5oQq
	ke/IbKrW1FBJtdb3gOLZYOXXvekGzD+LBWoQpzcfFra/AMlQUsqYSVhGAwemZV+n8C8=
X-Gm-Gg: ASbGncsiKSMLAKHVnSzvMn7mWMwNt2IOERsBDtjuHCdjshdF/bMf6naS+gPoejG6h9L
	7y5Kawt7WXHrrSIUzlTz3JpXTQdMhDvM/LqPX8RwgrVxZkWwkqXClLSb9+aRjKSxmFF8L5yksRc
	6sZDMrWoUridRDAt0zZnaCMhuQ6XZl+tGAJGv0tbhs3E527pXTrwZG5q9IT4OrNKPSA6TLdLE3c
	gEvTBXLDRrma4Qronzt3vNIxYA61QidGJuOvdWQ8/0jZf4C5gXAI3d1nVVOK1kouNkdFIkwtMON
	CfGX63u6/j1ITpG4Mfe+Pa2vcHrmwUrwJ1IXFcCwtLL6orkNYrkuPe4XePcyVIwxLkF/AaqIjVP
	9BaxI0bteB9shJxCZEGCr7+3iLZp7DrZBbZavwHaN
X-Google-Smtp-Source: AGHT+IEgCfDLZvTgBMKT8zzGqvGoHF8+fTV9cPyrjWspDgJx5+AgYctVuJO1cy1dC+MaM92LcBU+ZQ==
X-Received: by 2002:a05:6000:25c2:b0:3a4:f038:af87 with SMTP id ffacd0b85a97d-3a4f7a9d575mr3347648f8f.47.1748621272729;
        Fri, 30 May 2025 09:07:52 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450dcc18a80sm9716365e9.38.2025.05.30.09.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 09:07:51 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	Frank Li <Frank.Li@nxp.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Ard Biesheuvel <ardb@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eric Biggers <ebiggers@google.com>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	=?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Marek Vasut <marex@denx.de>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/6] Support i.MX28 Amarula rmm board
Date: Fri, 30 May 2025 18:07:31 +0200
Message-ID: <20250530160748.2476088-1-dario.binacchi@amarulasolutions.com>
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

Dario Binacchi (6):
  dt-bindings: mfd: convert mxs-lradc bindings to json-schema
  ARM: dts: imx28: add pwm7 muxing options
  dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
  ARM: dts: mxs: support i.MX28 Amarula rmm board
  ARM: mxs_defconfig: Cleanup mxs_defconfig
  ARM: mxs_defconfig: select new drivers used by imx28-amarula-rmm

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/mfd/mxs-lradc.txt     |  45 ---
 .../devicetree/bindings/mfd/mxs-lradc.yaml    | 134 ++++++++
 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 300 ++++++++++++++++++
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi          |  10 +
 arch/arm/configs/mxs_defconfig                |  14 +-
 7 files changed, 449 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

-- 
2.43.0

base-commit: 6100186e509525510e2b38d790338fae3fa463f3
branch: imx28-amarula-rmm

