Return-Path: <devicetree+bounces-93569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DADB9517A8
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 11:28:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A3E0B23B6C
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 09:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCCA14D2B8;
	Wed, 14 Aug 2024 09:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="I4LyQFne"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B7C14A627
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 09:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723627611; cv=none; b=ozAk0PYS5ZF3YisG0lAvbBUVZFGHGQ4mY8TpYB92MofSqnnGHhNnGEu6Y+e6skLvOME2raTc9uRq5FyVejVbycn3NPc/lHL15iv8U/YleHahh2UCgD1bWqGma/nMAKoX5yVFhULhTmw8hORpfesHYAesFRBOpe3hSoyv8naJU04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723627611; c=relaxed/simple;
	bh=ZN3f9haPlXqDVDHErdMbEB2bMPbsTwGvDOy9CWznDOM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=YJg3E4l7F6kKOwLd64d4hfFVpj8PLsmv4vEL26qn+ZoisJ1ww1CWZNpRNY41HP7B/yvd9kTsZHVw7hfv/7Cotkui0k0vWtpiQ9DTt9pyzbjBmWCIJnnmB+S0WtEzsDL4cv3w/yD+tVfe/M0iH4qAlmrgvsdbnQht0fCccrcaynE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=I4LyQFne; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1723627600; x=1726219600;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZN3f9haPlXqDVDHErdMbEB2bMPbsTwGvDOy9CWznDOM=;
	b=I4LyQFneexybt2pTZVYYwcrGGG/quvnKzHPGoPW6rjTPK4xqiAehTFVvetvoD0In
	BCHktGCtdqvgXGgOr3Q/5vNKYIX1V1ocj0wDJklgGzv2t2Aqsgp4fQQaFTXZ3RCV
	8ZOshTjoFjo3QGYAE7kwZuPzzqa6EA2UaDHPn5sxw1Y=;
X-AuditID: ac14000a-03e52700000021bc-bf-66bc784f51c1
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id BA.54.08636.F487CB66; Wed, 14 Aug 2024 11:26:39 +0200 (CEST)
Received: from augenblix2.phytec.de (172.25.0.11) by Berlix.phytec.de
 (172.25.0.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 14 Aug
 2024 11:26:39 +0200
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 14 Aug 2024 11:26:13 +0200
Subject: [PATCH 6/6] arm64: dts: imx8mp-phyboard-pollux: Add usb3_phy1
 regulator reference
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-6-e2500950c632@phytec.de>
References: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
In-Reply-To: <20240814-b4-wip-t-remmet-phytec-de-bspimx8m-3392_upstream-v1-0-e2500950c632@phytec.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
	<kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>
CC: Yannic Moog <y.moog@phytec.de>, Benjamin Hahn <b.hahn@phytec.de>,
	Yashwanth Varakala <y.varakala@phytec.de>, <devicetree@vger.kernel.org>,
	<imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
X-Mailer: b4 0.14.1
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsWyRpKBRzegYk+aQbOqxZq955gs5h85x2rx
	8Kq/xcx7rWwWq6buZLF4Oesem8Wmx9dYLS7vmsNm8X/PDnaLv9s3sVi82CJu0f1O3YHHY+es
	u+wem1Z1snlsXlLv8WLzTEaP/u4WVo/+vwYenzfJBbBHcdmkpOZklqUW6dslcGU82vCDueAX
	W8W9/08ZGxgb2LoYOTgkBEwkPrR4dTFycQgJLGGSaPnyiA3Cecwo8fH8YZYuRk4ONgENiacr
	TjOB2CwCqhIXLpxkAmkWFoiR6PycAhLmFRCUODnzCQtImFlAU2L9Ln2QMLOAvMT2t3OYIUqS
	JVpWg4znBBqfLDF92l1GEJtTIEXi+s1z7CBrRQQmMUkcvXaCEcRhFuhjkuicdp4dpEpCQFji
	8+41UN3yErsunWSEiMtLTDv3mhnCDpU4smk10wRGoVlIbpqFcNMsJDctYGRexSiUm5mcnVqU
	ma1XkFFZkpqsl5K6iREURyIMXDsY++Z4HGJk4mA8xCjBwawkwhtositNiDclsbIqtSg/vqg0
	J7X4EKM0B4uSOO/qjuBUIYH0xJLU7NTUgtQimCwTB6dUA2NUa2yYk1GT1w+9I8pLRIV+dby6
	kqPg5xlyz0itJN+L7RD/2d/sKWsS1jAwFWqqMO4T/bTpU/jmda0z/jcfYLLnky9dNsEx2TnK
	5NbX+mOM3NcrInJeBfzr7TCM5Pdlyr4ZWbFM88iUN9/PnxUrn/vaUHvBC7/tm6McC6yXsHhG
	uB305/+gqsRSnJFoqMVcVJwIAHrwYIiRAgAA

From: Yashwanth Varakala <y.varakala@phytec.de>

Add VCC_5V_SW regulator reference to the usb1 phy node to reflect the
schematic. This also silences the fallback dummy regulator warning.

Signed-off-by: Yashwanth Varakala <y.varakala@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
index 62f1819bc1a4..6e81870e177c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
@@ -260,6 +260,7 @@ &usb_dwc3_0 {
 
 /* USB2 4-port USB3.0 HUB */
 &usb3_phy1 {
+	vbus-supply = <&reg_vcc_5v_sw>;
 	status = "okay";
 };
 

-- 
2.25.1


