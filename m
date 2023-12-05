Return-Path: <devicetree+bounces-21977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98674805E9C
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 425E71F215CA
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6DE6D1D5;
	Tue,  5 Dec 2023 19:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="u6Ec/AWd"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D40F9A5;
	Tue,  5 Dec 2023 11:26:01 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B5JPtWY047762;
	Tue, 5 Dec 2023 13:25:55 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701804355;
	bh=bYlpE9HnP+gA/nrT4c4wdCH6uG+lhxZDxBMWwHHaxZI=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=u6Ec/AWdrmqlcVOKUn+yUohENuhng15L8VVdmgo3mAW4ATtuxPK5MmVEO4oMsNhSC
	 Xb4SLLbOFyQj5/0Rnv7bf3nR71sYFVWjlciNCB/mKlee+F7cp6y5fATXy0inCqFMLg
	 OmgQjU1OlkXT0jvQNERpFZXvAg7rBhhSYZzkD9Sk=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B5JPtTi033771
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 5 Dec 2023 13:25:55 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 5
 Dec 2023 13:25:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 5 Dec 2023 13:25:55 -0600
Received: from [128.247.81.105] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B5JOcTW017496;
	Tue, 5 Dec 2023 13:25:55 -0600
Message-ID: <7291a4a5-9e8e-4d9f-9aea-f40e1fccc5f7@ti.com>
Date: Tue, 5 Dec 2023 13:25:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-j784s4-main: Add Itap Delay Value
 For DDR50 speed mode
Content-Language: en-US
To: Bhavya Kapoor <b-kapoor@ti.com>, <devicetree@vger.kernel.org>
CC: <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <robh+dt@kernel.org>, <kristo@kernel.org>, <vigneshr@ti.com>,
        <nm@ti.com>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20231201082045.790478-1-b-kapoor@ti.com>
 <20231201082045.790478-4-b-kapoor@ti.com>
From: Judith Mendez <jm@ti.com>
In-Reply-To: <20231201082045.790478-4-b-kapoor@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Hi Bhavya,

On 12/1/23 2:20 AM, Bhavya Kapoor wrote:
> DDR50 speed mode is enabled for MMCSD in J784s4 but its Itap Delay
> Value is not present in the device tree. Thus, add Itap Delay Value
> for MMCSD High Speed DDR which is DDR50 speed mode for J784s4 SoC
> according to datasheet for J784s4.
> 
> [+] Refer to : section 7.10.5.17.2 MMC1/2 - SD/SDIO Interface, in
> 	J784s4 datasheet
> - https://www.ti.com/lit/ds/symlink/tda4vh-q1.pdf
> 

Also looks good. (:

Reviewed-by: Judith Mendez <jm@ti.com>

> Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> index d89bcddcfe3d..b9a2358b1459 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
> @@ -712,6 +712,7 @@ main_sdhci1: mmc@4fb0000 {
>   		ti,itap-del-sel-sd-hs = <0x0>;
>   		ti,itap-del-sel-sdr12 = <0x0>;
>   		ti,itap-del-sel-sdr25 = <0x0>;
> +		ti,itap-del-sel-ddr50 = <0x2>;
>   		ti,clkbuf-sel = <0x7>;
>   		ti,trm-icp = <0x8>;
>   		dma-coherent;

~ Judith

