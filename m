Return-Path: <devicetree+bounces-136738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 031CEA060C2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:53:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09860169298
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 15:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DC521FF1DC;
	Wed,  8 Jan 2025 15:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="qUIYBp9c"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9607D1FF1D5;
	Wed,  8 Jan 2025 15:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736351502; cv=none; b=l9hZzElmZkJ+BBPf/+bsVUBw73Nuay5i+QcRMYjJGFmXypb9UjKOXg3c/Sr59qG7t/k7vDv4LBHKWoi+fT1cbWIEIRFBPz6ZwQcZlbX6k3rrdDyG8tiZeHon4Lh9HvnWqMmqyaba7Vuts0yGBspYfCFs7p+jkLAVoya/H9/s4pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736351502; c=relaxed/simple;
	bh=SfKhbPlQQcIKjJeVmBU289sQgrG7Wag7cyt2NlnkfrM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZRB3GEu6SQGv6RoqyeZInDd+QEmvAKtpA3ti9ENSr3CmlpsEHyaSdFt2CyrMFGYoMIeT3n7JT6xdTlRGuVyzY/jcDJLT1zMM3ztvKirEq4skvFQKd9yGpthPxC43RmaX4GBmgknHsSaj7c0l5j+/8HVqVRO2Y8ps0EIT/UzY0w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=qUIYBp9c; arc=none smtp.client-ip=198.47.19.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 508FpRHP048297;
	Wed, 8 Jan 2025 09:51:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736351487;
	bh=hXSnLLVYUK030RfldFL8WTF5ObExafHj71Q25/dTBMo=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=qUIYBp9cs5X0jvaqsO1yooYRoGNBOFZf7EnOSRudOpZrb30h680/5l0doAA5Gcz94
	 OOWKNtlcc+yrdmx54cqTHH5Qi8Z99MUHd0sfms4cfM2L5WL/rLTmqJ4ETkIPByLAo2
	 cJgLu0k9T74NJyMWs6AxJTT1RZWmbLH6pXd1kMUg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508FpRmC098543;
	Wed, 8 Jan 2025 09:51:27 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 8
 Jan 2025 09:51:26 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 8 Jan 2025 09:51:26 -0600
Received: from localhost ([10.249.32.182])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 508FpQ7F069921;
	Wed, 8 Jan 2025 09:51:26 -0600
From: Nishanth Menon <nm@ti.com>
To: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Josua
 Mayer <josua@solid-run.com>
CC: Nishanth Menon <nm@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am642-hummingboard-t: convert overlay to board dts
Date: Wed, 8 Jan 2025 09:51:25 -0600
Message-ID: <173635146906.1208341.13754676191717145508.b4-ty@ti.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250101-am64-hb-fix-overlay-v2-1-78143f5da28c@solid-run.com>
References: <20250101-am64-hb-fix-overlay-v2-1-78143f5da28c@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hi Josua Mayer,

On Wed, 01 Jan 2025 13:30:22 +0100, Josua Mayer wrote:
> SolidRun HummingBoard-T has two options for M.2 connector, supporting
> either PCI-E or USB-3.1 Gen 1 - depending on configuration of a mux
> on the serdes lane.
> The required configurations in device-tree were modeled as overlays.
> 
> The USB-3.1 overlay uses /delete-property/ to unset a boolean property
> on the usb controller limiting it to USB-2.0 by default.
> Overlays can not delete a property from the base dtb, therefore this
> overlay is at this time useless.
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am642-hummingboard-t: convert overlay to board dts
      commit: e2b69180431968250bf3c0c581155f1b37d057c1

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


