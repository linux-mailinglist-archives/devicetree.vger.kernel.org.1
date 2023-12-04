Return-Path: <devicetree+bounces-21344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 787E38033F6
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:09:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33D05281040
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAB924A14;
	Mon,  4 Dec 2023 13:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="fhFuFece"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E6521BC;
	Mon,  4 Dec 2023 05:09:03 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3B4D8lCK112972;
	Mon, 4 Dec 2023 07:08:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701695327;
	bh=cjcjmvqp4tK3yVcduTGKJTy9FzwlqYGe4Kofp82N1Lc=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=fhFuFeceRofQ6Be9tphpO3ZDoRVXYWkmLcn/l1hjOZd6ZvlhsnN7pgbsTwNvRFiXy
	 u1ADhyDiwc1E4kv1c3RUAKOhPydAGZ979dbJZ0xpeZbj5quDTg/8g6TdI3R8jg2Vpd
	 f06msIhIum8kLGkIb+jn+m5iZGhsZVp0PMTo4R/0=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3B4D8l6I013669
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Dec 2023 07:08:47 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 4
 Dec 2023 07:08:46 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 4 Dec 2023 07:08:46 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3B4D8kLr006290;
	Mon, 4 Dec 2023 07:08:46 -0600
Date: Mon, 4 Dec 2023 07:08:46 -0600
From: Nishanth Menon <nm@ti.com>
To: Donald Robson <donald.robson@imgtec.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <mripard@kernel.org>,
        Sarah Walker
	<sarah.walker@imgtec.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-main: Add GPU device node
Message-ID: <20231204130846.m4fhrphg7vfnky3f@brute>
References: <20231204121522.47862-1-donald.robson@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231204121522.47862-1-donald.robson@imgtec.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

On 12:15-20231204, Donald Robson wrote:
> From: Sarah Walker <sarah.walker@imgtec.com>
> 
> Add the Series AXE GPU node to the AM62 device tree.
> 
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
> Signed-off-by: Donald Robson <donald.robson@imgtec.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index e5c64c86d1d5..4338fd8ab2d7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -965,4 +965,13 @@ mcasp2: audio-controller@2b20000 {
>  		power-domains = <&k3_pds 192 TI_SCI_PD_EXCLUSIVE>;
>  		status = "disabled";
>  	};
> +
> +	gpu: gpu@fd00000 {
> +		compatible = "ti,am62-gpu", "img,img-axe";
> +		reg = <0x00 0x0fd00000 0x00 0x20000>;
> +		clocks = <&k3_clks 187 0>;
> +		clock-names = "core";
> +		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +		power-domains = <&k3_pds 187 TI_SCI_PD_EXCLUSIVE>;
> +	};
>  };
> -- 
> 2.25.1
> 

Please also add a patch to enable GPU in the default armv8 defconfig as a
kernel module.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

