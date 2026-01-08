Return-Path: <devicetree+bounces-252831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FB4D02F8D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 77E73300B371
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454F43314C4;
	Thu,  8 Jan 2026 13:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g3UVz6ea";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hebf+boa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285EA2EA482
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767877625; cv=none; b=F2N/M1xqJIDp/uKxnbC4JU1Z38S9LpcBRfWJah3cdo0gQqvNwbDbnBDQiCLM+f7Ti2Q+U+3c7AvwVr7WV9FQAZH5b6uhTYwEMgq5TCnmlu96/DAVgxndurWYFQAgZrys2WjkhD/zoo2yM/fol/2EA/jWRm5BhFWY7qsnpNfmjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767877625; c=relaxed/simple;
	bh=K0Oaiww/Rg8fxiU1jZGdWZ1S6VmMWvN3JDKS1k4AXiE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S867eHj4oKhy1eB/BiAWXSeedF6Aaq7lAmKv0VPxrR28qeZMb1hxdmP8OVxzCffKsnbms6smXcnAWn9XSahp3wWum8rXc6t2y0//inVki3U7JL6Sr0qnesgIXGF+ZYZXndNtArfUUuP6ZmRKVIM8HHOjk/mz8d2RF4utDqs3VRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g3UVz6ea; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hebf+boa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6087Q42B1258436
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 13:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TUn6Ua0irq2W5sHxLwtBxmGIU513ahneP6yzFFKlGqc=; b=g3UVz6eask8qZSkv
	nLynJ+gSRz5l7kP/WS6hAn2QcXOV196VO8nkeaDp4gW9j7OinDicCQSw5fZipY5k
	TO5TQCXpNb7oADx6Jn0ATqkd9zctiJh8WpgCs4g/Yz202cNRrYh8hjumzOii0+A+
	XLM17IdX7YHTWFPu7AdHJ+AV+WceZQjtYD5q8/Dd4w2ZdCa9IldaJ2kCeubSMoza
	TnLEUYoQk8vFSkFCuQJa6KwHcfIFXWSJlOFFuL93lmIaKLs/AUxv6/exOALwJHe3
	glqqXWhiowQC0dDAsUVxgRkfGvamQ2HsvzliO9eh3zHn4XpYZ0QHyvxy9wW6HH/I
	ApwurA==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj86gs00s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 13:07:01 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-55e6ece7ea1so452759e0c.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767877620; x=1768482420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TUn6Ua0irq2W5sHxLwtBxmGIU513ahneP6yzFFKlGqc=;
        b=hebf+boaE5b5qKB9qEJ6ZJdti7B4tG6jAV8KyaQTi02M5s0Guxlf1bP7Y/qwnOEO1C
         Ksc+XpY/lQYQyExWd9YlyWFuRiP2spDXB3wp+UC4f+d+22NAol7Ld24LuWkRQjNFqz+/
         7fg4kMCsjdhTsQKxSyoLZhuwTOuau5w5tVgLQQTqXWlPfFk14BbB0T/1LlphThr3jKze
         YL3n74jPcwhsgHuaHgRvRuVOYQBKDEpUKpsuoueVEkD0O7n//0fVBODvyM+iKpWssZeT
         1hITummu08Iy+162G5xbYcP+4oDBPbHW69t4VdgkSVv7Pp0aIkTOW7wpyBk1f6/NlR10
         PcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767877620; x=1768482420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TUn6Ua0irq2W5sHxLwtBxmGIU513ahneP6yzFFKlGqc=;
        b=oI3LYEm9qHEVzNdgxL5LDNtSPX5DiDCNhyLV5hTVPS7sey6XhJ59ORDHNymYp/pG6w
         9AvETCuLOCLZOkNAEHB4na+raHsbFCMo1ZHIyC5NPdyY0vnYu0DgLIDcz2x+tUccJyBN
         aIHmfGX+iIxSkge97yWyhnLFuBljWKlNhhUPaiDWHBdGvZn8rK5F4aPV85nthB15U/GI
         4H47n1rhe0CN9Xh+NmZUdMGw2KS+DgBLUl+29nt+Q51EdI3OQzDc7GereA+dFX+s+fMu
         j4o6RQ2/ypP4o+kMMhpBp0DUYX/HP4dtWZjaj1rC5pqOJg4STNXo9QUF/g8NIFJoTTu0
         m6rw==
X-Forwarded-Encrypted: i=1; AJvYcCWPhPSekxsC524z52jfLN0r0ZbUgh2vz9i631Nqg1KGTr43a6huqV1IVawGNzzeGF2nXJ91iM9ExGDY@vger.kernel.org
X-Gm-Message-State: AOJu0YwH6i+4hcrNd4Z79z8lgnphApD1NWQz3jxvJo4lkzBNuetD542e
	KyKaLwKAzI8EGK2nUOcThaD4FlUpIW9vAL9E3+32YMenUKteH79m0tRY/C+wioCI4ndgHEb/Wmh
	YV0W8fpF3TZk2ujAAzDRG7miv+IlGOyTcjpC+mDxgDAoJe3nGmd87gMCz50F02NuA
