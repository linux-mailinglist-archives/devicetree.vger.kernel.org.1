Return-Path: <devicetree+bounces-274754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBM7C7MJs2kMRwAAu9opvQ
	(envelope-from <devicetree+bounces-274754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 849DD277411
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 19:45:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CAAC3010529
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8F43FF8A9;
	Thu, 12 Mar 2026 18:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F1V66zlC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KE+sUx9F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9503FFAA6
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773341017; cv=none; b=cGPTTqVJWAX/hcJHxR52Uz5vzmRbIcEmD21y46zrBzGKG3UGiMkessgd4J3YD/KKCdhrUfdtJi5TJxdU9zv0V6/eLY+H2won3+mRuLW/ImW2xRnU9yy9brwkHsb5oi8wn4Fp8kR9r8F/tMTF3si1xsgWYC3XZNjUM5NtcSOwViM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773341017; c=relaxed/simple;
	bh=UZd+Geb8yG5u7UAC+xwI5W/xwTRghe55WnSVbIOTPaI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=CjT+doi6Ls9C4ikBHgcbFrHpUF1YFC+7aN3jeJX3b3EFftYka3GTe0G6y7t7DO+eJx1FxCnXzb19JB89h1n1RwTNsPEXscwkcwclvnpIShyHMPty8jxh62G9HBiYXx4XSLp64hK4fiLFkuXHQ9E5E5esU38byNXP21x7elTLlhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F1V66zlC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KE+sUx9F; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CICiYW1756621
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Zc01U8xwFgE7zVY6+zc3nHFgkyKZtRvurVNrgmn4qM=; b=F1V66zlCPKRa6yhx
	e7Pc8eTmX0CuyIUC8aAypkjsBzrm7ia2GTrH8ohrl+uG2jLbRp0/Chn/yYgzeKdu
	e3QtrAwCMFhoV0BRtYRm2dxmyl8ungfySC5cxXCs9fFz2cDoJna86KZuR9vfLcz7
	roXIRquXWl5xV1wKExCgq2UUrfvl6hPNx21GL0velcnbb6puTE5rR2ECXGShmDvc
	qeauZzgaGgipOFWY5Jm754jcB52+D97dHVFdDTB01vCXrtGx74pJo/P+PW3Zsaoj
	eAGafmiZ4mgxUK/GuR/0yFEGBoz1snCoJPYeEsgTb8HRl46oCvoOdVgSjx6pjAmv
	oBNfhA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh53k760-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 18:43:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81ce6fdcso1212295985a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773341014; x=1773945814; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:from:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Zc01U8xwFgE7zVY6+zc3nHFgkyKZtRvurVNrgmn4qM=;
        b=KE+sUx9FmLVT3HqsQBHYXz2sGTdi783FP/CPYP5wvC4jDfKxNShPpVjCbYFHBuTBCo
         fISG/5cCqQpa+YKfHFthr3HD3b16tTYHcdh+FS5djNA8Jfk76cSbOyyn30zAoDEzpe/F
         ukzd4uI10H+r3QGwwwMUxxaYvc5T7zXX9IKu1UCiEwYJ64ObH+WLxYM+C8yrF3+6qjTl
         2yIHpG4/0te6sQfGafL4Yj7Bf6XPvGvg6EkRyAfxzAsJfhd3dOLuHpgjyRFyMGUfZ1Ki
         usdhqhVH3tUbyy2nRPUP0HrbobmrOA2P+NdLVF/rP0H8kE+sE4784cyBGqYsVBPM+aIK
         SiaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773341014; x=1773945814;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Zc01U8xwFgE7zVY6+zc3nHFgkyKZtRvurVNrgmn4qM=;
        b=A0aUgaOfH8bxC4ZyVQEX8qFo6U/E4NimAWiTn2+ZRHRaDde3rzIDEBFJSkd3oFr+gL
         ZbiTPn6K+U9fA0Xh4kJejw62aHGlCb2JZbqNkGWHXMBItsKyKYWLjByHRkMM1EU4/B01
         Mc6HxYzLEJtPRGj3dhf1zxy1jJY1MCZE7JoVZaphxBRj7jqXVf/4J3LTN7fg3Iw2Qlky
         e/brovB8EmvajIWXc+CHYMHyYc5imW+TNxTmJh2cQeX+mGULrI0TGV+3JxbHov/WjOSL
         dYYvmK1hhu9X+C2DTv+fi6AdCnRQIFyrDWh/lcwmlnySB8zDTW8hEsOjW3psqJV9I6jP
         ESdQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9J9SvHJw4Xs1yhN3K519X/nluNC7MYTXaoGs7KokhhhUpnA87Q+KHbFCTLnkwvOuf3P52sib59zr3@vger.kernel.org
X-Gm-Message-State: AOJu0YxK4CyHYlT+F7qPSpaEazam+wzZTCE7tKDXMe7ItPpQtoFm6ZVC
	rovH7glmMgpwXvSgQS8SItjO9omz6tT0vBQ4LsKm2sBX06FBXB1Zt/8Gi1gfoeDk/R+eu7uQCeD
	6LZ8Vkv9F0kurl+xnEDD4OL2R1JoAAIFpflCfc/tbYi5+dpQXvSNiypbBOkCpyoNm
X-Gm-Gg: ATEYQzwoX1KPaFnUnAHOVOrhqTA8mVW/Y2iJcewCSom/K6QZjFawXZtIbOvDiZG1isS
	pYrTi+X09X/n7T3KdD22I3CRiklEbS2MsHiXh/sdBqOQuwjrjwBj9RucJRCXfINE62qTnw4PqaJ
	zGmpl2RQRH8uZHUWeHjJHfCPbQxDr04mbPlB7pLH6KsiG+1tQpLD8udShgTHsufOQXhelrrMkAr
	vyN3nLpojCER/ICgHXQuJx3480EDwUwthXCwYboCQ/BronURXUNTgWcOxE8uTPMlGZxMQzz52L5
	1oNpozavx3Q++kSqK6qh93zEhVvwxpSUS8f198fDNxn5AJH7LUq7STbJJnap1j+c4N3prsZQAKd
	wabqAP6uPNOd7QkcqHrBTvwdnrsPGPoqthhmqdGm9cYnPx2nZ
X-Received: by 2002:a05:620a:3195:b0:8c6:b247:4c with SMTP id af79cd13be357-8cdb59ff4aemr119413285a.2.1773341013727;
        Thu, 12 Mar 2026 11:43:33 -0700 (PDT)
X-Received: by 2002:a05:620a:3195:b0:8c6:b247:4c with SMTP id af79cd13be357-8cdb59ff4aemr119409585a.2.1773341013241;
        Thu, 12 Mar 2026 11:43:33 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485419c2930sm412755315e9.0.2026.03.12.11.43.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 11:43:31 -0700 (PDT)
Message-ID: <2ee77136-0bdd-4661-a5d7-83869e63273c@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 19:43:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Switch to
 undeprecated reset-gpios
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Sherry Sun <sherry.sun@nxp.com>, Hongxing Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <frank.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
        "bartosz.golaszewski@linaro.org" <bartosz.golaszewski@linaro.org>
References: <20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com>
 <VI0PR04MB12114361EE728C74CEE500FED9244A@VI0PR04MB12114.eurprd04.prod.outlook.com>
 <800fc82c-1b2f-4330-9a25-e1d067dc83ac@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <800fc82c-1b2f-4330-9a25-e1d067dc83ac@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZN/aWH7b c=1 sm=1 tr=0 ts=69b30956 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=T0qWzi58jBV6o7NOTdEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDE1MSBTYWx0ZWRfXwwGaq4WMvZPi
 tbu7koRu+PcKtPro3pUYTA/gMixbG3MvVUEwsgZOnqtjoUNnkmBV8i1RN9+AAd3u6LkxcNU0lXS
 SOQ8x8rRplqTHvwx2V2xZNWW335UxFsDNOxC5dV3D6ghAcdXCNkB/kB64y09tDx4YlL6tc8A81u
 R3S80n5c1+19g/YdaB8Z2jnrHAsTAInJZV62OYlk832Cuod+M0h/gXLjkIs2zYV/1J2mhCRmOly
 uuj7PoUXfAOBIniWkzCzIfuRL4WiAOOTa2eRWxr/3EfTQ76uJFEeXTExtr7ZG9u9h/GlsHZUsGP
 22yk1B0aROr3JboAGFaHdZzyh7JuUaVZ0K52VUx7+hP1KunisOB3fA0+8EjskEUpONZJWNvdmcr
 uBOjs1XbCC24spAVZpyWVeI/8nrpKBupkuKMocz9LyepwDmkGt7O17we6tzZwcFLt32f6xpGGbz
 n95BGCwPLDrZTJrTkQw==
X-Proofpoint-GUID: wYUIWjyYowowu5Gr0UA9IMal31A_Ed1u
X-Proofpoint-ORIG-GUID: wYUIWjyYowowu5Gr0UA9IMal31A_Ed1u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120151
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274754-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,linaro.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 849DD277411
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12/03/2026 17:29, Krzysztof Kozlowski wrote:
> On 12/03/2026 10:18, Sherry Sun wrote:
>>> Subject: [PATCH 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Switch to undeprecated
>>> reset-gpios
>>>
>>> GPIOs with "gpio" suffix were long time ago deprecated, thus "reset-gpios" should
>>> be used.  Linux kernel supports both, referenced schema snps,dw-pcie-
>>> common.yaml lists both as well and this schema uses
>>> unevaluatedProperties:false, thus change has no impact except code readability
>>> and removing deprecated patterns.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>> ---
>>>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 5 -----
>>>  1 file changed, 5 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>>> b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>>> index 12a01f7a5744..b9ba938c6239 100644
>>> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>>> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>>> @@ -58,11 +58,6 @@ properties:
>>>        - const: msi
>>>        - const: dma
>>>
>>> -  reset-gpio:
>>> -    description: Should specify the GPIO for controlling the PCI bus device
>>> -      reset signal. It's not polarity aware and defaults to active-low reset
>>> -      sequence (L=reset state, H=operation state) (optional required).
>>> -
>>
>> Add Dmitry and Bartosz.
>>
>> Hi Krzysztof,
>> Seems this property is still handled in gpiolib-of.c, see commit b8b80348c57b
>> ("gpiolib: of: add polarity quirk for Freescale PCIe controller").
>> Maybe need to change the quirk gpio_propname here too.
> 
> Oh, I missed that completely. Thanks for mentioning it.
> 
> 1. Having this property in drivers/gpio/gpiolib-of.c means we should
> keep it in the schema as deprecated, because each ABI should be documented.
> 
> 2. I can drop reset-gpio-active-high from DTS as well, because
> reset-gpios have proper flag.
> 
> 3. We don't need to update gpiolib-of.c, because standard flag from
> reset-gpios will be used.
> 
>>
>>
>>>    reset-gpio-active-high:
>>>      description: If present then the reset sequence using the GPIO
>>>        specified in the "reset-gpio" property is reversed (H=reset state,
>>
>>  Also change the "reset-gpio" to "reset-gpios" in this description.
>>
> 
> Also here - no need to update, because this will be used only for
> reset-gpio.

I will send a v2.

Best regards,
Krzysztof

