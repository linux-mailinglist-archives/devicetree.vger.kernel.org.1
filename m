Return-Path: <devicetree+bounces-181601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A39AC7FC0
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 16:36:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 015B31BC1E48
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C714E22AE75;
	Thu, 29 May 2025 14:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="dbIK7raU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90A122ACCE
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748529356; cv=none; b=MF77BaDLGcRr+jbJ9cCJBd9hjr1LAE84vjl8eEFGGDH0tj7yUaSaZI24TZZ0jz5d1jtnvvhA2y68ZEtss9+Okst04BAZM1tpKFehJuQCENeXHzbfigH/PAv/F8EBz6xCh9jEvwxwmLr8fNUBCBGWTPAZPcm0Sf1N5U3iPu3cuJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748529356; c=relaxed/simple;
	bh=gA9tjOLVx8ac1A/yQTSk8Q1ajFXlqMG1hbeiLwWZnXI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Esv/YiJHI/60NtVIhMoYg4d5Lv+5lacRNBY+4Ig4GEDWveekLKJxPT9O3AHv79gh+R8EE8uieT30HCBqgLL2Er9gXG/6YX4s1yEYUYYWR8udQAtrCFnic81FPL4RixAXSAxbbsg7a2WZlApJUoGahHbHlsERRpBsQqojaPxF0Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=dbIK7raU; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad51ef2424bso193445766b.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 07:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748529352; x=1749134152; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hzYO3WM+V9HIufyqv0Dcv1pFHm97P39m0ar0LDGky6I=;
        b=dbIK7raUFStfh/QYdSvDbqIEt7IG31T2++jE2Kvc/slSBXkclUMn/JgB/Rvf7bMVDn
         wUkNVGVjkfnTHEz6DdT+5CCn3pfki0s6YJPbkAUx8izlgaTikIYJ0eRWfI5fqw3pXOMV
         3EoPFyTtnIcWKWGJgpgRwwKeKYMw72SYE4Lk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748529352; x=1749134152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hzYO3WM+V9HIufyqv0Dcv1pFHm97P39m0ar0LDGky6I=;
        b=SG+DlphqVDNiDqdq7p7nut40aV39VSbwyLi282T79y6Lxmu/lVko+/8z5JVRzHm/WK
         2YXo3apMQUWY/nfdp5aYpg/zvGKfNtNZvO3sNXvG8rQ+LtkJZA8IGXhpcTcTDHVtqRFq
         xvx7InT3qUt/QWo18Lc3emo7tkBbdLoFl5hFFjZMoOE9o1W2xNM9GknPbuYXxV0PSU2l
         QwDOZnhYLaNGjqiKSPbRHmF8qD+QQdCphgpfz9xh1NAVdDknGGqSB+jzhMSfXAT/BqLv
         ugyGhn0vQj81ecmMFQrniNJ8GqPDgbqbcTv2+AYyGF+VCCV32TendJLKaYbUKDn8Ecox
         /l9w==
X-Forwarded-Encrypted: i=1; AJvYcCWLYbyVaGG6VN2EMNtPCt1dswwNT9bQA6dNEbTZ8XBXlkTtzYn7lbFYrWZ2mYaDxDq9C88S5HEHKLGp@vger.kernel.org
X-Gm-Message-State: AOJu0YwcC06qg9b5q7Uy08AELpFP7T21yPLrMlZqiHpjwHbBF/P1sg9u
	81+SYNXF8DTSpf3GqjRkVDaa9ygbdLj5Hg2Bp0zrQ0EfOhDLyebiY+bCPcA/BfDwZP0=
X-Gm-Gg: ASbGncuwSOzJKBU/E9EaipL/UxFevELgHTQ3i+YlyQZoAHHYdkdf2yn1Zdlh2US7dvZ
	i9xp0bTQ3ipYpoMTAslMcAqDnaM1HfA1wktkbq7EkD6hwYSq/YT/g880u8yqs4MRfgx8AmQ2N/b
	I/1jncsO9SXizJ5sRne+s4Liz1dsgr8CGSdHt0+FDHo6Srf49JZcOM1XXD+ozFFafeh/PFoLzun
	HFjX25ruMVn1piSseNTitn6YiwC0n/Pknnzg8Dc48WnIWW7cs1kYjHRCYUpw2QrTeoPG0cvKN1i
	vMu7oB2U0haltDvjmfe0qzYD+u0X7fwplsm9d80Agr2E/4MkXONPWxMfgH5onTY/E0Usi1YaO1v
	Uf1A8t+Em+t1CtM+H
X-Google-Smtp-Source: AGHT+IGERChiFGE/d/VgaSjB/fBHCcIx46SIOubK/5eXYgYTFXXviLMgUfe7m+xgS8A7iYuziAf9Ew==
X-Received: by 2002:a17:907:944b:b0:adb:1b2b:fe27 with SMTP id a640c23a62f3a-adb1b2c0fe2mr217561966b.36.1748529352037;
        Thu, 29 May 2025 07:35:52 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.42.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff075sm154305866b.37.2025.05.29.07.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 07:35:51 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Eric Biggers <ebiggers@google.com>,
	Fabio Estevam <festevam@denx.de>,
	Fabio Estevam <festevam@gmail.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
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
Subject: [PATCH v4 0/6] Support i.MX28 Amarula rmm board
Date: Thu, 29 May 2025 16:35:07 +0200
Message-ID: <20250529143544.2381031-1-dario.binacchi@amarulasolutions.com>
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
 .../devicetree/bindings/mfd/mxs-lradc.yaml    | 131 ++++++++
 arch/arm/boot/dts/nxp/mxs/Makefile            |   1 +
 .../boot/dts/nxp/mxs/imx28-amarula-rmm.dts    | 301 ++++++++++++++++++
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi          |  10 +
 arch/arm/configs/mxs_defconfig                |  14 +-
 7 files changed, 447 insertions(+), 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/mxs-lradc.yaml
 create mode 100644 arch/arm/boot/dts/nxp/mxs/imx28-amarula-rmm.dts

-- 
2.43.0

base-commit: 2d1e9b3978bc041336f1bf6c611fbbf435a297f5
branch: imx28-amarula-rmm

