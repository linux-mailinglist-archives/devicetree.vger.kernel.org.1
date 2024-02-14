Return-Path: <devicetree+bounces-41598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4785466D
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:49:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23BE8B20386
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 09:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8FF17586;
	Wed, 14 Feb 2024 09:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="DbxQsStQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E801759E;
	Wed, 14 Feb 2024 09:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707904116; cv=none; b=pdcprA62csBHKJd+mKtTSh+XO4rOMedft7fweRANvrYcYlOnMSpMg+UOz1Z6GJWccH2ihgpTZ5QAvlW1y0BzvaG4NNKyg7C5Xnlx4wjd7DSxR+af7jmGJY72MhXveDgkIXuOl47xyJDr4uxIgQo4ddSrDtXRrX/GhbKAgiONUQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707904116; c=relaxed/simple;
	bh=JbCOHvTKqSvfaqpNrkORcjjBAgGm6bAlqqeqPrKg1xo=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=QNtv4XoUCj63HPy6NQyh++3+m9gTE1Bxn4KSKG7MnodHlgIBYGl+wlm/07Jp8dZboHURS9E6VqqItLxvpwMg0dhCHPN9TC1pl7y24Xn5pJOlhrxqyDXTDHmlL2j4S/qv+OYUJZ2p29ni2MKLHuRTD5Y17uSIm0nKkf7wrbuQ3I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=DbxQsStQ; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41E4PkVV027555;
	Wed, 14 Feb 2024 10:47:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=eSy7L3CTERV//puboplNFJezkHQTuY2RwI75nCRMoRo=; b=Db
	xQsStQFzxDpY2CmGS1SwUk03Z+cjxrIfBBoJB65qUBm7TvK9Rdk0Nau3FMg4EnOZ
	h9Z0DPPyMCm31cQa0zo7z7ghGFqDb5KrxgVDJUgCmX6SkxLzNga0Yvz3s1fYkWMg
	/XQ7XVB8HfhSOwfDMU3OVmX8cvNkNPB0NpI8dp3cDwNiLG8SKjThKkfKMM15EULr
	83a2dCmAaM1fyWJqABHZ/qVVL7msb9zqUq6Q8KWMfoNZGgn/6p4NruJy6+EQKH7d
	IeIn37Ta+Ligwm10zJggcQP60zIh+t85zidkpV+erYLOPaWMXGsCOn2KWalT1ltC
	8qwpYHJE/l2ybi6wlEvw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3w6kk4v82b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Feb 2024 10:47:58 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 830BF4002D;
	Wed, 14 Feb 2024 10:47:46 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 98CC2235F2C;
	Wed, 14 Feb 2024 10:46:34 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 14 Feb
 2024 10:46:33 +0100
Message-ID: <494b51fa-0f0e-4c1b-add3-73b5fe0b3c29@foss.st.com>
Date: Wed, 14 Feb 2024 10:46:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [drm-drm-misc:drm-misc-next v2] dt-bindings: nt35510: document
 'port' property
To: Conor Dooley <conor@kernel.org>,
        Dario Binacchi
	<dario.binacchi@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>
CC: <linux-kernel@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Daniel
 Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
        Jessica Zhang
	<quic_jesszhan@quicinc.com>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Neil
 Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Sam
 Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, <devicetree@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>
References: <20240131092852.643844-1-dario.binacchi@amarulasolutions.com>
 <20240131-gap-making-59055befaf04@spud>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240131-gap-making-59055befaf04@spud>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-14_03,2024-02-12_03,2023-05-22_02

Hi Heiko

On 1/31/24 16:53, Conor Dooley wrote:
> On Wed, Jan 31, 2024 at 10:28:44AM +0100, Dario Binacchi wrote:
>> Allow 'port' property (coming from panel-common.yaml) to be used in DTS:
>>
>>    st/stm32f769-disco-mb1166-reva09.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
>>
>> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> 
>>
>> ---
>>
>> Changes in v2:
>> - Rework the patch to drop errors found by command
>>    'make DT_CHECKER_FLAGS=-m dt_binding_check'.
>>
>>   .../devicetree/bindings/display/panel/novatek,nt35510.yaml       | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
>> index a4afaff483b7..91921f4b0e5f 100644
>> --- a/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
>> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35510.yaml
>> @@ -31,6 +31,7 @@ properties:
>>     vddi-supply:
>>       description: regulator that supplies the vddi voltage
>>     backlight: true
>> +  port: true
>>   
>>   required:
>>     - compatible
>> -- 
>> 2.43.0
>>

Do you plan to take this patch in drm-misc next branch ? As I have a 
dependency with it to merge a DT patch I can take in my tree 
(stm32-next) if you prefer. Let me know.

Cheers
Alex

