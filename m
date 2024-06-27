Return-Path: <devicetree+bounces-80719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E610791A433
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 222131C20C38
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 755F313C80E;
	Thu, 27 Jun 2024 10:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="5hGace9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FE01386BF
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719485028; cv=none; b=pwBf39ioiW8cE0r1XUwC4RBLor3L3k5ADOIN4rq8MNaXchoeZ3p1P5DsE4IB/57ukkiEbhDDB1kXx7WSv2vTywSrJ926KZsqqYG8YH/CdRMASfN9Y+flZeMecuQi6vGCEnVlqj1HCIFYdO/q8iepXwABDiv+TQQFPldWxXKW52Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719485028; c=relaxed/simple;
	bh=DnYvv7/W+MmS428L7uHoHHUf6/iBPaqGlimELKm8Qwo=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=KeAcbdB6fqOTPZupGp4o0kOxBBU84Vh3joxPkN5JseNvE5RMJdxhA8xzIfbgd4UWAL7OuWFpvukhP8FI0vTbys5AiWqZPSF6SVTjCMk3boWDcpglVFW4s0Yz8wGGzjYLn+bc24Q6OX9Coyu/U16pikP4eJmiGZYYxEPfDH0km4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=5hGace9b; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45R8EbnJ026443;
	Thu, 27 Jun 2024 12:43:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	AJYD8b2/740UOauybVmSxUpYPZbVD+9o8cFwUSbzzlU=; b=5hGace9bZ6Fa+vlb
	kjWd3lUV3fOYuoCtSxVKUYWhGy6gqV84KswXhn+SUq+W+6LvC19GTSExwtdXAj5d
	9EpMxXlS/2oxYHvhriRrvfEITTU8VaDG3BwtgfkbPo2D7jm6DvJd+aXMAPCqcq7b
	ZqYgNnbwwgXSddVE7uAiH2UT8nGjrwj3psqd2+P/4oPqvJfgmJNLf1vqO5m81Pv0
	nWv+5c5PbRgWtzqQ2FlLmusaSTnSrVjZbOh0M6hDjQ3v5OIMbnvG7zn4wXHL5ySF
	lwgaakvHHaEyD8x8epqaTgacBx8+fZI5YfZCl1NouMW36GqeaT33+z7qJWRrHXqm
	cD8QYw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ywngdmphy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jun 2024 12:43:27 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id F13724002D;
	Thu, 27 Jun 2024 12:43:23 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2CBD2216EDA;
	Thu, 27 Jun 2024 12:42:50 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 27 Jun
 2024 12:42:49 +0200
Message-ID: <63b22300-d43e-41de-a518-3771c1a2386c@foss.st.com>
Date: Thu, 27 Jun 2024 12:42:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32mp135f-dk: Document output pins for PWMs
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
        Maxime
 Coquelin <mcoquelin.stm32@gmail.com>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20240613080229.2292413-2-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240613080229.2292413-2-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-27_06,2024-06-27_02,2024-05-17_01

Hi Uwe

On 6/13/24 10:02, Uwe Kleine-König wrote:
> To simplify identifying the pins where the PWM output is routed to,
> add a comment to each PWM device about the respective pin on the
> expansion connector.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
> ---
>   arch/arm/boot/dts/st/stm32mp135f-dk.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32mp135f-dk.dts b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
> index 567e53ad285f..f1b50e4c1059 100644
> --- a/arch/arm/boot/dts/st/stm32mp135f-dk.dts
> +++ b/arch/arm/boot/dts/st/stm32mp135f-dk.dts
> @@ -273,6 +273,7 @@ &timers3 {
>   	/delete-property/dma-names;
>   	status = "disabled";
>   	pwm {
> +		/* PWM output on pin 7 of the expansion connector (CN8.7) using TIM3_CH4 function */
>   		pinctrl-0 = <&pwm3_pins_a>;
>   		pinctrl-1 = <&pwm3_sleep_pins_a>;
>   		pinctrl-names = "default", "sleep";
> @@ -288,6 +289,7 @@ &timers4 {
>   	/delete-property/dma-names;
>   	status = "disabled";
>   	pwm {
> +		/* PWM output on pin 31 of the expansion connector (CN8.31) using TIM4_CH2 function */
>   		pinctrl-0 = <&pwm4_pins_a>;
>   		pinctrl-1 = <&pwm4_sleep_pins_a>;
>   		pinctrl-names = "default", "sleep";
> @@ -303,6 +305,7 @@ &timers8 {
>   	/delete-property/dma-names;
>   	status = "disabled";
>   	pwm {
> +		/* PWM output on pin 32 of the expansion connector (CN8.32) using TIM8_CH3 function */
>   		pinctrl-0 = <&pwm8_pins_a>;
>   		pinctrl-1 = <&pwm8_sleep_pins_a>;
>   		pinctrl-names = "default", "sleep";
> @@ -316,6 +319,7 @@ timer@7 {
>   &timers14 {
>   	status = "disabled";
>   	pwm {
> +		/* PWM output on pin 33 of the expansion connector (CN8.33) using TIM14_CH1 function */
>   		pinctrl-0 = <&pwm14_pins_a>;
>   		pinctrl-1 = <&pwm14_sleep_pins_a>;
>   		pinctrl-names = "default", "sleep";
> 
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0

With small modifications discussed: applied on stm32-next.

Thanks!
Alex

