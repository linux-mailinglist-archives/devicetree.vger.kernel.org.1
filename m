Return-Path: <devicetree+bounces-15244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 665FF7E93E7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E5251C202D5
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:09:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B80F8441B;
	Mon, 13 Nov 2023 01:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMq3rYRZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E794402
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:09:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 514F7C433C8;
	Mon, 13 Nov 2023 01:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837762;
	bh=NWIlzFEgg2A3+SpkYxmsGisYK5SmdcnCfOPvo5IDKK8=;
	h=From:To:Cc:Subject:Date:From;
	b=PMq3rYRZJrQbhLBj0X7qQDeo5yg0CezYYjpfZRMrnxhUFb9ku/AgdcENPQSUJoY40
	 A1Fmg2/M2FooliyANBTSfsMsXAcww1LNdwTkno680bvuvDhzfhCTwTfi223qqhN6PQ
	 oXMN3GC4sOfSPfLZWocDw0RjZYr1PQ+82yZGeAz+gievaNco5TfNvbGnZHR80lMmBk
	 pDwAeS+w+TPD/ILgA1auQ6UbjiW5XuA2nXVC9JGK7sPxt1pHxS+Dq26L/OcnZcWscf
	 EgiH+mp/3nO8PPPCaZRwb4vJTD4lK4+4gA1BITRgjEc448aZB488XxJrMF4emnIBvM
	 Cla/YDhGteDaA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] riscv: sophgo: add pinctrl support for cv1800b
Date: Mon, 13 Nov 2023 08:57:00 +0800
Message-Id: <20231113005702.2467-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds pinctrl support for cv1800b reusing the
pinctrl-single driver.

Jisheng Zhang (2):
  riscv: dts: cv1800b: add pinctrl node for cv1800b
  riscv: dts: sophgo: set pinctrl for uart0

 arch/riscv/boot/dts/sophgo/cv-pinctrl.h       | 19 +++++++++++++++++++
 .../boot/dts/sophgo/cv1800b-milkv-duo.dts     | 11 +++++++++++
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 10 ++++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 arch/riscv/boot/dts/sophgo/cv-pinctrl.h

-- 
2.42.0


