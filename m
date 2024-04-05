Return-Path: <devicetree+bounces-56549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF08899A74
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C32DEB21BC1
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE8E161927;
	Fri,  5 Apr 2024 10:14:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC3C16191C
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 10:14:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712312085; cv=none; b=gsTrotnkbEOmhPTqPUFqBqpZKjnveUl9R7cOu0jLI3Cxs3t68EkBL1fIsjwABjkzjs7RlRuAzm3IgyGLwCjiudpMdVB/2JjdN72rZE9oM0j5/imt8eg2BgwFntBCjF2JbVVzj/N5Nt1hZANYwa/sy27bTW581rR1g3cpCWv8DtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712312085; c=relaxed/simple;
	bh=Ztnu+BxrNHaFGV+UOeswNUzS9UQK9whqB8BEqnNW4AI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OtQ3+AZZ0wy9043d39ENr/uKbYf6vKysKGGYSOQNtWrYNigwUarqU3z4bF9vwkw39PXL4gicbuPSStgseeKRIX1jI4RSMS/Po+3NmrCp5ViaiEjHO4GooMcwLIgGciC1PLISN9C10/mIrHcQOISPuRnrfCN5mtA+VIIan/vqX98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-0008Kw-RA; Fri, 05 Apr 2024 12:14:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AY5D-34; Fri, 05 Apr 2024 12:14:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsgaY-00AhER-03;
	Fri, 05 Apr 2024 12:14:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 0/2] Add Protonic MECSBC board support
Date: Fri, 05 Apr 2024 12:14:24 +0200
Message-Id: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAADPD2YC/3WNTQ6DIBCFr2JmXRokSJuueg/jAmHQWRQMUGJju
 Hup++atvpf3c0DCSJjg0R0QsVCi4BuISwdm1X5BRrYxCC4kb2JbDDl4MuyFJs2GKeP0oLS8u/k
 GrbVFdLSfi+PUeKWUQ/ycB6X/uf+3Ss8403aYpdAWlVHPDf3yzrGF9qtFmGqtX+WASNOzAAAA
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712312065; l=1283;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Ztnu+BxrNHaFGV+UOeswNUzS9UQK9whqB8BEqnNW4AI=;
 b=PLAFuKqtWEa3wlp9pWv3x3uK0dFHp2Z36Ba5nCn4XqpjQw+u6t9Z637/OmEZ9HiphPiDKt3Gz
 b2gGSrnoBclATTSloYMgCewLItHYkvygjVC/yA62UDULPQEgVMh5jBh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds support for the Protonic MECSBC. MECSBC is a single
board computer for blood analysis machines from RR-Mechatronics,
designed and manufactured by Protonic Holland, based on the Rockchip
RK3568 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- use generic node names (Krzysztof)
- name regulators consistently (Krzysztof)
- do not use underscores in node names (Krzysztof)
- keep alphabetic order in arch/arm64/boot/dts/rockchip/Makefile (Heiko)
- use rgmii-id mode and drop [tr]x_delay (Andrew)
- add SD card regulator to support 1.8V modes
- Link to v1: https://lore.kernel.org/r/20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de

---
David Jander (1):
      arm64: dts: rockchip: add Protonic MECSBC device-tree

Sascha Hauer (1):
      dt-bindings: arm: rockchip: Add Protonic MECSBC board

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts     | 404 +++++++++++++++++++++
 3 files changed, 410 insertions(+)
---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240404-protonic-mecsbc-6cfa56a48fb7

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


