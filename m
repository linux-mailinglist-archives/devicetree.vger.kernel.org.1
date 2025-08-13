Return-Path: <devicetree+bounces-204169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A51DB24487
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A2B6189EF34
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 08:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB3842EE5FE;
	Wed, 13 Aug 2025 08:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P9gi59EG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D732EA17B
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755074526; cv=none; b=tfZsAAUbaayNwE1tmWJ6X/gBW7E6jQ+IcLPIeLkQt+Fl+F8GxwrtZiv9bZ4aRYWaYT8RyKeNcLDutLKYyC7jBLB0gWHom+gvBDMaiu/pZiPo5Tbh/O4Tb7UTOKKuN/mUFdmuhQOP7ADr3takEojyoFCBsrEKvE8sr6WDtAHP8RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755074526; c=relaxed/simple;
	bh=WNNH0ET37ePoWKGj+PIeK6vmooE+vGlIujVn+r10wJY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oUeei4boRuQQ2wDco1s3Bwwkd+pd5kqcr227TF6R2G04Lg2BxthSk2cRtasQZfrZFBmBIN+Cp9j4COuwtMX3ycORwkr3/q8mJpo4HO7538WR0I0DGAA38ETgmtoFuzm9BGv2khFRw7gGfSy3bhRV50ngutVGax0h5X3Ln7QJW4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P9gi59EG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mMk4030018
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:42:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UAbBLVeRLE4MnH9XmfajRWZXa7M9EckNL81JeGoopF4=; b=P9gi59EGmq01oSc2
	xE7lTt3uDuL5duZrwvfHkWzjApSmX3zvezdjcXFwVjJcUhFF1JXwgTz5RFTjIIgF
	c/NyR9tEn9OkrrCE1Ra4RFL0PkU2yxgAHx+dS1VLdkaP9YQD8Y5mH4CnUiFmIyg3
	PvKLu1GDutU/j4NSH1yfHeE+v1TtCovGm1T48MA7lgRs4IX/GU860r9oFjtCu+5J
	3Okwtufa9XIj0HZPEulwfxt9xIIDBhqIr216OVYWzdIKkWLy3mb9fXQchq7r1wUR
	9spj41CMsXm0/s0rcNKYzOHWAm+Y1akS5cVwhuXMJaH1SO42lBuo6ttPWgPb00Io
	/cV4nQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gb3nr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:42:04 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-31f2a98d91eso6082218a91.3
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 01:42:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755074524; x=1755679324;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UAbBLVeRLE4MnH9XmfajRWZXa7M9EckNL81JeGoopF4=;
        b=R0YyuNyfb8OPJ1so1oYriVlodLplvxt2t2mvZ8mZ6kG5yaUIHXmrV7YNZHnHHMrpCg
         EtvzlVci/D3WkFFIAlthOuvGXJDpVj4ScszMkYPFJVNjFEZIUy6ljEPJDH+H/jObo0KD
         2bsw5KUPjX8xAdessboe21hhqWBOiMzJJd55ZQjMlauNBMgDbUIoFK2YtQMcP8xf1EL6
         gdMq0gecAav+ndOo+nLKjsiCxMx04oMKoOETNrDzy28fcRWzRsie/RRrGvQ+x0aeNOVa
         xbG2lLzpfWW1Tf8pk3KRc7eSn9U1dZp0+9jczeALwqZP5Rt1Tralnie5vip8NktJbREj
         QQtg==
X-Forwarded-Encrypted: i=1; AJvYcCWhzrQW8xtCq5sMQstmWxt+6+boa1J2H+0Ww41G8NMXAsosSAmCgn0dlMnPriaM366k9I95plSoZlGe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9q2/ylBwYA+EHZaLeY1xeFbWOo0Rq2jC7lcYqUViw+DwHJ66W
	nc2uayxdBhmp75g6aM/wIjPomPYQJ0ND2cxJ4WazMWrEU38F7YB72ycwJhiGbCMBMUx/O9XwcGO
	TFv688AEK0Px4YwgYrayAXTLy4SGnpuixoKhh0OIPHJK1U8qm18PGw/yH+D5FkTM7
X-Gm-Gg: ASbGncu0pFySF1gPLyjNjx54j6KjN4bD0xGms6eNc6zWznYx92kZLG53DWKmWbqeFw8
	8FUYMpnRxr5B+LNWDPm/VQkKnZzkoMYsaEe/ekt0lPlQDD7HLoL3UHxTS1uDZHUNfMfUe2+PX57
	hSchR5s6p9Ac3eBZDxz8oSceaj5KDQN6rGN6pr6IpxkKaZMvWch4HX63or6EOk+N9lOXeMen7IY
	dHqJDYb76N6ka/fLuYPcvRYLSxCR1W0jgxZUVdm0yXCLQFmMHNg+hh4SWjl+6HWT7Cv+aImb3ru
	7MCoq6PQHxqbM8L6a0eYdXuJ+csXvO5rcFOUGIzQCI1lJrnO4W5laganu+xMoCG6X/GK7rue6Ln
	J4w==
