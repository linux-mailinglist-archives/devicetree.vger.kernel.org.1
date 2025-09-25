Return-Path: <devicetree+bounces-221075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 960C5B9D1AF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:12:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 497EF2E61A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479762E1C69;
	Thu, 25 Sep 2025 02:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A260furQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD9A2D8377
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766362; cv=none; b=TtE0PmThSvZNl3PHmxWO9sy56//1LJ5Dv7e0DDLElqZhCEMV4jidU2KglSDIEh/xANK2sFnPpu35lLmAunwNlx/EOxp3W/MPrTP3YqYS8N9jXCv0OB+/nGz7VpPRy3wAZ0X5PVrgWoMj4rNRaB6B0REXVDIJYWseRjvzCXX99lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766362; c=relaxed/simple;
	bh=jN68/zDaDashxkI1jmWopGqajPlvGlaxNHpL2uTBzQA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FpoTWVDOmf+Hy9jjcGFW9bzNDX49sOv/vaBYaySwgr8UZgW+OoomaiNz2zYWrKKkow+21AQ91k/pcHRgfDaRorJ3v3xdaCnGtlxw/yUGZ7YFynKrt97VhbgQQp5nBV3dek1f54xAWd+eixVF1jX/FqDP4UiOwMAjm6E3Bpqyphg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A260furQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1DLZB018751
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:12:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4dvJBurB7j+89LzioRchQekzW/gf61CfAG+LrJTxbWM=; b=A260furQ//RTeU/h
	v8SqIn1rVVavyCKExglW5kYv4mdf1as1Exv4GtJtLtIbIiAUapyT/zdVHcaxXeVo
	dE+5p5Xs+3IuLeXwGD4PQbr+87E1pTczeSnPkADQYMfsS2ECA+YueP7HBuZ+mPW0
	XzL815TgsHheIEagR5MCBZIQ9PqEIzK1zl+N53/WH8cedUpjhr8hvVdYwNFgrRbS
	OUSpJRDjLM93XbsHrM3mQ5AJF9uKHwibuTl+fssKmKe/Jii7jvxRbFYvfLD0fhsl
	5YcDPnyYF221zvpjUYPm5UTFd5SwiHA78jKyxlrwlekeJYJUsv2Otj7MrJKtbENf
	0ofbXg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjyqtt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:12:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befc08so867401a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:12:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766359; x=1759371159;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4dvJBurB7j+89LzioRchQekzW/gf61CfAG+LrJTxbWM=;
        b=aarSM+XW+fHyXLF6rmIPdFwPAEuqoWHkb2eHQJtyHSR3Mbs8AZibnqk8VI6zMYa5L0
         53C/pvoN8QlIYPrlMcDpgpuCMbiEpqV67tMeRGuPr9w1GRaHlcqeRomiQbU2cFAodg5y
         dG98RQbS4Hs4wnvBFCJcsVL/toDKU9Z/7H+rQnOPxl2eUhmiI173l3kUHTH71wEogMpd
         pxx37kxeKeBNsq0Fs+l1CtwByHf0W74iHOgD/XHjPZ7niYVututidgMP23r8hTwmJkEN
         38447+TEB1HehLA4AqPvhsiUDlBHSKz+AwJDliMXpTOAKvqgH+vwsrV47FjOUhIriRWN
         S/MA==
X-Forwarded-Encrypted: i=1; AJvYcCU1wUtYgQWqgoJ2QXG3hugqK7SROkc8Xw4Nrwd3i+UUdBgUknxt7QRvqtGxBvr+e336TfOuepiXBPZ0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0NV4IVnwLaJa9bmmtbWTi8rHTy0AdDf/FC/4w0fvIahGZVqa+
	T7e1ooK2ViMOvswuUxgfPsJ4aRHF+UOTASzWogjID9jqVJXpNCahQrU2V40CPff/ni+5DyLNO2i
	sixFCT3534nWiBYM7tLCVkYtkxeUEOpPvPeApCuykkyD35pw4p9RZmoa3NyVp4QUP
