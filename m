Return-Path: <devicetree+bounces-180069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0859DAC2895
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:26:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27D027AD2C0
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4754B2980C0;
	Fri, 23 May 2025 17:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="DVjw46V4"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFBA2980B2
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021156; cv=none; b=VHaUVFBTbuB3bnOoBBZoc3rb9VxTxePYoQSS1ereILEZ+j3LZOCtw3N4QaJamwol8dFBTv9SYB3mldAb4XSHqdlSb8WQVbC7dV5s4yFZ/9yEPyFWZELjd9Y5XcPpcmRN6t/V6dfVYkJQbHTQq48sMRk7SqfC/AXDZn/0zrXTPQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021156; c=relaxed/simple;
	bh=DUuu1U2YXHOFhsjNPJyyh/MbYAAYvj8KCV1a8vXPAf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=dF47RyLi0hBzRKK4vbeiodUJCq2Pr1aofX+N9CJ3+nIPXyvrnd2691L20KRmqUigVTwoRvv3x6KKYMlms41cTB8yv0Q3mMqduDLXr5dshz2TGe4+NTjOvIAeg+ngYlLEql23+mtpUguqA0fyk/2MV4h9Q5nNBPvEmLswZuMweLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=DVjw46V4; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 54NHPk7H976752;
	Fri, 23 May 2025 12:25:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1748021147;
	bh=rHEpdwNR2NTxyR8BRUJwmZG3vFLW2wzJJsjNzqpMVAo=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=DVjw46V4rDCNK5icxwbDXO5oKCrqXDRqp+ExM3w1ivx6Zwouipd4i1p5oIWuMwPi0
	 L/AJ5E6HU/S1MCUmcyWifPMhF2ufxptUJy87gNPH10y+713jGwok43Q3P4ADlOqhq6
	 XYBuzGtx91Rw6QEk233FoQwiWWiwENbtHAhweUf8=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 54NHPkvP235744
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 23 May 2025 12:25:46 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 23
 May 2025 12:25:46 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 23 May 2025 12:25:46 -0500
Received: from [10.249.141.75] ([10.249.141.75])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 54NHPf77078864;
	Fri, 23 May 2025 12:25:42 -0500
Message-ID: <80d7fc2f-1e96-45b6-a897-f5f4c9bb8288@ti.com>
Date: Fri, 23 May 2025 22:55:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: Modify J784S4 SoC SERDES lane controller
 register length
To: Gokul Praveen <g-praveen@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
CC: <n-francis@ti.com>, <u-kumar1@ti.com>
References: <20250523134946.144461-1-g-praveen@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <20250523134946.144461-1-g-praveen@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello Gokul

On 5/23/2025 7:19 PM, Gokul Praveen wrote:
> Modify the J784S4 SoC SERDES lane controller register length from 0x30 to 0x50
> to enable SERDES4 registers.
>
> 'Fixes:9cc161a4509c2("arm64: dts: ti: Refactor J784s4 SoC files to a common
> file")'
> Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> ---
>   arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> index 1944616ab357..1fc0a11c5ab4 100644
> --- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-main-common.dtsi
> @@ -77,7 +77,7 @@ pcie1_ctrl: pcie1-ctrl@4074 {
>   
>   		serdes_ln_ctrl: mux-controller@4080 {
>   			compatible = "reg-mux";
> -			reg = <0x00004080 0x30>;
> +			reg = <0x00004080 0x50>;

I assume above is already fixed with below patch

https://lore.kernel.org/all/20250423151612.48848-1-s-vadapalli@ti.com/

or I am missing something



>   			#mux-control-cells = <1>;
>   			mux-reg-masks = <0x0 0x3>, <0x4 0x3>, /* SERDES0 lane0/1 select */
>   					<0x8 0x3>, <0xc 0x3>, /* SERDES0 lane2/3 select */

