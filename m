Return-Path: <devicetree+bounces-107051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F3C98CCF1
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 08:10:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C7411F2367B
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 06:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C8978C75;
	Wed,  2 Oct 2024 06:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="DbTJoIZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B8983CA0
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 06:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.26.50.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727849394; cv=none; b=Nm1RmQ4zBUGqZxM5xsenh4J9jEqocUqVTLFu/nvY2O4OXaNtN9R4xhFrOfoel/bGI2Lo4gvkotnXaKKiYDIuzmCuIxpiy8HRPb3DoRjgMoxANYzQ4Iiuq30djvXXTX++VC1XJryY7Vwh+jOj6H8ezGnJVVkFgaycL9umeqy3Lg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727849394; c=relaxed/simple;
	bh=5/1qgBxfStYc5++jlSwVOSXWMAa+ubG0KNPzMFm8EH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=QqIp+Hq14vIV0Vj0ZNrxi0Elx5il/evPjgPRsJL/SWnl8txiyaOBH5Rym9g2RAP/Wvzmjm4ibuTKk0kdRrzN/84rzdDp/knaqf4V71Tplpf3Xd8Ye64tOYzsRP3/R3vnLnQtiOkn4MsCzTKQ8xAQp83qQ8rmoY5i5pB4VJ/L1fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b=DbTJoIZ1; arc=none smtp.client-ip=91.26.50.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1727849390; x=1730441390;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5/1qgBxfStYc5++jlSwVOSXWMAa+ubG0KNPzMFm8EH0=;
	b=DbTJoIZ1HJVLSTQtvX9xurQzkTrcInOgHf6Fx2TowIOS1qk7tJEB0nLkROZMMAMN
	mbSyzYwXLMludBuYqy7Gv0p2VWWPboBjWZ5T1K76xsYjLv5N2+DP12hY+jvz97Pb
	5qmfsPadY0AWvregm79ZzYNUjNf9hI3HKEkUTLVpW5Q=;
X-AuditID: ac14000a-4637f70000004e2a-15-66fce3ae221f
Received: from berlix.phytec.de (Unknown_Domain [172.25.0.12])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id EA.7D.20010.EA3ECF66; Wed,  2 Oct 2024 08:09:50 +0200 (CEST)
Received: from [172.25.39.28] (172.25.0.11) by Berlix.phytec.de (172.25.0.12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Wed, 2 Oct 2024
 08:09:48 +0200
Message-ID: <8a8323c5-3b80-478c-b94a-51a42b1859df@phytec.de>
Date: Wed, 2 Oct 2024 08:09:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: ti: am62-phycore-som: Increase cpu
 frequency to 1.4 GHz
To: Garrett Giordano <ggiordano@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20241001071916.1362213-1-ggiordano@phytec.com>
 <20241001071916.1362213-2-ggiordano@phytec.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20241001071916.1362213-2-ggiordano@phytec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Berlix.phytec.de (172.25.0.12) To Berlix.phytec.de
 (172.25.0.12)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplkeLIzCtJLcpLzFFi42JZI8nAo7vu8Z80g/UH5SzmHznHarF+y282
	i+WfZ7NbvJx1j81i0+NrrBaXd81hs3jz4yyTxf89O9gtut+pW/w/+4Hdgctj06pONo/NS+o9
	+rtbWD3+XHzH6nH8xnYmj8+b5ALYorhsUlJzMstSi/TtErgyfu3wKdjBXTH/6mL2BsZ+zi5G
	Tg4JAROJS11PWboYuTiEBJYwSRxq2MEKkhASuMMocf14HIjNK2Aj8XDnGUYQm0VARWL7w3ls
	EHFBiZMzn7CA2KIC8hL3b81gB7GFBRIlDm5bygwyVESgm1Hi+PmNYA6zQBujxJOHB5ghNuRK
	TNx8mAnEZhYQl7j1ZD6YzSagLnFnwzewKziBNk/aOJUFosZCYvGbg+wQtrzE9rdzoObIS7y4
	tJwF4h15iWnnXjND2KESW79sZ5rAKDwLybGzkKybhWTsLCRjFzCyrGIUys1Mzk4tyszWK8io
	LElN1ktJ3cQIijIRBq4djH1zPA4xMnEwHmKU4GBWEuG9d+hnmhBvSmJlVWpRfnxRaU5q8SFG
	aQ4WJXHe1R3BqUIC6YklqdmpqQWpRTBZJg5OqQbGuunfSv9sWHb3cLZjf/W2R58LOO/68Di0
	mbzJd19/0n+fuoGZTLJI6rX1oVnKGhKbDL/uZbmkmrE2+dq6bNY/dw+5M5f/Ttj7NeqIXkbj
	4neaSams7EGCM0I+PK7Mn7L6m+1H21KfxqfiDE/Xz2T/W5R1c5n9qgRvDm/tbxN9+sNizbib
	u6SUWIozEg21mIuKEwFSJDzgoAIAAA==



Am 01.10.24 um 09:19 schrieb Garrett Giordano:
> The am625 is capable of running at 1.4 GHz when VDD_CORE is increased
> from 0.75V to 0.85V. Here we add a 1.4 GHz node to the a53_opp_table and
> increase the VDD_CORE voltage accordingly.
> 
> Signed-off-by: Garrett Giordano <ggiordano@phytec.com>

Reviewed-by: Wadim Egorov <w.egorov@phytec.de>

> ---
>   arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi | 11 +++++++++--
>   1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> index 43488cc8bcb1..236b94c0248c 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
> @@ -173,6 +173,13 @@ AM62X_IOPAD(0x01f4, PIN_INPUT, 0) /* (D16) EXTINTn */
>   	};
>   };
>   
> +&a53_opp_table {
> +	opp-1400000000 {
> +		opp-hz = /bits/ 64 <1400000000>;
> +		opp-supported-hw = <0x01 0x0004>;
> +	};
> +};
> +
>   &cpsw3g {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&main_rgmii1_pins_default>;
> @@ -226,8 +233,8 @@ pmic@30 {
>   		regulators {
>   			vdd_core: buck1 {
>   				regulator-name = "VDD_CORE";
> -				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <750000>;
> +				regulator-min-microvolt = <850000>;
> +				regulator-max-microvolt = <850000>;
>   				regulator-boot-on;
>   				regulator-always-on;
>   			};


