Return-Path: <devicetree+bounces-5785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 496057B7E1E
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id BBEF61F222FD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65AB112B6A;
	Wed,  4 Oct 2023 11:26:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699A2D279
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:26:52 +0000 (UTC)
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1281A6;
	Wed,  4 Oct 2023 04:26:50 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394BQeE6023989;
	Wed, 4 Oct 2023 06:26:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696418800;
	bh=fHJ5CeFVeRodYY0BSWWqOQDZtq9BniubrpnSbjm2VXs=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=lM8TgCBgZoQOvS6xls0p5Y+ATFeCz7rZR+100QspJu+ZFf+oGLyT5cH1rFYxUtXkY
	 hspr5WqzaBXndzOegYqicPfTUSbyv56d5iXfdS3pY3eRbiyKXgE/mmooTn/jXPNW7t
	 ltP9pxVMy3IgucBLn1aOx0UQGQyvG06Xou7h4THc=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394BQeri023881
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 06:26:40 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 06:26:40 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 06:26:40 -0500
Received: from [10.250.135.44] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394BQXIE108063;
	Wed, 4 Oct 2023 06:26:34 -0500
Message-ID: <6ad28b45-815c-723a-117e-84782753a361@ti.com>
Date: Wed, 4 Oct 2023 14:26:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/3] arm64: defconfig: Enable GPMC NAND support
To: Nitin Yadav <n-yadav@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20231004111238.3968984-1-n-yadav@ti.com>
 <20231004111238.3968984-4-n-yadav@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@ti.com>
In-Reply-To: <20231004111238.3968984-4-n-yadav@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 4.10.2023 14.12, Nitin Yadav wrote:
> Enable config required to support GPMC NAND on
> AM62x LP SK and AM64x SKEVM.
> 
> Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> ---
>   arch/arm64/configs/defconfig | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 66bfbef73324..a2758ac73f87 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -270,6 +270,8 @@ CONFIG_MTD_DATAFLASH=y
>   CONFIG_MTD_SST25L=y
>   CONFIG_MTD_RAW_NAND=y
>   CONFIG_MTD_NAND_DENALI_DT=y
> +CONFIG_MTD_NAND_OMAP2=m

If rootfs is required on NAND, it is better to be built-in.

> +CONFIG_MTD_NAND_OMAP_BCH=y
>   CONFIG_MTD_NAND_MARVELL=y
>   CONFIG_MTD_NAND_BRCMNAND=m
>   CONFIG_MTD_NAND_FSL_IFC=y
> @@ -1357,6 +1359,7 @@ CONFIG_ARM_MEDIATEK_CCI_DEVFREQ=m
>   CONFIG_EXTCON_PTN5150=m
>   CONFIG_EXTCON_USB_GPIO=y
>   CONFIG_EXTCON_USBC_CROS_EC=y
> +CONFIG_OMAP_GPMC=m

This is a memory controller so better to be built-in.

>   CONFIG_RENESAS_RPCIF=m
>   CONFIG_IIO=y
>   CONFIG_EXYNOS_ADC=y

-- 
cheers,
-roger

