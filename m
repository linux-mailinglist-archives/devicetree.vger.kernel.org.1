Return-Path: <devicetree+bounces-132661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE59B9F7B88
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:38:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99ED8164078
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE3D9226181;
	Thu, 19 Dec 2024 12:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B04A225779
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734611708; cv=none; b=ghl5tYaPwDmJ1PYtZW7rjrndmU1crm8f7eCvWyrm141kRjB+Ht03PNG7v5w5ZgR4UoQLKFshzAdMNQP3L32xk+AZf17KTuzaKKRUGHUKagQxPQX/MLPUYRM8cBzmy8nivhpknCRMSb0gcIowKAGmCuKhK7qHfRrrrz6A/FuXYsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734611708; c=relaxed/simple;
	bh=+WMW2ebbowXkN4ZB/PC4ZRRm2U9UUnYeE75YZN5laFg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kJ4lN/ndCDhy85XLVinTxrkLIz67BeSRZo//SfeW5t+yppcvmEpztVZx7wV1K4V9gbYxaVuU2fd3rd3D36/m1TuftnO/dW3p/3iHRO+m0FEaptG+eG0kQohf4GlljYYdZmn7iDKpNs/BtSdG6awWuckyeHuz8HElIpSDWF/AMy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tOFk3-0007aQ-Ra; Thu, 19 Dec 2024 13:34:59 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH 0/2] Add FRAM to Protonic MECSBC device-tree
Date: Thu, 19 Dec 2024 13:34:55 +0100
Message-Id: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO8SZGcC/x3MPQqAMAxA4atIZgs22FK9ijjUmmoGf2hEFPHuF
 sdveO8BocQk0BYPJDpZeFszdFlAmP06keIxG7DCWmts1DI4k0SjO261UJAhKD9SRIvOGltDDvd
 Eka9/2vXv+wHSs7tXZAAAAA==
X-Change-ID: 20241129-mb85rs128ty-mecsbc-adef26286564
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jonas Rebmann <jre@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=854; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=+WMW2ebbowXkN4ZB/PC4ZRRm2U9UUnYeE75YZN5laFg=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkhPEfp0zPAS381zKVE6R4xY7y9uf/fqovjV+2LvDZek5
 ulNC3aZ1VHKwiDGwSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhIoTPD/4wrEo5C4iYL2vK8
 29bb5Ju8fbSWncnYY76o3rKISz/qdzD8T1adIJryYfW+Iq1IZr/AhhcCtf7uEc8DTirqbTn5fu4
 hPgA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The MECSBC single board computer is equipped with a Fujitsu MB85RS128TY
FRAM. This series adapts the devicetree accordingly.

Tested on current mtd/next which contains the required driver and
bindings update:
- 5b68d4d2db29 ("dt-bindings: mtd: mchp48l640 add mb85rs128ty compatible")
- 02ba194feacb ("mtd: mchp48l640: add support for Fujitsu MB85RS128TY FRAM")

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
David Jander (2):
      arm64: dts: rockchip: MECSBC: Remove i2c2 node
      arm64: dts: rockchip: MECSBC: Add FRAM MB85RS128TY

 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)
---
base-commit: 47f34eab58294d7bb2583f9519b4022e74d56437
change-id: 20241129-mb85rs128ty-mecsbc-adef26286564

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>


