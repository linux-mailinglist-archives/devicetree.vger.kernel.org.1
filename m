Return-Path: <devicetree+bounces-45195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CF38610EF
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 13:02:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33F612828E3
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 12:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 706DC63104;
	Fri, 23 Feb 2024 12:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="tOJEEK41"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E50D29B;
	Fri, 23 Feb 2024 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.207.212.93
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708689716; cv=none; b=jqRQKhaSAiWGbteBiYEAeKgJlFS7y7bcd3ZLvMkFDWASkBD2Y80piJbngWq7q3QbzMA52XQbW+pNDh4IIymzUhjJ34mcUYHTAA+2NPVcus4uoXIQJUenYSFp3tJ3p2dLNE+Lu/c1SSOfjWXZIEHZ1iywdo9ZlRQ1g2q9Tgp6eBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708689716; c=relaxed/simple;
	bh=5Ti464H/vjQEMcYS33d7Nv6BOUrc8lEh9SE6QMwz1sI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=okE6nk6nHV0G92Imc222Uwz8/DcBljS3D9kcinfg4KnLad6WCEgNuFC9aXmvrR1h8MDC5JIWmOh47/ON0ogYEvJPF1itCgb71/+cvq9v+WpQaH/GK/LnInBpVWah42PtHXx8VyKr+gjoDgia+XhEfnBKNxt5UzA5UjkaNvWBd8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=tOJEEK41; arc=none smtp.client-ip=91.207.212.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41N6mxgP014804;
	Fri, 23 Feb 2024 13:01:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=4m/fBb7GPXD4Ccm5qYBxfwkW2HiwOoGWraBdyJd7n/M=; b=tO
	JEEK41uclKoKSLfz+xvlmAvWpsDVGhP3/6sutYdJXrfgd1a3CCwi5slWcNl9gSDi
	Y5viqyweHuHDRDxCNSuv4yzbTZrrKG8gr0DXRolJfSK8lAIYSHzSaWy+RVoT5YwI
	/vZCY+5eO3Wd73hXAlsLDTRl4ZcC833vBBLpGMmBZ8/8ps+9XRTBYoPxw7c81Z+F
	1zSxCZXYbsOiFFNefljr68Jfmq6mj/NT91u4qOnMF11Q/xizLGCiToABNlMnEdf6
	LVy+g69fuFblawGnz3CoL7+6J4leyzxgveGtC0aWQKQEuH3bXMYGCa56WDNgmFSR
	Wx1/DqWPc14kIeeJ2kXw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3wd203vfwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 13:01:10 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 6D17440044;
	Fri, 23 Feb 2024 13:00:58 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BE7D62816D2;
	Fri, 23 Feb 2024 12:59:45 +0100 (CET)
Received: from [10.129.178.151] (10.129.178.151) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 23 Feb
 2024 12:59:44 +0100
Message-ID: <833a7287-69ff-4976-bfc6-16fabf2fa6a5@foss.st.com>
Date: Fri, 23 Feb 2024 12:59:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] dt-bindings: display: simple: hardware can use
 several properties
To: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Sam
 Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
References: <20240217-ltdc_mp13-v2-0-50881f1b394e@foss.st.com>
 <20240217-ltdc_mp13-v2-4-50881f1b394e@foss.st.com>
 <20240223000946.GA3848625-robh@kernel.org>
Content-Language: en-US
From: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
In-Reply-To: <20240223000946.GA3848625-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-22_15,2024-02-23_01,2023-05-22_02


On 2/23/24 01:09, Rob Herring wrote:
> On Sat, Feb 17, 2024 at 12:02:58PM +0100, Raphael Gallais-Pou wrote:
>> Setting a panel-timing in the device-tree overwrite the one specified in
>> the driver and set it as preferred.  In that case 'height-mm',
>> 'width-mm' and 'panel-timing' are properties that can be use for simple
>> panels, according to panel-common.yaml
>>
>> Fixes following warnings:
>> arch/arm/boot/dts/st/stm32mp135f-dk.dtb: panel-rgb: 'height-mm', 'panel-timing', 'width-mm' do not match any of the regexes: 'pinctrl-[0-9]+'
>> 	from schema $id: http://devicetree.org/schemas/display/panel/panel-simple.yaml#
>>
>> Signed-off-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
>> ---
>>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> index 634a10c6f2dd..c02cbbc7a100 100644
>> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
>> @@ -352,6 +352,9 @@ properties:
>>    no-hpd: true
>>    hpd-gpios: true
>>    data-mapping: true
>> +  height-mm: true
>> +  width-mm: true
>> +  panel-timing: true
Hi Rob,
> Instead, just change 'additionalProperties' to 'unevaluateProperties' 
> and drop all these 'prop: true' lines. Pretty much anything from 
> panel-common.yaml should be allowed.


Will do, thanks :)


Best regards,

Raphaël

>
> Rob

