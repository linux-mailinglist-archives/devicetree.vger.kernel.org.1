Return-Path: <devicetree+bounces-6467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC477BB780
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 312082821D1
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61A851CFB2;
	Fri,  6 Oct 2023 12:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OalVg+e1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C7F1CF9A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:26:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5411BC433C9;
	Fri,  6 Oct 2023 12:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595216;
	bh=5bXGHkGr5/pHhrZtZ+4lgLJE9Up06okKf8OassnSh44=;
	h=From:To:Cc:Subject:Date:From;
	b=OalVg+e1UaK1t79fT2L2WyGzQ3V37IVB/knbOYWzS0ETR1SpiEd+Sdm/ny9AXkh0O
	 n/Lyv7CYoqbxCD0pE2OTTyrE9+njF03o+DO63q2epvIRRJA5D5OJ94YIYP8Se/0CAJ
	 CBJr3lQAyl7/gyprO0nTrakrcI2NBhidpFUOxf+NpxEEbrTRkej9Im/xlIngew1yGL
	 QzWhWFBYMqBvQxQZqQU8JWBtsRVE0CKDsbZO5wUXVPXfYbBaLOBqERIaK6Hkp8OuV5
	 wd9cWXVcuNW0TTWyaazmqtJpvwiEO5yDpNLaNhOCyetdcjy+G1stfiE9yX6NRqhw4+
	 aNT2PQlulMGwA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>
Subject: [PATCH v2 0/5] Add Milk-V Duo board support
Date: Fri,  6 Oct 2023 20:14:44 +0800
Message-Id: <20231006121449.721-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Milk-V Duo[1] board is an embedded development platform based on the
CV1800B[2] chip. Add minimal device tree files for the development board.
Currently, now it's supported to boot to a basic shell.

NOTE: this series is based on the SG2042 upstream series[3] for the vendor
prefix and ARCH_SOPHGO option.

Link: https://milkv.io/duo [1]
Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
Link: https://lore.kernel.org/linux-riscv/cover.1696433229.git.unicorn_wang@outlook.com/ [3]

since v1:
 - fix dtbs_check warning
 - add clint node
 - sort dts in Makefile

Jisheng Zhang (5):
  dt-bindings: interrupt-controller: Add SOPHGO CV1800B plic
  dt-bindings: timer: Add SOPHGO CV1800B clint
  dt-bindings: riscv: Add Milk-V Duo board compatibles
  riscv: dts: sophgo: add initial CV1800B SoC device tree
  riscv: dts: sophgo: add Milk-V Duo board device tree

 .../sifive,plic-1.0.0.yaml                    |   1 +
 .../devicetree/bindings/riscv/sophgo.yaml     |   4 +
 .../bindings/timer/sifive,clint.yaml          |   1 +
 arch/riscv/boot/dts/sophgo/Makefile           |   2 +-
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     |  38 ++++++
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 123 ++++++++++++++++++
 6 files changed, 168 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi

-- 
2.40.1


