Return-Path: <devicetree+bounces-226881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FCCBDC5DD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 05:41:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E48EB3C2B9E
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 03:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5042C08C8;
	Wed, 15 Oct 2025 03:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ra7m50OX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D6D2BE058
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760499674; cv=none; b=HbUzwrzktx0rNPu/yTsqaDwrGqHWqHxg6A9Y0NHNVLbxt8l7KAKQgxSlA4Tg51byC5R3B9+hoYlU4SVmI8V0wQlcsQ9sYokOXj2T6G2sMbMSk7hmZ7+hgDbpRonTAOO++eBgjujGcb5SCWFpfFKb5IKBGLNE1NFxfpptrmgQT9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760499674; c=relaxed/simple;
	bh=mv+NNDJq8lmEqH3M97ToKZgf7ondCsaePpng7UQJjkM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uXvqs67QL96KvPqRqi5WdJdWJsxRDFmAQxl+nuw1SjJTrWfoTTsKdXx6Nm7+5VxF3TGYGl9V2ZZmIrZBfE92w22MnZJOuFNRVPeTSwPyXLS0scis2ktav6nvEWHNQ/uIruMqY+dRDc58qX5RyiZmDac4cb5cb0D04Azdw6j+RkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ra7m50OX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sA7M009192
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:41:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2EB7lbGy33x6kUiQ2w3K09v0kV2sk9eBoD76swGwLnk=; b=Ra7m50OXkt14rBaq
	F6HHs6mYuOue7pw2wN9NkSEyLZFQeQGRVRzKAmWlzYc/mN/3AWh02SoyI+DQrkI4
	MugtH7Rf/CHdp3b1PI9WkXOLIKsvkYMeFoACZIrhpFvN5oNXQCaIVxuspZLFw2Ci
	ZFT0wz1+U6zbHQxUhYH4r9LKu70Qf1MmWHrF4bqnI7L7n04LwaIdwiDWl1owfRFe
	1OqL2mac3czyi8+8W1jnQj0+2sJLiI22zYn2h0eORTDE8J49dy7F6TV4F4pIkf3D
	DWFZhFHWW6LCKT/UsTg4lgUpoPoHx5QDdURRbB61qTVvSHjYWSGSshQxvgfcyeje
	4+49zg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c2vrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:41:09 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78038ed99d9so13963659b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 20:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760499669; x=1761104469;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2EB7lbGy33x6kUiQ2w3K09v0kV2sk9eBoD76swGwLnk=;
        b=sgbz2gYMIXSvxjHNfuudAS3SCOMEMilfyRa/qYHeO5VI6Ljr/nWOiMK2BTwO2zWs33
         44CpqYL1CFCRSjuF6vcF/AXErKxVPj9bPuio940aMQrW7Y7XQRIdyP/YjVWLQ5X2xG4T
         aKeyyfNNoZW0BRuFthnr6azoInVo4JS4R9PkxSE6Fqpv+/g4wL5FaGDXFYQAO9ES8e5w
         JGa1w55cHknIkrN37fap6ygVG9Bt6rXxz9erSlPEKroIM40XHquUrt4intJAz4ipdrRm
         aMc7PwYKO0zhEwVHWxBv2WYBnbE6DNQd9NJYEcdL39YNeM4G93FBtmua0/Lot2riz77M
         5iyg==
X-Forwarded-Encrypted: i=1; AJvYcCV5vh7YicJQl7k0shbxXlwM3ENB4xawv7DdDvC3kThTPN8EYdcgBlRKq8KVq5JQ9dmZt0072wfjVEWW@vger.kernel.org
X-Gm-Message-State: AOJu0YwTNJ/HhyFjRFfNgklxe9JfM8FJZRhJL1dezkghYI9NngWXUTiH
	Oba2mui++kX8qa9aIByHlgsMSoOftCLS6j9X7oU1gxA406Z6S2Kuf9E8RU1K8fjmCd8chTs2EVv
	65QsFzukr05d6dv7PErwmRFwQShwvTw/11Z1SsFE+oEbkN1Y5+zjqDzT20Qyjipez
X-Gm-Gg: ASbGncsVKA1F/j3S4REu0g/QXjitUzO0Cl4LiRMnVYkaZgbLsHGgpzyLprgrLel7yux
	Wr/SOk3TF1tgrXqSfAZtvxrrlAX9nYVhYMHCW81WGYL1/fJUnerZWnR1KZ19dnB7m6mvrJY8KU3
	GgxT5wJLOPkbdXeB6+b5Mx8Drn/MgtchWs1hhMVS3tZM6+VembrWp1a0rDO74ksvjKmVpS7EjFg
	LPAz3LmHACBCTIAMCMsZwedFDHiCCJv2KXgizT3xgOdzltosw7vRRTLgkT02/2+6nfwK8Q3Fk8n
	S1kA9w2njYeh0xefNkIc4aCn/aRd/UH/ZSbkPLWLyd/nLAY79jOHNWAwlzJ+AxjeA/KC4CVgGwE
	s9AWbGF3k/48M3RiQdxmM8CD3Gkpnuu+5kjY=
