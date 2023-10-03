Return-Path: <devicetree+bounces-5369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CCA7B60F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 927612816C7
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F6C613D;
	Tue,  3 Oct 2023 06:48:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D2D962D
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 06:48:49 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEF96AC;
	Mon,  2 Oct 2023 23:48:47 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3936mV70002180;
	Tue, 3 Oct 2023 01:48:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1696315711;
	bh=L8cq9ILA9YOFfOTbj/R2hPdyw38+X5l8GX2variqNi8=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=nTaMkc6+Vl+dsPdyJQfH6ifS+pfB2L1XQlQ+8ZNFPNqXppaG9FQsQ8e5yJmyLwloD
	 TbymWz5VZLfBMH71yZQl9iMdhC/YiROE3OJrKAtYUvbGBFYZRbKsAWhLxn/yICC54h
	 CyquA27Vpmru/8AZQtpZa9xI8HybKQvT2D3NtP7Q=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3936mU7G077467
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 3 Oct 2023 01:48:30 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 3
 Oct 2023 01:48:30 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 3 Oct 2023 01:48:30 -0500
Received: from [172.24.227.94] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3936mRUx021423;
	Tue, 3 Oct 2023 01:48:27 -0500
Message-ID: <a8749e98-7ead-939e-6fa6-35779593a5f4@ti.com>
Date: Tue, 3 Oct 2023 12:18:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 4/7] arm64: dts: ti: k3-j784s4-main: Add the main
 domain watchdog instances
Content-Language: en-US
To: Keerthy <j-keerthy@ti.com>, <robh+dt@kernel.org>, <nm@ti.com>,
        <conor+dt@kernel.org>, <kristo@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <u-kumar1@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20230927023357.9883-1-j-keerthy@ti.com>
 <20230927023357.9883-5-j-keerthy@ti.com>
From: Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20230927023357.9883-5-j-keerthy@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 27/09/23 08:03, Keerthy wrote:
> +	/*
> +	 * The following RTI instances are coupled with MCU R5Fs, c7x and
> +	 * GPU so keeping them disabled as these will be used by their
> +	 * respective firmware
> +	 */
> +	watchdog16: watchdog@2300000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2300000 0x00 0x100>;
> +		clocks = <&k3_clks 356 1>;
> +		power-domains = <&k3_pds 356 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 356 0>;
> +		assigned-clock-parents = <&k3_clks 356 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog17: watchdog@2310000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2310000 0x00 0x100>;
> +		clocks = <&k3_clks 357 1>;
> +		power-domains = <&k3_pds 357 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 357 0>;
> +		assigned-clock-parents = <&k3_clks 357 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog18: watchdog@2320000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2320000 0x00 0x100>;
> +		clocks = <&k3_clks 358 1>;
> +		power-domains = <&k3_pds 358 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 358 0>;
> +		assigned-clock-parents = <&k3_clks 358 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog19: watchdog@2330000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2330000 0x00 0x100>;
> +		clocks = <&k3_clks 359 1>;
> +		power-domains = <&k3_pds 359 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 359 0>;
> +		assigned-clock-parents = <&k3_clks 359 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog15: watchdog@22f0000 {


I understand you are arranging based on Firmware Device ID. But these
numbers don't have much meaning when user maps to TRM. So, I suggest
nodes to be arranged by TRM numbering or ascending order of register
address so that its easier for end user to map the nodes to IP  instance
in TRM.

> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x22f0000 0x00 0x100>;
> +		clocks = <&k3_clks 360 1>;
> +		power-domains = <&k3_pds 360 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 360 0>;
> +		assigned-clock-parents = <&k3_clks 360 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog28: watchdog@23c0000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x23c0000 0x00 0x100>;
> +		clocks = <&k3_clks 361 1>;
> +		power-domains = <&k3_pds 361 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 361 0>;
> +		assigned-clock-parents = <&k3_clks 361 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog29: watchdog@23d0000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x23d0000 0x00 0x100>;
> +		clocks = <&k3_clks 362 1>;
> +		power-domains = <&k3_pds 362 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 362 0>;
> +		assigned-clock-parents = <&k3_clks 362 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog30: watchdog@23e0000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x23e0000 0x00 0x100>;
> +		clocks = <&k3_clks 363 1>;
> +		power-domains = <&k3_pds 363 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 363 0>;
> +		assigned-clock-parents = <&k3_clks 363 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog31: watchdog@23f0000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x23f0000 0x00 0x100>;
> +		clocks = <&k3_clks 364 1>;
> +		power-domains = <&k3_pds 364 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 364 0>;
> +		assigned-clock-parents = <&k3_clks 364 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog32: watchdog@2540000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2540000 0x00 0x100>;
> +		clocks = <&k3_clks 365 1>;
> +		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 365 0>;
> +		assigned-clock-parents = <&k3_clks 366 4>;
> +		status = "disabled";
> +	};
> +
> +	watchdog33: watchdog@2550000 {
> +		compatible = "ti,j7-rti-wdt";
> +		reg = <0x00 0x2550000 0x00 0x100>;
> +		clocks = <&k3_clks 366 1>;
> +		power-domains = <&k3_pds 366 TI_SCI_PD_EXCLUSIVE>;
> +		assigned-clocks = <&k3_clks 366 0>;
> +		assigned-clock-parents = <&k3_clks 366 4>;
> +		status = "disabled";
> +	};
>  };
> -- 2.17.1

-- 
Regards
Vignesh

