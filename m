Return-Path: <devicetree+bounces-222971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43868BAFE7E
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 11:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC7A419416F8
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 09:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD8532D9796;
	Wed,  1 Oct 2025 09:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cr1g3ir5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F3C22EE5
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 09:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759311831; cv=none; b=a2o34B6ZB2xeKDUygro0YsEWvvEZf9lrSmv2qdHzUjKlHXOg8JZZUWaxYjxDCgJKdAf2xZD+u0vY6Tjp2CU6O5aOhOS9XFXuo7Sn4wwo9Jumg0bGu0UVonwOK5dIjPvCaMNcy01ANIgMd5Y4Lrlt9rOjRk15CRd9+SgSVBpbiXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759311831; c=relaxed/simple;
	bh=tHn3o3WJq/LqaWYy+jXpfPTAUaaZDDHkkIq1jK99V5M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lMX3WNi0ViXHR9emK9xnyTjrjguu4JG4A8JjIIXFpH4Jlh+LGTUXN1cMlMBAyHmn29cbzGfnimDr9quqYXVUbP2jzSaeEneN7z1S6qHEzfeMll8HxlS2vtAL6hgSMSNkxRI0TK9N6TPnPOyCiGLucQ8Vsjzu1pUAfTyEZXkXen4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cr1g3ir5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5918wHa5020364
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 09:43:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N2j4IW5NnafXAEbG+pjQfoEONtDY8QkYi5eJLubVjC0=; b=cr1g3ir5UkiwEBvm
	MF19xEjjZNFLpWiia40lSVhQJTEc/LnUBzjVmNmES0Org2hH21Pcot5oQIn6Z9mQ
	RuNTu13ANd3FIpC2NErDG1DK+9d9ibnw7f0Bl8ZWKLUSk283Iz/GNwl29XmC/Xd3
	wPBG5gr7LbO9RTs/8SsFC2oDoH/nCu/Z6X2JgH3LVnAiHe195pbrv7VG34rC1Q3s
	iY53lsuoBS7eNdx8HgMUZOlAXd3NoIYOi1+vQSdAX0YORyd3RaluYOTBye6Z1hCh
	QDcFDYCttVQERidFCO/7vyP/rwp9yghkSyLmxDUs/mgBy0iWRsn46dwQYc8TxzZr
	xX+HPQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5v6m2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 09:43:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8703ba5a635so50071785a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 02:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759311828; x=1759916628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N2j4IW5NnafXAEbG+pjQfoEONtDY8QkYi5eJLubVjC0=;
        b=SS/CuF6ocUh76Meo8jKIbREOsDo4+bF2uy8hDSJthKlkvYCYKUUB8nthVypRhH5PVF
         79CjJUr2SrIMmrBxSIwPffDMfVY/43Ia6qqahoPpeyNqQMbUGMix8zrDFN/ndHzdWlQs
         qh7uMFSb2+HV31DfTh/CdEZ+MHqIrr803DBzeRj1x3UQ/Fi37lOGaGkseDSVfjg+fjYZ
         YYxR0fnPZVhiRDHfYDWkGQ1I16M1wEsilWzLJatk9NyVYTmfh+GonBB8tHChdX0wVrK9
         OxXZnqItctdY5a6r6gO5CE84i2e+y0rt7l8UdYJcItHnvpoerHMqYA9uD/AD9yYzYtv+
         7HjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOzJFdul9RmVbODYH5ljsHpGMLO0RPRnoz20Z4Y8bxp4wUnRyvT+Xq2uPcH3wp9/D8RpQRdDkQVJy1@vger.kernel.org
X-Gm-Message-State: AOJu0YzJbdD0FSL5JG/SCYLzkJtZVBKlUB0IbonRcc0qSb0iJoDH9bx1
	c3Oo/tBadbW/+9Q8HY8OwVX9sZX2ac0F6ynpcRsW+nWG3d76YXIZhe0wT2dHNDnq8uEEaqGDWZe
	HvCy6cS6AY1sQkglameESwN2A8bGFudTZC2ikHcIqQcLsCuWx40B2XKEDakVoIuHv
