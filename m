Return-Path: <devicetree+bounces-186617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E061ADC911
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:07:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38D233AC56C
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F41EE2DBF4F;
	Tue, 17 Jun 2025 11:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wpq2gupq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463052DBF46
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750158428; cv=none; b=r5Tg2xNLlm1FCK+NIlhDcVVBYl5WcWX0/rTUZLak8lG5ETWPWbfJFYk/+q3PBufwcOZnqpKBzG4ZpMlMOtL5efzB5EiBc+f+xkcUNIO6ktXAzTjjkySt8G2o/xiJ5ri+rgYARJhM331eZxJEFM+2DgqSPz3ddkO5IeFnQY8gpmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750158428; c=relaxed/simple;
	bh=ocgJRSJa6BE3JFmsVpvS45RVD35leZze8Krtljlq6B0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cSKa2gzgdDuUtWfifo0dgTcQSKtyFav7LfFlfE6XGBaw7zVseT6xiIxJAWt+Ozm2/XJQbk26m4wTpgaWt8/TDkWSstdbi09trog1bxSYNsr4fzaB1XvkKnCJnUAUHEOquXd6cl2N15sST/5X4iUNm3UTSaYAKNuX8uGBMuw2lF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wpq2gupq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55H8RpKG015082
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QQBuEvx5JTVQWB/H58QAUF5UuJhkg/HVPeKkcx6NHyM=; b=Wpq2gupqxyqZHJsi
	qic+LGF6gO6KlvVYYPy703qlvF7aiP27T40vWYZygr6r/J4e29wLhJECCN6Hnik3
	MU+GRNFZUHjYszkcK0Z0yP5uFBV/s+komAImVBtpOm/rthVinQH4rGPWWcUX2eTI
	JcstzbsrQ8MZubwZ5cjqI98GVe1oFWdLmnGyfx18N21Zdic1PLjfMQO1sC2ijqXc
	fJCDupEleZNpN4teFha8EKq2hy5YxqyouoQ7plF4H8fonAmLEsbH9HCPbDNB5kyN
	DBGZ5KYciWb4RVb8zM3rXHk1x55N5ZrLPiK7yQut9qxIAPGkzUggwgS1SLxLRNRC
	Cup1VA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792ca03j8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:07:06 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235089528a0so51844695ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:07:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750158425; x=1750763225;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QQBuEvx5JTVQWB/H58QAUF5UuJhkg/HVPeKkcx6NHyM=;
        b=DfUl2YpSOJtyGk6XhXSpWSyINJLTjfFWW/WjGwYipS92CusTmpxrypLvvNo3z0HkCg
         lDflYxYJRtQSETZsNzS6HB1E9spwCJ5/V3YcRPvuLM2uqJeezl2KuLIrhnlINO25drAo
         YqLp0axesAMUHY+b9lFLyeez6LcANPvnYovfhh5BtiNY+ZcoJ1YdNASKjge9h9PH6uQe
         f0a9wpEG4eGUFNQHu4P6+rLEn0F/lO/2YykCO56dsdC1lX91E1UA4lV/7pSXR4iTjKzE
         8PDM95Yrkd/SPfjYT2kFTU24wPVGsuNX6fTKeQMbTIxPpgR20RHG0tBPRUkOb+3kaaBM
         +p9A==
X-Forwarded-Encrypted: i=1; AJvYcCW2U2K7SR9ZYuo+vC+jzGyTqifbCYkrKFY/1FY9TNBtUDAAJZbb53IwI8lUlXbdYfimAjq40gLEXzoO@vger.kernel.org
X-Gm-Message-State: AOJu0YwnYsB2CgcHKTu8tFK9DDiW93dZOJnxcl1mA7FeeTf9amd204gs
	0ZIlHAwf5xc5mfqdmfokNA6Z3E8UDGgBIQiG3UqzoGyfpNatm7uWCbBZJXQMET0mKrtUvu7/syJ
	Rx61x7pbcr+LNR3UwJ91grDl7GGD6GWRo0EZNUjF4U8gr9HfFxOnoOV+BCNJgK6pVAdjgLkgg
X-Gm-Gg: ASbGncu0P5K8+wJ9LDAMSZNgmgxNBkdDBOOdQwoIAkTb+ULLQUtz4vl3qpEvnSVYCRH
	85NS3Gcco12fF6KcDyfEGlKE+5ZwnWovsEpBU3yymZTdyRBKOJZtu14PciP7bogo0AEnZL607J6
	1ObIhvW0cu5b1S8275CQC5aUxcrzZTOW10aV7yX356HwQlYck7Bou/HwQRbKSwUeTOlApHv+8X7
	YXai3UBach/g7u1+f9F73dA6XASkmytfHbd3CeIoQGEPiJuEXuFhgqYWHikuGCRc6EEUEXqd7db
	7R/eV+r5CgcX2bD4AiO/SrL5hOoIEprm3vSVVwSn8gIvryi+jClB1N7XHn0=
