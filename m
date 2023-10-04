Return-Path: <devicetree+bounces-5796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D26EF7B7EAE
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:07:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5F4E3281515
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 12:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8D6134DF;
	Wed,  4 Oct 2023 12:07:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137C6134A2
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 12:07:09 +0000 (UTC)
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 856E5A1;
	Wed,  4 Oct 2023 05:07:08 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 394C6vq6057376;
	Wed, 4 Oct 2023 07:06:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696421217;
	bh=EPTKeFglX7dM/p2v3QBKBbMq4tebhRuV4spzJSVfp+g=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=YjJEnsdkh7x6gve/XK9o3dNkUKTlJ/eiWJj8S2CCwi5i93yhrz4MBnDhyIjOP8lJC
	 Owd4wHOCs92M871q6cgdr4Sgti9c7095ihik7pECSJfdKNgZIONygj9874Y/a2z8Ee
	 aOPm6e5BpjaqkzMzjKddE1OLyoKpVvIY5ZKSqJLI=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 394C6vN1085320
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 4 Oct 2023 07:06:57 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 4
 Oct 2023 07:06:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 4 Oct 2023 07:06:57 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 394C6vFJ019726;
	Wed, 4 Oct 2023 07:06:57 -0500
Date: Wed, 4 Oct 2023 07:06:57 -0500
From: Nishanth Menon <nm@ti.com>
To: Roger Quadros <rogerq@ti.com>
CC: Nitin Yadav <n-yadav@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: defconfig: Enable GPMC NAND support
Message-ID: <20231004120657.hdmo5r6lzyohiodq@gauging>
References: <20231004111238.3968984-1-n-yadav@ti.com>
 <20231004111238.3968984-4-n-yadav@ti.com>
 <6ad28b45-815c-723a-117e-84782753a361@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6ad28b45-815c-723a-117e-84782753a361@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 14:26-20231004, Roger Quadros wrote:
> 
> 
> On 4.10.2023 14.12, Nitin Yadav wrote:
> > Enable config required to support GPMC NAND on
> > AM62x LP SK and AM64x SKEVM.
> > 
> > Signed-off-by: Nitin Yadav <n-yadav@ti.com>
> > ---
> >   arch/arm64/configs/defconfig | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 66bfbef73324..a2758ac73f87 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -270,6 +270,8 @@ CONFIG_MTD_DATAFLASH=y
> >   CONFIG_MTD_SST25L=y
> >   CONFIG_MTD_RAW_NAND=y
> >   CONFIG_MTD_NAND_DENALI_DT=y
> > +CONFIG_MTD_NAND_OMAP2=m
> 
> If rootfs is required on NAND, it is better to be built-in.
> 
> > +CONFIG_MTD_NAND_OMAP_BCH=y
> >   CONFIG_MTD_NAND_MARVELL=y
> >   CONFIG_MTD_NAND_BRCMNAND=m
> >   CONFIG_MTD_NAND_FSL_IFC=y
> > @@ -1357,6 +1359,7 @@ CONFIG_ARM_MEDIATEK_CCI_DEVFREQ=m
> >   CONFIG_EXTCON_PTN5150=m
> >   CONFIG_EXTCON_USB_GPIO=y
> >   CONFIG_EXTCON_USBC_CROS_EC=y
> > +CONFIG_OMAP_GPMC=m
> 
> This is a memory controller so better to be built-in.
> 
> >   CONFIG_RENESAS_RPCIF=m
> >   CONFIG_IIO=y
> >   CONFIG_EXYNOS_ADC=y

For the boards mentioned, NAND is optional and not a primary rootfs
storage media - I'd rather leave it as "m" and not impact the size of
generic Image file.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