X-Received: by 2002:a05:6a20:4303:b0:322:4b69:b6ea with SMTP id adf61e73a8af0-32da83db831mr39689782637.28.1760499668974;
        Tue, 14 Oct 2025 20:41:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUpZSkDFoirzZEs8SDi0R53Xwx2btcDwqsTQiR0SAZnDhqU1pe/wPADgPxeW2HxCi+b4HAxQ==
X-Received: by 2002:a05:6a20:4303:b0:322:4b69:b6ea with SMTP id adf61e73a8af0-32da83db831mr39689730637.28.1760499668314;
        Tue, 14 Oct 2025 20:41:08 -0700 (PDT)
Received: from [10.133.33.56] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61aab6c1sm17809395a91.13.2025.10.14.20.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 20:41:07 -0700 (PDT)
Message-ID: <53ae7338-e5db-40dd-9fac-f06a97584cef@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 11:41:02 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] media: qcom: camss: csiphy: Add support for v2.4.0
 two-phase CSIPHY
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
 <9cVxYzExtV_uysqXmZcP03jBKVwb9fRH7EuJPSeLUS-Juqq3JdoISB_wwBeiJUTBFr0ZuGTg2sSXn8NjSi11Pg==@protonmail.internalid>
 <20250924-knp-cam-v1-4-b72d6deea054@oss.qualcomm.com>
 <f7ec862a-d3c5-480b-91bb-e9ff1bb87d4a@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <f7ec862a-d3c5-480b-91bb-e9ff1bb87d4a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gvDQijUk66v48RrZAlhirDToROqRt0dJ
X-Proofpoint-ORIG-GUID: gvDQijUk66v48RrZAlhirDToROqRt0dJ
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ef17d6 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9dEm_Dpkgd8kDuDKjw8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX2G/TGOEjkvRY
 QklO5txZohc3uDUMWAQ5bFWHLBp9LIWWoZJqRt6d3aTc8i9ruNAcTMkatZZHpugPDv+LC6v92sC
 8nKDgFG0CDXbfxv72rqL8aD1P5i2KtKxxkPnnPTr4hdJRc7tluEzGamGE0Kaly1EY56G+IW/Y6Z
 qxW9L7J/8xAsINWie29yNCrGhxmQoQcfxmd2sF8yRufV3RLPuv4wsGoXayp1ppN3qTTiAzPUpOI
 jPyPnDP3g1Fw5IzPCLVeDGiQEii9lau4Ud/QOVNlymU3GaiW7cBukxegMa3m7oMCU9kFW9G667E
 /OpFHHdUptiV7/D75VSLfZZ6u3zHuuDl+c19C14YeFqQWf1Ew76IOMlRipxxYJnaWxH+FIj/wUk
 41v0nhs+yLj+Q3AwBU6wVG0i/I1tJA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022


On 9/25/2025 8:57 PM, Bryan O'Donoghue wrote:

> On 25/09/2025 01:02, Jingyi Wang wrote:
>> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>>
>> Add more detailed resource information for CSIPHY devices in the camss
>> driver along with the support for v2.4.0 in the 2 phase CSIPHY driver
>> that is responsible for the PHY lane register configuration, module
>> reset and interrupt handling.
>>
>> This change adds 'cmn_status_offset' variable in 'csidphy_device_regs'
>> structure. It helps adapt the offset to the common status registers that
>> is different in v2.4.0 from others.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>   .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 138 
>> ++++++++++++++++++++-
>>   drivers/media/platform/qcom/camss/camss-csiphy.h   |   1 +
>>   drivers/media/platform/qcom/camss/camss.c          | 107 
>> ++++++++++++++++
>>   3 files changed, 240 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c 
>> b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>> index a229ba04b158..ecb91d3688ca 100644
>> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
>> @@ -46,7 +46,7 @@
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE    BIT(7)
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B BIT(0)
>>   #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID    BIT(1)
>> -#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n) ((offset) + 
>> 0xb0 + 0x4 * (n))
>> +#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, bias, n) ((offset) 
>> + (bias) + 0x4 * (n))
>
> You need to explain this bias parameter in the commit log.

Ack. Now rename the 'bias' parameter the same as 'common_status_offset' 
to remove ambiguity.

>>
>>   #define CSIPHY_DEFAULT_PARAMS        0
>>   #define CSIPHY_LANE_ENABLE        1
>> @@ -587,6 +587,123 @@ csiphy_lane_regs lane_regs_sm8550[] = {
>>       {0x0C64, 0x7F, 0x00, CSIPHY_DEFAULT_PARAMS},
>>   };
>>
>> +/* GEN2 2.4.0 2PH DPHY mode */
>
> You need to call out the process node in this comment, per the other 
> recent additions.

Ack

