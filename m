Return-Path: <devicetree+bounces-203243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFB2B20817
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:44:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81C017A4108
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE0D2D239A;
	Mon, 11 Aug 2025 11:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="b8O/82Rd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775152D12F5
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754912680; cv=none; b=pRY0Ck7atFLHpIyL6RZ3AU6jwo8sx80Lk6NR8umX4fIFjmySAVBTuXI/VvaguXkyzVawCDJYifeA/CbFeh5I92Mq8POKpZnK+YKJseaBFfkQ25WlMoy9NpUKmQVvqS0m09nhGrXS2rqcqvke+gi8QXY5kbP75PJt/a1wFvSeRU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754912680; c=relaxed/simple;
	bh=Ez6SINq3WRAmM/Dg8l/3+nB/nR+O83xlym6fKiLRzVQ=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=fqY0VrkytAAjLbePBnM6a4xVuRZTRKV73Ii/SgU+MyuV4OMI8kfvoaV5c4QhNdCeRiAT5CzoI9mCMxd/Zo77Gpggs1Stk0A6hT1gDDYpQSVwUDlIcwH57uHuOOYy4OzoKK72emOozbm+gQ1sXFwsv3902ISKoBsyuxOwrafHK9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=b8O/82Rd; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 11193 invoked from network); 11 Aug 2025 13:44:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1754912674; bh=P9Mojr1dPjuPYog11ph6cxB1cTkaM1gR2irGlGlo2wA=;
          h=From:To:Subject;
          b=b8O/82RdfB8sn6+6Y+YKlNoX7aDZ9jG243/EC5lZtHGo4MZcmOti7vj5Tzcamubck
           lEhGcafay+OeRodtv1gxYuwoED5FoZ5vf8aT6NFELx5o2+EP+vXshYkG4RwkupXdOz
           xZ7VkaJYNrhibntKnvDafntxaUEWyZddk3ylr6nAi/tCEOlkIDiF6nF8Tv82qM8pjc
           BX2NLtTenIDMTkVTDtsGa6S6V5+dLVTONLxi6O60vxXWI+aw85oawRdXolDp62D2Ho
           vlyWxrfJvitzb5+jvXuQ1LNEyferedCkTpfpX0yTcADAaXJ8s27LEogu0nfa7dpDbg
           0oe8yHqvRWkRQ==
Received: from 83.24.148.125.ipv4.supernova.orange.pl (HELO laptop-olek.lan) (olek2@wp.pl@[83.24.148.125])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <robh@kernel.org>; 11 Aug 2025 13:44:34 +0200
From: Aleksander Jan Bajkowski <olek2@wp.pl>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	olek2@wp.pl,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net] mips: lantiq: add missing burst length property
Date: Mon, 11 Aug 2025 13:44:23 +0200
Message-ID: <20250811114432.732587-1-olek2@wp.pl>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-WP-MailID: 82fa28d6888cff3bfe4d1195cced04de
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [4ZNN]                               

The upstream dts lacks the lantiq,{rx/tx}-burst-length property. Other
issues were also fixed:
/home/aleksander/workspace/linux/arch/mips/boot/dts/lantiq/danube_easy50712.dtb: etop@e180000 (lantiq,etop-xway): $nodename:0: 'etop@e180000' does not match '^ethernet@[0-9a-f]+$'
	from schema $id: http://devicetree.org/schemas/net/lantiq,etop-xway.yaml#
/home/aleksander/workspace/linux/arch/mips/boot/dts/lantiq/danube_easy50712.dtb: etop@e180000 (lantiq,etop-xway): 'interrupt-names' is a required property
	from schema $id: http://devicetree.org/schemas/net/lantiq,etop-xway.yaml#
/home/aleksander/workspace/linux/arch/mips/boot/dts/lantiq/danube_easy50712.dtb: etop@e180000 (lantiq,etop-xway): 'lantiq,tx-burst-length' is a required property
	from schema $id: http://devicetree.org/schemas/net/lantiq,etop-xway.yaml#
/home/aleksander/workspace/linux/arch/mips/boot/dts/lantiq/danube_easy50712.dtb: etop@e180000 (lantiq,etop-xway): 'lantiq,rx-burst-length' is a required property
	from schema $id: http://devicetree.org/schemas/net/lantiq,etop-xway.yaml#

Fixes: 14d4e308e0aa ("net: lantiq: configure the burst length in ethernet drivers")
Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
---
 arch/mips/boot/dts/lantiq/danube_easy50712.dts | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/lantiq/danube_easy50712.dts b/arch/mips/boot/dts/lantiq/danube_easy50712.dts
index 1ce20b7d05cb..c4d7aa5753b0 100644
--- a/arch/mips/boot/dts/lantiq/danube_easy50712.dts
+++ b/arch/mips/boot/dts/lantiq/danube_easy50712.dts
@@ -82,13 +82,16 @@ conf_out {
 			};
 		};
 
-		etop@e180000 {
+		ethernet@e180000 {
 			compatible = "lantiq,etop-xway";
 			reg = <0xe180000 0x40000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <73 78>;
+			interrupt-names = "tx", "rx";
 			phy-mode = "rmii";
 			mac-address = [ 00 11 22 33 44 55 ];
+			lantiq,rx-burst-length = <4>;
+			lantiq,tx-burst-length = <4>;
 		};
 
 		stp0: stp@e100bb0 {
-- 
2.47.2


