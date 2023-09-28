Return-Path: <devicetree+bounces-4245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE3E7B1B5D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:45:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6464D28115A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECFC37CA4;
	Thu, 28 Sep 2023 11:45:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED33A37C97
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:45:38 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176DE122;
	Thu, 28 Sep 2023 04:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1695901537; x=1727437537;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AvGT++rCLEX4cUKvJVaOA2jd5cmeox1L9raoL9iAD90=;
  b=R2gluzUb74TvyIoVmndsOmhOCw32SiYTMPsLET5jz5vkdSiD+iHQWXct
   P0XPtxQpXLKsB77xzMHA4L52Rv8LqksbRI5/WhkkxPWZ6ihoyuKZtOart
   iHuU4fNn1x0ZK/790ib+3CZgmyG6G1tlDI5nDztWbO5Ryi2QQFbTrXutz
   PIHAb3+gJX8iAZwTDiSZvvcI+bDjLfaMHVOG+oThlOBXye+Y/w56nkk1R
   K1CD3psQEj0N2v71i2AeVtbz2n/VuIBExLyqxYuEEMzij4zVc7A2eWIPq
   JJxolM/A3xSPBrpxDvmqg5eH2dB0IgV0ayFEJk13FLr4G6hk8P7OLC8IW
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,183,1694728800"; 
   d="scan'208";a="33198951"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 28 Sep 2023 13:45:30 +0200
Received: from localhost.localdomain (SCHIFFERM-M2.tq-net.de [10.121.49.20])
	by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 505DF280085;
	Thu, 28 Sep 2023 13:45:30 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH 3/4] arm64: dts: ti: k3-am64-tqma64xxl-mbax4xxl: add chassis-type
Date: Thu, 28 Sep 2023 13:45:12 +0200
Message-Id: <55bf14afa377b9bbc1d6c4647895c51c018ae761.1695901360.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <d5991041263c96c798b94c0844a1550e28daa3b1.1695901360.git.matthias.schiffer@ew.tq-group.com>
References: <d5991041263c96c798b94c0844a1550e28daa3b1.1695901360.git.matthias.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Set the "embedded" chassis-type for the MBaX4XxL.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index 7c49d30587d25..1cb44fb9d2729 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -19,6 +19,7 @@ / {
 	compatible = "tq,am642-tqma6442l-mbax4xxl", "tq,am642-tqma6442l",
 		     "ti,am642";
 	model = "TQ-Systems TQMa64xxL SoM on MBax4xxL carrier board";
+	chassis-type = "embedded";
 
 	aliases {
 		ethernet0 = &cpsw_port1;
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


