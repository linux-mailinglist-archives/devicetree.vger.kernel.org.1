Return-Path: <devicetree+bounces-220272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF00B93C8F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:04:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7F5119C1827
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490541DED42;
	Tue, 23 Sep 2025 01:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U2g7pwnx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D91F15ECCC
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758589441; cv=none; b=Ny7/bdHCS+Gcmf/4B92Jw2wWHFoX7LjGmqHUWr8ZXelPrLjTZ5HIHYtCxPluF3ntS5KvMaXqiQXOGL1/an9YkToddH5EMRzNrXJCUvApIdEmgOjY/P4d7AtVkqzM+UllYEe05+nOHt+PxZ2fVjU6l6+hcPod3zBijFrX1GBir68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758589441; c=relaxed/simple;
	bh=AkmFWqZWKDdWgx+k3IxAC0AsHW+/Je62e22sgXDU+2Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sVC1mYJO+Pon2tqeCbMEhQ6iwW+zirMWZrD6kgkkF/N7xxsdjhCLNlXjlHxyV0w5balQHtNxo7l456+PRsO5GMRtz25IkNAlFgDVRcCZaV3pwP6IlRI/OHf+OqMQ/V/qrCh/+cj5szGh9XjETOTVMuwveVPuFVFsHzzGm8dxWYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U2g7pwnx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGQDfO018940
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:03:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3r2gyH2o9KM3Y4VR/nSiqz6V1kwzJFKLhM9PNywxZ9M=; b=U2g7pwnx7X8Zkxz2
	z+R+FuWVj9i6fTjNhzSitDitg/0dKOsNgygJTVMxGczOSmW4fa/yp1tuZTSf09FV
	geRntp4WiiFIei/DNOpNVcvDXmvNSQSZYkjWFgKioptWGMniAb63x8pXLKrDtVLf
	UPBah2saDNqTLVn6h1RxHyuRa8ePxH6aOkXSpHospDU719xiWAK/mw8jZIafmXmp
	J6gZeOpKqxXfCMGp2l9wZb4Fsl2hl5vOnbU23h/Uzy/9k2Hq8wgvNeL1kpssCtFn
	T29DoN5oVUhwUJRkdd2l/zNMMyWbCDcVWHHNSu7ZUQuxO+14ZYvNKZcOOOYjJMuB
	vAXjrg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyepwqk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:03:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b54d0ffd172so3949804a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 18:03:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758589437; x=1759194237;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3r2gyH2o9KM3Y4VR/nSiqz6V1kwzJFKLhM9PNywxZ9M=;
        b=OqaoOyf8QJsHZbHq8ifCE1Wu3xA5DULz3HI1WlSN4PwV8nlmH469AXoCbL9XUIQLPA
         FH1Igz7liDMM/rgAvKaS7gZTx34dLtGIZgqejwktrqmke9LT0jROfrMh7ga+FUBGxcB5
         xwMZrxcXzsznK7GDV1ghdEKKwZJ1H2NS1VQICOK3P8WilUdO1zkTGt5+xiulBsFSko85
         VVvtoxWmnUwILskhopYtHkMHGeEtyfr/59XWG7cLet+VobvmPvni1JsVSThpBKdfZqzB
         1VObhi9pYnt05Spa6yUlgTYIIqhRhtmDFa2uRzOQXcCKQl9jLml31DI++KbiF8lzpCvh
         Tlhw==
X-Forwarded-Encrypted: i=1; AJvYcCW93YJsLOy5aUBSs/q7vB5d4NWuUnMi1EdDB+Z0o4gu0dC88gaDmWf90fpS8dFvi69H+9B1dQxiYvfd@vger.kernel.org
X-Gm-Message-State: AOJu0YyCq6kmisqUFRcVLAzJo72ls1+D6enIo+CPauC0vY2IkhxrZJqv
	TGWG2Tb6/emN445JfnArRgybXNZo/ETOomgQvds6NrNrzoN+gdkfaIpNYbIVSh+HOsPM++ZmJF3
	Ux6NfAOL/++DaXoZcbmgKDij/lS0CEIXDCufPUbUnVI2JOyM/N6QPcxoKx+oljsZW
