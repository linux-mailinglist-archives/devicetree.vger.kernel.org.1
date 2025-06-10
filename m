Return-Path: <devicetree+bounces-184522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B505AD445F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 23:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB01A3A5DDD
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 21:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20B926738D;
	Tue, 10 Jun 2025 21:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MiheBHYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBB0263F42
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 21:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749589497; cv=none; b=SLO7/ua1exJd+uCitWvKLZz4B4FuFlSnb6j5ajv/wNOhBgYucv3f6yqD02Szla1+OFsH7+e+Qo438rhBlEsltKDYqHiGEbi9+u7nZ5SnljEe9PTptIQH1oyMGW1sfeAWAiGtSPsXuPrJ/6fPyn/9NAqh+KPbI+m1UjJ7bAF5nLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749589497; c=relaxed/simple;
	bh=kE+lkbDW2fkjWOPf0p+Xh9to5hHkH73htFiGsWeZSEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tIWf0eZSlen3h1DTJ563FdgjErdSNHZXK2MpqQTf6I8lZCGtzAMTXcN1mixGpEw+22o3XJTBRiJR+nhI5yRaJ/b6OJhiGaYc46WY1nlszKVumOomRktzuIB5WVQ1hU5PkWUlzPXX55ORnVvFDxbT4us7R2ryBOWhr6KIu90gooA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MiheBHYp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIPqL4005791
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 21:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1g1rTZa3ADy4dw2FlA/nSkUedBUIBJbaSuUbI/8Z9Xk=; b=MiheBHYpuxVWeC1y
	i9RMldHzII+b9U5HWguHfcYiwWJDg9CO6nAkIVTDPsUhlw24nSTlzUT4gUN/fBPF
	iTBvZoVHzUpUmTGFbOHf0FS5vBg3/ga1K0v/5K53Qxl5KFXJwk3ogHNcKocNnyYC
	XNoaN8keTOsteV5wrPtGBL/xjTUpS7tjdQqYXZGx1iP9BKC/OBJd9QC0UE8KpT2W
	r5ZQlAwafYNmycRjTCP5lE74vzDCxkKZ+v6C2sP1/Tfd++G2RAxuGP9w8wasbwlo
	cdWeqGbk1gLFHV5dQsuo4C/w5bw1VlMM8Pf+ZTFYM+MIqpTfNQZ+riQhtQFFkm4M
	dLP5jQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dn6ase6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 21:04:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso120222085a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:04:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749589494; x=1750194294;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1g1rTZa3ADy4dw2FlA/nSkUedBUIBJbaSuUbI/8Z9Xk=;
        b=JF9HorWS5Pzzbepn6Et+7+OBWN4Oxzn1vA/Rfz90x9jbHSqx5MWFAQozdG8M14Q1Fd
         cqQhU0dPLxCklJHK1vIf2slm7Jbo5rAiGLW97q3nz2z+U/S0wl7Mv80YDhQDLd1RUUWx
         pOrpn3Ca/u2hjrr3WCnDKLEW3nPVevH1WSbKB4xAZhARtX7vVBK32J3Gkv9qz74uaNXV
         e7npRuVHfp1Jgfq21hxNw7BM0i1AasvBmzivAVx590RNtHHyFTuu/u8cB0vWzRlBK238
         A90ceQaMPcUSst2x0CG7m9bLIGTMIuuGdOE64JYzFC8TZakBsMGhRzpmecp1KY0mzxqd
         3thg==
X-Forwarded-Encrypted: i=1; AJvYcCX3jCKVt7PmLZUJ70bpGJXyUEKQOrIAYmDakC3VwtPFAwtILPRZhimY0a5chArilqE/QmJykTWHmhuN@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ0oy8BkAJqeqBtUGcSDhVX5QQRbEnxNlg091s9Pd9F+cm4G2D
	SWG5sdGgi+7+V8QmKCtX2iR/ZdSdtBFQbNlaLWMOI8Y41+llmzqE/iYYYqihk0lsaIfKhYGAgla
	rvL2v8kQ15VhSUyvHz4cwCNrHHhB/2dKFn/o0oLmOsAdaQwQMTcTEw8ZLufqhtw4X
