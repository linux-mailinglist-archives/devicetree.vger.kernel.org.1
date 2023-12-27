Return-Path: <devicetree+bounces-28647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B2E81EF47
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 14:59:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F290281005
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 13:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEFE845014;
	Wed, 27 Dec 2023 13:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="iCgIFgOu"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2D4500F
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 13:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BRDxVgm061977;
	Wed, 27 Dec 2023 07:59:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1703685571;
	bh=Pf3e9plzTy1p5qbXzUI7gb2Y2vlakXOxmM/D2ggJg9k=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=iCgIFgOu0styHKAZxD+GIoszMuYnABZUoCYFdZS0A1vp5O+aj2kHKuz9A+td47VSs
	 VqvW2UNtO/woELH6bvijE0ER/sAfMp8d8tfyC6tCpuM5Fq915WUfBMVLNbXoFj/d06
	 mQzlxf8rGStd4QUGZkZO4yPLjLQg9WTsi5yl/Hvs=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BRDxVIJ011865
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 27 Dec 2023 07:59:31 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 27
 Dec 2023 07:59:30 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 27 Dec 2023 07:59:30 -0600
Received: from uda0132425.dhcp.ti.com (uda0132425.dhcp.ti.com [172.24.227.94])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BRDx94L099353;
	Wed, 27 Dec 2023 07:59:29 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
Date: Wed, 27 Dec 2023 19:29:01 +0530
Message-ID: <170368552643.1332094.7883858507182654481.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20230912111215.18415-1-tony@atomide.com>
References: <20230912111215.18415-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180


On Tue, 12 Sep 2023 14:12:15 +0300, Tony Lindgren wrote:
> The devices in the wkup domain are capable of waking up the system from
> suspend. We can configure the wkup domain devices in a generic way using
> the ti-sysc interconnect target module driver like we have done with the
> earlier TI SoCs.
> 
> As ti-sysc manages the SYSCONFIG related registers independent of the
> child hardware device, the wake-up configuration is also set even if
> wkup_uart0 is reserved by sysfw.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
      commit: 86224524b52a8efba26f920736d08c8bfdd22d87

Best regards,
-- 
Vignesh


