Return-Path: <devicetree+bounces-41662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BFD854A0B
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 14:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E354628C62C
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 13:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016AC5337F;
	Wed, 14 Feb 2024 13:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="JEfKY8Q2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FEC5336C
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 13:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707916031; cv=none; b=YTCxm4puuLnEZPPuacNDq9Tl1wbEUzFrLS9UZgih2f5ccpoFuELpYDVFh0VPO86mwxgelHzpBHv2BqI1IPVdCi2dBaT+bPUKGZq7AoEuMeOjEISnBtigXSJ+uhPeC3LcQexAD6aNZREQoYUPvh60auPXvyqWb1S52rgll4qQ2wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707916031; c=relaxed/simple;
	bh=KdGeFFihnk8Y377pdt1vEDhn3lcKcM4rfY7TUHr+Y4w=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=BBw7lQ5dJ4wfzecUfkDdVPErDGjtoel1BHLVGo1LDKHp/b4liGThK0lbyvQjF/1BolLshDQvgh9CPcgb88EHoov6cV/xyI9mSXRRtoRY9KRRxd5cdW1i8rY0VcNFmzCFnnCjPrjNGX5gSZ6GcWXbWU6eYA19gnDk1Sw9BUqjfSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=JEfKY8Q2; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41EAkluT003447;
	Wed, 14 Feb 2024 14:05:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=6JiODRjaO2dJYsPTRF3ubKwIZmX6ilhdny5oB6yaPLo=; b=JE
	fKY8Q2CZX4CJjNoixt8t7tdmPidEzQ0ZdCTfuVH/0/UBKZtHUkD7pS/q0gCOW2ww
	kPNYaY9J0Wdu0PYy6Lp0trb7fAwRD5zFw9EIpmn6UMaK7Wy8TLgXbuQMrPHwx/Bg
	kIv7pkOkAy3Es3Uz2ABf2jqFVCJvII6Two+C/1m7yQstCAibbpJIyVs+BIln4eiR
	5pascRsmc0al9JpyaP0MqcXKVwRTjF+CSIPaoCJwpgl53VoNGo9qoxR56XA6UvxH
	dZNBCuUAvHlJyN1kZRvJr5Rx2ox32g0g6uLWnGKv3S7aCoDo9jV2mML5nrLoTLxJ
	AlhsOxKNgzg7lNIYrqww==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3w6mynmkdc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Feb 2024 14:05:27 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3F07240044;
	Wed, 14 Feb 2024 14:05:23 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CE3A826C6C2;
	Wed, 14 Feb 2024 14:04:42 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 14 Feb
 2024 14:04:42 +0100
Message-ID: <a82bf354-f900-4f12-a9b7-0927403ecac3@foss.st.com>
Date: Wed, 14 Feb 2024 14:04:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: lxa-tac: reduce RGMII interface drive
 strength
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
        Rob
 Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <kernel@pengutronix.de>
References: <20240129114649.2458468-2-u.kleine-koenig@pengutronix.de>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240129114649.2458468-2-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-14_06,2024-02-14_01,2023-05-22_02

Hi

On 1/29/24 12:46, Uwe Kleine-König wrote:
> From: Leonard Göhrs <l.goehrs@pengutronix.de>
> 
> This results in an improvement of EMI performance by reducing the
> 125MHz emission and its harmonics caused by the RGMII clock line.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>   arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
> index 7e835a7cf64a..cfaf8adde319 100644
> --- a/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
> +++ b/arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi
> @@ -471,6 +471,10 @@ switch: switch@0 {
>   		interrupt-parent = <&gpioa>;
>   		interrupts = <6 IRQ_TYPE_EDGE_RISING>;
>   
> +		/* Reduce RGMII EMI emissions by reducing drive strength */
> +		microchip,hi-drive-strength-microamp = <2000>;
> +		microchip,lo-drive-strength-microamp = <8000>;
> +
>   		ports {
>   			#address-cells = <1>;
>   			#size-cells = <0>;

Applied on stm32-next.

Thanks
Alex

