Return-Path: <devicetree+bounces-18173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EDC7F58E5
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 08:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 451F3B20D26
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 07:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39931549E;
	Thu, 23 Nov 2023 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="dSNMgfTw"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CD1C1
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 23:10:28 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7AG9q011543;
	Thu, 23 Nov 2023 01:10:16 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700723416;
	bh=GwxTwpHzcWwrbydIP+gMj88rn44tgH+cJJWxr9f1eYE=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=dSNMgfTwCd4l2sv29c33i/sg50NrLEjgS71yW6R7tLGoGONnv8HfDdW91yKNyvmHs
	 /hdMVyoIdkC0PiHwYC4P7RHVAN37Ps4rrkkBC9kYt28EKyG9MPlC53fo11cYqugaGJ
	 UucQJDcM53b6iLvXzbQuBo6Pp7u2zu4UBwJIQdbY=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AN7AGGw019352
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Nov 2023 01:10:16 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 23
 Nov 2023 01:10:16 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 23 Nov 2023 01:10:16 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AN7AFH8030988;
	Thu, 23 Nov 2023 01:10:15 -0600
Date: Thu, 23 Nov 2023 01:10:15 -0600
From: Nishanth Menon <nm@ti.com>
To: Tony Lindgren <tony@atomide.com>
CC: Vignesh Raghavendra <vigneshr@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        sukrut bellary
	<sukrut.bellary@gmail.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am625-sk: Add support for WL1837
 module onboard
Message-ID: <20231123071015.is4sffvdkunko5ws@radar>
References: <20231121122441.64385-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231121122441.64385-1-tony@atomide.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 14:24-20231121, Tony Lindgren wrote:
> From: Vignesh Raghavendra <vigneshr@ti.com>
> 
> WL1837 WLAN card is present on the original AM625 SK board. It
> communicates with the SoC using 4 bit SDIO through the second instance of
> MMCSD.
> 
> Starting with SK-AM62B, there is a M.2 WLAN device connector instead of

We support AM62B-SK.

> the integrated WL1837 WLAN. The M.2 connector should be handled separately
> in the k3-am62a.dtsi and k3-am62b.dtsi files as needed.

Should this rather be an overlay instead of integrated dts fixup? M2
connector allows for various options including the newer 33xx family[2].

It makes sense for the regulator etc to be on the main dts file, but I
am not convinced about it being integrated as part of the dts.

> 
> Note that WLAN currently needs fw_devlink=permissive set on the command
> line. Not sure what is missing here but that seems like a separate change.
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> [tony@atomide.com: updated for pinctrl, improved comments]
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am625-sk.dts | 79 ++++++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> --- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> @@ -103,6 +103,32 @@ vcc_1v8: regulator-5 {
	[...]

> +	};
>  };
>  
>  &main_gpio0 {
> @@ -200,6 +253,32 @@ &sdhci1 {
>  	vqmmc-supply = <&vdd_sd_dv>;
>  };
>  
> +&sdhci2 {
> +	status = "okay";
> +	vmmc-supply = <&wlan_en>;

Should we use mmc-pwrseq ?
Looks like we have run into an issue in BeaglePlay with wlan_en
being always on for loading firmware. so is there a need to keep the
wlan on while suspended?

[1] https://sukrutb.github.io/s2d_TI_am625-BeaglePlay/ (see towards the
end)
[2] https://www.ti.com/tool/M2-CC3301


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

