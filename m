Return-Path: <devicetree+bounces-63244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7478B4236
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 00:39:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFF1FB21B25
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 22:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A8C2E636;
	Fri, 26 Apr 2024 22:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="JJb9EJEw"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9DA3BBEB
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 22:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714171134; cv=none; b=ug6zntPmfxOaCkUxrUr3011YueObYgGD1PzntbBYqOzr5/GPe1FG6gGyItmaIcwLOnVtRae3+jzG5Fpfisb4QcqP8mmpAU3wCKBfsqofvS30t2S9gh3wxssG/dtn0i0KjO9ec4v3JV/LUJ/FRycQDYd/vi6lkwjtETKsFellSuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714171134; c=relaxed/simple;
	bh=osfKozBDJvV7kmpHRmcbHCyN8eOMJnrjL7FtCix08KY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZhFtBod5k5RqXOc8N9MMp4OOqGTIiw7yy9qredDkx73l2gU2GhXrO+IYNoPbHumhQnJFxM5rZz5IghyhqWPPXJnYFrrOjAjCSiphRZ/GFAYfe27R2HkFo6AAA1ZZkO0uHGCGV4abA4KQSv4cz4BIFj2/n6PVd67+WDJdcKEKcao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=JJb9EJEw; arc=none smtp.client-ip=198.47.23.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 43QMcTCm017923;
	Fri, 26 Apr 2024 17:38:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1714171109;
	bh=8YqpZ+34ZDJ3BHIt3GKmrdiqp3bArPcMsSyawOpGUGk=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=JJb9EJEwpjvH7qPUU2ryaWKjSfwjaKYxZg3jtdtq3Sp7UIRgEwTuT5+vfg7ppknrM
	 MuNvML6r+3jGWdtKAdtzbzGOMtS6H3JEFLhPTTAqfOpIsR8F0JggeICsOGMwi2YFN2
	 Oo+E1nmhvxf9b5Xqi2EGka3EX/i9KbW+StGHJapg=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 43QMcTss003824
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 26 Apr 2024 17:38:29 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 26
 Apr 2024 17:38:29 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 26 Apr 2024 17:38:29 -0500
Received: from localhost (uda0133052.dhcp.ti.com [128.247.81.232])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 43QMcThW078249;
	Fri, 26 Apr 2024 17:38:29 -0500
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        Diogo
 Ivo <diogo.ivo@siemens.com>
CC: Nishanth Menon <nm@ti.com>, Jan Kiszka <jan.kiszka@siemens.com>
Subject: Re: [PATCH] arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG1 devices
Date: Fri, 26 Apr 2024 17:38:26 -0500
Message-ID: <171417109885.3482592.16150269865310448034.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240409164314.157602-1-diogo.ivo@siemens.com>
References: <20240409164314.157602-1-diogo.ivo@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Diogo Ivo,

On Tue, 09 Apr 2024 17:43:14 +0100, Diogo Ivo wrote:
> Add the required nodes to enable ICSSG SR1.0 based prueth networking.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: iot2050: Add icssg-prueth nodes for PG1 devices
      commit: 02b4967cf4ec544ba911404c150e9bc75f38f4b1

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