X-Received: by 2002:a17:90a:e18d:b0:321:380b:9e85 with SMTP id 98e67ed59e1d1-321d0d65539mr2869304a91.8.1755074523538;
        Wed, 13 Aug 2025 01:42:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE78DKpGzv0dikvRvGBGlmfDBiN2T03wU71V1qUXMFRMqi3RCjr6n/8XTvRYRr2gYlKm8HcZw==
X-Received: by 2002:a17:90a:e18d:b0:321:380b:9e85 with SMTP id 98e67ed59e1d1-321d0d65539mr2869266a91.8.1755074522860;
        Wed, 13 Aug 2025 01:42:02 -0700 (PDT)
Received: from [10.92.163.82] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422b7bb0c0sm26483924a12.20.2025.08.13.01.41.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 01:42:02 -0700 (PDT)
Message-ID: <46dff289-9215-4dd5-b522-c1690abfd9ca@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:11:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Enable audio on qcs9075-evk board
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkumpatl@quicinc.com, kernel@oss.qualcomm.com
References: <20250724155632.236675-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <l7kwna7lebazoaqxz3zdkv325kw4ohsuidfzltdy3msfiburb6@iz4atympejdx>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <l7kwna7lebazoaqxz3zdkv325kw4ohsuidfzltdy3msfiburb6@iz4atympejdx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689c4fdc cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=9s0Y7IdbV4TWvyFR1rIA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX1N/WiiDA7nSJ
 0rDgWgT/9jDqzEcoZ/o9Fmt+542/p7ElNgCyqdhYPfg9u2BV3p3xnXjClkq74ij+pwekSef7MWL
 aOhNZaVg8Ccc2lQhR9eCIQnchr+80Zrg45ovYK5Owlmcr4N3nUHfG0nU04QUYcnKORmplIw7K72
 yWo6Ps88SFnG45JP2g1zxzEhM38LjUw/D3wMwa+3mg8sOFFbBacWwg+pu04+tM2vz9XB5ETySLT
 BA0NxQMKUQW2sz9noQbrWw7cOtwAXploYae+QQKkvqv75srui7PcHBPPuqqlWABdWgZuvQuWmaf
 ceOGpL+mKaiYBVb9kMvzRg4pccc4csfg26yGwwkfciBflKpHqw49HY4dxoF9CmgYH81OVT7bSj0
 HT6yMN2e
X-Proofpoint-GUID: uH-uLqt4LM8a0sfSjjnB78BCRKV3fT6w
X-Proofpoint-ORIG-GUID: uH-uLqt4LM8a0sfSjjnB78BCRKV3fT6w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031



On 8/12/2025 7:54 AM, Bjorn Andersson wrote:
> On Thu, Jul 24, 2025 at 09:26:30PM +0530, Mohammad Rafi Shaik wrote:
>> Enable audio support on qcs9075-evk board.
>>
>> Introduce HS (High-Speed) MI2S pin control support.
>> The I2S max98357a speaker amplifier is connected via HS0 and I2S
>> microphones utilize the HS2 interface.
>>
>> DT-Binding link for sound compatible:
>> https://lore.kernel.org/linux-sound/20250519083244.4070689-3-mohammad.rafi.shaik@oss.qualcomm.com/
>>
>> ---
>> This patch series depends on patch series:
>> https://lore.kernel.org/linux-arm-msm/20250530092850.631831-1-quic_wasimn@quicinc.com/
> 
> Please resubmit once this is tested on a clean upstream branch.
> 
ACK,

sure, will resubmit on top of clean upstream branch.

Thanks & Regards,
Rafi.


> Thanks,
> Bjorn
> 
>> ---
>>
>> changes in [v3]:
>> 	- Updated link-name from HS0 MI2S to HS1 MI2S and sorted nodes in order.
>> 	- Link to V2 : https://lore.kernel.org/linux-arm-msm/20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com/
>>
>> changes in [v2]:
>> 	- Updated commit message as suggested by Dmitry Baryshkov.
>> 	- Link to V1 : https://lore.kernel.org/linux-arm-msm/20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com/
>>
>> Mohammad Rafi Shaik (2):
>>    arm64: dts: qcom: sa8775p: Add gpr node
>>    arm64: dts: qcom: qcs9075-evk: Add sound card
>>
>>   .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 ++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 54 +++++++++++++++++++
>>   2 files changed, 106 insertions(+)
>>
>>
>> base-commit: a933d3dc1968fcfb0ab72879ec304b1971ed1b9a
>> prerequisite-patch-id: 853eaf437b81f6fa9bd6d36e6ed5350acaf73017
>> prerequisite-patch-id: 6d9fd3e0257f120cff342c287774454aad2be2e8
>> prerequisite-patch-id: 736cbcd47d5e7cfcc53fcaa7da920eac757ce487
>> prerequisite-patch-id: 4eddce6daeaa125f14380586c759f8cb8997c601
>> prerequisite-patch-id: baac180e8715b5cf2922f79346440d92569704f6
>> prerequisite-patch-id: 65730290d31f18e66e2ba0dfdeb1844d7442c272
>> -- 
>> 2.34.1
>>