X-Gm-Gg: AY/fxX5/JbFaVzv9w54GbB4CmB+DdKGzVPBqvzFZYtPhQdUpzhVlz6w6AToo93WgzhX
	jaOCXHOZ/xc8a4L/vBgx595dZGSFV1QshhcBm7ATkcNsOE12Cu6KfTxqWjAnTxlfu7oSpP7J5yj
	kmOzh1KJRCCvIexbCYW0TTPEmIjgigfHw5mdtYBLklP2zaqRbdDrcepJOLfOT+7VGfGwRcAjM0D
	KD2C7useUz6JtvejqWyi87bSZbRHBFF6WidmMOYj5spmylsKOmuf20KpJfLfq5PNILZ7xwE09nC
	T7ZCpJF+g6rWhI+of9VZ5oIJfuiapha3fyrRwNkj4xaNNfxDcAHLBhwhmUSXa3aeHSjGc5LE1ld
	nLVhpoSMctoOwAw3IU7FkXiwOfl9oTEJ+txyzhzwDzLqYKJHyudPbfIBss2Oyw/1KWwc=
X-Received: by 2002:a05:6122:9003:b0:563:46b6:c012 with SMTP id 71dfb90a1353d-56347fcbbc0mr1231217e0c.2.1767877618981;
        Thu, 08 Jan 2026 05:06:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM6THmWwV2fR3KUg7yi7Oh9gT4bjUwDn9oFwUR+wc9NeBAAqLRuMtnsEY3gLURL0H9lTIGsQ==
X-Received: by 2002:a05:6122:9003:b0:563:46b6:c012 with SMTP id 71dfb90a1353d-56347fcbbc0mr1231199e0c.2.1767877618418;
        Thu, 08 Jan 2026 05:06:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a233fb3sm796969766b.12.2026.01.08.05.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:06:57 -0800 (PST)
Message-ID: <ebe6763c-4ea0-490a-8218-5e34a92b83bd@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 14:06:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: tessolveupstream@gmail.com, andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
 <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
 <c3492b90-bb48-4584-99fd-b1b6832d22ff@gmail.com>
 <4d95232c-f59a-42c3-9eb4-934b58429d25@oss.qualcomm.com>
 <46fac652-e6bd-43c9-a57e-e76d66239407@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <46fac652-e6bd-43c9-a57e-e76d66239407@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZNjaWH7b c=1 sm=1 tr=0 ts=695fabf5 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=Ehsfm6Wq_AdUf0OWRNoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=XD7yVLdPMpWraOa8Un9W:22
X-Proofpoint-ORIG-GUID: fTGrmz-0SZUlSk5hKBYw0gf5ZBSJKVfg
X-Proofpoint-GUID: fTGrmz-0SZUlSk5hKBYw0gf5ZBSJKVfg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5MyBTYWx0ZWRfXxCWvN2CI7wW+
 YTdNYzbaGlE0CcuC5xP+nYge/BzHXlYXDUdY2czwkwLn5ECJIbpC6tl0uPK2PzY6BcQ4mwZZ86L
 4k8mYYEVahTzNaC8lgnPaTAuiG69vUqAZfQrye0EUTZ4yJZf/sk45KXvfWU4q6jEKBZ+bxHnNDb
 5XywvmOPP08bquuEdxameGrb2vfhCKXn76QDLiodllCjQ0Hmn/2v+V0aFlr+zGliXp2YxbsqBBl
 bF6DZZPfJmhrzTNrg0dfe8eP1F7U+N9fGCAB1w0iGrJMQiamjpcqb1D3TF+zsfhkl5Jmi5w8Nv9
 95PV7d9mNcldekUyN/RWCZEN6GPSFGWXwz1gn6y32uC0eZngK6Y7KZXa3pQ0GGk55YHQYCsGsjP
 PY5gGB13mFB687cgRJBTtW9blGVc8aV1iZ2+jwMYd5s2TXh6rmwh7IWgutyR/0Kp9vmDQE4LgnU
 yNHm5oCpwBZ1PVbCJBg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 adultscore=0 clxscore=1015 phishscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080093

On 1/8/26 2:02 PM, tessolveupstream@gmail.com wrote:
> 
> 
> On 08-01-2026 14:06, Konrad Dybcio wrote:
>>>>>> + */
>>>>>> +/dts-v1/;
>>>>>> +/plugin/;
>>>>>> +
>>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>>> +
>>>>>> +&{/} {
>>>>>> +	backlight: backlight {
>>>>>> +		compatible = "gpio-backlight";
>>>>>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
>>>>>> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
>>>>>> +		default-on;
>>>>>> +	};
>>>>>> +
>>>>>> +	hdmi_connector: hdmi-out {
>>>>>> +		status = "disabled";
>>>>>> +	};
>>>>> This should be a &label_reference
>>>>>
>>>> Okay, will add it in the next patch.
>>> I noticed that in several existing .dtso files, the root node is
>>> commonly referenced as &{/}. In your comment, you suggested using &label_reference. Could you please clarify which specific label or 
>>> node you would like me to update here.
>> &{/} must be used for root nodes in a .dtso (for it to compile). I meant
>> using a &label_reference for hdmi_connector
> 
> Thank you for clarifying. I’ve updated the patch to move 
> hdmi_connector out of the root node and reference it using 
> &hdmi_connector instead of defining it under &{/} like below:
> 
> git diff arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,
> index 5393d1dc7fea..bd1cbfc866b7 100644
> --- a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> @@ -15,10 +15,6 @@ backlight: backlight {
>                 default-on;
>         };
> 
> -       hdmi_connector: hdmi-out {
> -               status = "disabled";
> -       };
> -
>         panel-lvds {
>                 compatible = "auo,g133han01";
> 
> @@ -49,6 +45,10 @@ lvds_panel_out_b: endpoint {
>         };
>  };
> 
> +&hdmi_connector {
> +       status = "disabled";
> +};
> +
>  &i2c1 {
>         clock-frequency = <400000>;
> 
> Could you please confirm if this change aligns with your 
> expectation.

Yes, exactly :)

Thank you!

Konrad