X-Gm-Gg: ASbGncuCNGOuG/fYma+TkMl21LkovETTqcwuzZk3lCMiiFbIhlr2RLmQ6ISg3HUD+w6
	JPU+ej9HaaNS26XGHb23ZSD5ucChA2q/gJ3Bk8dTc/rI/8Wx6dWzV23YQeud0Fd+Yzn5j6Vu+p2
	2OHubBnb6/wdWWd1k1NVIMLUODvTJXNkjA5ZOZzwOkPC603UemPLcRPJX3dmxg9E54L6rEq1hyo
	ANCBLcp0pcXDoqWPmWLxAbsxWaZN7l5RzThQiP56TCKuYA5edyGSKOGT4Dhv2i1jUknA1YbxANR
	J4KxtfKKRUfgv3eKDA2WQRvAqK1sLT8EvNV4g0Xc9DLWPXcmOP11rGtHMf3Y6Qm5dvtKoIdwiJe
	k340ib8tsCgqH2DnP0gPR1fpg+vXJiz8=
X-Received: by 2002:a05:6a20:a10f:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-2d10ea02f65mr823599637.12.1758589436711;
        Mon, 22 Sep 2025 18:03:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZu5szyIQ3+/h2P8RAeWjsUwtJhLpq8SVRmJe1NhdUsMWX4SpcQc49bQMtqaOjrR0EYSzmzw==
X-Received: by 2002:a05:6a20:a10f:b0:246:3a6:3e47 with SMTP id adf61e73a8af0-2d10ea02f65mr823558637.12.1758589436149;
        Mon, 22 Sep 2025 18:03:56 -0700 (PDT)
Received: from [192.168.1.239] (syn-075-080-180-230.res.spectrum.com. [75.80.180.230])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2deca77asm5515903b3a.98.2025.09.22.18.03.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 18:03:55 -0700 (PDT)
Message-ID: <95c59ba6-fd9c-ef59-c5c5-33cb2fb5db8e@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 18:03:54 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 9/9] phy: qualcomm: m31-eusb2: Make USB repeater optional
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-10-wesley.cheng@oss.qualcomm.com>
 <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <umoo45pmamr3qraaiommpqh37tgmqidylmtjh3iamlxs34s7wf@ouug53aqvdfd>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lc9I7L_wD2MY3QkJnrtHZ7UsBIM__1ym
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d1f1fd cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=agQD+r7xwyS+FYqxhQjztw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2H1wgwkl3dmy4IbtCtkA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX4RLUDTtj9iIS
 E30FnUgxc4qw2A2WJM6gLeFdn7Ac+o9MNkLwDx9WCjnnR6A9GCOANgpA/vkL5eKJ37BwLTZdFBF
 QluHVhfavh3LGBTeWqr8lkOsnGpogctkUBK+REMEBWDHzWzJJSdMBLOLu1uNcWamRpp5Fr69LrG
 aSKDLkPJn4EsKT+PIZcFl6ldX7PcaOVYFa8cIFlxHTx9eCLWUQnn116h22e9uvXcCJCzpOO1byr
 T3FnGTTjwL142KPaR2UjORq40o+FHOykwKlFq4rLqk8eizW6m0lJq3y8GLfJdUunTLeFqwN29Ux
 DOP/ObBk01hmUedGBekj0j8/Xq/9VQxT8NQhJdPaQrPMyAiMSuzujLv8GKLC7M/TNrN27XCzZfQ
 Eqg9p4r+
X-Proofpoint-ORIG-GUID: lc9I7L_wD2MY3QkJnrtHZ7UsBIM__1ym
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_05,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004



On 9/20/2025 8:42 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 19, 2025 at 08:21:08PM -0700, Wesley Cheng wrote:
>> Change the notation of making the USB repeater a required DT parameter.
>> Issues were seen when supporting USB2 across different form
>> factor/platforms, which led to enumeration issues due to improper eUSB2
>> repeater tuning.  By making the repeater optional, for SMB/QC PMIC based
>> repeaters, it can utilize repeater settings done in the bootloader,
>> which cover a wider range of platforms.
> 
> No, please don't depend on the bootloader settings. Instead we need to
> implement proper prgramming / tuning for eUSB2 repeaters
> 

Hi Dmitry,

Will update the next rev with the entries to support the SM2370 repeater.

Thanks
Wesley Cheng

>>
>> For other repeater vendors outside of the SMB/QC PMICs the repeater
>> should be defined and managed within the kernel.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> index f4355d38aad9..b8ddadf78c53 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
>> @@ -285,7 +285,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>>   
>>   	phy_set_drvdata(phy->phy, phy);
>>   
>> -	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
>> +	phy->repeater = devm_phy_optional_get(dev, NULL);
>>   	if (IS_ERR(phy->repeater))
>>   		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>>   				     "failed to get repeater\n");
> 

