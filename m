Return-Path: <devicetree+bounces-158985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04813A68EC2
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 15:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C05F33BCD34
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 14:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C941B4145;
	Wed, 19 Mar 2025 14:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WPR/bXOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D041B0F19
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742393688; cv=none; b=oSCktlzsyrOzVhaam3kehhQNTAc8vwGBTHucM/RmPynuY3qWA/hSc2jexV2tnrvv2YAAMN78EXlmyNdvUZNvzw+Jq1GIqyaN0OeXUTVe7Ec4/Ajj7RdsaOSB5xBRCkDe8h0n+0mXGKmk4w1FUVt1HRT3/oXEouKf+P9FW915UOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742393688; c=relaxed/simple;
	bh=2MCKn9csCxsdPtacIyBliI1wK0R5CgpFopj3E5+OV/s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N87KWVjlKnFtg36mL+yt3AKxC6YmKRVPWauXfq8FJLco/1DxJdehBEUKP0Y0CZko3xYbb/CtvxruA/jC6e5/sUqpdFJW/zlnrAylyTB2/DqftQVWfk9BNjXvuKXa1UgF9Q81Z5k91IgZfpx5B2a7bDZoeQ1zVj+WvxfDXZ3RQ5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WPR/bXOA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JE3cis019770
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R9lm9ioOTOSwgPJPMJw9RqcbC+GqKLGC7kuCAnVvxm4=; b=WPR/bXOATCo1vEnm
	svUjeRGpp0weEY9S3o7XktquGwjDsCrnkfPATD1OWioYzj0BilZw+/Geq5imvcM+
	6OvGOsO3wMP62WmuROfjwh4FvxO+i42PFFN0+PWXCv/moF890wRSMGCkhQZzj940
	CDC0H56h232yiFhEQtc+x/9u4jfhh6YTYnENiEPIUITb9IUe5AIpEjR7jgzvLh5u
	AWxgg2w6vYmzo6AFJyWqPeT2Cd4IbIe1uSlrQnocETU+q9hi7L9q7Lj+16fb5jF/
	HvfDaTBu72jXnrRm1lV99xYDCwevKVI6dqtBAqJ3HspERcPJuIgQVAgiUIDEmJM1
	5/1xaA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1uu3wcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:14:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f3766737so17407226d6.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 07:14:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742393685; x=1742998485;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R9lm9ioOTOSwgPJPMJw9RqcbC+GqKLGC7kuCAnVvxm4=;
        b=puOX8/sIIB3wDfhSQPeYMTyHEt+ElZpY5aHrpnnLki3JnneQXCkcMCwF1CUXdOOIRQ
         RGRw9bsFLulZpUZPjb8+7xklwH7vd9h7yT+FV1eUDc5pTVIhF4FZtgY0KsS7lazG+omf
         sAzRihN5AZlWsSu2p888iX5dzFOQSDeZ6uG03LjHX8EULf+N5NYtisTL21RhX/lU5Gc8
         huaID7Zvg1EHMe3Dl4SqURa7X0ClVLdY3PTGgq9NLSSdy6jsHf69OnEKzp3I93KawiPR
         7pd08W8pLUhldYG8csACh1v6PWCBMEPBE7oIr1e+DVhBNN3hkjnWYyRmkuraDqA+Rm/Z
         OJzQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1wXT3LEww606uK9LZk+hNIQ/ftenkM0fXp9qlM3pgLRAQxXQfA0hj+TFOoh91J6qiJuvq5s1BgyMa@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4qmBd+uyPRFTRXGoy1fHKw8ulDyRjzpgD/rz4oysPZPoUQT9p
	gcSlGbKOf5zpV3dfp1oFVrHh8m2k3WqfEVC1fdvAs8D53cCcJZa8z5X9PppQWP98wOBQzCsYu++
	/LY4bpY8doqg5WqNUVsy0HZsFQALGgk+BpQWwFvE9QaLsKJdXjwjaPllcrgTD
X-Gm-Gg: ASbGncviZgXdF6J34aqe7KkpR7Z0FthQS7YIrT8JGMKPfepBY0YY+0RwU8aav9PVeB2
	iIE2gVzFq9BE2yGaF50nPhS54h1SgyAiNx+SXHKmF/OZIbZkfrutcm1Gsts/hgOny7Tki/vNrQ3
	dLAaIFh5a3gN8DYL9Sw+BzgfUfXG/AGrzhLacbTRGKypQzhD8zI9Y/ysOL6W5t5HV3ThCY+A6XA
	AbxostxQjloPIKAdjbXnvGeWpVEVXCSAq8B1KHJB8Df7pNPgJH3bMwH5Wr/qe4vDC6OJa8RpDKa
	IfdGt4yuZHSGYdA8WqvMxskWegbPnOLKHNc/H+kRLE1lwztwKTCGOAk/9cfX05REVbu8zg==
X-Received: by 2002:a05:620a:bc9:b0:7c3:d1b9:e667 with SMTP id af79cd13be357-7c5a83da7d6mr168226185a.5.1742393685107;
        Wed, 19 Mar 2025 07:14:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVwXMvt9Q5i8OuLf6HEko618Bxam7kur4WA83u4zm5HOoMhJsZeVA1tQ2ngU8rvFZ6xvwI9g==
X-Received: by 2002:a05:620a:bc9:b0:7c3:d1b9:e667 with SMTP id af79cd13be357-7c5a83da7d6mr168223785a.5.1742393684662;
        Wed, 19 Mar 2025 07:14:44 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e8169b160dsm9310113a12.41.2025.03.19.07.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Mar 2025 07:14:44 -0700 (PDT)
Message-ID: <881655b5-30c0-42f3-863f-5b6606a3e2cd@oss.qualcomm.com>
Date: Wed, 19 Mar 2025 15:14:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sc7180: Add specific APPS RSC
 compatible
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-2-cb36882ea9cc@oss.qualcomm.com>
 <l4vd2xmrowmmtefieb4cbirq6ntkvnwbhtpxcyzwdeok2vgtt7@zqgqndumgecv>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <l4vd2xmrowmmtefieb4cbirq6ntkvnwbhtpxcyzwdeok2vgtt7@zqgqndumgecv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=67dad156 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=yNzLgEpsGgLzqTARhdQA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: aF5r_tz13BMNr_gefgpY0-PHFX7LBYjy
X-Proofpoint-ORIG-GUID: aF5r_tz13BMNr_gefgpY0-PHFX7LBYjy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_05,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=858
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190096

On 3/18/25 10:30 PM, Dmitry Baryshkov wrote:
> On Tue, Mar 18, 2025 at 07:35:15PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> SC7180 comes in a couple firmware flavors, some of which don't support
>> PSCI in OSI mode. That prevents the power domain exepcted by the RSC
>> node from providing useful information on system power collapse.
> 
> Is this behaviour specific to SC7180 or only to ChromeBooks? For example
> TCL Book 14 Go or ECS Liva QC710, would they also use this compat?

The hardware and firmware representation of the RSC is identical, but
I wanted to alter the bindings required properties based on the specific
possibly-chrome platforms.

Konrad