X-Received: by 2002:a17:902:d552:b0:235:f091:11e5 with SMTP id d9443c01a7336-2366ae01073mr195545475ad.10.1750158425348;
        Tue, 17 Jun 2025 04:07:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMk/25sYGw7/noMCtsDarXs981kExTrASeeTn/1Izn7gqk+MKOiCOPdIyos0682zfgI0LP7Q==
X-Received: by 2002:a17:902:d552:b0:235:f091:11e5 with SMTP id d9443c01a7336-2366ae01073mr195545055ad.10.1750158424942;
        Tue, 17 Jun 2025 04:07:04 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365dea7d98sm77290745ad.151.2025.06.17.04.07.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 04:07:04 -0700 (PDT)
Message-ID: <11827cf0-8985-43e7-8c05-3c554bf1fdbf@oss.qualcomm.com>
Date: Tue, 17 Jun 2025 16:36:59 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] interconnect: qcom: Add EPSS L3 support on QCS8300
 SoC
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Mike Tiption <mdtipton@quicinc.com>, Sibi Sankar
 <quic_sibis@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250617090651.55-1-raviteja.laggyshetty@oss.qualcomm.com>
 <20250617090651.55-3-raviteja.laggyshetty@oss.qualcomm.com>
 <43ebe623-8822-4437-92cc-9d24e97295d7@kernel.org>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <43ebe623-8822-4437-92cc-9d24e97295d7@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: fnkMVJQgzANhmRh9ph0lDKi5RzLnuj6o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA4OSBTYWx0ZWRfX+wOkd/dr8csz
 FFF4fxRKniLD7UbEf8uir0e2+0KoRzxKL45vR9ET3Gy25TXMtWEuPhcSnasT0c03LiVnemnHMxJ
 Lkzhi3RowBzm6HuI1lP43LWt+aGMClrmGLYlFRN8Ygi3+KHuW5l8IB2CLdLr/inRGi1tTwW1mNW
 XjgrCooe9171QMj/IFzyPYZnhmcVe6XRhisa1FdpsMPkR41Pllr4+Ot0lrJaxxLyT9hSRXqm5La
 dzBqxyx+nY8ICc175t94k7EpfW+Btz1e0zfw6dIZpD1witQPdUkzQYQgulwFBojo7lK2CCihQ9w
 kER2XsU5gRySEmqVLbNG9wLEEH5HeK6e565fQ37X+DB6fa5yUhf92CnDWVvLdlpXyPIsoBWBuYX
 2DlBN0KCiHdJsjRGmf97UStOjigdrBbjvEcPLAK0GWkoueMrKIbg0ROILWqyYjNAGk+htToY
X-Proofpoint-ORIG-GUID: fnkMVJQgzANhmRh9ph0lDKi5RzLnuj6o
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=68514c5a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5YNjd6bEO5n3GnEyyeIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_04,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170089


On 6/17/2025 2:56 PM, Krzysztof Kozlowski wrote:
> On 17/06/2025 11:06, Raviteja Laggyshetty wrote:
>> Add Epoch Subsystem (EPSS) L3 interconnect provider support on
>> QCS8300 SoC.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> ---
>>  drivers/interconnect/qcom/osm-l3.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/interconnect/qcom/osm-l3.c b/drivers/interconnect/qcom/osm-l3.c
>> index baecbf2533f7..d8f1e0a4617b 100644
>> --- a/drivers/interconnect/qcom/osm-l3.c
>> +++ b/drivers/interconnect/qcom/osm-l3.c
>> @@ -270,6 +270,7 @@ static const struct of_device_id osm_l3_of_match[] = {
>>  	{ .compatible = "qcom,sm8150-osm-l3", .data = &osm_l3 },
>>  	{ .compatible = "qcom,sc8180x-osm-l3", .data = &osm_l3 },
>>  	{ .compatible = "qcom,sm8250-epss-l3", .data = &epss_l3_perf_state },
>> +	{ .compatible = "qcom,qcs8300-epss-l3", .data = &epss_l3_perf_state },
> Heh, the same as some time ago. We discussed this.
>
> No, stop adding more redundant entries. For explanation look at previous
> discussions.

Will remove the compatible "qcom,qcs8300-epss-l3" from driver and retain
it in bindings and devicetree. 

This will allow the driver to probe using generic compatible, without
the need of additional target specific compatible.

>
> Best regards,
> Krzysztof

