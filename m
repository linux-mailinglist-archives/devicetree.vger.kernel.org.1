Return-Path: <devicetree+bounces-1419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E20B7A62B1
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27F711C20CDD
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:21:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF165374CD;
	Tue, 19 Sep 2023 12:21:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A79374C8
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:21:20 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F19BE3;
	Tue, 19 Sep 2023 05:21:17 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38JCL6Er050733;
	Tue, 19 Sep 2023 07:21:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695126066;
	bh=ZhdmNcn9ZQoH9/fYjCowlPhaTtThbQ2NWpz3RSkgGCk=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=qIVSq9tZrXJYBohxssSruOaJIpOWIZP7sQKyRzZ5yYBiPETfblWV2FWTIoJvR6Ppn
	 K0avfhdrHiTvpWHPNyeFG5glkN1ns0djuUpMZ62HAzTKdndtkRx2xmmzgnBxAsFp2L
	 WCkzAsOgNGDI7xwbscBpq8c403fm/Wi+0UCGGd3s=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38JCL60Z108859
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 19 Sep 2023 07:21:06 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 19
 Sep 2023 07:21:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 19 Sep 2023 07:21:06 -0500
Received: from [10.250.38.120] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38JCL56N008380;
	Tue, 19 Sep 2023 07:21:06 -0500
Message-ID: <3e4fb573-3439-5d5c-866d-75bc20732d92@ti.com>
Date: Tue, 19 Sep 2023 07:21:05 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] arm64: dts: ti: k3-am654-base-board: Add I2C I/O expander
To: Ravi Gunasekaran <r-gunasekaran@ti.com>, <nm@ti.com>, <vigneshr@ti.com>
CC: <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
References: <20230919050340.16156-1-r-gunasekaran@ti.com>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20230919050340.16156-1-r-gunasekaran@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 9/19/23 12:03 AM, Ravi Gunasekaran wrote:
> AM654 baseboard has two TCA9554 I/O expander on the WKUP_I2C0 bus.
> The expander at address 0x38 is used to detect daughter cards.
> Add a node for this I/O expander.
> 
> Signed-off-by: Ravi Gunasekaran <r-gunasekaran@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-am654-base-board.dts | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> index f5c26e9fba98..035b20386ef3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
> @@ -381,6 +381,13 @@
>   		interrupt-controller;
>   		#interrupt-cells = <2>;
>   	};
> +
> +	pca9554_1: gpio@38 {

As this is at a lower address than the other expander(39), why
not put it before that one to keep these in order?

Also, do you need the label(pca9554_1:) for anything, if not
drop it for now.

Andrew

> +		compatible = "nxp,pca9554";
> +		reg = <0x38>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
>   };
>   
>   &mcu_i2c0 {
> 
> base-commit: dfa449a58323de195773cf928d99db4130702bf7