>> +static const struct
>> +csiphy_lane_regs lane_regs_kaanapali[] = {
>> +    /* LN 0 */
>> +    {0x0094, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x00A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0090, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0098, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0094, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0030, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0000, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0038, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0034, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x001C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0014, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x003C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0004, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0008, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
>> +    {0x0010, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0094, 0xD7, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x005C, 0x54, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0060, 0xFD, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0064, 0x7F, 0x00, CSIPHY_SKEW_CAL},
>> +
>> +    /* LN 2 */
>> +    {0x0494, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x04A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0490, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0498, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0494, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0430, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0400, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0438, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x042C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0434, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x041C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0414, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x043C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0404, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0408, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
>> +    {0x0410, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0494, 0xD7, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x045C, 0x54, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0460, 0xFD, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0464, 0x7F, 0x00, CSIPHY_SKEW_CAL},
>> +
>> +    /* LN 4 */
>> +    {0x0894, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x08A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0890, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0898, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0894, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0830, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0800, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0838, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x082C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0834, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x081C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0814, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x083C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0804, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0820, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0808, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
>> +    {0x0810, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0894, 0xD7, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x085C, 0x54, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0860, 0xFD, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0864, 0x7F, 0x00, CSIPHY_SKEW_CAL},
>> +
>> +    /* LN 6 */
>> +    {0x0C94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0CA0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C90, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C00, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C38, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C2C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C34, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C1C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C3C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C04, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
>> +    {0x0C10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0C94, 0xD7, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0C5C, 0x54, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0C60, 0xFD, 0x00, CSIPHY_SKEW_CAL},
>> +    {0x0C64, 0x7F, 0x00, CSIPHY_SKEW_CAL},
>> +
>> +    /* LN CLK */
>> +    {0x0E94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0EA0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E90, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E28, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E00, 0x80, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E0C, 0xFF, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E38, 0x1F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E2C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E34, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E1C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E3C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E04, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +    {0x0E08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
>> +    {0x0E10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
>> +};
>> +
>>   /* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
>>   static const struct
>>   csiphy_lane_regs lane_regs_x1e80100[] = {
>> @@ -714,13 +831,13 @@ static void csiphy_hw_version_read(struct 
>> csiphy_device *csiphy,
>>              CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
>>
>>       hw_version = readl_relaxed(csiphy->base +
>> - CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 12));
>> +        CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 
>> regs->cmn_status_offset, 12));
>>       hw_version |= readl_relaxed(csiphy->base +
>> - CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 13)) << 8;
>> +        CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 
>> regs->cmn_status_offset, 13)) << 8;
>>       hw_version |= readl_relaxed(csiphy->base +
>> - CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 14)) << 16;
>> +        CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 
>> regs->cmn_status_offset, 14)) << 16;
>>       hw_version |= readl_relaxed(csiphy->base +
>> - CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 15)) << 24;
>> +        CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 
>> regs->cmn_status_offset, 15)) << 24;
>>
>>       dev_dbg(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
>>   }
>> @@ -749,7 +866,8 @@ static irqreturn_t csiphy_isr(int irq, void *dev)
>>       for (i = 0; i < 11; i++) {
>>           int c = i + 22;
>>           u8 val = readl_relaxed(csiphy->base +
>> - CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, i));
>> + CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
>> +                              regs->cmn_status_offset, i));
>>
>>           writel_relaxed(val, csiphy->base +
>> CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, c));
>> @@ -915,6 +1033,7 @@ static bool csiphy_is_gen2(u32 version)
>>       case CAMSS_845:
>>       case CAMSS_8550:
>>       case CAMSS_8775P:
>> +    case CAMSS_KAANAPALI:
>>       case CAMSS_X1E80100:
>>           ret = true;
>>           break;
>> @@ -989,6 +1108,7 @@ static int csiphy_init(struct csiphy_device 
>> *csiphy)
>>
>>       csiphy->regs = regs;
>>       regs->offset = 0x800;
>> +    regs->cmn_status_offset = 0xb0;
>>
>>       switch (csiphy->camss->res->version) {
>>       case CAMSS_845:
>> @@ -1023,6 +1143,12 @@ static int csiphy_init(struct csiphy_device 
>> *csiphy)
>>           regs->lane_regs = &lane_regs_sa8775p[0];
>>           regs->lane_array_size = ARRAY_SIZE(lane_regs_sa8775p);
>>           break;
>> +    case CAMSS_KAANAPALI:
>> +        regs->lane_regs = &lane_regs_kaanapali[0];
>> +        regs->lane_array_size = ARRAY_SIZE(lane_regs_kaanapali);
>> +        regs->offset = 0x1000;
>> +        regs->cmn_status_offset = 0x138;
>
> I don't think a second offset is warranted
>
> You could acheive the required offset with offset = 0x1138; and a 
> comment.
>
> Perhaps I'm not seeing it but seems like an additional - fixed - fluff 
> variable.
Necessary to add another variable here. The 'offset' parameter denotes 
the address offset between base and the common register. But the 
'common_status_offset' denotes the offset between common registers and 
status registers.



