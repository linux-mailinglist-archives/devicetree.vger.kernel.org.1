Return-Path: <devicetree+bounces-143302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E7A294DC
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 16:34:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 215D07A4052
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 15:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DDA1953A9;
	Wed,  5 Feb 2025 15:32:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E017E18D656
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 15:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738769572; cv=none; b=YuOF13sztq9Q93F1BBgFyMjTACtN3HeUsxoWBYNDbUbuXAB50FBHdETmxFh5+NPof/Jj0p8am4plcbQMVh5C9fwee6Kc6oVOANI0tXGAaWaNnd7ceg6I47Lqz53bv4EzCAyb0Lk6rTakWMjVRCxqauDbu7bPMBMbpOOUHVNogXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738769572; c=relaxed/simple;
	bh=PIjNKPS9QHGFUF7IHhdlZL57aWxOxIWpDcXLIWAma+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LZgLtma8NWvKA7c0QWqJP1Xm218z94MLngYEMzq+OBJ+niMFT2d2N9uSiWYeFdHMPLMMLkfc0J3BDFZAmOqqYiwfK+0viT9nWqBL8Y8I8ldXVnLsbsIxGg+cliEbv5sFZrFLAIyrFmrXtWXS86QpZJurHGqNrzW/iKtqAsr1YM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tfhOJ-0005Jb-DW; Wed, 05 Feb 2025 16:32:39 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 05 Feb 2025 16:32:22 +0100
Subject: [PATCH v4 1/6] dt-bindings: socfpga-dwmac: fix typo
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-v6-12-topic-socfpga-agilex5-v4-1-ebf070e2075f@pengutronix.de>
References: <20250205-v6-12-topic-socfpga-agilex5-v4-0-ebf070e2075f@pengutronix.de>
In-Reply-To: <20250205-v6-12-topic-socfpga-agilex5-v4-0-ebf070e2075f@pengutronix.de>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>
Cc: kernel@pengutronix.de, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The phandle to the SGMII converter must be called
"altr,gmii-to-sgmii-converter".

This is how the phandle is called in the example and the driver. As
there are no upstream users of this binding anyway, this shouldn't
break anything.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/net/socfpga-dwmac.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/socfpga-dwmac.txt b/Documentation/devicetree/bindings/net/socfpga-dwmac.txt
index 612a8e8abc88774619f4fd4e9205a3dd32226a9b..67784463f6f5a3ba7d2e10810810ab2d51715842 100644
--- a/Documentation/devicetree/bindings/net/socfpga-dwmac.txt
+++ b/Documentation/devicetree/bindings/net/socfpga-dwmac.txt
@@ -24,7 +24,7 @@ Optional properties:
 altr,emac-splitter: Should be the phandle to the emac splitter soft IP node if
 		DWMAC controller is connected emac splitter.
 phy-mode: The phy mode the ethernet operates in
-altr,sgmii-to-sgmii-converter: phandle to the TSE SGMII converter
+altr,gmii-to-sgmii-converter: phandle to the TSE SGMII converter
 
 This device node has additional phandle dependency, the sgmii converter:
 

-- 
2.46.0