X-Gm-Gg: ASbGnctDvxiv9cU8jw9tBDZfAXvgXS1UD6CL2pkiBFlrt6NmB46hy65clcz5K5bwRj1
	ThbNMlf+kDEa/a642Ou90uM62xs2usI2WLcmElUhBSRVk6XNKt6GFNjTTY4DYPzLstuzbeQ3Mr5
	5g87oP3gdCBzYXmPB9iuDImjkMDr5Yt13wEUPjRnyMu/QVQCCyd95xTbf2dkMrIhon4gj6zCNs8
	pbDI55h0ipMzOMS7wp7n5hLlLA+4oXbj+zPFzWkRYO7KF49p982q7AX+MqeEMf5Z1rTJY2URyLq
	KFCiM4PF1PGRJVgkwFe/TwHw6jlCBnFcQ3g2YaKAQar3LuDAdtcEYLSpGrEiPCMh862vpB7Kppk
	wZ9o=
X-Received: by 2002:a05:620a:1d0d:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d3a882c6b4mr39699485a.11.1749589493851;
        Tue, 10 Jun 2025 14:04:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZfc7T9tNgx+yBsZQ9oxjOn+p/Z6msmA25Rm7iZVLz1xrwLf9jLrAJFTWkr3OPcdsW2xSWnQ==
X-Received: by 2002:a05:620a:1d0d:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7d3a882c6b4mr39697685a.11.1749589493347;
        Tue, 10 Jun 2025 14:04:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783c0528sm6771458a12.43.2025.06.10.14.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 14:04:52 -0700 (PDT)
Message-ID: <6bbd526c-3193-40c7-91be-e629949dca8a@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 23:04:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
        todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
 <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
 <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
 <1883d9d7-26d4-40b1-9848-ae0477cf95c7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1883d9d7-26d4-40b1-9848-ae0477cf95c7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE3MiBTYWx0ZWRfXwuiNUZCs6vS2
 DiQV/qhkij4JC2TZLE5mS0h37pHwpdCk7ptJpRHmvFn02/0uuaDjzoG5FnySrA1D7zkeu/jN7qS
 NLgmDPybZT+18Z1K3PpCqQWAtQlnfc70l2m90Cqlufs0buy7HChN4Tnm2oLq/Q38CvKjwbi/oWg
 EBXJIAmB1txfZ0kxUobGGIK209lX8uLxZDsWnKk0mxPt2sRcegVP9ZbqPEcAaqt78PgBmBbihzE
 QfpftpBEKT+gohmWNDkiQz50yu5gMnzC6Vn3/L6zzdIxCzKTzk4XkGeSQkoTua6CWFBvum+Fujb
 c5PBI5pj+a7HowhSPCosI67P3fHME6IIY+gRvHfOHhnY2eaIGknRzPB9II+h3BDOVCzNe/LNdLE
 jMP+ZPySO1O1Adq+AeO+uUUfAKtJojgqwqU65rfzNXorNBTJPpnEhhCOvz9tc4TaasZq4IcJ
X-Proofpoint-GUID: 1FCrmjQUtiCiZ3Wor-8WCtvORTUQ0-K7
X-Authority-Analysis: v=2.4 cv=FaQ3xI+6 c=1 sm=1 tr=0 ts=68489df7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=BAsi0iANeLLsmxwWO0gA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 1FCrmjQUtiCiZ3Wor-8WCtvORTUQ0-K7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 adultscore=0
 mlxlogscore=939 mlxscore=0 spamscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100172

On 6/10/25 11:02 PM, Vladimir Zapolskiy wrote:
> On 6/10/25 22:02, Bryan O'Donoghue wrote:
>> On 10/06/2025 13:49, Vladimir Zapolskiy wrote:
>>>>
>>>> List feedback from DT people is isp@ is the correct prefix.
>>>>
>>>
>>> My bad, but I don't understand this comment, it seems irrelevant...
>>>
>>> The expressed concern is about the novel label name.
>>
>> I mean to say the feedback from Krzysztof was that we should use isp@
>> not camss@ and I agree.
>>
> 
> Let me repeat it thrice, it's okay...
> 
> I don't object against the properly selected device tree node name "isp",
> here I object against a never used and very questionable label name "isp".
> 
> Please feel free to ask more questions, if you still find it confusing.
> 
> Again, I may missed a discussion about the need to get and use a novel
> label name, then please share a link to it, it'll be very much appreciated.

To hopefully help out:

label: node-name@unit-address {
	property = value;
};

Konrad

