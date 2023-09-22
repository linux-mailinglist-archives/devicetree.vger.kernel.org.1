Return-Path: <devicetree+bounces-2327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 405E87AA90D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 056CB282EB6
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7512315AC7;
	Fri, 22 Sep 2023 06:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600E42104
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:28:41 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C64D83;
	Thu, 21 Sep 2023 23:28:39 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 6983424E2B1;
	Fri, 22 Sep 2023 14:28:36 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 22 Sep
 2023 14:28:36 +0800
Received: from williamqiu-virtual-machine.starfivetech.com (171.223.208.138)
 by EXMBX168.cuchost.com (172.16.6.78) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 22 Sep 2023 14:28:35 +0800
From: William Qiu <william.qiu@starfivetech.com>
To: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-mmc@vger.kernel.org>
CC: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, William Qiu
	<william.qiu@starfivetech.com>
Subject: [PATCH v3 0/3] Change tuning implementation
Date: Fri, 22 Sep 2023 14:28:31 +0800
Message-ID: <20230922062834.39212-1-william.qiu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

This series of patches changes the tuning implementation, from the
previous way of reading and writing system controller registers to
reading and writing UHS_REG_EXT register, thus optimizing the tuning
of obtaining delay-chain.

Changes v2->v3:
- Rebased to v6.6rc2.
- Dropped redundant criteria.
- Keeped "starfive,sysreg" in dts file.

Changes v1->v2:
- Rebased to v6.6rc1.
- Keeped "starfive,sysreg" in dt-bindings but removed from required.
- Changed the function interface name.
- Maked the code implementation more concise.

The patch series is based on v6.6rc2.

William Qiu (3):
  dt-bindings: mmc: Remove properties from required
  mmc: starfive: Change tuning implementation
  riscv: dts: starfive: add assigned-clock* to limit frquency

 .../bindings/mmc/starfive,jh7110-mmc.yaml     |   2 -
 .../jh7110-starfive-visionfive-2.dtsi         |   4 +
 drivers/mmc/host/dw_mmc-starfive.c            | 137 +++++-------------
 3 files changed, 44 insertions(+), 99 deletions(-)

--
2.34.1


