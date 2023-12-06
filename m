Return-Path: <devicetree+bounces-22405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B73F807478
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:04:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE1D9B20E68
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F6F46446;
	Wed,  6 Dec 2023 16:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uvS8nZ/f"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5826D71;
	Wed,  6 Dec 2023 08:04:00 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B6G3ihD003706;
	Wed, 6 Dec 2023 10:03:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701878624;
	bh=Onl2Pjga12ym5tHj9jDAx0aP83MUjlvXBY3HS9c47g8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=uvS8nZ/fvllT/u8mWP4sp8N/3sOIMdhStvrNz1Zh3rQvSUKMcA4UXWdOA5Rdrfjmy
	 9NEud3LtaJdGyuDZrLA0DPfx3TeQWwIWakxbZ+iXl6NWa4L52i7o+0hokRljU9RH19
	 xVVrK7OJVRDkv1N3MK7BhUUhkbumMk0FUtGuIQ5A=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B6G3i77010718
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 6 Dec 2023 10:03:44 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 6
 Dec 2023 10:03:44 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 6 Dec 2023 10:03:44 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B6G3i6B071849;
	Wed, 6 Dec 2023 10:03:44 -0600
From: Nishanth Menon <nm@ti.com>
To: <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <w.egorov@phytec.de>, Garrett Giordano <ggiordano@phytec.com>
CC: Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <upstream@lists.phytec.de>
Subject: Re: [PATCH 1/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Lower I2C1 frequency
Date: Wed, 6 Dec 2023 10:03:42 -0600
Message-ID: <170187855182.4369.10040429085945945592.b4-ty@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204222811.2344460-1-ggiordano@phytec.com>
References: <20231204222811.2344460-1-ggiordano@phytec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Garrett Giordano,

On Mon, 04 Dec 2023 14:28:09 -0800, Garrett Giordano wrote:
> The gpio-expander on i2c-1 has a maximum frequency of 100kHz. Update our
> main_i2c1 frequency to allow the nxp,pcf8574 gpio-expander to function
> properly.
> 
> 

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Lower I2C1 frequency
      commit: 9c316d58c238e58d6346458462e8b0fd308e7332
[2/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Add HDMI support
      commit: bac441710306a84c52f0f9a561aa9839b91caa14
[3/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Remove HDMI Reset Line Name
      commit: fecdf6de7e47849504d0edaaff55fa0baadef420

For future reference: using a cover-letter (though not mandatory)
helps reviewers provide a ack/ other tag on cover letter to apply to
all patches and b4 can easily figure it out.

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


