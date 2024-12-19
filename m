Return-Path: <devicetree+bounces-132662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 053759F7B81
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6C211890AE3
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190B0225779;
	Thu, 19 Dec 2024 12:35:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C15225784
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734611709; cv=none; b=bhm0DgXDBcesYq0Vx37NHscyMI704iQWd5Yk7XwubZkz+eC62JDoWz0SjGljRRyA+jPZVUbgbX18yexwq2RgvxR7b/cYMa/OqnAVZ+UCG39gzv9zpe7uAUloWYzC7Nf921mqvfylkTTpgJmr//3SW+F73HnFmNAj0gIEH/CyIg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734611709; c=relaxed/simple;
	bh=Ab2zQCg2w/P+q6oZoGIh816I8WfFtfUEe+DWYs+o5dQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R1Kk/I8mS/ZKTa9JtpCoS0qNrIZlDETRMTGHJd1LHUJrsvI9NpAelXlox/Q17gPZw9avDHLxl6KlZW4QNpq91iLT2dXCgaQdy0ZqmD17otAy6v6IxW5R/vymg7luG1q4be9sA1HZ9XIJrdhcnpAH24j3I+WEuZPD3p5fkxVShhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tOFk3-0007aQ-TF; Thu, 19 Dec 2024 13:34:59 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 19 Dec 2024 13:34:56 +0100
Subject: [PATCH 1/2] arm64: dts: rockchip: MECSBC: Remove i2c2 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-mb85rs128ty-mecsbc-v1-1-77a0e851ef19@pengutronix.de>
References: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
In-Reply-To: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jonas Rebmann <jre@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=976; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=SfUhCKWfnMwqxaoHNh+0OxbNh7oug+ykcNz4u6yGGJU=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkhPEfrEcz8rQFRfZW3HfDX9tWE7ecwbdQSNK55GHJpx4
 1heWWp/RykLgxgHg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCInPzMybOSZl+3jVdm6s+7z
 t4vegn4d+zQWPo5qj9pWZO+tH++gycjwI47pvYun2YeHR7n7VuwpmpMUZP3XWjCf38Hu3GPlDVI
 sAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: David Jander <david@protonic.nl>

One of the pins of i2c2 is actually in use as chip select 0 for spi0.
The chip select 0 is used for an FRAM chip, which will be added in the
next patch.

Remove the i2c2 node from the rk3568-mecsbc device tree.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index c491dc4d4947dc460330847dede052b1b25ba86c..ca041b4d2d38a4e06cd0a54a806fed2ab723c94d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -206,12 +206,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c2 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2m0_xfer>;
-};
-
 &i2c3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c3m0_xfer>;

-- 
2.39.5


