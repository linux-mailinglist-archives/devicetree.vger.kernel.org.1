Return-Path: <devicetree+bounces-161028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED0DA71DC7
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 18:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B10716D3F1
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 17:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B34523F434;
	Wed, 26 Mar 2025 17:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MMaLDRUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E760219305
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743011770; cv=none; b=br/Nh9X5owQuxz6im09xfcDvJxpzB2s7sL5BtHHXlfP8W4Zftu9t2yFW81vBdxz0YyurOtjuYmy/pbnLX4zArnrsZLtrcY5hHhlczLfgCRIcdGJH4KV51Lut9cf2zcoPOe86DGUbjw8KiEvmt3jwUz8e5hZyylQaXA/v1OZRW1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743011770; c=relaxed/simple;
	bh=FOIE47d2wp0LC0VDLsB3snc29xU6ss8U478EjWgM9Gs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gMZqTJxSW9zdW42POKHKwdbxt3z6/xAxgmkY52TbfC8a2arfGcv8HzkHPzBDzFKJbXUyddKpt37fWDFNtsvWuXjW1HPkleWUVNcoCYQgEEygu0Y0P0Z7bLFJOQHZl8gCgNIAF7FWKQnT/rXobkWsLXaWBL6MS/sRDb1JbehmoTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MMaLDRUC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QFKUpw014507
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:56:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Lxqno0230pcqB0H6Ol9XwwTC6E/yX89Z1LsI9uh3Cpc=; b=MMaLDRUCBI435iSA
	aGUj+zJEParOZXAr3hFQYuqXY29BDofFSZbsPunJ1/4bkUMNbmhKkFa/AT/QTHJU
	deOdmcufix7pePxdTkCP9L9hLSl8RP+J7YPks6WkzgGRG08tYpqYe2iRaHMG3iLM
	UhxVjWce6vrYHPBzRWJ7ddEYccu7YTjnMqDfwatbP75/o+auzdxDaGDY+xTrzwQ9
	+f+C+gObVekxoXb1ibmLI0xUtBzi2PXnPEgCZTKcplNaaIi6B20xMeP9CQhgigPN
	QJK3QrjfrDXR2cBcTWHIyXuVdEBLpC8lyaBprzLcBwu+H9tWyKiws/DM1N9KYZng
	UOoLpQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9mt58h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 17:56:08 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54be4b03aso3431385a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 10:56:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743011767; x=1743616567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lxqno0230pcqB0H6Ol9XwwTC6E/yX89Z1LsI9uh3Cpc=;
        b=MX8csYfHtdzlmRy2xi8K7OmUUPXIzDVZed4zzveXHiPQAdOaMCI3fkq1VSXOBl1kC2
         m3GaPfgU+qljpNU0IFgxUl2y8d2fP6kQ1PQ1vdyBet49fPm+T0xj+yfMUP4mmDfaJo7f
         qYFLe6rvuKdfPqpU0PaiMpEMsNAb1JbqrSGa1cvDkK60MGFomfQMgzDv1FdF8c6BVd4Q
         V7NRVvbyJwfk6L1dB5YWHB34bNsKJ6qVjQGHxuktNZeHt9HBwioJlQYni8J2SdjQBU7F
         6+64upqbpNYVD9d034Ij82tqvD3lDytSLbGANq+1bbbfq6ulLiPJxnhxygO31JyuBy1g
         jtXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvVLnKlmvNZErHXGF5e8864Q8FWoC1FB6dPfn0Bw5nrcgqulufdVHJAEe4HXrh7ZIBw/odYUoHyIR4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz01bgxx40/WwAR1GGQWUCc+tKkXdthzYL0yss0NcSlt9q2uaxb
	lV0XKDqlRxm0pYUYQA17LxWel0E/5TWdr9Lw0Wb5P2HLjU+j7Jg3CBXc1I90/ygrHvfI2i50msK
	gsB8fM0jcjLertWArvOAFDTW9wVEbwYIF2a6H4vbzjbfTOUmI6hrLB/7nt2bd
X-Gm-Gg: ASbGncuj0yJlCJpk1koyQ1Ei2ew0MJduS5NvwxT9lVKVy1eAy0ACqfI1P0s8jy4pqNu
	+YsMzK5VOc3/gNDALK5imbmnAcvT7ym2Q9WdVLYKiVnQds7HzGGiX4ctuxW/3vz+URvj0c1vJch
	RQnU+DFcoZjUudhvMDe/iUoB8m3C1vdx5DpIDYMvRgIsCJvoEMNcE04fbiyOnfWigkmSROSOesT
	RF50njSbHEcnf3AUxuhbg38iMjvkx4ThJhDESOPcOiRFEmcABVwulFRnuJ8qh0XF3H5yBzFuLXR
	T1mp9XkAnVJoj2BG6OH9Kd0xOyvTpkr+jUoUUx3fczVQHmTFWJ206OxE/iJOip7na1/4xg==
X-Received: by 2002:a05:620a:4588:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c5eda1ef32mr33500885a.7.1743011767157;
        Wed, 26 Mar 2025 10:56:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPo1a1tkN/XZXeNGAAUJcp1b82A8YyOkx8pDC2Hf99u7C+rn8fvVrRAP5A3JMYBukqijRm1A==
X-Received: by 2002:a05:620a:4588:b0:7c3:d752:f256 with SMTP id af79cd13be357-7c5eda1ef32mr33498785a.7.1743011766592;
        Wed, 26 Mar 2025 10:56:06 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef93e5cfsm1073652266b.82.2025.03.26.10.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 10:56:05 -0700 (PDT)
Message-ID: <0cc247a4-d857-4fb1-8f87-0d52d641eced@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 18:56:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_vpernami@quicinc.com, mmareddy@quicinc.com
References: <20250309-ecam_v4-v5-0-8eff4b59790d@oss.qualcomm.com>
 <20250309-ecam_v4-v5-1-8eff4b59790d@oss.qualcomm.com>
 <3332fe69-dddb-439d-884f-2b97845c14e1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3332fe69-dddb-439d-884f-2b97845c14e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e43fb8 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=hNMOycGrYB8S6Zk86AkA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: JsfSnZUDT0qiV-pzQ-I5jYW0j1iRHmf8
X-Proofpoint-ORIG-GUID: JsfSnZUDT0qiV-pzQ-I5jYW0j1iRHmf8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_08,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=827 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260110

On 3/11/25 12:13 PM, Konrad Dybcio wrote:
> On 3/9/25 6:45 AM, Krishna Chaitanya Chundru wrote:
>> PCIe ECAM(Enhanced Configuration Access Mechanism) feature requires
>> maximum of 256MB configuration space.
>>
>> To enable this feature increase configuration space size to 256MB. If
>> the config space is increased, the BAR space needs to be truncated as
>> it resides in the same location. To avoid the bar space truncation move
>> config space, DBI, ELBI, iATU to upper PCIe region and use lower PCIe
>> iregion entirely for BAR region.
>>
>> This depends on the commit: '10ba0854c5e6 ("PCI: qcom: Disable mirroring
>> of DBI and iATU register space in BAR region")'
>>
>> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
>> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I took a second look - why are dbi and config regions overlapping?

I would imagine the latter to be at a certain offset

Konrad

