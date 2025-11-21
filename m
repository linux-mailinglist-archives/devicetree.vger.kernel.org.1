Return-Path: <devicetree+bounces-241015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EFEC78AC4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B8319365126
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489F133D6E4;
	Fri, 21 Nov 2025 11:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b3a4AKv2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TPeqxWdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A29D3451AE
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763723011; cv=none; b=le/otbAfgEoxUy+YC5mu85wXPHhuu89uYPtifqnoA1PrpE0RCxu+RhrnyM4jMR4C/tPIAeuPGHz3SAQbzGaaZIsIv2uhZaRaCfQHfLwJ4uFBnJP90PVve3dkXDpDSGKEp+/iILS2F4EM2GOa2KQTDjcSDBqk7LPFsLEYm4FURU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763723011; c=relaxed/simple;
	bh=0Wxlvaw9WFLZNvIYpHr/qB58/q4xsqqklo1RMia6WQc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S9QQUIcIN2DxlpJBrKiNQjUWj4mfigcbPp7ryv+ON+xEQ8frJt404XRus5+7OdnICk3OBUvP8s839sfLIfwPaP1oknBLkMa2kGfQNL8cwO1g0Ja2/uAJsjj9V48LGJyrBe+ukRXxkLtg/1pHQjYbMRkLjO71K2ww98Qa/fx9PDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b3a4AKv2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TPeqxWdX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL74RmL1638465
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AawzoGbQ3sxjSr7BFD6zRgn15GV1Py1XyCIh84Y7TtM=; b=b3a4AKv2EBZP+eQd
	nxcorQrsxzkylM2qpzoc0Ez9QMxSLec3rCb00h1qYVgBvL75+97/XLA27LptqPu/
	ZD4/W6KfKHcBcDCwXcICOoCwNazhK72c1ADKWB4TwxFvPNHxwwAZ5NrUYtxyPdDY
	jM3wh1uYARR/gSk7JG7UP3PGTn/0wvGTS+Y/2ISljOd7PdMh9uKO9GH/eAvDWf6b
	tcEJErNcdUg0qcekXSmxGXyzUkMawN9chWHgIlRP2wuplv4DKriFLeYdzr+UZv4Z
	oA3VDXR0/SZ9EQyT9iMquj+XLAxJPTg82AOcWaAZ1JOMzTIyzsc5pHsh7Q5D0gcC
	MxKZog==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajagatare-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:03:29 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3437f0760daso4590001a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763723009; x=1764327809; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AawzoGbQ3sxjSr7BFD6zRgn15GV1Py1XyCIh84Y7TtM=;
        b=TPeqxWdXbFAZ+2Aw1JyWEF2KYlpEDg3R3lvGLzDsJAbJLlvjOeLQGqyBmUPAamKopM
         6rRayQbm37W9bvj35LK9hpbSnXZHMG1dTYez28eiFSIVPHIY1hXfnKJ22vrK4dnkqzEi
         P5GR5EFbEGe0OnDMR9ts5K5qr8ad1OkVmbCAGvciRH0FItv4E8A/3bOjczie94auCe69
         zOQsY0ftZQnDOljsuOSuGvF8y+vrs/4q0Ibpf0wMSEK/sIVzogh2Em2vGo89a+bxEXv2
         uu3gfW17Zf6MtpqLxf2TxehTPS7l+G1AvhDse1swx9CQqVyQepnBcO2zxRfHu0krKoNq
         ZB6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763723009; x=1764327809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AawzoGbQ3sxjSr7BFD6zRgn15GV1Py1XyCIh84Y7TtM=;
        b=N8VwWkiqAUxBojbNKIKvsAtSgDH7NDFPmakJnigb33l9JsjzTfEb6Wy9p/z5S5XJkR
         Z8luaRvPG9w0268UYddese/E7CtATi7zorRk8HXL94FycnLOiKw9sAwvXqyjhaFV2CyQ
         B/CcZztaf82azZe5aQTLaTsGN8K7jMnzdjf0clsUHwoAEYLs0gK3K15H5cDLJ2Iq/IJ2
         nVP8WvawQUa7Tpd4LtO7uKc0HsgFyC4Ix0Ua3fTwTfekuPPwZ4jtkf/f5RAxgukYbg1y
         Box3eIJxKNjE9W+5llATkc0hXGs2nTF90typn2WAvTa+m4asHXdP6xKmOJ00YRC8vWrg
         TUdA==
X-Forwarded-Encrypted: i=1; AJvYcCXJbJj96WgI/0poqUYPjsTvXgcctQ4oFYYUFQRac9INY2BNfaBVUfDRO001BlfLzz0sOZgyTwBUPc3A@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjcf5ll93KU9VSqlEnN672igqFYwlz9kS5uQmx6o35N7KHw/Dc
	ZGkAX3PGIlMTpMNOo9J2erfiDST6k4Ektsz2nQAijDM2yYkMAzN0kQU9AQAi2UrsK1LZ3r1rDr+
	w1n7l05xFwqyYxuIGRQDtxAeRjJ0zhGDaI4Nr9LUAhw9ZmT9eG+4e3FeodR4Gpfl6
