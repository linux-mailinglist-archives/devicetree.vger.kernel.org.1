Return-Path: <devicetree+bounces-12673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E27EF7DAD89
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 18:48:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 379192814BB
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 17:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A07101CA;
	Sun, 29 Oct 2023 17:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="JfT1p8xq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A468DF44
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 17:48:44 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564E0B4;
	Sun, 29 Oct 2023 10:48:43 -0700 (PDT)
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39TArdWt026126;
	Sun, 29 Oct 2023 10:48:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=pfpt0220;
 bh=gwEbsiWwgUiZfVUT2+pagKAd6saNdGzKY2XsT+qXG34=;
 b=JfT1p8xqVo9ZlBPI6mjOCtGa2h+Nd3VjA36us1xF+rHwaA0jgoZzKU5JuCdZYNM8NFWm
 t+A/Q9I/6NRm5oBIC3iA68xb3qkZdR3rnLP2SUl0pxhYCJWHHQEfov5UwCvAJ2+KzQ4T
 cFVNKfDrXdw/OCh4H1wAvOTA2c00tTlAoC912khel9tHYIJzyTxqKMKVVA6t/Yni1Q8f
 cF0x5Yhd7/eHl/kH8/bncQxYBWppH7CJ1oU6Ye0csJrP6BkYzfvS0q4H6e+bjZMrtUuN
 vd6zlSr3xi0OaLXS5YHG4kDy8Q8HSGx3dIJtjGniqWa6zXVOXuwteXYbMdwJfV3CMZds vg== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3u0ynqbqkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sun, 29 Oct 2023 10:48:26 -0700
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Sun, 29 Oct
 2023 10:48:25 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server id 15.0.1497.48 via Frontend
 Transport; Sun, 29 Oct 2023 10:48:25 -0700
Received: from dc3lp-swdev041.marvell.com (dc3lp-swdev041.marvell.com [10.6.60.191])
	by maili.marvell.com (Postfix) with ESMTP id ACFD03F70A0;
	Sun, 29 Oct 2023 10:48:21 -0700 (PDT)
From: Elad Nachman <enachman@marvell.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
        <sebastian.hesselbarth@gmail.com>, <pali@kernel.org>,
        <mrkiko.rs@gmail.com>, <chris.packham@alliedtelesis.co.nz>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
CC: <enachman@marvell.com>, <cyuval@marvell.com>
Subject: [PATCH v4 1/3] MAINTAINERS: add ac5 to list of maintained Marvell dts files
Date: Sun, 29 Oct 2023 19:48:12 +0200
Message-ID: <20231029174814.559583-2-enachman@marvell.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231029174814.559583-1-enachman@marvell.com>
References: <20231029174814.559583-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: Q1JFkhFWKk7lyQZfXo-EUW5azMgWTAy8
X-Proofpoint-GUID: Q1JFkhFWKk7lyQZfXo-EUW5azMgWTAy8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-29_06,2023-10-27_01,2023-05-22_02

From: Elad Nachman <enachman@marvell.com>

Add ac5 dts files to the list of maintained Marvell Armada dts files

Signed-off-by: Elad Nachman <enachman@marvell.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index bdc4638b2df5..199225588567 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2323,6 +2323,7 @@ F:	arch/arm/boot/dts/marvell/armada*
 F:	arch/arm/boot/dts/marvell/kirkwood*
 F:	arch/arm/configs/mvebu_*_defconfig
 F:	arch/arm/mach-mvebu/
+F:	arch/arm64/boot/dts/marvell/ac5*
 F:	arch/arm64/boot/dts/marvell/armada*
 F:	arch/arm64/boot/dts/marvell/cn913*
 F:	drivers/clk/mvebu/
-- 
2.25.1


