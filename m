Return-Path: <devicetree+bounces-20347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA157FEE99
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 13:07:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD6C41C20A15
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 12:07:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D410845949;
	Thu, 30 Nov 2023 12:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="oXDMoxxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A82E799
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 04:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1701346031; x=1703938031;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6rvUSJqr8VDM1wcMHNaKX2mz3K60DDcaKQABVhX/AaA=;
	b=oXDMoxxbNjg2H8/Y3ydMucLQ82vbw+mPwH0T9oeXL8kZLbDxDnCaaC+89lyOgCDT
	FvBKmnpAbNTrp/daeiWhrgKwoLXLLmH6kEMhC1M7h00e7/oTn/jxfNVMVfVtlpKI
	2JSimuE9+KcTC/atR4RO2r25+UonNMNQ+CRVGUF6LuY=;
X-AuditID: ac14000a-fbefe7000000290d-02-65687aefde66
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 28.A8.10509.FEA78656; Thu, 30 Nov 2023 13:07:11 +0100 (CET)
Received: from [172.25.39.28] (172.25.0.11) by Florix.phytec.de (172.25.0.13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Thu, 30 Nov
 2023 13:07:10 +0100
Message-ID: <bd5284ec-6f25-464a-9ee7-4c50496482f1@phytec.de>
Date: Thu, 30 Nov 2023 13:07:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Upstream] [PATCH 1/3] arm64: dts: ti:
 k3-am625-phyboard-lyra-rdk: Lower I2C1 frequency
Content-Language: en-US
To: Garrett Giordano <ggiordano@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <upstream@lists.phytec.de>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20231129183817.2327259-1-ggiordano@phytec.com>
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20231129183817.2327259-1-ggiordano@phytec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Florix.phytec.de
 (172.25.0.13)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsWyRpKBV/d9VUaqwbEFOhZr9p5jsph/5Byr
	xfotv9ksln+ezW7R9+Ihs8Wmx9dYLS7vmsNm8ebHWSaL1r1H2C2636lb/D/7gd2B22PTqk42
	jzvX9rB5bF5S79Hf3cLq8efiO1aP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlXFxxmv2grkc
	Fc/vXmZsYPzC1sXIwSEhYCLxrKmki5GLQ0hgMZPEio4DzBDOXUaJDa2vgYo4OXgFbCTWXOhk
	BrFZBFQl3j26zgwRF5Q4OfMJC4gtKiAvcf/WDHYQW1ggTeLp7jdgcWYBcYlbT+YzgQwVEdjG
	KPFoay8jiMMs0MYo8WBDN9gGIQFriWkn74F1swmoS9zZ8I0VxOYE2jxtYTMzxCQLicVvDrJD
	2PIS29/OYYbolZd4cWk52DYJIHvaudfMEHaoxPw139knMArPQnLsLCRHzUIydhaSsQsYWVYx
	CuVmJmenFmVm6xVkVJakJuulpG5iBMWeCAPXDsa+OR6HGJk4GA8xSnAwK4nwXn+anirEm5JY
	WZValB9fVJqTWnyIUZqDRUmcd3VHcKqQQHpiSWp2ampBahFMlomDU6qB0XGRN+tl6dVSflW6
	ehX3u6/7fe713/t+ibfX7mMyP+/JGK7/FBRgc5Etr7C+/kvVopVhdz9v3Oj5We2x7pFM8xUH
	BXxZg9LULnyb2uZo4rOy67bg8rfpxzVNDXiPP7GYY73Vm3VyedTCuHmcT21dL6yQ0Xyl2Jde
	cyzqz9KPr+9XOH/+d936rxJLcUaioRZzUXEiAKsNnserAgAA


Am 29.11.23 um 19:38 schrieb Garrett Giordano:
> The gpio-expander on i2c-1 has a maximum frequency of 100kHz. Update our
> main_i2c1 frequency to allow the nxp,pcf8574 gpio-expander to function
> properly.
>
> Signed-off-by: Garrett Giordano <ggiordano@phytec.com>

For all three patches,

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>


> ---
>   arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> index a438baf542c2..171354b13e33 100644
> --- a/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-phyboard-lyra-rdk.dts
> @@ -187,7 +187,7 @@ cpsw3g_phy3: ethernet-phy@3 {
>   &main_i2c1 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_i2c1_pins_default>;
> -	clock-frequency = <400000>;
> +	clock-frequency = <100000>;
>   	status = "okay";
>   
>   	gpio_exp: gpio-expander@21 {

