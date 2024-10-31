Return-Path: <devicetree+bounces-117806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9445F9B7DE3
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40447281A85
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0021A38C2;
	Thu, 31 Oct 2024 15:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="BmD5msSk"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9B41A256B;
	Thu, 31 Oct 2024 15:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387574; cv=none; b=TOcQwmah/ue2ar1JhSDedRLgiDcjT/VmkVmw11ygJB1Iu2H0zFZqZv72p0DdjCdfV6g65r/wg0XN7QVauFiuQDf9mUx76MGrm0HjNrQEQhWg/U1V5ZQd0IKlsWw313J1+DOm+aGaWXLjV8cAJhNv4IZ34JgSxSk79NZIo9J4dUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387574; c=relaxed/simple;
	bh=r9CSq7x3KTWmr1h7p38PKShRWD7l3qTn9bRjkS2ldlM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fcQVA7vDampERB4X7t3iX0+7xyzPtPiwmAdNumeW/IjHBwqDZgvBBSZ0b8T2Nrs4QuRM1rOMhXsaXM8OPzOtsFZzozzIDNgZzz3LZJPT9S0skz1/I5G7dufXz2XJSyZOI5JqcOTe/Akk8kb2YlGifmiWr5Z6vBPUmVNUDMaTDvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=BmD5msSk; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from localhost.localdomain (89-186-114-4.pool.digikabel.hu [89.186.114.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: hs@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 4F8C789001;
	Thu, 31 Oct 2024 16:12:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1730387570;
	bh=rPIDUcxc8CQi+Txja2mCBQNxz2FygCPkS59vb8Tf/X8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BmD5msSktaqXJMOff3T4gwOLUnicEjhrwwcZiBeoq6VYLoc+YSS6+eUq2LHBt/1jT
	 zzTvsOOtjT3viGIDpjnlpTK+XTuzx4JEnR/n7OV/4S/ldVxsoEedPFiVO5zp521Af4
	 vz3WIdN4HBfh/CSf7VE327QXUWSCJbs3wgZYZYoN4qGO9myb/rgant3FJ0WfGl3p1C
	 FJZVwc4xQCeJqZ/X+yFJj5LvV+YVTPandGOmpgeMRaWleqTAxJkWCnLH5MUyhqPAkh
	 82cAMSq/yRy3VVlfBB2n8MkJpF+esKWytXldQlV8LBI82QNr4J0De4O8lvpBHuj7A1
	 bJ+HDls4eUWIg==
From: Heiko Schocher <hs@denx.de>
To: linux-kernel@vger.kernel.org
Cc: Heiko Schocher <hs@denx.de>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Gregor Herburger <gregor.herburger@ew.tq-group.com>,
	Hiago De Franco <hiago.franco@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Mathieu Othacehe <m.othacehe@gmail.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: arm: fsl: Add ABB SoM and carrier
Date: Thu, 31 Oct 2024 16:12:35 +0100
Message-Id: <20241031151238.67753-2-hs@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20241031151238.67753-1-hs@denx.de>
References: <20241031151238.67753-1-hs@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

add support for the i.MX8MP based SoM and carrier from ABB.

Signed-off-by: Heiko Schocher <hs@denx.de>
---

Changes in v2:
reworked the compatible strings for ABB imx8mp based boards
called dtb checks, no errors for this patch

 Documentation/devicetree/bindings/arm/fsl.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index b39a7e031177..b933788f756b 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1090,6 +1090,15 @@ properties:
               - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
           - const: fsl,imx8mp
 
+      - description: ABB Boards with i.MX8M Plus Modules from ADLink
+        items:
+          - enum:
+              - abb,imx8mp-aristanetos3-adpismarc # i.MX8MP ABB SoM on PI SMARC Board
+              - abb,imx8mp-aristanetos3-helios    # i.MX8MP ABB SoM on helios Board
+              - abb,imx8mp-aristanetos3-proton2s  # i.MX8MP ABB SoM on proton2s Board
+          - const: abb,imx8mp-aristanetos3-som    # i.MX8MP ABB SoM
+          - const: fsl,imx8mp
+
       - description: Avnet (MSC Branded) Boards with SM2S i.MX8M Plus Modules
         items:
           - const: avnet,sm2s-imx8mp-14N0600E-ep1 # SM2S-IMX8PLUS-14N0600E on SM2-MB-EP1 Carrier Board
-- 
2.20.1


