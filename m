Return-Path: <devicetree+bounces-26408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9ED816650
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 07:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7AEC2823AE
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 06:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B706ABD;
	Mon, 18 Dec 2023 06:12:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EC479C1;
	Mon, 18 Dec 2023 06:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id BB71824E24D;
	Mon, 18 Dec 2023 14:12:41 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 14:12:41 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX066.cuchost.com
 (172.16.6.66) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 14:12:38 +0800
From: Joshua Yeong <joshua.yeong@starfivetech.com>
To: <joshua.yeong@starfivetech.com>, <jeeheng.sia@starfivetech.com>,
	<leyfoon.tan@starfivetech.com>, <jassisinghbrar@gmail.com>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/3] mailbox: starfive: Add Support for StarFive Meu Mailbox driver
Date: Mon, 18 Dec 2023 14:11:58 +0800
Message-ID: <20231218061201.98136-1-joshua.yeong@starfivetech.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX066.cuchost.com
 (172.16.6.66)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

This patch series adds support for StarFive Meu Mailbox driver.

Joshua Yeong (3):
  mailbox: starfive: Add StarFive Meu Mailbox Driver
  dt-bindings: mailbox: starfive: Add StarFive Meu Mailbox Driver
  MAINTAINERS: Add entry for StarFive Mailbox MEU

 .../bindings/mailbox/starfive-meu.yaml        |  66 ++++
 MAINTAINERS                                   |   7 +
 drivers/mailbox/Kconfig                       |  11 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/starfive-meu.c                | 334 ++++++++++++++++++
 5 files changed, 420 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/starfive-me=
u.yaml
 create mode 100644 drivers/mailbox/starfive-meu.c

--
2.25.1


