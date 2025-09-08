Return-Path: <devicetree+bounces-214327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C08B48C62
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 13:40:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83ED017D479
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 11:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48A22E8DEF;
	Mon,  8 Sep 2025 11:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bnVhBCf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13951D5150
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 11:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757331619; cv=none; b=uECmvWE+30E9JqGwzTakbZL6qVmd4UUjeNj87krCx9yLsPknu1TZ0qJZaVD5abTjAMV1hK7gacH2KZGyecKGiohsKly2/O+9bRpi0WcvSFhoS3APnV09XzBhvSA8bH/ptwBmMqacPlzFzrQVvkYVdTVRYiMmlQ2x3hhYPJZx2YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757331619; c=relaxed/simple;
	bh=mkZ6cmKwkvA3JrlNWuoEOfbkg9E/yY2SgCd/wPVk0Bk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=unK6wD/mxx8531LhHeXZDZdm1sM7PmlTlIkRUjfVnv6lBO/BlQO+icogKawROismyhOYe8JxP2C3x+RMUmlo68mr17TCmbrY1JG1nWdIKgWm6lKuBnXreAJRAUEtN3vbzoC95mKzPvuuCafBHROnnGmTI8xbY3RR+qgVog+17CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bnVhBCf3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5888wtN5009916
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 11:40:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NnEbO7ArMxQ89jgAEQwVkzyZoAUuZFaKn25X0Rq6OME=; b=bnVhBCf3W5YshFsc
	JTPN2wRztoaTNpoO2lYqtUE5Q/kBi8X8bL4Jfi1y5JNY84n93nx/6hOUiF6tHvEg
	eEdmDS/A5DKloz5qnPXVgew7SCHnTdpEFshGM3ctH0aJ8RGz1vmvgoWyM6660R47
	+O2/mGJYtmnzNFroX7p9WXwG3P3jVQIxfZgi2qvn/GiihOWvSztZvyI9tv0bUlOU
	/8pKuNGJLnhszzG3Z0D6MD2x2S2YlIOpFq1RHPxEr2rIdBn7Ma63/zftjyxESLs/
	1ngsUbu8nMb98pPZOfmGonsKZzWxQfirL/nUD904xBg2mi+zt/way+9ct9ZoiTd2
	ZBvVWA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapcn5y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 11:40:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8019bd7af43so112777485a.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 04:40:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757331610; x=1757936410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NnEbO7ArMxQ89jgAEQwVkzyZoAUuZFaKn25X0Rq6OME=;
        b=wb8JbOPFNzhNFeVXQ6W71wp64tuOkg8NbjnT7IE6Tlw/F1v3hJV2ASwBO509S4gWB4
         pJUoQ1RWNfTPzVsaKsmi/aAfDZQhzvjKyJloae6X6qnAZajz1zmQJmGvN4yQes6mVg13
         fmPYobfrolohUCHVxAN/AgzdFEJSWgllkm2pRh9uM5t0P7f+i7uiNcQfeytfWp9HCr5j
         NZd1jSLntf6v5qGBQl372VhyC4cM6PdaHXIu1mxpgC/8p4D+rQNZKgzfuSKVOEPe5vG1
         AvJsoTE8kEQYk1Fn6xvVq3/M3Akds9Akz4DWQqd2433nulhGVnlkl+INL2pNG4WGXeGX
         oyTw==
X-Forwarded-Encrypted: i=1; AJvYcCWQvUSOGh65UhBJ3mROcyB+vHcK50mHsgqJY13ECOGun/OHLo7Usu9f9qUdPPYtMVrT1fAuQB17xaI1@vger.kernel.org
X-Gm-Message-State: AOJu0YzFZpPZyZZipHAQvLN5acF+m/FBrTdVdSEu1GvYIFL6OQPKFsuc
	1siNJmzY8VxtRal81f9f56sE6OdD5zkNuu/QCBQ5g9P8Mun4mrg6lnReXEwe2HYLwB7n2uGlqVX
	/C7pkUuQKX+/px4fwTpKCZVtNzH33vvWRHCwbFWVm43JdiCUgRM1/GVSSS2wUASIu
