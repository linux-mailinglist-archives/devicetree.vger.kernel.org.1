Return-Path: <devicetree+bounces-44389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 456AC85E00E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:42:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7BBCFB27B90
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 683B780633;
	Wed, 21 Feb 2024 14:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="MnpcL/j2";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="a4xVjwE2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162047EF03
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708526431; cv=none; b=tUx7TGFPLK1ib3SAowI8ok+fyeGg8C+KzejCC4OT5xnPppiLvn0sknYdOG7y5S0R6YsIHacmNTRHTrEJiu/5QrUY8D2dZRyYNVh70iXZBoajSOllmAJRdHqU+43as0yXahFlHjU/C4H/EWfC91kye5oXurAMgKYsD5ZGD/1zi3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708526431; c=relaxed/simple;
	bh=3d9JNVFIhkqRvDtfjtX+RE3Xd+VcM4BGs+4NSIjFF+k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ibaOvGNWtyEs5LOZZBN8n9iX4oLzv7U5yDBc+B/XfcVu/+QPdskk01eOhh3BjDKWuxKL7fNcfnDB/UfIwplmHxtTtXH38lF9+2jAC91rt2G+1kTXXm55LsWTAmYG4ZmxyCCb986c/S9rgIGJRmINzlrTTYmH5Sfg9hrCK2gf9Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=MnpcL/j2; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=a4xVjwE2 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708526428; x=1740062428;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wPNeXZryNciBa8K97encGWLVROwGNIWg2+Iounkui/w=;
  b=MnpcL/j2F8rDlCT7AibjAvYnnwW0sTZwqUCwta1vvrFZp2X4ASowRB0p
   stAe2ffTFV/LVwYvWeFzHVy484rTI6sV7NCdKP8KVvwkK5fhREwUeqEq7
   nITt7bRbouhv//sv9JiM2fNdKimxvtRvso5gan5eDlwICHjTQPY/aIRKS
   18mK42dX04sUsoH4LTgUVs73/d9rlailrQjgreLv2809WwCju99plhxuV
   NdcextiLTT7fhgCW1P3J87b8iL7az2dhdhyQNK9XsEiHcKvaPz3HercCs
   e7h/YTehx0MOpGo0yZbu6cWv3bP6I1ORcvhhkQ6aDkyw47MN1jA+TMqpf
   w==;
X-IronPort-AV: E=Sophos;i="6.06,175,1705359600"; 
   d="scan'208";a="35525819"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 21 Feb 2024 15:40:25 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ACD60161437;
	Wed, 21 Feb 2024 15:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708526421; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=wPNeXZryNciBa8K97encGWLVROwGNIWg2+Iounkui/w=;
	b=a4xVjwE2bbIN050jnepwHpXU/x+jWpkICj6SXyxN/N0PPmSmbOXyI5SQx8DEVVDeis/W9n
	JQMn6VcFL3eeQArxmXVM3Fv5v9inzdCQvZr23naDB5KqV0Jzpo8tre0MQf7u19elbQANrb
	Z7U6NhZVHyOfrX5KFuVCGuQTcLa6zhZU7VKP4EghK3VTuqb3uiKduLNBvc/UvkgSqdJTak
	H/u1oW9T26uIWNcf96k8Z/0JBbWyvi5KCiiLh1AwU4iStNu7zXxXzysma2t7DAhOTUBVNa
	nEjh6d+rFNsGAYlEN6OnJSy+NJBRbuI/SFRAlQQYfjag7a0EbkEIgmxOMYFRWg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: mba8xx: Add missing #interrupt-cells
Date: Wed, 21 Feb 2024 15:40:12 +0100
Message-Id: <20240221144012.533946-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The GPIO expander is a interrupt-controller, so add the missing
 #interrupt-cells property as well.

Fixes: 71363a485ad0c ("arm64: dts: freescale: add initial device tree for TQMa8Xx")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8xx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/mba8xx.dtsi b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
index 4a9986409947f..b06f7fe8f85c5 100644
--- a/arch/arm64/boot/dts/freescale/mba8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8xx.dtsi
@@ -263,6 +263,7 @@ expander: gpio@70 {
 		interrupt-parent = <&lsio_gpio4>;
 		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-controller;
+		#interrupt-cells = <2>;
 		vcc-supply = <&reg_1v8>;
 
 		gpio-line-names = "", "LED_A",
-- 
2.34.1


