Return-Path: <devicetree+bounces-194142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C01AFCD43
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 16:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5517E18953AC
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 14:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD28A2DC35A;
	Tue,  8 Jul 2025 14:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CdRP6Hui"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDCA2DAFCC
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 14:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984349; cv=none; b=SuxgT+mIHTGxuPX448gb4qNOOuAI3LRDdG9Q6GcX8EhqI1QjwqdzxeyZEjh8v64++W8Zcj2UtOjg1/bA4i/JHU0kGymBaAj39g339+YINoQ0gzA58WeDPVPYxXQMYLuTZvNusPi72BGdOfQdjFm5Mc+HFaa0XwSqZFTQSYK/eJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984349; c=relaxed/simple;
	bh=ZtrrtzG8CBKD7GY7+soKg4RhDNkLV26sXMNQPor5OB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V4vAlBpEK90tfMBzean+ryBv1KnIfbzIIW9mz+D41NpjEtAFSIN9+erRfP/2L1+X6N3okwL2p5AmTXtpiGnqdcXt1vLB2TP9pkJfN8uOM5+njWmG6qu2+NfzCQo/VK3q3ZOdaEcuATR0ize6yWYfGlT1qYUclbNLMTjvwL38Tlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CdRP6Hui; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAQw6001285
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 14:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CCN+ZM0WDYfEPfbtoKj8b1vYzeDnrGa8gkgH54G6yIw=; b=CdRP6HuiYwLg9Vk9
	AeVfvHTLmPR+V0N0INtC9KamNorbzYFjmSbc3FdoIuHJIT9aypuTUhdxhkUS5i5Q
	GKnjbK6H+Dk2eLLCY1zHXb2+IWNfA9QFO7MENMZvUijOIKZsBU9pusb4fNyETDYa
	35N2MOCU0KLqoU09PNhWKZPspjW1dqapjTgTe4KufOOmL+eDiExAOusRxss/rXuk
	EE6IIMvGVSP3HsNjOK148rfsqQKwGEPPe1EcJqDhKmcW4s/w8+Tkd4r2FX/EritA
	wSh4d42TD3JYMn3Qx4N5q5sXH7kUhx9TEMm/08IZ3EJEQu02jUqULTkkagWxN35d
	/eU0Vg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdqxw8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 14:19:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d3ea727700so28459085a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 07:19:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751984346; x=1752589146;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CCN+ZM0WDYfEPfbtoKj8b1vYzeDnrGa8gkgH54G6yIw=;
        b=UjAldQC9vdPJgBKFFlAI+MARwbteZ1CRri3D2KUYW7rjPshy7nrs2tZpAqs9Hw92/T
         URda34CYYezOznSgSpCZnxJeswe9WbUAsNX1nbpS3BIOA//L0qoCuoMPdM1u0m/sdVO6
         WdUVzZCFw2iTMXOEo57rhVd55RzOkIcPLO97JNVNGPG4fswvXSBq+FyzWCnXCmjKMlMn
         jm4JggHDAcmXEEFdaEovJHUtAg+aVABLI2wIAw8LusiMe8pWMYGi8NbLPeyTkZDbFmIC
         g+TK/At53gipZK6mrzCXmnD3eCUmFxTHVTTDFSnDd87Jmx65xYZwxmliZCSC5u1XIgOl
         nvRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUfvql2yqUgjovrJLSLX2IoC/Hqg69QBkDbyWEAmTDKuDfaeTkKynWJvK8enhi5Zunl9TnxKR3pERI@vger.kernel.org
X-Gm-Message-State: AOJu0YzbaSzK9wzN/v7Uh2Jx3Yhn2dIzeEsP3mi6YU1pEuVAyOh4rwTx
	AnhyDVyv357kAuRuXLC6hHRo1sOhz2VoHD1/49tKYPS5Azplwv+U1Yx8/pB8IIuXK4pFLvqJuF8
	mzuJikleWs4z/n2HMY4iJMwgFbXvwM2ioi2Fl5g1er65DIcwv1WKTWKClNg2tEF/M
X-Gm-Gg: ASbGncuw90EHsw8pHWyXsOg3BBjI+BH2FVUNuHvoIiMUNP+FBDxL4RgwaAr3KvApmCm
	7mRYFOk2VH9dIUnbujjEe8jsVtTuCo5mbDOtnLFYXP0OtZ8+RV3Eo1qIAprI3xFPP3AZOejiqMn
	mY9wHbXMEjldnAYrgjJFg2Ts0rimcp2VVjVAdtH1H4KVuaYKlJEVhVhVr/pxvXyuWz++Vh2hrmz
	kIl40r9AnYaYk+ZQg3hILM4LqktiBGH62a8IY+ndhZjbRh1c+DSHFMvSnmMWSUT5TLTlYOrFJIm
	8Km2cALq+1nym8K2xgDDcN3o4sQha6qoarKVHjctYtsxFmya5NukR8OgMEqD0cWkVKamQ879OmF
	xF9U=
X-Received: by 2002:a05:620a:4707:b0:7d4:6286:c7b5 with SMTP id af79cd13be357-7d5ddc69c3emr930836585a.10.1751984345789;
        Tue, 08 Jul 2025 07:19:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGToZ7bX8sdPXYqo2EckDoDatolatmGiV3VIUcLArEf8GV6va65uu0OaC+oWZpqVwYJHsZ0cA==
X-Received: by 2002:a05:620a:4707:b0:7d4:6286:c7b5 with SMTP id af79cd13be357-7d5ddc69c3emr930832785a.10.1751984345114;
        Tue, 08 Jul 2025 07:19:05 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b64ebfsm893538766b.168.2025.07.08.07.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 07:19:04 -0700 (PDT)
Message-ID: <f4a74a00-a860-4410-a4db-b946c6211e68@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 16:19:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: ipq8074: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-2-692eb92b228e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250708-imem-v2-2-692eb92b228e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686d28da cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=kR6MMDqDNadd9sbrY20A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 1s11bR_FRMlWxpuGweDBEy70tUvyhe8u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDExOSBTYWx0ZWRfX/gSUnjbqsRRo
 is4q4V2WX71koTXVxXqWrUe5IMcTdwAdmEEiXPOpjj4AgjPwKKD8yNB5106gcOoOufnioLEh2Ua
 xM9PTyh/4QxnPxlD0FqCntzEmLJ/7qrgO52iud6uLtb0z5JfQPaP8OM3+N7OOnZ4hgyR5OzTGL1
 7pD26yd0Emhh8pDiDbaP0xEMuiIz81dPFL2vJRYKBiXExWu/oWWba+pl/ahFjOo1dekoWEgcweg
 TZ8sE+YY7T+4L/nu/kMdePNDz5BUvhb+o+kaxYmEJkkS8ipBy8BRT9lIDHe/GV40kxzsjOKDF0E
 wqPxQQR1dNmf9SWqpoCbic/MQct7Dd2ZBnaJH9/0qCDkOS9S7x7Cdm95pnYMCd9WH6N1zgUfkIe
 N60KwbFALGikWyb0wtEWxciKe/f/4RFGS9IRGqkam8BPUEiIeiyp8kWL1vXwGZ0eJSZ2SVJ6
X-Proofpoint-GUID: 1s11bR_FRMlWxpuGweDBEy70tUvyhe8u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=792 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080119

On 7/8/25 7:39 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 24KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v2:
> - Rounded off the size to 0x6000 (Konrad)
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

