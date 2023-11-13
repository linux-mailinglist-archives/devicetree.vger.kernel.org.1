Return-Path: <devicetree+bounces-15239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B397E93DD
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:07:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA24D280A7F
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CA293D82;
	Mon, 13 Nov 2023 01:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/EOtILU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D44402
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43E3EC433C7;
	Mon, 13 Nov 2023 01:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837653;
	bh=sOrImuVHq65cb4dbzAFQe06ipFaS43Ps0KtMNSiSL3k=;
	h=From:To:Cc:Subject:Date:From;
	b=K/EOtILU4kBTOHK7+AdCwY8JyGDr76XunsubN2vOGquSeXlCGQMjrQFf3+VkM8M4o
	 PiK2sko+N34cPWapww8zBMNkefZtbnf0MHniQyP8eOPt19uwn+c2juEPbgySOSVStC
	 Uh6M/jErqlDoFracJmQMdY6r3ZvVz1vpNG0HPNb61dMC6mkWS4w5WRMvh/alwf/ZwP
	 JuMlUetTxVetL2WcWgtOfIHfH0JjZ0tbYRSgQosojcg0PQeAL6V0AwK3Kfg20bzozx
	 SpS6HBQhKUVuv9XrQMFvonY4j41+AdpS+wXjmBICDpkTHCf6oyBSbKk4eEU0dV78Br
	 5kai7HYXRn3mw==
From: Jisheng Zhang <jszhang@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
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
Subject: [PATCH 0/4] riscv: sophgo: add reset support for cv1800b
Date: Mon, 13 Nov 2023 08:54:59 +0800
Message-Id: <20231113005503.2423-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for sophgo cv1800b using
reset-simple driver.

Jisheng Zhang (4):
  dt-bindings: reset: Add binding for Sophgo CV1800B reset controller
  reset: Add reset controller support for Sophgo CV1800B SoC
  riscv: dts: sophgo: add reset dt node for cv1800b
  riscv: dts: sophgo: add reset phandle to all uart nodes

 .../bindings/reset/sophgo,cv1800b-reset.yaml  | 38 ++++++++
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 12 +++
 drivers/reset/Kconfig                         |  3 +-
 drivers/reset/reset-simple.c                  |  2 +
 .../dt-bindings/reset/sophgo,cv1800b-reset.h  | 96 +++++++++++++++++++
 5 files changed, 150 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/reset/sophgo,cv1800b-reset.yaml
 create mode 100644 include/dt-bindings/reset/sophgo,cv1800b-reset.h

-- 
2.42.0


