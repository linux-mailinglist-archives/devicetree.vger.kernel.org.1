Return-Path: <devicetree+bounces-225023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E99BC99D1
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FFD24FDB12
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1974B2EA724;
	Thu,  9 Oct 2025 14:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AuDIsEqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA862EA17D
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760021215; cv=none; b=l77JfXD0Ej2eSc5DTcVU4dm6b2Vpoho3MEVN3ywO6hYJKBw8jHIAFlneHYapKw8BpaGcBGBHGK8WLDvk1w8N5KoI8UN77Y+7Sf16A9vGhtEmLWYEP8A9y6ZTWf4jBe7e6w3axX+TQG7a4SmRD6+2g4ScWR15MTPDZp5cgj0+P1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760021215; c=relaxed/simple;
	bh=HCVYg7YLF1NRKPfftTczIu52IvG4diO/x2IeTxseCjk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SmbVsjDn7ghynPADRaEj2yLmXxMJBzGfB0AhmG5rAK5X2TmLJ9qcf+/1oJ+H//zmr8AcPAeBPmGlrKoRBxAAbOX+5/ucYyTiaKnq/9QaG5L9vuoeAh6A3/RBBCLHRLZH26t4GGMcghl6FAQ7YTxDKl2R0cdP2WTQ+AWE3IXBCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AuDIsEqN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EOir019236
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HCVYg7YLF1NRKPfftTczIu52IvG4diO/x2IeTxseCjk=; b=AuDIsEqN3HKUd6bh
	3IaPolLJ6PiAMVZuDNDzcoAtaIxDGUmQ5VFei1tlX+usRQ1mM0csGHt7pkOdwIx3
	+h10kRLQmncyg6/J3DSk+LGldv9A1x5jDc62nweQf4LdWX6rAKCRtulOYV6RcHLP
	ag4qDkmVnXvJGsKmY90SEXooR1HGn8pZ0oAbjoZjw/dTvc9qyDfrzc9uaGmDaeQM
	2lpY22+mczkEQNQ9Fd1o4+2RR4qoukb2zeCfnkYIhiqi7xBc0y7opCTeD0dOKeM7
	/BZ14GTrgkyhwzjLyW2ZIlTiiY0KxrT+URGnWflOL5I+/J2uYwWOtsVVXqURQ6lv
	xgYZ1A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nu73u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:46:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-81d098fee40so2187636d6.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:46:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760021191; x=1760625991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HCVYg7YLF1NRKPfftTczIu52IvG4diO/x2IeTxseCjk=;
        b=ZeWPqfo9b/D37Bdy/CB/Kac7OlDV/ve5ygV+rqXr/HJ6YzpC0qdxwD7YU9A7pM0bPf
         ieDSP9FhUKvwYCt+SapNDEBPLtLtJCCc7PVOKP17VkjdIhHmTTNs0jHpeiOfrkIo6mHW
         irgvrePPo3K+Bm6gjZzqI8w49mgw3NMnz0GVvXnwvho3BsYvGfV3EYpA2Zks54pjRnro
         raQ2cMPnyMBu4wyUFI6gNcxIl6C/P68qqHHjjHmokQ/I7GS2RbqPrl7cbtTg1+szxykM
         JOV8KSuPpHqglGx9oxmndV52KDbHmQN2XgZ4j68TlZycAPAo8ZZ+mVjgqmGFWIv5d0+Z
         jKLg==
X-Forwarded-Encrypted: i=1; AJvYcCUVPYRoys4O0H5BPrzuYWd13W+q8XBcHOGlQ6WJXCqx2mxPrgYtZGx7lgeinjro8MUUmWLAnfns74PT@vger.kernel.org
X-Gm-Message-State: AOJu0YyDhRajRua6vOKU3L+jgbhmYIyE8VbcpHYOeh3BQdRjYxYIHDMs
	SxvplsUJeIl619iJwo/eqJc5lYrh9DWOdVtD7gl0JQkrm6NE7BN9g8Kf5tCO770tGUR4+a0P3A7
	tIekhcPLLfU9q724abGbH5Vc/yQ+7iaMwv29N9PU5mHhFs1HesMB8c46BT2bDKXFivanxlCxc
