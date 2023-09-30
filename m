Return-Path: <devicetree+bounces-4786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D804D7B404B
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:51:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id BE40A1C20750
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 12:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456AD23D0;
	Sat, 30 Sep 2023 12:51:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353739CA4B
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 12:51:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E858C433C8;
	Sat, 30 Sep 2023 12:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696078312;
	bh=o0BDP7/qlpQFQEz4SdtV7n0arI35k2WTUQrSjrLMH8Y=;
	h=From:To:Cc:Subject:Date:From;
	b=AT1XpRJfxeXzvWQAjkpRWgnj+Of5ZAnVxc1AsCX/skmJb5W7yQIaShbKkrnIOT1o3
	 vzW3tZf040hAbfNU+bs+MZeUmPPxdf29L7wFCRG0WPJ5lyDXFaeEoN5VtZsHYUO7EC
	 UHlVZFzNvURcy0FLBYny8rGW60QJixaNQvEUZ0VIa4ANCWYD+nlPthyJtkHXuhjHAS
	 8N0tJpgpE3HGEADgGRmkmjYDUq6KUl22wTUnaO2kdjknjwOzWIoUY2bq2r1L2ajoTF
	 63A6zpTyyHdm9mk0zpwnQ+bL2GSAaxOWAGE477CNyC1qj1tZtTLyRws3ejQZkIIvY/
	 exGHvsv17DMkw==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: [PATCH 0/5] Add Milk-V Duo board support
Date: Sat, 30 Sep 2023 20:39:32 +0800
Message-Id: <20230930123937.1551-1-jszhang@kernel.org>
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

NOTE: this series is based on the SG2042 upstream series for the vendor
prefix and ARCH_SOPHGO option.

Link: https://milkv.io/duo [1]
Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
Link: https://lore.kernel.org/linux-riscv/cover.1695804418.git.unicornxw@gmail.com/ [3]

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
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 117 ++++++++++++++++++
 6 files changed, 162 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
 create mode 100644 arch/riscv/boot/dts/sophgo/cv1800b.dtsi

-- 
2.40.1


