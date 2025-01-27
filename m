Return-Path: <devicetree+bounces-141219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45524A2005B
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5507165BE5
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 22:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CEE1D932F;
	Mon, 27 Jan 2025 22:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PyQkC/hi"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2EC1991C1;
	Mon, 27 Jan 2025 22:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738016201; cv=none; b=JKAnk21i7mJDgeKaMUQT82KbwN7/Eh97Uk2aQWvzZf7wUEfsZZh9oCDV3zL0w4mVWVpV1nh6Mw3QwTLn7Q/ih156v29DKihWmS3qlmkYoLtr0SsWnWxcq7YIqtXvFbywK9qJqezQ0FgtEGEhRO5UF5gaYGK6xhUcdnYNFCfcVqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738016201; c=relaxed/simple;
	bh=rgdK3fjqYYZhO0VFqUyRApbHoZy0T6B3XtP/DTUsK8o=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=uOGcqmLK4gCEhu+7tcJYusMp9NOFVaOmnyh5Bru+FhTTIIH69DpIeKAhLl+TEKC7955LUnzqo5v1QQaVVztDnq1VrDBXAjPJtU1bDlZqs8ODpeVMdZveCUCCcMBgAWfC/cW2EvfX3ZshXV/BITBkFE8aWGxRdrhLmKIA9fXfQMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PyQkC/hi; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50RMGVwL1052869
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 27 Jan 2025 16:16:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738016192;
	bh=LApssjvadB1SvJDtwWfHz33SW6GBmJjSjuF/LQufrn8=;
	h=From:To:CC:Subject:Date;
	b=PyQkC/hiZXC13NTNvM29HiZ14Yr5kvc/rcaI5JWA5USau1yKHaGwNVE4IAhbZIM8v
	 joaamr3CLi2zjAJ4LH4hA+FZlDnWgdv0j1rZFIYXEbsY0Vs3cRWuym3q4z6lDWzmVn
	 qDRbdYvTav2gWJeRXmAjZGD8MGy3VH4AzF4/uNt4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50RMGV07070989
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 27 Jan 2025 16:16:31 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 27
 Jan 2025 16:16:31 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 27 Jan 2025 16:16:31 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50RMGVEG098068;
	Mon, 27 Jan 2025 16:16:31 -0600
From: Judith Mendez <jm@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Devarsh Thakkar
	<devarsht@ti.com>,
        Hari Nagalla <hnagalla@ti.com>
Subject: [PATCH 0/4] Add R5F and C7xv device nodes
Date: Mon, 27 Jan 2025 16:16:27 -0600
Message-ID: <20250127221631.3974583-1-jm@ti.com>
X-Mailer: git-send-email 2.48.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

For am62x and am62ax devices, this patch series adds device
nodes for the R5 cores and C7xv DSP subsystem found in their
respective voltage domain, based on the device TRMs [0][1].

Boot tested on am62x SK and am62ax SK boards.

[0] https://www.ti.com/lit/pdf/spruj16
[1] https://www.ti.com/lit/pdf/spruiv7

Devarsh Thakkar (1):
  arm64: dts: ti: k3-am62a-wakeup: Add R5F device node

Hari Nagalla (2):
  arm64: dts: ti: k3-am62-wakeup: Add wakeup r5f node
  arm64: dts: ti: k3-am62a-mcu: Add R5F remote proc node

Jai Luthra (1):
  arm64: dts: ti: k3-am62a-main: Add C7xv device node

 arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi  | 24 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi   | 11 +++++++
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi    | 36 +++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 23 +++++++++++++
 4 files changed, 94 insertions(+)

-- 
2.48.0


