Return-Path: <devicetree+bounces-167842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E23A9073C
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 17:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 809923AE52B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 15:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A032A1FF1CF;
	Wed, 16 Apr 2025 15:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Isg1z9tC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FE41FC7C5
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815777; cv=none; b=bi4mwXIOcZSd/9Vu8USdjml6Bfm2/BXOAoWu4EXzvHPOgoEE94Q0Q+0cJ6wNgouJirj0YUHT3SP3L4kuU7KIhwN9waIwVZop8DRUnF6UXIbWg4hjRE9TQTfMUNwN5irDxbYbvVFhVdE4znjh+Nso1hYFqOoVHm5yny4M1ead1Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815777; c=relaxed/simple;
	bh=qqp+iF9k1PUQMWye0J4q1Ozyi8J2ju+JFzT71gcgTHU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tdHEkh+D/OTvIzuRd+55mSDz3O4e3vQ0k/CNgQf0GRjA4O40Aw8I2maw7MLiAZU2ffPNo+evYq2Q81mqAujNoeACdGfCJ+NJV9ZbQobGtiMCXKaP41YgaL38wJKEHTcWLNDyzWi10KxvpbG9SxnODCARrPYuV4wj7iNVNlXyhRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Isg1z9tC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mGa5026240
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:02:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NHlUKLWdjyOn8eGsWRMxu2AoM12JPk/lOZumkZ5CpWs=; b=Isg1z9tCaQJIsdY/
	5aiH58WZnkVlB/dGDySmrbwNL20kK2nDNu7QUtYrudCwRYo3HFH5Dif1Hp79GsOf
	WXQpSPVLBsxT/5HIw+yEJZVqrrdO+7KGcC0H6IMoSMPAATPp1ALwbhgXj4Rl6AX+
	dVIwKr4N8jnxqs1pS0GxPP8eX1bG2uUssXbrWWmTuFPtgqZ5Y4nsB7g3R8bFzt55
	ITTQF3OFlBSRloLyWwa5+b/ZgUVxyONs83t+wsEMQjpFdLKnJZhV34CxaS8Dbr4l
	UTqFNmed2H0zUCknFLmjgqVanEYxJKbhu6E4SgE/illeHS9deyyBGXdAlVpnKfLe
	TFW9Hw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs1bv22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:02:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c76062c513so166206385a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 08:02:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815774; x=1745420574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NHlUKLWdjyOn8eGsWRMxu2AoM12JPk/lOZumkZ5CpWs=;
        b=T74DkQKInu7/d6HtnyPiNcAaIWUURDk1E1ZS06W6L8siGnAlVu8cQPn42uqUrvf5ky
         YQSUW1TIFzQGDX51G2kSORIE1qkR5Tyj9khJR41CLalllKHwG8jDyxxidXQ0AcF8lbG2
         YIsJPy8rFV0Ft4QyAnT9D1Hea2NatsWsOT3ip48ZE2+RJRn7Bm5Nnp3CROqDUwn8ClUC
         i06gu2UfhTHZbGbhTaffaaN/1dTuwO1NJQw/PNs++730HgSgS8aEynEuW4JkLKQ1qylX
         3nwHHuQs+Bi3/5ONiWGeTXDcCY7GHKpUkybNImdLckpgAE108lel4bUTlR3arN3/FyE2
         qMvg==
X-Forwarded-Encrypted: i=1; AJvYcCW1BMbzpW1UwSRU4rvuGewg20GwwVV2dJna+v2ymv2d1gxkIJv2D4CevTqM9/3X5N+oW2D7sP9xk0Sx@vger.kernel.org
X-Gm-Message-State: AOJu0YxyJloGIf/r0ilRhxJ5CW/JeGMjp7Rpf6ZZFqLAuwc/kIewCYry
	PrWapF7TS016dwmNfNW4oO4D1cWPa6am0d/8Oqx4VCCk6idTpXhGdDnd4seBD5nAdcsoCsaVXdD
	w1hZBZxkmQyw2Jtw3Sbio9lCGyXspx1mcFQg9/dSaEAdpy/rGASwGM8DzwFDc
X-Gm-Gg: ASbGncv0O1nQ4YBQS9HijTBVrSWjEMLC7evu8v7Fg6f4T7+O4MOIeSOMPkDQT8A4/oN
	ocSsmQRJrSKzC+MsqI/NkfDOf8ePsGUXXYVM7bjBluHmUJzAGTGa8yeuym422dE0xHWOMv2SaLz
	8rPRTswQTTv0upCWx4Ik/cVklwvlQ5KNlKhMSizwP8SMbJubB0wWkCzYI4+m8OOLaz1Pl6HY98s
	d5xb/SvNXHxB0RO0gbvzkOTDi2SqT3rpC6Hwoxul3WNK+3HncBk4zyFRb8M/fKQtfELGNbEZ0sR
	Hj7FU143icMjgG/QUyUZjEony4lylV03hO+8GTiyazG3ZdOToLjBt+VjO7VeHzsiNGA=
X-Received: by 2002:a05:620a:28c9:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7c91cfd6dfcmr7149685a.6.1744815773862;
        Wed, 16 Apr 2025 08:02:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHdWF23lk8itqdoiPfDmzJehQJ7Pz8aPQIK5CQ9C8A/C0YsZyb53/7Ikzkw9MgQBpt7i4MWA==
X-Received: by 2002:a05:620a:28c9:b0:7c0:b43c:b36c with SMTP id af79cd13be357-7c91cfd6dfcmr7146985a.6.1744815773300;
        Wed, 16 Apr 2025 08:02:53 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cde0719sm137891266b.52.2025.04.16.08.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 08:02:52 -0700 (PDT)
Message-ID: <1bb2c12a-df9a-4ff8-bb76-0b5dec86ee3c@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 17:02:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
 <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
 <CAFEp6-0tZQowmDrEsHgU1Ncx6jR2f=Lp259vaj3mefc-9BfUbg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-0tZQowmDrEsHgU1Ncx6jR2f=Lp259vaj3mefc-9BfUbg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67ffc69e cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=-qh7dGIBTJxnWlHWowgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: qqWa5qwcbDdTa3AhJsf_Mlnm7D8lkWdU
X-Proofpoint-ORIG-GUID: qqWa5qwcbDdTa3AhJsf_Mlnm7D8lkWdU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=940 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160122

On 4/16/25 5:01 PM, Loic Poulain wrote:
> On Wed, Apr 16, 2025 at 4:46 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 4/16/25 2:09 PM, Loic Poulain wrote:
>>> Add node for the QCM2290 camera subsystem.
>>>
>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 93 +++++++++++++++++++++++++++
>>>  1 file changed, 93 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
>>> index f0746123e594..4b81e721e50c 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
>>> @@ -1579,6 +1579,99 @@ adreno_smmu: iommu@59a0000 {
>>>                       #iommu-cells = <2>;
>>>               };
>>>
>>> +             camss: camss@5c52000 {
>>
>> @5c6e000
>> (first reg entry)
> 
> Ah right, I reordered reg to be aligned with other camss drivers.
> Should I keep that order (and update node name) or reorder with phy
> lower addresses first (PHYs)?

That seems to be wildly different across a number of socs, so let's
just say this is okay as is, as we're not gonna find any reasonable
order in here

Konrad