X-Gm-Gg: ASbGncuzxQe+MhkuqkybP4XmST9cWwwsb523P1U8VHoQgLvxXex8oPhdXJorSFguR5q
	jDIpLk4/oVzF+euOyDDTWxiGXmkBJlaPFNKKYaRZhK9U/USgU2C9yB6U+bqXBpBYu4QpfDk3nKm
	R5xJmUSI+1WDtEtuEY+zOd7kQ4K8f4soq5UmSQi4uqPrDCI4YTB1wNITphzLA+HuIQTfnp45+Hs
	8BQvpzeUL+q9+iH/ZI/MqkJJVDw6n5sfop8+sRGWUskIRKKJ/+UitwVryo1MsbxXnu9hbIIvJmS
	zXWAFkqYgEDQKVdnPX8yW1CB0S+aXUJaGxJGfR0rX7/hKJk8yh9VT5xG9RYxT0t6u1nGWvxU55p
	FTDq/6w==
X-Received: by 2002:a17:90a:e7cf:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-3342a233d5emr1613487a91.13.1758766359076;
        Wed, 24 Sep 2025 19:12:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiFq+Ax3tsuBm535fFypfYZDBvGHuhaPdv6ObItfXPUghRoREWtNMMZHvHofw+cdFQORJn6g==
X-Received: by 2002:a17:90a:e7cf:b0:32e:a5ae:d00 with SMTP id 98e67ed59e1d1-3342a233d5emr1613455a91.13.1758766358594;
        Wed, 24 Sep 2025 19:12:38 -0700 (PDT)
Received: from [10.73.52.96] (pat_11.qualcomm.com. [192.35.156.11])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c8f85f48sm252450a12.16.2025.09.24.19.12.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 19:12:38 -0700 (PDT)
Message-ID: <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 19:12:36 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
 <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
In-Reply-To: <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KO6ea6LqFx4CKFUBYRm1sJj007UgrKvV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX2djFLXKzLVoa
 vxky9dtkRpc4yzSb+T2oF+zCtQgbDT2qpKalMU+VysfH/EmmjKvEFIlfnGl7ZIcHQAhuJa57to/
 gIw6PZoiD3Jjat0Zz0v76TUWbVDmTWCDYSilmw3JQtcod8pYv1Ttw+ZVTCUkIcmKRqmeFquiy2S
 Ne9LJ0YtrPQkvCv/7BlHId3rRG7hOqc7zC1Rm4UY3WblVQISVY+yPlqOcHucKM9Sf6mzavsEpRu
 XCKtlftNcutI7zmHxNU1fXvtJEP73MhzTU0QP4SollAnpYnbriv+nJQV0rM7811u5ea/VB0YNXU
 QoOHI5V34KLa24/7cbPDfexOk9CVpXdJqsHQs6qh3np73xCrNc6VU0JUXxcXRkR6/LjGVBi97f9
 eYfy1VwN
X-Proofpoint-GUID: KO6ea6LqFx4CKFUBYRm1sJj007UgrKvV
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d4a518 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZdW6uxA9NKXbfdqeeS2OGA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mLeorRv-Xii_F4RM4uAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011



On 9/24/2025 6:12 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 05:52:20PM -0700, Wesley Cheng wrote:
>> The Glymur USB subsystem contains a multiport controller, which utilizes
>> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> index a1b55168e050..b0ce803d2b49 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
>> @@ -16,6 +16,7 @@ description:
>>   properties:
>>     compatible:
>>       enum:
>> +      - qcom,glymur-qmp-usb3-uni-phy
>>         - qcom,ipq5424-qmp-usb3-phy
>>         - qcom,ipq6018-qmp-usb3-phy
>>         - qcom,ipq8074-qmp-usb3-phy
>> @@ -62,6 +63,8 @@ properties:
>>   
>>     vdda-pll-supply: true
>>   
>> +  refgen-supply: true
> 
> Which device is going to provide this supply?
> 

This is just a pmic regulator.

Thanks
Wesley Cheng

>> +
>>     "#clock-cells":
>>       const: 0
>>   
> 