X-Gm-Gg: ASbGnctl204hEOcAq8wEHSr0L4bauVAeyvyxZKGony+zM/ZhJL0apHB/LnGsj0QQDIs
	kzmja7ReYiNZ04pLY3NFIYzSswyCI+rDU4HhyAfFpmD8DQXj18rFliwQfZ9stwZOn7XeAWiyy2n
	dqdO48lxeQw/mHQ9TsEgONANUse+vcE91kxEk01gJ8K0nz1j8DuTrheehCYRVFd4zKFgoGsSdZI
	BpyCGuFWiDwkLhj0KlTNAHFlbEWnBLJS53I4q2HpuIIjW7POJzzVUD6f+O7NkFFj3GvrQUltynF
	nOH6cLGM5hpKe8dhxEZ383jQcrCTnANG3f5cHMv+GXQ+/bImpSvHPYhvZFtnMIJoJmGsM3PBCd1
	QKf1w6f70uJpGajsefsW0tbi7zqcXZ//LXmfNf0LX/Q==
X-Received: by 2002:a17:902:e5c8:b0:295:8db9:3059 with SMTP id d9443c01a7336-29b6c6871c4mr24294925ad.38.1763723009092;
        Fri, 21 Nov 2025 03:03:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHFssmAAgNqx3cFqkWBPGTYyU1z4iaiIlYfUVAjKOZCMcB9qH2Wy5nM97YxkTiUjfRqEnDCkA==
X-Received: by 2002:a17:902:e5c8:b0:295:8db9:3059 with SMTP id d9443c01a7336-29b6c6871c4mr24294575ad.38.1763723008634;
        Fri, 21 Nov 2025 03:03:28 -0800 (PST)
Received: from [10.204.101.42] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b1075afsm53464635ad.4.2025.11.21.03.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 03:03:28 -0800 (PST)
Message-ID: <ccecc20e-0f5f-439b-861e-8313d76b0db6@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:33:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] media: iris: prepare support for video codecs on
 Qcom vpu4 platform
To: Bryan O'Donoghue <bod@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20251107-knp_video-v3-0-50c86cbb0eb8@oss.qualcomm.com>
 <3vbq76dpjnadfrnufojq4zqiv7p5p555rhxfx6yoncc354p3lk@ohcs3ldhuoao>
 <2d56fc4b-6e3c-4f83-aab1-c48db3b8bb2d@oss.qualcomm.com>
 <CAO9ioeXSXwm03e_j8TuXz2Sqr1J2n3uEFH6dJoKVyE+hJx+woQ@mail.gmail.com>
 <CqumdLRBMbxjJJOg6C6EeqguhrWjaK5WBB4UMhO2Fv6xoQk9TRSK-DINrfI91fM-Z6RL4XA9c41Wyf4e5gICnQ==@protonmail.internalid>
 <be157faa-b062-4726-83e2-ffdeaf792b50@oss.qualcomm.com>
 <e01513fb-8ed8-4d4b-9111-bbf8ac4cce89@kernel.org>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <e01513fb-8ed8-4d4b-9111-bbf8ac4cce89@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ce8FJbrl c=1 sm=1 tr=0 ts=69204701 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=2T7qbGGHlNX9R9Jok6gA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX40K0rGsVtvRQ
 g3cM9i9Q4Fih2tmS8/+HMFqtVKNao2eWsL6KOChXrcmXqDxE/k9u+8s5JbctATpQctSeleCkViw
 g6nPFOQY+XxkfRumT7VU+I7G89azzrHDbkUosAf4uE8bP7sB3+LdPnsE+HJJqBsWZYh8LvA0Gxs
 6BFQ0SEO+/w/350azHvTOCx065ohSZJYT4FWcl8x12+vn3ULmDpn9vr44Mti5jecOzMdrX/XLUY
 trA5QKA0wNu3C+Kj8MFylJCbPI+GlZpfjOCEGFVnf/U7jZvfu4phKaakKVdms1j81nM38wbzQgT
 dIvsFvSToQjKmde2m/gKwBXHqKPCWUJ7F2hdidO09gRo2Hhfa36W4Tk7TkFB3NYSqrzdbYI3UY9
 rJtBFRcje1+LH39ouVGcACmY35LNwQ==
X-Proofpoint-ORIG-GUID: pfkIOHAHzhDEIhDVnPcw3Mj1CBV_tZsV
X-Proofpoint-GUID: pfkIOHAHzhDEIhDVnPcw3Mj1CBV_tZsV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210084


On 11/20/2025 3:19 PM, Bryan O'Donoghue wrote:
> On 12/11/2025 05:09, Vikash Garodia wrote:
>>> One additional bonus is that fluster runs several process in parallel
>>> by default, catching issues caused by several decode threads running
>>> in parallel.
>>>
>> multi process issue is due to below [1] (tried it on lemans). Due to
>> higher concurrency, we can see that the DMA buffer is mapped into
>> un-addressable range (0-0x25800000) i.e 0x24b00000, and leading to
>> global fault. This was the reason i was keeping 2 memory-region in
>> kaanapali binding, to restrict certain ranges of IOVA.
> 
> If that is currently true then we should restrict concurrent sessions 
> entirely unless/until it can be safely supported.
> 

I would prefer to fix it than disable the feature. I would raising a fix 
for it.

Also, to keep it clear, this is nothing to do with this patch series. 
The issue about non usable IOVA range has been there for qcom vpu, it 
not newly introduced in iris driver. It was not exposed in venus and it 
is seen now in iris with concurrency when IOVA falls into that non 
addressable range.

Regards,
Vikash

