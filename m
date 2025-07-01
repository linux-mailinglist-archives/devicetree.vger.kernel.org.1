Return-Path: <devicetree+bounces-191385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14910AEF18D
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57052444927
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 08:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F6526B740;
	Tue,  1 Jul 2025 08:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XKECikuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9E926058B
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 08:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751359339; cv=none; b=J6P4C35w3er28dZNN5irJcTmrqH7zjiQP3Jzc9TsJf8QMj+9BPFLhS+sI1NamzP6jq3+bGrDkuesCxT/Dcb8+0nXoyYNuNBc5ji6QGcqDCFB2kQFaKLjyBB52An9MJdA+3NPm+u6iWJUq9QD1deQQHTiD7K09gTT+Jm20I3cxfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751359339; c=relaxed/simple;
	bh=RVVKzcxnlx7nOWu7Gu0pvyl7lRMUct8fsNs9VBvYeW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Do6tBlhlW8DD3te4sL4F790LFHugSvHT6osIjJdImufIhecQeInARQJIdQdFaxFS12+3G+sWVakMuL1Jpqp/prUCQedRizUMXXUXdcWzWmHLWhwo1UPKiT4fFW9++ua70ObKvFmyUXgylQVnPq3ShcSrDjivYBJnF+3p99DM7Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XKECikuy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5613F9O3002189
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 08:42:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tutfviu70uAl7UTDUY4zJ/1EBwlos06c3KUfZrmg1A4=; b=XKECikuyYRU+pWA3
	Jl1M1QpC33RbExyX9FmCh7NBXBaJpQRHu6Ua+DwurZkIHZvzI0v0D6Ezp9/Y5yCz
	isJ4Wfu0clSXCwmihsCs2xvVNS3m1K2tWRLgNqQ0DY/BDZP+i+m2918pDQCBbR2y
	2rP9DaZzRJWuGZREs+Agl1o8fRPpcqQoYJQvzTaaUJs6gwxcOnii8Fq4zHH0eP8E
	9ZgGbjVFl+5evPyuxtQgcVJYpHdxu41tUvyfptDkgPhxdjgzkXRalmBH/fOZIsWg
	RA5/OGfhuIcbW0UH+HisdlrSzwBcslPJm40BFPXwGN0hvW9RsqAaS74Vy78/2tjt
	TpsBpw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j9pcqsdr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 08:42:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a6f5995650so3371861cf.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 01:42:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751359335; x=1751964135;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tutfviu70uAl7UTDUY4zJ/1EBwlos06c3KUfZrmg1A4=;
        b=AgB9NKKqX4mYzL3i5GVuZLX3l4mq9144TKuUxkH4EZ/cqIR4Ld7bOh0AWgy1cdBkUh
         uQuZJK99iQGT4hMAmvGa6Vknp4koEjdQSWy5kpWHh9/zeUyQUt/n0RH15l2rmhAqlN4q
         wE6YqO+6FQVii8Z4FI5zMME7wQP2MHhbOmNsJRAUiI8hdJ7Abo912j192MViXj1oCwuT
         /JwHHj8UuqnjIH3vxIlk3fsNnA7/TqzKiJ8y64r65zpkOx1VObK1mpyml1Y92NoEOP0f
         lyFJ3F+bzOhe2cUETu/5ZKQuOadkftCuIgnj1Z0PJ6/L8dtLnyG0YpaBwcUQzGho/LE/
         Z/Qw==
X-Forwarded-Encrypted: i=1; AJvYcCVlqsBJaSo6bYwXTuIB0eIyFu1S1J7K/NKwEh9oHLHGqxS0aKARXGuj+0tEBraOkYslehya6uFYye0A@vger.kernel.org
X-Gm-Message-State: AOJu0YyNdK6k+1vXZgbzWzwVFJRTUV4J742k3A8XC+7ihEVpTlDBedAk
	7XEs07KL5vojLRQSczGaski/vEMLKaj0W/swl/iBfLUZJtO9dCNNa4lvA06WsnmhqvrphzgMXJ5
	8VeHGOuxeIwPcV8a+yjuQvq3AGORupuqDex5kq8Lx5OtVf/f14m/UnzvSSrxhCMOP
