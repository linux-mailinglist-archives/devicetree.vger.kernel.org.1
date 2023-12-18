Return-Path: <devicetree+bounces-26591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2BF816FA8
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:07:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E9821F26E39
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8024239E;
	Mon, 18 Dec 2023 12:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Moq2MRfC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D0842379
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904119; x=1734440119;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KwtLSDAhhKT8zuBJetjQKPNAeLYgAOtm1XL3u91R26A=;
  b=Moq2MRfCrlvUfUaQsULtwH/E/6Ix/wj/Ifg3UUIt9qMDPoHpgIClHZz6
   4CWeI2OHR8OenQGk6a4jW8T8kDT82P1tt+t8aOxzge94HbOdbS++PT208
   U4E61LMSkfNZEDjdCjKCW/FoEe6KyiKh4wyjUmKnSviUF/M0PDKu6dZ6X
   WbD/uGEpE0aYFeQdzB0Nhyw58r688cVYtX6bOjMViJbdgzbgPj7+x5M4n
   UBUeiBvvweNwJHfRD6+IhbOyJwn1mx/D5wvEfkFzZbrruhGleyzrWLzQb
   5IJ50DsCF71tVOExpmH8BCW7b8986KfHJXiXHfjSkQCDdNx8vfPyX55at
   g==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562718"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:05 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AE16F28008D;
	Mon, 18 Dec 2023 13:55:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
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
Subject: [PATCH 23/23] ARM: dts: imx7-tqma7: Fix PMIC v33 rail voltage range
Date: Mon, 18 Dec 2023 13:54:59 +0100
Message-Id: <20231218125459.2769733-24-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

regulator-*-microvolt is not the range the regulator supports, but the
range which the regulator is allowed to configure. Limit v33 rail to
3.3V only.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
index 0cf0304a8db6..028961eb7108 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-tqma7.dtsi
@@ -112,7 +112,7 @@ vgen3_reg: vccsd {
 			};
 
 			vgen4_reg: v33 {
-				regulator-min-microvolt = <2850000>;
+				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
 			};
-- 
2.34.1