X-Gm-Gg: ASbGncuBodfIOmwhyVo3zIM0TUGHmbHmvUfQMuDTNUEeGWDMskES8w7+SMfkLvM7QnJ
	RMUSc8g6Hx/ztxWfJi4H/RNAlA1/4Koa/bItbmluvF1H/ilxSXe3E3VTd0APLxxjjjTXxCju4VE
	estEued6MOdMu0HALYA0JuwUJHkHZDVUgiADVPc34InFBWYRR3Tm1it5smwrUkgzhs9a7oVflDr
	3Ld2y0GtdVsjD6cjBtZgWIUMhf5IxY9ZseJJO+0ygOwqCtZJnO+uorM6cQpAEJw54n/lXOT/doB
	rSSCcxH7jDxbj4emwhK/Ss5jDMHVssO3+kyeFTbiAzw+hGhFxjnWRCDkBS/b5/Npo/+vwQ0VsqP
	o8WtV85sfRg+jZUjxkW9pWw==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr55841161cf.9.1757331610323;
        Mon, 08 Sep 2025 04:40:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxfpBCfjkE1QhZrW+7/NQDQGsgDEMhq3BgEaMgwoV6K03PfppLuh0RrNhfqqjSD1n65xJK2Q==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr55840761cf.9.1757331609503;
        Mon, 08 Sep 2025 04:40:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046f888b95sm1229367066b.34.2025.09.08.04.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 04:40:08 -0700 (PDT)
Message-ID: <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 13:40:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
 <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68bec0a0 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=0cVmaDdcn-jcdQdzUFEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: B2Ifak6HZGzwPhL0jaKQDl4IbYEeUzw3
X-Proofpoint-ORIG-GUID: B2Ifak6HZGzwPhL0jaKQDl4IbYEeUzw3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX321scypqRaU7
 ELiKX7rk+o8VuTtvQGR1XYfNA5afm4z4kMHo3JvoRUd3tUOuLymeWq1gn3Q58fh0Oecqu2yKRSu
 W2ReO3lYZ83RUBBfayiPp2TT+AnqJYkG4AlaugoGPlVaKdiu+65rDb9RBZ/7jgqdKftyEKZBq4s
 WZhmHmgDjtw8TRo438Oep2WWBWo4doM1qiEW7T550DYXfLGvaHZFjWib5jfUFOWac/yDOwnnoQs
 n8ReKraaYvoY3W+O30yJWxe7/oF4Vm/w+R0+48xWnR8SJveV8OIv1wYzWQv36iLmAQjwPYLExUA
 aoqMq5O/4QGnR7qy3cZFMgcwRkAYXg7mv6k6IjP4aMqnfswts2A6mvbX0qEjWXWjMANDTt5BXi6
 j6AyM8jF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On 9/8/25 11:39 AM, Dmitry Baryshkov wrote:
> On Mon, Sep 08, 2025 at 09:16:29AM +0200, Konrad Dybcio wrote:
>> On 9/6/25 10:41 AM, Jens Glathe wrote:
>>> On 21.08.25 15:53, Neil Armstrong wrote:
>>>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>>>> connected to the third QMP Combo PHY 4 lanes.
>>>>
>>> [...]
>>>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
>>>>   1 file changed, 44 insertions(+)
>>> [...]
>>>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
>>>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> [...]
>>>> +&mdss_dp2 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&mdss_dp2_out {
>>>> +    data-lanes = <0 1 2 3>;
>>>> +};
>>>> +
>>>
>>> Hi Neil,
>>>
>>> shouldn't mdss_dp2_out also have the link-frequencies property?
>>>
>>> +    link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>>>
>>> Or is it something the bridge already negotiates?
>>
>> No, it seems like our driver falls back to HBR2 (54xx) ever since the
>> driver has been made aware of this property:
>>
>> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
>> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
>> Date:   Tue Dec 27 09:45:02 2022 -0800
>>
>>     drm/msm/dp: Add capability to parser and retrieve max DP link supported rate from link-frequencies property of dp_out endpoint
>>
>> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
>> controller/driver not smart enough not to advertise rates it can't
>> support, during negotiation?
> 
> I don't remember the exact details. If I remmber correctly, there were
> cases where using HBR3 resulted in a less stable signal than falling
> back to HBR2.

A very early revision of that series has a commit message that reads:

"""
Since it is not every platform supports HBR3 link rate, this patch
limit the DP link rate at max link rate if it is specified at DTS file.
Otherwise, the max dp link rate will be limited at HBR2 as before.
"""

Konrad

