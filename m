Return-Path: <devicetree+bounces-68522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 197F48CC904
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 00:23:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5657282191
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 22:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478DB1482FD;
	Wed, 22 May 2024 22:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="W7K64bTI"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5DA811E0
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716416576; cv=none; b=JnZIsNP1elIPM3LF0NKk2cL3ZQktgQQGCMFy8jLMo9U9aAjIRj+DlOQUF809P1Apv358Gx2A3tNdsevSmw8hx4b9sVkNgcTebzseNfhzdfC9fYlKMG0scYv1Goqk4OFciULAFdi/18Bxpk/iHgUF/aV2xlBBwBdbHgUaTwTUcws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716416576; c=relaxed/simple;
	bh=6iV7ZkgEvMpKG23fxX0c6xX7hhrY8oVSXxERIC5+/IE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZrRqKuUiOpxkZDBNfndkDXf8zDpNeyVyPN3juKLUP/SJKX2s89760WUIKhhv3hfP70m6R51ORigVdn0drj5OoXDv9E6gcz3wKdDoJYYc8syHuCVKaLJeeZzW15i9KI8gnhGwD2J3rb/ZzfHxabLb0l4x17RF6/xTXYNEGTSfQmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=W7K64bTI; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 8C7B588499;
	Thu, 23 May 2024 00:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1716416572;
	bh=IfQkKZPQP7vhyZ7FUayYlDnYfmMeAK2mi8cnpDj9yE0=;
	h=From:To:Cc:Subject:Date:From;
	b=W7K64bTIS6pGKq0OkHKQj0ZQXcASeA1ZiOLrYWECS8FG32Y3X7Le98Ul3STofMywx
	 xi7v0FBxEVo41N/TpYDPszeQksJGqZTHurHRMGt5yIdrIr55zqBNDMXeS1cS4V0RAb
	 +XeUUBKfucYLdndzOhp7abUoNYeW+8U3f1nr2cpCVs5332/hS4pK3Aocy2BEQcnoaU
	 841ebTSMlhyK68At2XZJdBpnw11h5Gj4Ny3joo9AuUJol+SriIXolKr2l4Z1tAB1uh
	 2YA7+/Rq7KjY5BMqQv/Y0AlsfKLWlRwCimYkW1iFIh8pU/jeObV8KsT7wbkcFhKAg8
	 GkWs9wY+dC2/w==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: imx: Add LVDS port data mapping on M53 Menlo
Date: Thu, 23 May 2024 00:22:02 +0200
Message-ID: <20240522222229.366904-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Describe LVDS data mapping of the LVDS-to-DPI decoder input port.
This fixes a warning reported by lvds-codec driver:
"
lvds-codec lvds-decoder: missing 'data-mapping' DT property
"

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/nxp/imx/imx53-m53menlo.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-m53menlo.dts b/arch/arm/boot/dts/nxp/imx/imx53-m53menlo.dts
index 4d77b6077fc1b..558751e730f3e 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-m53menlo.dts
@@ -64,6 +64,7 @@ port@0 {
 				reg = <0>;
 
 				lvds_decoder_in: endpoint {
+					data-mapping = "jeida-18";
 					remote-endpoint = <&lvds0_out>;
 				};
 			};
-- 
2.43.0


