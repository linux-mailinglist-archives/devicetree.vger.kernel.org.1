Return-Path: <devicetree+bounces-231913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA2DC12EC0
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 923C01AA42D0
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 05:17:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CDB827144A;
	Tue, 28 Oct 2025 05:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bHBDugC6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D245717A2E0
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761628607; cv=none; b=MD+PhWZGwWibZkPYnxlipBN1WlUdUjtPM2PkNi2ulUjJySs5mi+ymRf0Ea57c02LFdAWjfpU1xPMRFniORPFTu5pPPA33juU7y48H5G45KEXw58w0C4Frel2Lhf+mbxD/axx3CAXf/B6pdFG5JcmYhRdEKGoNwnwO2UlRWPtYnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761628607; c=relaxed/simple;
	bh=jNGXRyeMTH3uROj4bKwqvmjkEoQJLAOhWk9meGeHXBk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fyk4a+vJYKmbKj56PCSboSQzN7o7t/hiIluijBvDZJ2v7eiRv2evqjCI9b9XnBYc7ghFeGSMvARKjzQ6QUHDjn2jjSGOl6HeYGrZp+9YP1Dfx5FP/TL24853lnBXY86cbjVIPZDx7n009YzWPBaSVQRLqJT21850iQ7enotXF2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bHBDugC6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RNSZia2881887
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:16:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XUAeRsK1Hv6t+HbR9mvGhvvq8azAUXrlOwY/BXZoNu4=; b=bHBDugC6Rva9VlmR
	xzli3lJpPCJSQDGTeqKtQnGhT5tEvR/cj0JfRqkyYNHIBM00oAQSCb6FuoKwdcgs
	wXU9kkoTrMVLFPWqOTpRpX7N+Brl5gMlC2zX4POaZblmKN1Dc2bhJvg+eIu2wF80
	G9XAquv8hUo7Dzlkn0aVJgYQ9/sGpscQqhn62U2WqLsd05Kjne7YUqSmBv1Mow09
	M3cCkCncwHViHqSs6aBhlxu+XbXUHCDPqAhoykIAE8LJPx5pa0akk/szC/uIk8XD
	7uNzHc73AY0Ks6kYSb8jo66++na15q5E9JUPBjUgkqRRgoGdkrv3nq8eoL8vAipy
	rTLm9A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29uhagab-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 05:16:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-26970768df5so14970905ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:16:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761628604; x=1762233404;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XUAeRsK1Hv6t+HbR9mvGhvvq8azAUXrlOwY/BXZoNu4=;
        b=xHA9DGx6kzgm2Nbk01o93ggLdC7m4nS/7ymT1OMFaqH27CXTrV3zPXiK3hMP433Yol
         u8M7hVhTEbyQMcSAm1a9HH9sftcymTmEesmLRyb2z9nC1OdBynQZ9JN+A1tINwvKVGpR
         8AZmAbm0oL06S8D9LZf5MoFD2Lx+13rC1E13aeNToxG0fea369kGjsGld7l3zhn9LEvZ
         ELIbjguyoTxMCTY+Hs86f6gOtZMaqFXw6ipLLdHFSqEh1gALwKnYLJWNUUGg9cvHqots
         kuQ1Y4W08GotAvA5q/GfGYANfzvG7Wf+oRnzeGwzaS9Rb17GolSJBdUH6z9lucK2gzD0
         T9jA==
X-Forwarded-Encrypted: i=1; AJvYcCX8TzsFEcwOiYfaVMxR7TUCW8kAH6sFgHskNH8Kif+LPGaftahZ4TWGpFETt0mY2rKMQSwX+tBn+qeA@vger.kernel.org
X-Gm-Message-State: AOJu0YxzfeRgRDSp46Lt+Ybq3TgHqFM6FFEhR6blor6JQzWpdoxzJUcO
	rIia7F8ig5AkqWOaUA7UG21s/ZV1GG9yDK0U/cGHaxWtfJ8p8eJFfCE1vFtnMxFP71l6S0RC7OY
	MPjKBK5UEOgQ405oUNrJeSHTgBQIW/Hxab6IfmjOrYmyh1lOb3f3frhgq6Jdy8V8Q
X-Gm-Gg: ASbGncsw6Wc3neIvgatWRK6IpvZTw2ajViV4DoVwma82p9GqhR6O5rVBxbhSaVhVVb4
	XU5QNfVnwjrqno/NSJ7byTgyy1zGatiFcQ6VZBLmRXk1RGLMd1jEzNYdD6qcVnYXd50onwdWG5/
	rDR1HvPnCvwiSLV4Ni9tKtuk9L8IMw/VkLVTQgbD3HO3B41qMa3FZb7kHxz0tp/IInSOixr2P5M
	UvAUE0FOsvm57FyNP4x4VpIUpJiYdIFhmGcipWwQ/sZ5la3CL76bbIWMZU1HW7u8Tzly8UGFXDv
	hgVHMR64n2WwKVfvPQOFg3EwGAA61xG397RtaVkr691SK+pUYpr7tTJSpWi4RNxM2jRt1AoPGWq
	kSW/BtXs6K1hUaqwZpGAj8HtcO3JUNEE/k40bLrCbJ3YBqvzVMbkMb0Q6UA==
