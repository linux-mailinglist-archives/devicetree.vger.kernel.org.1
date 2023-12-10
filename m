Return-Path: <devicetree+bounces-23562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E69680B9BA
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 09:04:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5C33280E8F
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 08:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9B661FB6;
	Sun, 10 Dec 2023 08:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="NZ1OZTNY"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D7027EB;
	Sun, 10 Dec 2023 00:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=DWuK7
	1f3+NV0Gd1BFFX8qr8YW0N0cWWpxbjMeAHzcQM=; b=NZ1OZTNYoGyBB+9Oo4f4w
	2eHe3QGXC4vA0cnrZYn6sO4sjUVtx2/PfUYpC4vBjV/tOxdgp3i5DOzRDnh5CwtI
	CzJt7f05GoBbohM47A+T1e4nM8BUdYAnMw6dvzH0aEhx7rCU07V0jWSboULuvJP2
	1zDV4h1ctridTQNNUI+NVI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-0 (Coremail) with SMTP id _____wDXH6LDcHVlo_JkAg--.25492S2;
	Sun, 10 Dec 2023 16:03:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Sun, 10 Dec 2023 16:03:13 +0800
Message-Id: <20231210080313.1667013-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDXH6LDcHVlo_JkAg--.25492S2
X-Coremail-Antispam: 1Uf129KBjvJXoWrKFWkCw15JF4xXF43KFyUJrb_yoW8Jr43pw
	s3CrZ8tFZ7WFy7XFZIqw1kCrs5Awn5Jay0vrsxXFy2kryagr1DArnagwnxZ3srG3W7ZFWU
	CF1kKrW7Kr1UXF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0p_Z2adUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAtCXmVOA3fo1QAAsd


This series add support for rk3588s based SBC Cool Pi 4B
and rk3588 based board Cool Pi CM5 EVB

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b" for
  Cool Pi 4B
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"
  for Cool Pi CM5 EVB
- drop ununnecessary property status = "okay" for gpio-led
- drop ununnecessary blank line
- change node name to rtc for hym8563

Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 887 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 840 +++++++++++++++++
 5 files changed, 1741 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


