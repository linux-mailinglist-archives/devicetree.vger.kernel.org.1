Return-Path: <devicetree+bounces-96625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D871B95ED36
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 11:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 961E3280F69
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 09:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF8B0148314;
	Mon, 26 Aug 2024 09:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="aVO7a8o+"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7C91482E3;
	Mon, 26 Aug 2024 09:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724664653; cv=none; b=TSXlsAcDFq9G/UH53n5Am+w4iWOjhphxv3zo0Ug98Ms4eZsQDsNDEGaLg571+k5tfi3bM/AVJnWsq2Ikp3eOS70vQWRcOzSZjJ/McaRtkyF4ePDZFkF0A0RuSxrZw9HRusU2AEMYimr9o0wrXZwGdOtazDZ7nGRhUBqOlXzWFYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724664653; c=relaxed/simple;
	bh=HXDvTGFAnJA/E6cDYc69xDkIxRj+ApuJYOPP2JcjCQQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EmJo8BKuNjl+bzOp7YPLd5zPk5+rrjkBCgva6+BPTQFdxKRr7kDzp2R4Mb998ulBxUmdCtqkAFZGkxHxJ+VyYDc72OfaRKBPzzd+uxlTBLkPw3CV4uCh9bYPDAOCuav58/uCMgqVJWei7kPqfn3IDblJyAu9j6Kwtsz5d9a6iv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=aVO7a8o+; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 47Q9UlBn113672;
	Mon, 26 Aug 2024 04:30:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1724664647;
	bh=tSkQ56FdawgsYxng0w4pp5/izvGTO4aDDxcpavHhSEI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=aVO7a8o+A4unV6c2J+2b9rjAiyLtsMV7prQPiGia8ZsGthWMD5zxGJ8hPU57DDNnn
	 sgQQMB0SRSjy/hHx+Rqf1WI/X304kg8xTd4VRnLjDuUeW0+edcwpVOz2aExblvL7tT
	 SEmNmeYhBd0zzN1xLMVcgDt9pRgfQQInONSj9voM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 47Q9Ulth064344
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 26 Aug 2024 04:30:47 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 26
 Aug 2024 04:30:47 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 26 Aug 2024 04:30:47 -0500
Received: from uda0510294.dhcp.ti.com (uda0510294.dhcp.ti.com [172.24.227.151])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 47Q9UPnE118247;
	Mon, 26 Aug 2024 04:30:44 -0500
From: Beleswar Padhi <b-padhi@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <u-kumar1@ti.com>, <s-anna@ti.com>, <hnagalla@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 5/7] arm64: dts: ti: k3-am68-sk-som: Switch MAIN R5F clusters to Split-mode
Date: Mon, 26 Aug 2024 15:00:22 +0530
Message-ID: <20240826093024.1183540-6-b-padhi@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240826093024.1183540-1-b-padhi@ti.com>
References: <20240826093024.1183540-1-b-padhi@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

The TI AM68 SK board has two R5F clusters in the MAIN domain, and both
of these are configured for LockStep mode at the moment. Switch both of
these R5F clusters to Split mode by default to maximize the number of
R5F cores.

Signed-off-by: Beleswar Padhi <b-padhi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
index 5c66e0ec6e82..4800f956bf12 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi
@@ -302,6 +302,14 @@ &mcu_r5fss0_core1 {
 			<&mcu_r5fss0_core1_memory_region>;
 };
 
+&main_r5fss0 {
+	ti,cluster-mode = <0>;
+};
+
+&main_r5fss1 {
+	ti,cluster-mode = <0>;
+};
+
 &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
-- 
2.34.1


