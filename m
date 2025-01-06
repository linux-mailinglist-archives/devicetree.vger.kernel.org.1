Return-Path: <devicetree+bounces-135798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 102A4A023D7
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B1413A4A3F
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:05:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997A81DB366;
	Mon,  6 Jan 2025 11:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="YgNUVIaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35211DA63C;
	Mon,  6 Jan 2025 11:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736161517; cv=none; b=j4XyNWmChDanzOK5T4wFA3Q+20RjSI/p9dUU/vnvZqur39teikjtfr66LPRicN+SQTj7tzF/FE/WmZE0CirJOr4niP4LLrZF76tXtNSHDZRmgEBI8Iw1ci8p7XoltfkSlCODf6KpSqEoReioDUrlDOhmzg74WGYs60+kewXi2FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736161517; c=relaxed/simple;
	bh=AsmycApCyi/E99J1ppn9/jSIKran2qc0HMNEBc+tF3I=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=rRMM2PJabiI+rAo1qBWSCGXhRqecio9pEk8sreTbHJdheH9VyZCQ6cKEuJ9LDrYfiEcB+GjUs/EH9hvBfKKQxJjdgydc+hJ3uBKPdWJQcXCioXfsvgYPshXqbSMlyiiVFfrgcuUMKyRDAmh3eb2QgaQscnB5870J5W8AQ5XPDuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=YgNUVIaz; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 506B06Oa004709;
	Mon, 6 Jan 2025 12:04:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	AFUAKGbkjzpol5FudiEAelKXEGfl5qCcVmUlRgdMuW0=; b=YgNUVIazqpMyFm+L
	+nO+YwEc/nZoNFH1JPK48GIix9bL2emzDXVmFdTvb6tSIMpYmWFubHhgB4aPmnla
	yHuXiaqZkJ5bOqyvzGe7eo0GNNDvbrh8M46g1wutH0LgaI2ulgJX4gnGajY5yByQ
	omFMegDlWc9mNwMd+zUxeJef+lQbTCg5d9kSCPbD6BoTpCYzgmLm+V8WvjSB1qSb
	8Gj5R/vrMkQZO6j4ICK996qCwDlJ7Js2cMrNnIXS6dp6BI4ARhmsfnYOmuqQtEXu
	ODLjBcu81pO9uhiWCzxb2jArXICljLFvnM+VpUa614SHEFrZpg2T4e671EpguHrC
	A5tN8w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 4407n9hd53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 12:04:54 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 2C8FB40056;
	Mon,  6 Jan 2025 12:03:31 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9C95725D411;
	Mon,  6 Jan 2025 12:01:36 +0100 (CET)
Received: from [10.48.87.62] (10.48.87.62) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 6 Jan
 2025 12:01:35 +0100
Message-ID: <a03d16e5-18e5-4627-8209-9559cdc8bc36@foss.st.com>
Date: Mon, 6 Jan 2025 12:01:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] ARM: dts: st: enable the MALI gpu on the
 stih410-b2260
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
To: Alain Volmat <avolmat@me.com>, David Airlie <airlied@gmail.com>,
        Daniel
 Vetter <daniel@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
 <20241006-sti-gpu-v2-3-c6bb408d6903@me.com>
 <9c6a316b-10bd-4ed0-b925-babf84b125e5@foss.st.com>
Content-Language: en-US
In-Reply-To: <9c6a316b-10bd-4ed0-b925-babf84b125e5@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 1/6/25 11:39, Patrice CHOTARD wrote:
> 
> 
> On 10/6/24 22:42, Alain Volmat wrote:
>> Enable the GPU on the stih410-b2260 board.
>>
>> Signed-off-by: Alain Volmat <avolmat@me.com>
>> ---
>>  arch/arm/boot/dts/st/stih410-b2260.dts | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/st/stih410-b2260.dts b/arch/arm/boot/dts/st/stih410-b2260.dts
>> index 240b62040000b8c0357d39504d3475186958bf31..736b1e059b0a8f122d1b824e1f4e5db0a668ec2c 100644
>> --- a/arch/arm/boot/dts/st/stih410-b2260.dts
>> +++ b/arch/arm/boot/dts/st/stih410-b2260.dts
>> @@ -206,5 +206,9 @@ hdmiddc: i2c@9541000 {
>>  		sata1: sata@9b28000 {
>>  			status = "okay";
>>  		};
>> +
>> +		gpu: gpu@9f00000 {
>> +			status = "okay";
>> +		};
>>  	};
>>  };
>>
> 
> Hi Alain
> 
> Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>
> 
> Thanks
Applied on sti-next