X-Gm-Gg: ASbGnctZ/02oW+9IQqVhITEqUetgZ9nK9KlqcDD2h1ViZGp5s8VgsJH23HoRP8GMEsv
	wTsj5ZhaeHSBmY9HVwHJxeSpkdiKwxBZ9aLhdr1I4nccduDDzg7EPS0TZmmvRC5HII/BiNN2AwE
	3M2RoPEPEqzhRrv8zwYpl+KGvMyi2idG4LHZ5u/m5PcEAwYwaanwcHLOhNJWSCW1HafefM/PnTc
	9IJbMR79GJ1QMxSYLqWLxk8D2Uvg8TekbyZ9vHULxwpjD3lC97iJEDBB4YJPwEfOs8EjLzeL+60
	GtReLn5SeTbQqtYvki5DRcUDoFQq5Z06F/BUYOe1xPHhMAS0JAJf12VkBznNY9bpk4gHViyS6pv
	sGkjHQdBgZa5bGPqazKMLporXWUo=
X-Received: by 2002:a05:620a:17aa:b0:856:40d2:b1a5 with SMTP id af79cd13be357-873765c02d2mr274220385a.13.1759311828453;
        Wed, 01 Oct 2025 02:43:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQhu+9IequlFgOauptmEqJZoeziWIrkfkjGafmFpxFA4oL+2QREZWtpjKdLAbnfpl7vBk6qQ==
X-Received: by 2002:a05:620a:17aa:b0:856:40d2:b1a5 with SMTP id af79cd13be357-873765c02d2mr274218385a.13.1759311827918;
        Wed, 01 Oct 2025 02:43:47 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3e60de51c5sm648473466b.15.2025.10.01.02.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 02:43:47 -0700 (PDT)
Message-ID: <869d1f94-9d66-4045-abdb-6e88d504a884@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 11:43:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: lemans-ride: Enable dispcc1
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicnic.com, quic_amitsi@quicnic.com
References: <20250926085956.2346179-1-quic_mkuntuma@quicinc.com>
 <20250926085956.2346179-4-quic_mkuntuma@quicinc.com>
 <v4b35cmwbkoosdgs3d6ftml4yvdkyh27q65ssqojplb7uyniwp@wuxbeof7cikr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <v4b35cmwbkoosdgs3d6ftml4yvdkyh27q65ssqojplb7uyniwp@wuxbeof7cikr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7uFTQ7hvhH9y1XsyhKT4Z6U8kXaUItK0
X-Proofpoint-ORIG-GUID: 7uFTQ7hvhH9y1XsyhKT4Z6U8kXaUItK0
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dcf7d5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=ANimo7j06tBtS7Sznz4A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfXx512VYk6zIGp
 7Ylla6amBQIuNKu5QWBbVjnUBTRlkY11OyP6cnnMYNX3ZQzEs98yZd5jEi6jpeOURWkUYWabfID
 OpaC7LKn6t6zsdyoCP5FyWo8YU3NrKLvV9JOpO7aRrgw1c/fPHmP8btPwSXWhjV1090ulgmyKQe
 frAQDzqhAizbDtBjgCZPBCA3yNM16tVH3M/FqDDubxLet6RDkznyDnY9nlN6CAiE1879A6xeG1P
 LdaCA3wiU0sRS4a2a+tIdjOPRgPVEjVJS4jilpH3PJyPUDu1OC7Bj7eAzAETJn4/VfW0ByXnajB
 pQwskMssRCLhRhtBPa/7xPMQRRYbFG0Lgjob0aEUOMDn92MW7PfNg+5HhWniliWxvXjMak71KUG
 poVktRP55Kxf40Gk1gHlrSwDKIrj3Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On 9/26/25 3:53 PM, Dmitry Baryshkov wrote:
> On Fri, Sep 26, 2025 at 02:29:55PM +0530, Mani Chandana Ballary Kuntumalla wrote:
>> This change enables display1 clock controller.
>>
>> Signed-off-by: Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
>> index c69aa2f41ce2..d4436bc473ba 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi
>> @@ -436,6 +436,10 @@ vreg_l8e: ldo8 {
>>  	};
>>  };
>>  
>> +&dispcc1 {
>> +	status = "okay";
> 
> I think this one should be enabled by default. Unless Konrad or Bjorn
> disagrees, please fix lemans.dtsi.

Of course there is no reason for clock controllers to be disabled

Konrad

