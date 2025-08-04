Return-Path: <devicetree+bounces-201740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87871B1A921
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 20:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E398A7A0703
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 18:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F2DC25A354;
	Mon,  4 Aug 2025 18:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sxb6XvFN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFAF21A44C
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 18:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754331754; cv=none; b=OjKhcEYPy0r6iIf486XNeEBpVypvx1pXM/dLMNw6pcU4t6gWMtyYOcNRdo0bFeZorksxUzVINLAxRhJ+XegleuoQ5yMLmaK8rj6iGDfw4KllTO9xcMCguMyqoTSmSd73vYLDu7kLloUFx9WQ6co5Mt8RPofHuSuNDzShXdFlqbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754331754; c=relaxed/simple;
	bh=JKj8bw+mKnuVFjEQ11Gaa2fcA7Zn2gHsTNk2HvijlVk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ESziQcEcKwNKhOaPNO1erjTOdHuDnwezgrKmO0Nqi4RO6n9yef77yNVLGLU79IcxPoVneyRuEROsDVbCjxsqtA/8h9Hy6aXLqMB+CH5GvpZcKN0K7oUO+aRvRgs+0yfF/GwDMz4ZLhxYFkyunUfCZYaAWaNYrqx/xTEc0n9GkF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sxb6XvFN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574H0cGD006900
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 18:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I9FsS+VbJFYkkKuzM+RPQd9H0jMOTQpUPWeQTeryYYo=; b=Sxb6XvFNA+/08g1K
	pA8/1ZpKlwgZzqRYuem/Tx9nK9LnrBMPukx4OUZMhi7RiWmMCcahD56cAkVdQNRe
	FrcN/OBWAACmxKx/RYtzNKaxpOcH+354owz2QytcgJ8HUt4RC9b73hf871s5AwZG
	+4sLYp+h6zdQa2/81ISoNflqURekvSvGcNUsq0byz63vnKl1lquAoGHLeq09zmeZ
	rA2Ck/eEFgJWtvAi+Go6MZU0N6ZxLm/f+ps3xnj0lZihzg5blwmDBNBFYLNLnXz3
	dso0z/wXyCdapE95KXTwiKNkuBZ8w98DzARmDX+nnmT5797fEIcJ0lxDo09WhlGZ
	GpuLCg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48a2ke43pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 18:22:31 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31eb0116716so1458489a91.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 11:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754331751; x=1754936551;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I9FsS+VbJFYkkKuzM+RPQd9H0jMOTQpUPWeQTeryYYo=;
        b=OyhaIq+Qkkf0a4knDLR8mWzo0eavqqn1wsiPIFepnycOGSWcnRwISvlyTshl1PxXZ3
         i0YVti3E5iiwuV0gQX+zFottcGp4eQHcoc5w4mIpv7yMWVEpJRoeRZ2EthmlqytRyHVY
         R4JignxxdIUrWojyFEYYaMmmaOUFpFaF9gTDMcHln7y/CMZOOfMd6iZKAt6fARzoX6dS
         7FdLQdUjxLcjAobnq8HlX2BKn4OYotm3nU80dssHf2cilO9p3b7T7ZsGpBZtn8GA8pJN
         s+w82Ef0pO3KNsasgT9E/rEAtJsBGgeO/0+Q/L8maAXTgDlFNPTDgNMb9Eo8MYcE0bGZ
         gLPA==
X-Forwarded-Encrypted: i=1; AJvYcCUbOF6F8/YUf8Wr6GR0hD64ULpf8kFqnVLC9tEPnkMIJ+DkYqahMaMTO4Ir9x/P4Syv5uPionXPRoRm@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr+q8H1Y6cLQjVZ7BvaGSIdeMVoeziHVFaYAQALbO40S1jxC90
	KH1wuE7r7+28wDiwpcORvKrlZrI43nLZ3fymTmruZnApyPd0g5MqzEOZVSo2qUKdmGtRkg/VR9T
	5YL9NOD8DLQ09vZ/gpz4UeJAuP28NbYAcTJGzbbA+o1YaayIcQrWhT+LVCUvRwCfC
