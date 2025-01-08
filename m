Return-Path: <devicetree+bounces-136741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A2A060D0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9D89169338
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F911FA8C0;
	Wed,  8 Jan 2025 15:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="coBYJ4kc"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B904F1FDE29;
	Wed,  8 Jan 2025 15:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.249
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351717; cv=none; b=tUbnTKXH5jUt3AcePY1RGQlfMV0/VZkkQ8yIHU4A7QhMx1SEYKvdQTkotdHc/8kugZmWBJFW6CEavHx9inryUBQh0g34HhLegVxPkCINa/Zk7w3vRnv7Rfz/vE6v0JQOQSeRB3fiHVfRyXf0rA/09WLwSL42aLgrocQUkE4+3wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351717; c=relaxed/simple;
	bh=GDL3oLakZK4vCW/l+bakn3/h3Brr57D3TZtv+muUx6g=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NdAuCeKsHj8ts1s63FmKIckRawHjQhZLSqHWvLuN6WNLZZ5qsM1eTloyNg2FJaiMNIw+/3KNsGVo+LFe+PWumULyr/Rk9B3aetzACYDO7c0F3TF5J3smr4fGVI8t610N+hoX1N/jKXbwVq2JUCdbimr5ecqlO9hJmBs0IZx8ERs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=coBYJ4kc; arc=none smtp.client-ip=198.47.23.249
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 508Ft28S005993;
	Wed, 8 Jan 2025 09:55:02 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736351702;
	bh=MTgdRGCrjZVs332wXwjRkWCPapMl7/eRuP5w9RmhYD8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=coBYJ4kc6YvpDID8zVRljQH7PuAY7mftWPRpuNg0aKHmEVA5rM9tUmV7w7hiFGFSD
	 Aj5VFuDXoPpahcNG7lB9tEMGXj+CHJYm6DJ0Lor3SPTt6zKD5crzlmlumm1FZcaQo8
	 D/GWZW3zDvTPeAqugqc7LqLD2AFhJ2KrIgPVPrfs=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 508Ft2X9084233
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 8 Jan 2025 09:55:02 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 09:55:02 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 09:55:02 -0600
Received: from localhost ([10.249.32.182])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508Ft2KJ091324;
	Wed, 8 Jan 2025 09:55:02 -0600
From: Nishanth Menon <nm@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>
CC: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>,
        Markus
 Schneider-Pargmann <msp@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a-wakeup: Configure ti-sysc for wkup_uart0
Date: Wed, 8 Jan 2025 09:55:00 -0600
Message-ID: <173635169682.1209268.16035989059453940874.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241231-am62a-dt-ti-sysc-wkup-v1-1-a9b0d18a2649@ti.com>
References: <20241231-am62a-dt-ti-sysc-wkup-v1-1-a9b0d18a2649@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Dhruva Gole,

On Tue, 31 Dec 2024 14:44:19 +0530, Dhruva Gole wrote:
> Similar to the TI K3-AM62x SoC commit ce27f7f9e328c8582a169f97f1466976561f1
> ("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0"),
> The devices in the wkup domain are capable of waking up the system from
> suspend. We can configure the wkup domain devices in a generic way using
> the ti-sysc interconnect target module driver like we have done with the
> earlier TI SoCs.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am62a-wakeup: Configure ti-sysc for wkup_uart0
      commit: 5532b8a9ce0e80514e37a1e082824934663580a3

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


