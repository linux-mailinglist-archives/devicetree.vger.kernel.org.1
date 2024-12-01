Return-Path: <devicetree+bounces-125823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B3F9DF6A9
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:47:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 944D7162988
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81851D79A3;
	Sun,  1 Dec 2024 17:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gBU6/WMc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245141D417B
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075240; cv=none; b=O/+eiCUCQgaiC3mvupALwBW3TfKTOfNk9xbqR6jCVEMaGTDynhtD3vlIFztsciCQKpYCuXwxusSWajR7nFrh4AFvsRKYvY+RPhNYH6vWCh2NiNjB4nIiSGmWDFwUPwuRGdg5ZR+8aBfZN301TBfNdNHHd4lXfASd2bx7iFUokA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075240; c=relaxed/simple;
	bh=qGyDbu8dbHa9uRw+TklcwCPRNvx4qe8HGiBX4mxWY1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mo3zJIMzMkzoQehrHbH7f+Qi/mpGBTu+CnSvFH25/iHcpvItWIx1O/mae3It3xBEyibWlKwutmibX2FbkMI5AltEMwKY/lPaPbIO+dZIv12AbaMHQJlIGtytxUo4w9dhmpnyxoG6umnqgUcsaTZjTB++ZmufS5EvhaW7RGe9uHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gBU6/WMc; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa53a971480so543731966b.1
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075236; x=1733680036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rchwEG8OXdVUFDvOBxqjyl0K00WGKeVLIMzEYmldbsw=;
        b=gBU6/WMctDODqs2hcUo5lj8/jP16Ulrv43+IFNQHyXyawAhX12D6n4nBGVeZCoNqSu
         2RKBb1KPHA3lS8HJn3fyEiBsY/NAfqyvZ4VA07HVNUdvr12+JiJRgGE+qqFfO05gCYOh
         1tqaNjpQUiwG6xom2IxJ2++aP32v/bzzUXNlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075236; x=1733680036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rchwEG8OXdVUFDvOBxqjyl0K00WGKeVLIMzEYmldbsw=;
        b=bMU+ypmcFM33SN5AGYJPLQQX6lPHZ6idGunosoXsakXBotxn8whnQ4h+LQYz8pBe+/
         rqxUkjSjn23jwwPd5pRUjpb2+nNUJq8Ys/49PANbGJ4ix1NwsrnI1YxYjm8jWMD7UbCu
         Rj2swYxyhjLBF7FopD3GrbxPk6TB4VMhnbz1nXR6dL4lW0Jd5ANy+nswYqH8wPJTEdv5
         VZkRb2tMiaHuOX45fpPAqi3zlMVYVu9Fv5OOPDYNCRouhayCf4UqQRMQsPQVlhp/YleS
         Bm/E/HIOJKt7Ur5xpwBdbxb/sqHaNdi88CYHbVaVlqYB+oAoV5ydLKNcLGiO4Cq/ZDVy
         mhgQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2yN9nLYNAvNOsarypn0ZpKiplPTPz+++pyBtEEotrm4T1x5ueC0fpWd4UohH3PaEvr5xCW+BEcikT@vger.kernel.org
X-Gm-Message-State: AOJu0YzRkcvKP0uUpTCOJn9U4LY6iFhDsxeodBFoAh2I9cxToPv2nmNh
	VDkl5JWuJ5WMoc29N+5DPSVaM5XKlV/qmRpx7/S+0fc6Ur/zZ926Culd9aHJb+4=
X-Gm-Gg: ASbGncu3jMX5Nwo1AAyEKzNyTsFdosSWyiON2bUUGlKNqTIQyECGEN23G1SHMRPPpq0
	gqSATo1TMMLTJRbCFCnlF7r6M3cRNJmjnfh12L3R1SvGFAhVcj5gl42vvvp5QIKfKiKIQAOoq3/
	XyaQ6sKqu9WheZY38L+vf714RcfilcVPUFp1mW+uC0xbIms71jU7nkaQNkJwDmmJ2+Ifx84AhK2
	/Xs5/GglPKojjT6d9B5HnBhNtFQIhrjq4cZVrMzlkcBeYJ3aU+eiRrFo8YDXStwrTY3Gu8dSMK1
	4AO766Vp9N7lfGFvIvYqfkvBVrzcKvazBwIsllVQYkMvbw9WhLsmOvsx5ohY88KPZ5hJ4NvmPjk
	assWgcEkcTZ6o+gml
X-Google-Smtp-Source: AGHT+IHOVUCcxf0ALDonprqfVqUEbAzV53v0SZ4mU7f60wTN66QJ2QUiGKJxXNAkQ6tdMuSLScJWrA==
X-Received: by 2002:a17:907:7742:b0:aa5:152a:d0a5 with SMTP id a640c23a62f3a-aa580f2c2ecmr1673821766b.18.1733075236544;
        Sun, 01 Dec 2024 09:47:16 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:16 -0800 (PST)
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
Subject: [PATCH v4 00/18] Support spread spectrum clocking for i.MX8N PLLs
Date: Sun,  1 Dec 2024 18:46:00 +0100
Message-ID: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
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

The series added spectrum spread support for the imx8mn platform only,
but in case it was merged, confirming that the directives and suggestions
made by the maintainers were correctly understood and implemented, I will
extend this support to the imx8mm and imx8mp platforms as well.

(no changes since v1)

Dario Binacchi (18):
  clk: imx8mm: rename video_pll1 to video_pll
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
 drivers/clk/imx/clk-pll14xx.c                 | 127 ++++++++
 drivers/clk/imx/clk.c                         |  26 ++
 drivers/clk/imx/clk.h                         |  22 ++
 include/dt-bindings/clock/imx8mm-clock.h      |  78 ++++-
 include/dt-bindings/clock/imx8mn-clock.h      |  67 +++++
 include/dt-bindings/clock/imx8mp-clock.h      |  79 ++++-
 17 files changed, 1022 insertions(+), 233 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8mn-anatop.c

-- 
2.43.0


