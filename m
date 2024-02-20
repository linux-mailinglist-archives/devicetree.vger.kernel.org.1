Return-Path: <devicetree+bounces-43956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CB885C001
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 16:34:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9107DB23DDA
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31B02762C0;
	Tue, 20 Feb 2024 15:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="d9eKCE+8";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="QNGwaX1v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35CD6A35B
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 15:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708443226; cv=none; b=KwZCfIuc3/PFj/DhBLuwJe7D8yWj3sU/P2JyEmK8mrdBWtgvdzeLRcEnx+8EeUsQBQDyNjojZBaOeIZl1FpZUXBD80WSKPawqPjkHVm7q+JT+6W50aclEWNzIL98pDA4tRTCZY0NVdm8OKtmarrj2F7oh+OalWvoslXj7aJ154g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708443226; c=relaxed/simple;
	bh=FfloKBvnP9kHx3pPCTkgUY8s4R/k+vV2YtDWrd2R7Tc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SZmYddit9RHJA+xOEj1kISm2kiyql6eAXPYto+509l/JLRz8WcnU2oxKvoHZK6gHyE/jnkNZJpIeiPjsrJwmpD1YOGCXXecUbQz/U02GOf3OArYjbk6qLYoocVg9X+tqD3rcaEIzxW/f2QRjQha3QejAjYwBus8Yy365F3S3HYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=d9eKCE+8; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=QNGwaX1v reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708443223; x=1739979223;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=iAuX2fzOb1vf0Ro0yp5QNzOrS7A1gLgkbir/x4atIjg=;
  b=d9eKCE+8g2QrRHb1I1MIAuTnmqGd6QivlwN60nFPHFht1hpogFneODsi
   JjKhhpb+4VmpVdTR/vu2Al90uMEhFP+KNszdkp4WnyMZAmYLOE4L34/7H
   RNd6gYuKhDgJxVltkqKPV0dVQ6zxKiYXiu6fHIxz6oUHhunMFpmFCf68X
   2qPmBM04OUHy+64Lth8C2rA4Y2j9qhCNgkERES5/2gfctZogjxnjK6DuP
   abQ5HSr+OiCYhP2VAtrYZa6pw6yONm3P4awHDcj3KOnTvKeGXtkpf6SGP
   nkor9irBMZvYBSWeqpIzjtz2f5x8SZcs9/imqBkSEGdUKlm6AqKX6y2qM
   w==;
X-IronPort-AV: E=Sophos;i="6.06,174,1705359600"; 
   d="scan'208";a="35504021"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 16:33:40 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A038B16F071;
	Tue, 20 Feb 2024 16:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708443216; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=iAuX2fzOb1vf0Ro0yp5QNzOrS7A1gLgkbir/x4atIjg=;
	b=QNGwaX1vdZYowI95e691hf0xwAIxk6zfcr57+WJdmGK1eSXsl/LBmuxBJ+v+E1CE07ykme
	TdpPQYGWFsGo8CMEYiS+ux70Qdu/UAvW7somIeU2Yn0yLGOZL6H3hd/1b5Dskm/eqiUWFQ
	rLnotgkcEpWMDyAwCjqesG5YDTwKFOy4rMKW4iyjsdJBJnHEHfLSbqjSnS+AG820ifq8Ar
	BBwDm/to8hmBtMxDY5ys434wFkUsNy9bQl+ynR2cc95vNF2kOD4jsD8y+uXE1kCkbZq42F
	tYLrp6t3GvgcmjVHwy8RmmEw4SJdADoNV03PZ6fO0tdVi4HQagMRNOt69UTH0Q==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: imx8mq: tqma8mq-mba8mx: Add missing USB vbus supply
Date: Tue, 20 Feb 2024 16:33:33 +0100
Message-Id: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

VBUS 5V is statically provided to both USB host and on-bard USB-hub.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index b2e17d4f335eb..0165f3a259853 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -160,6 +160,7 @@ &usb_dwc3_0 {
 };
 
 &usb3_phy1 {
+	vbus-supply = <&reg_hub_vbus>;
 	status = "okay";
 };
 
-- 
2.34.1


