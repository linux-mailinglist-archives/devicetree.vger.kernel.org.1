Return-Path: <devicetree+bounces-21948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98978805B24
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 18:32:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BBAA281D47
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 17:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F2868EAC;
	Tue,  5 Dec 2023 17:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=phytec.de header.i=@phytec.de header.b="oG0HtiFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mickerik.phytec.de (mickerik.phytec.de [91.26.50.163])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3DCA109
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 09:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
	q=dns/txt; i=@phytec.de; t=1701797509; x=1704389509;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a5ggEXqlsb4RIyGFdkV1s4+7Vd4h4zfOf/7drkT0YWc=;
	b=oG0HtiFvuiGJdE7LAC/1ImM1k1R4tfeECynN5j4pykesFLb4JjdWlU7qOzhj3ew+
	o+5/Jk0A3V/+nAnqIF4uAjm23f7VH5TGYMgZR8cZpJtqSD4MslBRCdLmbS92MOYD
	p7izspHRC7k75M8E1KrxMCPDnpFw8Mog4uyO+qW6mWg=;
X-AuditID: ac14000a-fbefe7000000290d-89-656f5e85fd35
Received: from florix.phytec.de (Unknown_Domain [172.25.0.13])
	(using TLS with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client did not present a certificate)
	by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id BE.41.10509.58E5F656; Tue,  5 Dec 2023 18:31:49 +0100 (CET)
Received: from [172.25.39.28] (172.25.0.11) by Florix.phytec.de (172.25.0.13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Tue, 5 Dec 2023
 18:31:48 +0100
Message-ID: <d6f3e4e9-e622-4b2c-bd03-ab77f0552a70@phytec.de>
Date: Tue, 5 Dec 2023 18:31:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: ti: k3-am625-phyboard-lyra-rdk: Lower
 I2C1 frequency
Content-Language: en-US
To: Garrett Giordano <ggiordano@phytec.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20231204222811.2344460-1-ggiordano@phytec.com>
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <20231204222811.2344460-1-ggiordano@phytec.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: Florix.phytec.de (172.25.0.13) To Florix.phytec.de
 (172.25.0.13)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsWyRpKBV7c1Lj/V4OIKA4s1e88xWcw/co7V
	Yv2W32wWyz/PZrfoe/GQ2WLT42usFpd3zWGzePPjLJNF694j7Bbd79Qt/p/9wO7A7bFpVSeb
	x51re9g8Ni+p9+jvbmH1+HPxHavH8RvbmTw+b5ILYI/isklJzcksSy3St0vgythz5z1bwWSO
	ilPLt7I0ML5l62Lk5JAQMJH43zmZpYuRi0NIYDGTxNcJV9ggnDuMEruedjCBVPEK2Eg0Tz7D
	CmKzCKhIfJtyiAUiLihxcuYTMFtUQF7i/q0Z7CC2sEC0xManExhBbGYBcYlbT+YzgQwVEdjG
	KPFoay8jiMMs0MYo8eThAWaQKiEBa4lvV7+AbWMTUJe4s+Eb2DZOoM1tvb3MEJMsJBa/OcgO
	YctLbH87B6pXXuLFpeUsEP/IS0w795oZwg6VmL/mO/sERuFZSI6dheSoWUjGzkIydgEjyypG
	odzM5OzUosxsvYKMypLUZL2U1E2MoOgTYeDawdg3x+MQIxMH4yFGCQ5mJRHeebeyU4V4UxIr
	q1KL8uOLSnNSiw8xSnOwKInzru4IThUSSE8sSc1OTS1ILYLJMnFwSjUw7nYIOXc3qEJ65q9W
	uQbTg+1nmeue2/5fYMNa+PvGluS/Sqty4yPMG+d81Vfgu3c1ak/qgd3HzLpUn6ru3XD8LpNQ
	+J2aSOF5dqKvb5iZiO4KWtB64mr6TGXu488uBtvMi9Vd+bP0iwhve0SUO0emq8XSZNa5ClH/
	rxfsdcm592bdND859XPblFiKMxINtZiLihMB+BRnzqwCAAA=


Am 04.12.23 um 23:28 schrieb Garrett Giordano:
> The gpio-expander on i2c-1 has a maximum frequency of 100kHz. Update our
> main_i2c1 frequency to allow the nxp,pcf8574 gpio-expander to function
> properly.
>
> Signed-off-by: Garrett Giordano <ggiordano@phytec.com>

For all three,
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

