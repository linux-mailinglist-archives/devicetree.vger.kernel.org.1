Return-Path: <devicetree+bounces-136737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B10A060D5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41B883AB63F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC631FECCC;
	Wed,  8 Jan 2025 15:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="FU0f/Lbg"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264FF2594BC;
	Wed,  8 Jan 2025 15:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351470; cv=none; b=p5Ql5B22ebbCMC/xlI73D42/JT4HqQR6xRLWX/CYxDRAONEk1U47xhrONsA/9IxF9Fp4k4z87bFAb28ukKOTYECwojcHGeBKQZt+w6hNEbirour4mZ2oyEck9pjOMtNoTsOlqRS/56xjMStx2w+2btBhdMKVoHeA/bSdZTKRNgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351470; c=relaxed/simple;
	bh=/iy058ASG+zil0SNKB4sVuheIrlq+EfosIfD5phqJvM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BMXZfDdGgvSKI1RIs2t4Z8aVxf52G6fBAXdotXmVfu3fbutPqc1KDyrHlSNRENVvXqR7TDhl5q0dddnPGahbCWATnm1UeOnHg5y86PPGxcgBlLH4AOm1u6MufeDN5cn9vFTUdzFKcnKq5F4drm3Z5Ghlhl5IsnX2BJA3AvjJ11I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=FU0f/Lbg; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 508Fp2Rx3124243
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 8 Jan 2025 09:51:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736351462;
	bh=pUzOK9WaNKQ4slSmgvifD1Cc8ImfbMvJaVSG1wm/zOE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=FU0f/LbgzoNtYVlrZ6rFRDO/Tdki2cwqXm4JijHxUQhnp/Emd49E0gjL8n5vrcXgE
	 akEl2s+lfY0eMGFYhqKSVYJF1KcZaQigPFKIQ80n4Nncp8q49d6YrHNVlJxEAYanTz
	 IDw5kiZLxwsSOxsykXqqL2/dqdcOnV+AKbvvdgVU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508Fp2k7098285;
	Wed, 8 Jan 2025 09:51:02 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 09:51:02 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 09:51:02 -0600
Received: from localhost ([10.249.32.182])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508Fp2oe069429;
	Wed, 8 Jan 2025 09:51:02 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        Siddharth Vadapalli
	<s-vadapalli@ti.com>
CC: Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <srk@ti.com>
Subject: Re: [PATCH v4 0/4] Add PCIe Overlays for J721E, AM68 and AM69
Date: Wed, 8 Jan 2025 09:51:00 -0600
Message-ID: <173635143439.1208166.298500356758573677.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241205105041.749576-1-s-vadapalli@ti.com>
References: <20241205105041.749576-1-s-vadapalli@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Siddharth Vadapalli,

On Thu, 05 Dec 2024 16:20:32 +0530, Siddharth Vadapalli wrote:
> This series adds device-tree overlays for enabling Endpoint mode of
> operation of the PCIe Controllers on TI's J721E, AM68 and AM69 SoCs.
> 
> Only the second patch of this series has a v3 while the rest of the
> patches have been newly introduced in this series. The reason for
> grouping patches is the dependency on the Makefile w.r.t. the changes
> made in the patches when enabling overlays.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/4] arm64: dts: ti: Makefile: Fix typo "k3-j7200-evm-pcie1-ep.dtbo"
      commit: a7543eaeb31544b9c3f6248cac8189aa1480c0f5
[2/4] arm64: dts: ti: k3-j721e-evm: Add overlay for PCIE1 Endpoint Mode
      commit: c3015d4540a47ced846bf973e5a473fb4181662a
[3/4] arm64: dts: ti: k3-am68-sk-base-board: Add overlay for PCIE1 Endpoint Mode
      commit: 58efed5800e901cf9b320c56e8879878f09b8291
[4/4] arm64: dts: ti: k3-am69-sk: Add overlay for PCIE0 Endpoint Mode
      commit: b09cc758bc015a100b440d5c70098aebd0ddcd43

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