X-Gm-Gg: ASbGncsJ34d+EhaTGtn9IjQ81vrO8TdP6BMUN7DmeZtOTuW/46DWR7q2Qy29zbGXNLs
	7uh2PdjCochvoOYy2AgPTXxhWe96Vok4YVByppQFMu4n7/QwfeqTZaKIzYpI7OPhe0BsdfxD/uw
	XkVPAwmzvWVGUFZh4BoXZHPolYdTW4mPvDs/eYw+yTpGWKuPZ1yeqnYd+PsJvn0rZ+sLUbMmn+9
	9fBLn/D1qaFpFLcPs6ajrMrzzbMIr9qRglTzer2PW/KlISa1mx+3XLVLyLW8QNQqCaCl/8zy+JS
	OELAaCA+6M6TVvkMtj3tXDsBNdxeeVtJ2cQ5nN0C7k9G7+qiJsb8ty0PqtiLRtVGSA+V4doBn1f
	GD9EHH3CAgZqUBl1xM/tNSCxvOw4Z9jZb
X-Received: by 2002:a17:90b:288e:b0:321:29c4:e7c3 with SMTP id 98e67ed59e1d1-32129c4e9damr3646470a91.3.1754331750821;
        Mon, 04 Aug 2025 11:22:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOU5OWHfOG0dmrlXfJFHVqdV/tQ6gpchrrrTUErDtERSvZxHbDFE9M+eso01gEc1fOlfScHA==
X-Received: by 2002:a17:90b:288e:b0:321:29c4:e7c3 with SMTP id 98e67ed59e1d1-32129c4e9damr3646460a91.3.1754331750334;
        Mon, 04 Aug 2025 11:22:30 -0700 (PDT)
Received: from ?IPV6:2401:4900:1cb5:a9d1:15b3:77df:1800:1497? ([2401:4900:1cb5:a9d1:15b3:77df:1800:1497])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63da57b4sm15254085a91.5.2025.08.04.11.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 11:22:30 -0700 (PDT)
Message-ID: <ba553cec-8004-459f-aec7-f9a800342434@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 23:52:25 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/2] dt-bindings: arm: qcom: Add bindings for Monaco
 EVK
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250801163607.1464037-1-umang.chheda@oss.qualcomm.com>
 <20250801163607.1464037-2-umang.chheda@oss.qualcomm.com>
 <267b2d6c-468d-4bff-ac06-c6755706a398@kernel.org>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <267b2d6c-468d-4bff-ac06-c6755706a398@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Efaq7WOSm-fvJ9FqYdnXd3xiHUIKxeiY
X-Authority-Analysis: v=2.4 cv=TMNFS0la c=1 sm=1 tr=0 ts=6890fa67 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=JcbvZcPrJRGWfMKQDdsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDEwNCBTYWx0ZWRfX8jinks7NWCyM
 onKGASFW5JATqNM8oMavlj4B/zo9akHgl84+zz9Ss5grIu3ePwySNcjVJyIOXfgJv3LeWrx6fSV
 1x5P40g4uEXzP07UOu7VFf6ROUbzF9Lw2fVV04t1V/JSS42EvadLKVRz0Dg0RyjCP/gGO8zbP84
 ibDpUOXTPP0p4UEiEuIIu/coWhy9CRgp5ZMP4C2MhMG/+JJHrC71FQ1k6rBAhnOijCt06MWKwUt
 7qwCZ3nIAd7Wf2iwceg4MlfI74Z06v6g7xOGl/xMiYseckMeObje8lKd7MAeb9gGf8MXsP4xGf2
 ONYrXCpbaAFd3Qi4wma5opvia7xEoBaWM4ewYRCKm6n51dnP+qYQ1Bp/6vWXxKvmhGlBaqJniyX
 JmK0uvi9VYHYNmx9fSKmiCz2g717ioz+3viwsnK/I5YKVLWZUHDTvmVOw+zaibPjVW4U5YRw
X-Proofpoint-GUID: Efaq7WOSm-fvJ9FqYdnXd3xiHUIKxeiY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_08,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040104

Hi Krzysztof,

On 8/2/2025 1:16 PM, Krzysztof Kozlowski wrote:
> On 01/08/2025 18:36, Umang Chheda wrote:
>> From: Umang Chheda <uchheda.chheda@oss.qualcomm.com>
>>
>> Introduce new bindings for the Monaco Evaluation Kit (EVK),
>> an IoT board based on the QCS8300 SoC.
>>
>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>>  1 file changed, 1 insertion(+)
> 
> This is v2, so where is any changelog?
I have added the changelog in cover letter, But seems I missed
to add it more elaborately and in proper format. Apologize for
the churn will make sure to take care of this in subsequent patches.

> 
> 
> A nit, subject: drop second/last, redundant "bindings for". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
Ack, will take care of this in subsequent patches.

> Best regards,
> Krzysztof

Thanks,
Umang