X-Gm-Gg: ASbGncu/DOntMchPYit4lcc2zWrYep5j4AgnNwliXALVOYUAxv/vMD9utApbRGExgDE
	7ITqiXhaCnrXhTUqeo0B0Un2xtTZCNhUTxLXXfIWMHaZTPITJGAjpkxL+honJsZyu/URFQca8Bc
	SR1iy4+bx7fY3VwGBcZJpKJo3so80dYfQ1lW6vtrvE7OdvwjDwNr63hzNeZuyd3UxvU146gqPEp
	jzL46QpYAt0Q/eHY8A53Ay2lJmfvG+/jZswg2e++/wIddGgWaYHPfNbMtHSNpG9qj0SYqt3vOu6
	G2LPIALjH2m1c5GH/DwrJc4ECwC4TdQqbXg2E4EJ6ODW7CrvgWfytbKywm0a06x4oGV4a4d5nJi
	k3PZqLfBa
X-Received: by 2002:ac8:7f0a:0:b0:4a7:79e1:cd54 with SMTP id d75a77b69052e-4a82fb4a7ccmr13336291cf.6.1751359335203;
        Tue, 01 Jul 2025 01:42:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIiylmVmPpd7FS2xOPQGYFcHkmg9ybF8Pa29w5MBFMzjhMUeUBetWA8IVnYLdjBQ6zWunoAQ==
X-Received: by 2002:ac8:7f0a:0:b0:4a7:79e1:cd54 with SMTP id d75a77b69052e-4a82fb4a7ccmr13336081cf.6.1751359334787;
        Tue, 01 Jul 2025 01:42:14 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae362cbf19asm736054966b.128.2025.07.01.01.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 01:42:14 -0700 (PDT)
Message-ID: <59f46b2c-5966-4ec2-89d9-305ca52f5111@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 10:42:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <6c5d9ff2-fa59-4151-99fe-3bddae46b507@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6c5d9ff2-fa59-4151-99fe-3bddae46b507@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0asWLIJngvS60hd3A3fCEUhF7UVTObJU
X-Proofpoint-ORIG-GUID: 0asWLIJngvS60hd3A3fCEUhF7UVTObJU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA1MCBTYWx0ZWRfXxiCTDgsm7XXR
 U7DwNeIla2u/sjHKbpH8ROl1Lwa38aPU9p0eiqozRLM41D4fzz/XuyCEkMXIna8/TdiSRl369t/
 3hBl/9Zp4Wn0plUBzHymh4LE0Vcv1BD5CS8UvYDh0XCLhvm+V8ONv9RIQpMMErspBlr82Tv4Oyb
 sXwvJEAtKCzHzJmgbjZ2+1SE+L1W14BMo1lW0rnzRDgKfzHD/QQ8LDDWQElZslCQ+p4uhBxPmSV
 FNH3yThNfkQzT0VAUX07TwOC49FRUv5KRgNoqiN1y7LNQWNnZPNbE4TH0N2tLeSeEQlz3Jo22Zh
 nQJcMvOzSGGnwCVy3uSdrip25vdHIqdpU+3/nYLkEcB756I06gYpN0BLPN02LkZhUNHGktuvY1S
 SeKLsBiryiSdBaTQG0gJzyRzroWhB4Fc93GGCDiYkhgSL/U+B/ulH7adcUr5RKtGHbR9kFXq
X-Authority-Analysis: v=2.4 cv=QMFoRhLL c=1 sm=1 tr=0 ts=68639f68 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=qC_FGOx9AAAA:8 a=KKAkSRfTAAAA:8
 a=FHDPKuC8_rlVOAf1JN8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=fsdK_YakeE02zTmptMdW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=718 mlxscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010050



On 30-Jun-25 20:04, neil.armstrong@linaro.org wrote:
> On 27/06/2025 17:48, Vikash Garodia wrote:
>> This series introduces a sub node "non-pixel" within iris video node.
>> Video driver registers this sub node as a platform device and configure
>> it for DMA operations. All non pixel buffers, i.e bitstream, HFI queues
>> and internal buffers related to bitstream processing, would be managed
>> by this non_pixel device.

[...]

> I tried the patchset on SM8550 QRD and SM8650 QRD/HDK and the system just reboots
> a few millisecond after probing iris, no error messages nor reboot to sahara mode.
> 
> The DT changeset for reference:
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/e1b3628469c038559a60d310386f006f353e3d59

I think that's because of the majorly suboptimal 'define disallowed
ranges' approach with the iommu-addresses bindings.. 8550 (and most
64-bit QC SoCs) also have DRAM mapped above 32bits, meaning you'd have
to add a whole lot of boilerplate to disallow these ranges as well

Konrad

