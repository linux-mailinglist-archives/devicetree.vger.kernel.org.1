Return-Path: <devicetree+bounces-127342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 494609E538D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 12:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BA36167356
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 11:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC911F03E4;
	Thu,  5 Dec 2024 11:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Vegh89O8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BF41E1A25
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 11:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733397585; cv=none; b=eTHmMY8OwaflMANkVZ6D3WPjJkucQPXbG8Bn7mCdXkQyD66rEbEjprVxv4Yl3m3e4rYKUFIDx9+RBCL/gOZTpVvvt0/9+PRkOIqpmU9rIMxOFUZ21tuXPKw7vajrn/n6EGm1V5Z+bQkvar9+iz2NW61aSTDRthBJpiLbCr5TjF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733397585; c=relaxed/simple;
	bh=2BtyLulbVctROgY17Vj7ec+/Kfil/FkZFvqDIpetgzU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SI8glCj61D6xDFp/lzVX89cp23jUIkbj17GBbqVj85IZF79bLcDbWx7xMfHrPLnu3O79UznHsBVT7nA6tFtis4AhXD9qTDo9+JO531x70JpJuaNGoQEkk1L8yN41WYDDTFvsiVGxd/RmYlzfNx4uYztYL7Bjs85d4zOW+caQMI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Vegh89O8; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aa578d10d50so118439166b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 03:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733397582; x=1734002382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gam048ootOPzo1BYL348MdN7mDqE4kD/okgjHVqyGrc=;
        b=Vegh89O8kvhWqXh9QltgxErKFtHbwVXrfpgJoyGSxqAKhP1MzVLbkNJcEh974x434y
         hfXlaJ1HbybC2KPGsE92CJJ+xn9nGwTAh7uWVVBXhwdtoB6yzj1+Hbnlp0v4EA5l0kzV
         MIscKkPfdloBlkoLUMSDbgsP0XKHJ4FF7UFGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733397582; x=1734002382;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gam048ootOPzo1BYL348MdN7mDqE4kD/okgjHVqyGrc=;
        b=e7O4AZEPs2dZq/jHmyAUxlnOSGQpVkYHqQLe7lt53HvExdIRTRHbbyzdTrNShGaOTW
         VCvq64SO7RTHuZio3H4pwH6mVMj++bYAvNKPhFwOozFCBZI139kCrbGNFOMjQkLb8X/3
         0wHXQCFJ0AvgZ3aIAIE7MxHTOasK8ysu18injmQE3mZvQo1Autc8IUvRZj9uKlHx5Yay
         9kTYc3xAepu4Ho/YlRw1W/Z2XrxWf61DctkZpRPu3w2y/Hs41IEaBPKqkTDJGVN7as3P
         S87eTxVbEpTHN2xMuhO2ICsbCavXWJ3R1vg8cFQDCN7hBDCp/6zN5hxvTZwSZ5NR3Ktd
         LzPA==
X-Forwarded-Encrypted: i=1; AJvYcCXl80NG9rqYfIzm3HeA0bHfY5SwlZotLyRojWUJPMC1gnz/0vx8FCXarGwFsviSDCTXGYH8OMcCqamp@vger.kernel.org
X-Gm-Message-State: AOJu0YzwbydoTRB3UglDPZRB7wK2z2ASVE1W0ZLEroP4ma9/wEIEdXjM
	uTfJktbegzf3L9UGnJo1xPsIRDLq7nShodWTIOxk/XsD4OlLBIoUnaCUa2ksJ9k=
X-Gm-Gg: ASbGnctz3TDQwhrczQi0sKrHAQHRHwDYYNQNqkQNTuC8qWFlruB++lzCIpy4gcVOQaw
	0iCptLRWAA+HjNdbsYkl7jAmhAca2ogTtC+xgTbC9vL2OtasgEiePo4wxY13MWZYLzjimg+4L0B
	qZoMKlXb5P5qNOjVWxk+5sy6xVxfsW+5Wf7jgaPXP7GUdqp1XnjaiRFKdlPoX4oF1GzpmKPOrgU
	0UT8iHTddbS9dm8RjmSHgoyAGjyX5QDUsSut1iCpPJICEpejmgvNJY7nZJdTuENu+cxZE+arXIA
	HAHfUAmfLXisW+SsFizqEiB7e9PYC/cSEgkpNu3PMP2NaA==