X-Received: by 2002:a17:903:15c7:b0:272:2bf1:6a1f with SMTP id d9443c01a7336-294cb38dad8mr15162285ad.4.1761628604374;
        Mon, 27 Oct 2025 22:16:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGCtI/e0xCUDzsunj5pLCq95XvGzaYTPPAgqnYqvKPP49ZjdTjLzgLXq4j89VNN8OjcYuAPA==
X-Received: by 2002:a17:903:15c7:b0:272:2bf1:6a1f with SMTP id d9443c01a7336-294cb38dad8mr15161945ad.4.1761628603887;
        Mon, 27 Oct 2025 22:16:43 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498e429d9sm100614015ad.100.2025.10.27.22.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 22:16:43 -0700 (PDT)
Message-ID: <f34c6aaa-f3c6-4171-89e4-9f44da9a6a94@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 13:16:36 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] dt-bindings: display: msm: Add SM6150 DisplayPort
 controller
To: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
References: <20251024-add-displayport-support-to-qcs615-devicetree-v6-0-c4316975dd0e@oss.qualcomm.com>
 <20251024-add-displayport-support-to-qcs615-devicetree-v6-1-c4316975dd0e@oss.qualcomm.com>
 <m6j3sdc4jb2jonzbpez7g3xb6cfputdz34wtydfrx736nqvrv6@o5ntg7csl7dr>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <m6j3sdc4jb2jonzbpez7g3xb6cfputdz34wtydfrx736nqvrv6@o5ntg7csl7dr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 7I6STmp603OF8b_pdEHNrVt4PEB0vg68
X-Proofpoint-GUID: 7I6STmp603OF8b_pdEHNrVt4PEB0vg68
X-Authority-Analysis: v=2.4 cv=QuFTHFyd c=1 sm=1 tr=0 ts=690051bd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qjA4-Y8jdfHfWDHiyvAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA0NCBTYWx0ZWRfXzBcF36sKpMWm
 36ej/M8vHr/ETSIPWQoBNzqBuf6rGhlW9R7P1oXbitoTnyHF8RiR38fm1jDp+whEp4RsGK5QxDS
 LG9BXwt6R98NTOuRrEilNy6XyS148zZlXHLMm1xp3d4djSFBs6R4XyWLA7T4xlw8A2Pmn7iaoZ7
 vBRLfn/BurNmR/0G885R/yAJjJEK4lw8ESFnRy8Gv10nU5SFQRkIac/OGlKdF1z5FS++/8FK64P
 AdEMjiOsiU0+Jtgk/iPzIYnmRTaerGR3KpoHuMqKw48XZCQyDyGs27YINHR6YCubq7JKaciJSCL
 NIz4mJEMbitUJ8Btzk0PcwHqFFz7OJeGzDTMpxvSUxzLxmyB95oTvqA1D3izsdBptPpA+Ii/Kzn
 9OsKZ5KRDuZ0liNifQNUyd/YFk/qYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280044


On 10/28/2025 2:54 AM, Bjorn Andersson wrote:
> On Fri, Oct 24, 2025 at 01:21:01PM +0800, Xiangxu Yin via B4 Relay wrote:
>> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>>
>> SM6150 uses the same DisplayPort controller as SM8150, which is already
>> compatible with SM8350. Add the SM6150-specific compatible string and
>> update the binding example accordingly.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml      | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> index 9ac24f99d3ada1c197c9654dc9babebccae972ed..ba0dea2edea98cee0826cf38b3f33361666e004a 100644
>> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
>> @@ -51,6 +51,16 @@ patternProperties:
>>        compatible:
>>          const: qcom,sm6150-dpu
>>  
>> +  "^displayport-controller@[0-9a-f]+$":
>> +    type: object
>> +    additionalProperties: true
>> +    properties:
>> +      compatible:
>> +        items:
>> +          - const: qcom,sm6150-dp
>> +          - const: qcom,sm8150-dp
> Perhaps I'm missing something, but if sm6150-dp is the same controller
> as sm8150-dp, which is the same controller as sm8350-dp...doesn't that
> imply that sm6150-dp is the same as sm8350-dp and we could not mention
> the sm8150-dp here?
>
> Regards,
> Bjorn


I have discussed this with Dmitry in message-id 
<20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
SM6150 uses the same controller IP as SM8150 and should fall back to sm8350 for
consistency.

And when running CHECK_DTBS, I encountered DTS compatible warnings, which is
why all three compatibles are listed.


>> +          - const: qcom,sm8350-dp
>> +
>>    "^dsi@[0-9a-f]+$":
>>      type: object
>>      additionalProperties: true
>>
>> -- 
>> 2.34.1
>>
>>