X-Gm-Gg: ASbGncskT/1hx53uoSVNb5TB/pH5Wa0ZMi4wSyXMeOy2gWM3Qfh6n1lrI63Txy/Fkzk
	zZINumthHyZ+daqe08efMPPTgiI2MQSdRPXGvphDTbIOunGrV1ysH7ZO3vdFirp29QZANlkzmOk
	DofbSUVBmNJ0buCRL+om8CdAnsrTIE7xWY+qqoE+oKlao7xRyEPoSJeQtZziCiKmx4AuhIwqc7S
	/ZQ2xCXRVDGQ+dCjqhVFO2TQ6IHXAqcpuCz86FIhdbkqsKUBE+JHHwRGx/wiNJq8XFs09jD3t0K
	HMcX0YlgH+OvYA1k+/87efPCnxkZm8H1ZlADXeRPdI9cDF/Oy0dffpuNDOCkSRd5gdMDtqXXKkf
	p4yWFNGt4NnW0KmIlE+s9y2dp/5k=
X-Received: by 2002:a05:6214:1c89:b0:7d0:8b28:aaa4 with SMTP id 6a1803df08f44-87b2ef9394bmr70623566d6.6.1760021191368;
        Thu, 09 Oct 2025 07:46:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbkxsgpA2R6ZHZIpuug3KaY9J4Jw9+efaGwspf70reNmliHQ6JBJOzAn8d48ngP1fI+sY3xw==
X-Received: by 2002:a05:6214:1c89:b0:7d0:8b28:aaa4 with SMTP id 6a1803df08f44-87b2ef9394bmr70621816d6.6.1760021187635;
        Thu, 09 Oct 2025 07:46:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f30d51c7sm2578021a12.11.2025.10.09.07.46.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 07:46:26 -0700 (PDT)
Message-ID: <045401ef-3a39-4b65-9874-0a0086e72325@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 16:46:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcm6490-shift-otter: Enable RGB
 LED
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Luca Weiss <luca@lucaweiss.eu>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-5-5bb2f4a02cea@fairphone.com>
 <rnlkxpm6crulpvfleclkszio2fms7t3ulc3rpsdozteml2bak2@zvfuyc33ohez>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <rnlkxpm6crulpvfleclkszio2fms7t3ulc3rpsdozteml2bak2@zvfuyc33ohez>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: wtcuvx_WcDjBPktp5WB1RS8PYHhURffp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXwvlgUjVE8Hr3
 zkBkBjnLKYVFkRpRGWcXyxj8O7w0iztX3PdJwHMIHeukeD5+BBjTUGK6GHp5fr2aiavVY4PLZsG
 Y61cA/iGp3Ya1lbk5sCYVTEqGBANRiFYwddgD2M70Qxa49M26O0Xv9K257IEZzk3jV/AasBjhg2
 J146P9r8MupTE8gBd4hkwBnkJp6S7ZDMbpbJJc2nrrFNJGPNEYtF6hsSrYlhcD+hy1NRjAGLIZx
 ovbnQMc6qc6jB1MZH2anAYlYvolO0oFULfKenoY7EnyjOZ/dDXPiPc2A2qbvE4wgNk0qMMBt80N
 01GM4/WxZs2ZzS68ShDqbwj78N1pJTgoE33fjHYTP+ltKY5YP1ZtyjgOqsJlna2lkPO4BCR5y2w
 floiBgLiCCyWDDzglz1VQHh8i++iZw==
X-Proofpoint-GUID: wtcuvx_WcDjBPktp5WB1RS8PYHhURffp
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e7cadc cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=6H0WHjuAAAAA:8 a=h-s2VQCXUef8IyaNg1wA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=y4cfut4LVr_MrANMpYTh:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/9/25 4:42 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 09, 2025 at 11:06:35AM +0200, Luca Weiss wrote:
>> From: Luca Weiss <luca@lucaweiss.eu>
>>
>> Enable the RGB LED connected to the PM7350C (PM8350C).
>>
>> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---

(you sent an empty email, Dmitry)

Konrad