X-Google-Smtp-Source: AGHT+IF2SWjIDsKvaimdsUq5AY8I6ysaFyU1+v+YH4Hs4Tgz8lhC8r7Xmrl2RfHy+psFeGdbn3X1oA==
X-Received: by 2002:a17:907:948b:b0:aa5:427d:b101 with SMTP id a640c23a62f3a-aa601824277mr1086282766b.36.1733397582274;
        Thu, 05 Dec 2024 03:19:42 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2001:b07:6474:ebbf:61a1:9bc8:52c6:3c2d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm77505266b.87.2024.12.05.03.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 03:19:41 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v5 00/20] Support spread spectrum clocking for i.MX8N PLLs
Date: Thu,  5 Dec 2024 12:17:35 +0100
Message-ID: <20241205111939.1796244-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds support for spread spectrum clocking for i.MX8MN
PLLs (audio, video and DRAM). It has been tested for the video PLL on
a board using i.MX8MN.

The patches added in version 4, such as the dt-bindings and the driver
for anatop, were inspired by the extensive email exchange from version 3:
https://lore.kernel.org/imx/20241106090549.3684963-1-dario.binacchi@amarulasolutions.com/

Version 5 adds only a few fixes to some patches, merely addressing
compilation errors and warnings raised by checkpatch, but otherwise
does not alter the structure of version 4.

The series added spectrum spread support for the imx8mn platform only,
but in case it was merged, confirming that the directives and suggestions
made by the maintainers were correctly understood and implemented, I will
extend this support to the imx8mm and imx8mp platforms as well.

Changes in v5:
- Fix compilation errors.
- Separate driver code from dt-bindings

Changes in v4:
- Add dt-bindings for anatop
- Add anatop driver
- Drop fsl,ssc-clocks from spread spectrum dt-bindings

Changes in v3:
- Patches 1/8 has been added in version 3. The dt-bindings have
  been moved from fsl,imx8m-anatop.yaml to imx8m-clock.yaml. The
  anatop device (fsl,imx8m-anatop.yaml) is indeed more or less a
  syscon, so it represents a memory area accessible by ccm
  (imx8m-clock.yaml) to setup the PLLs.
- Patches {3,5}/8 have been added in version 3.
- Patches {4,6,8}/8 use ccm device node instead of the anatop one.

Changes in v2:
- Add "allOf:" and place it after "required:" block, like in the
  example schema.
- Move the properties definition to the top-level.
- Drop unit types as requested by the "make dt_binding_check" command.

Dario Binacchi (20):
  dt-bindings: clock: imx8mm: add VIDEO_PLL clocks
  clk: imx8mm: rename video_pll1 to video_pll
  dt-bindings: clock: imx8mp: add VIDEO_PLL clocks
  clk: imx8mp: rename video_pll1 to video_pll
  dt-bindings: clock: imx8m-anatop: define clocks/clock-names
  arm64: dts: imx8mm: add anatop clocks
  arm64: dts: imx8mn: add anatop clocks
  arm64: dts: imx8mp: add anatop clocks
  arm64: dts: imx8mq: add anatop clocks
  dt-bindings: clock: imx8mm: add binding definitions for anatop
  dt-bindings: clock: imx8mn: add binding definitions for anatop
  dt-bindings: clock: imx8mp: add binding definitions for anatop
  clk: imx: add hw API imx8m_anatop_get_clk_hw
  clk: imx: add support for i.MX8MN anatop clock driver
  dt-bindings: clock: imx8m-clock: support spread spectrum clocking
  arm64: dts: imx8mm: add PLLs to clock controller module (ccm)
  arm64: dts: imx8mn: add PLLs to clock controller module (ccm)
  arm64: dts: imx8mp: add PLLs to clock controller module (ccm)
  clk: imx: pll14xx: support spread spectrum clock generation
  clk: imx8mn: support spread spectrum clock generation

 .../bindings/clock/fsl,imx8m-anatop.yaml      |  53 +++-
 .../bindings/clock/imx8m-clock.yaml           |  77 ++++-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  11 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |   2 +
 drivers/clk/imx/Makefile                      |   2 +-
 drivers/clk/imx/clk-imx8mm.c                  | 102 +++----
 drivers/clk/imx/clk-imx8mn-anatop.c           | 281 ++++++++++++++++++
 drivers/clk/imx/clk-imx8mn.c                  | 188 ++++++------
 drivers/clk/imx/clk-imx8mp.c                  | 118 ++++----
 drivers/clk/imx/clk-pll14xx.c                 | 126 ++++++++
 drivers/clk/imx/clk.c                         |  28 ++
 drivers/clk/imx/clk.h                         |  23 ++
 include/dt-bindings/clock/imx8mm-clock.h      |  78 ++++-
 include/dt-bindings/clock/imx8mn-clock.h      |  67 +++++
 include/dt-bindings/clock/imx8mp-clock.h      |  82 ++++-
 17 files changed, 1026 insertions(+), 234 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8mn-anatop.c

-- 
2.43.0


