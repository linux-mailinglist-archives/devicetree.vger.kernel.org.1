Return-Path: <devicetree+bounces-23408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 696E480B39F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 11:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12EE71F21034
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 10:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E38C125A1;
	Sat,  9 Dec 2023 10:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="criHcOo2"
X-Original-To: devicetree@vger.kernel.org
Received: from m15.mail.163.com (m15.mail.163.com [45.254.50.220])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D8EB0F9;
	Sat,  9 Dec 2023 02:37:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=nxvyC
	PtBJqxL4mpNye7FAQBb1F7oftR/O+wCgJF/VlQ=; b=criHcOo2SC/p1+6OQQ5jD
	Yyj46C4pUyOlSmKTprldB0jbfr+QPzYAZU8rEOy0rZtvqJTXHTfVPgLFrs1doLVS
	kLKQyIQ2xRaihdx9DdR/MhDpW/AqINqyXytd/ku6ZzpBgKsJRB0HVoQPet13GwJK
	Yg+F5FyXnw9TmhXpNI+Z3w=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-4 (Coremail) with SMTP id _____wDXD4AoQ3RlNopIFA--.47691S2;
	Sat, 09 Dec 2023 18:36:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Sat,  9 Dec 2023 18:36:22 +0800
Message-Id: <20231209103622.1568289-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDXD4AoQ3RlNopIFA--.47691S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKFWkCw15Jw1UKw4xGFy7GFg_yoWfCrX_Ka
	yxWryDZa18ZF1Ygas8tw4xGrZrJ3y29rs3Ka45ZF1vqFyDJw1xJayrta4aq3W8AF17uw1x
	Jr48XF1kJw15CjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRWSoJUUUUUU==
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBBBXlghl5vO6gAAsC


This series add support for rk3588s based SBC Cool Pi 4B
and rk3588 based board Cool Pi CM5 EVB


Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board CoolPi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 887 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 850 +++++++++++++++++
 5 files changed, 1751 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


