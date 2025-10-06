Return-Path: <devicetree+bounces-223854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A3CBBE583
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 16:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C16794E3B46
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 14:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D602D5920;
	Mon,  6 Oct 2025 14:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KJ/49MC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5348D2D2489
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 14:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759760946; cv=none; b=NZknA7lBEy2+anhg0uikY/QVgb3ZaSJ8tgz8GI9/6uRU6SgL1thVi4iYohYjBIUNjbKz+DJRYtm0/SOXK5l21sxVXDYBr7BxoqpxItUp9PK+drGZSsYuesv1xe01DydEh9elqfTyQQ/dXPKXNG+ztdQD1coWDlql1D2r2VQ888Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759760946; c=relaxed/simple;
	bh=ROnstel0j2Gkqs0U4k0SMhUJQdmyRLNPAywgaOS5mrg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fPuW9FIS5leebfpAB9942fXRGWK0Oq9yVHU8P+m1HB6F1Eo96/SM93LYFz0lho7NeFj2gyEmo4wqWDxAqKJ0cf5x6gXjZrsZ5bSPAyCwKfbyz89yczDQQ0Y5/p/lvax6vH1+NfJSKjsA+d0+6AJjkufj16BXmfrEvNVBtZR/XwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KJ/49MC+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LXH8J014970
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 14:29:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CS1OJiTNhhN7sRrdPpBTKnj05Le98GVQEYo1gD8lWtM=; b=KJ/49MC+bMmbaPFo
	D9tZjzpl84oU03YCg2tDyioTmpz4JGeq0UkJlLyns7k+sUVjn3xye4uE7waYdtpX
	3OQXqUukJqcm2UxLsPQYnyI2ggD077+F14RPyLffqZxXoK9dATsUs/NTc5nfjohm
	KgjO3vwNHmH6ozjeoz/LxL3cTqGqd9uLo0OFZ7QGhByNy+wJT2CcS4s3FY34q0+N
	MQVnK4II3VoEPkmBksPSDzDDQjOijSlmpLrSmDDpj//Wg5Xp4AyKv+GN3c4mKncn
	2AYeT+Bshsani1N1WKrcAbWwBOdaQw+SmVRTIss82JQn2qAovSdANgUAvk5P8ye+
	nWQYoQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfk7xc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 14:29:04 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e6d173e2a2so3192631cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 07:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759760943; x=1760365743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CS1OJiTNhhN7sRrdPpBTKnj05Le98GVQEYo1gD8lWtM=;
        b=hVwWVZw0gL2Lf2w9fJcvcM0xgL4xDxDUPzQSC1Was8I+TH2Hojzd9x1BeROeP1aOVj
         KJolwK5P7MRs85Tj53KxDlQDV1DwD56Yb0BlFL+DZPQdwf8wQOPzQL977kLwlbgJgY8G
         lBmhHnmTS2+ZaQ6bGh79gv8iWO0PGQRlf/nHymcQ0UwMBt2nlzMOS4yvDGWX3/mGIqBC
         KVcDH9+gVljbwNQ0CXZZe/fQinGqvOWOu4WsvM9iKB6eXEsSnvJ4LZiNHo31Gy8kNzhF
         QPOMpZ4Mc6JXtE7LoJkKCNSWOHL3Sl9JOqydtmoMr0Ij3+CzoWUdlPB7HrALsilNDqXR
         G/Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVE+++xs4Kz+TOSrH5d4beX1pLCa6C1N1Rf+HBlItPHtQaaL8kR2ahSonC6DQBfSQWpxrVtA6dDH0gN@vger.kernel.org
X-Gm-Message-State: AOJu0YwqQRR/9UqHylQq8n7SL7g/cOO/QHBO52Vef47kCliqrVKIZ7nu
	GG7Xu6BFQFtFNb0HT8JREXWSKJVNVyQ6LXn6fV2qW3vk2dCt0wrQjpGST59MwxokuYYRRTPlpMv
	RD/dEg8LRLFiOO1Y/43YIki802nZlpVmOKhqr5Uqy3mnDZdtq+ZmXv/+nG+CyRqcD
X-Gm-Gg: ASbGncuOlTMcRS8/NYKAPRuKUf4i0l90roLV6EfgguO7Hz5v6TabyDUJPDM7QxM+IVu
	ohmvdOWUj3zK1q+nPtuDTdtC9FMCj80yTiJ2xDu07gv9UIP1N5CeFfQ7j2qnfHllkLYzlYpeMh9
	yaBtIxvXcrALnj1twnipllWI8Yq0g7LrYX7aBfQcNLiqIFubM/lVloTADM+BhCdJeqzSIlsspuq
	mbMsF7APnfZsBPRKccqTSwYHhFE7QleDTjlrT8KGm0Kasw7zynioN/t4GePQEfeBfaDI7F0sO6t
	hwU9alrzhJZOhWiYSDAzNNshJpg0TTsrYcSXUHxszgGwl6jjoAFD8yHCKM6RbOuzywtsoTuL0jI
	hwvEf2Qovgw3Bk8s1sXJbeKdgcAM=
X-Received: by 2002:a05:622a:20c:b0:4b7:94af:2998 with SMTP id d75a77b69052e-4e576a81e8emr108726031cf.6.1759760942909;
        Mon, 06 Oct 2025 07:29:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSKznZkC7MqIYL2Y3aS6tYYQs0BrzaPohLlUfJv0W+der5wzZ88gecyQbopr5mVqM+Gnlljg==
X-Received: by 2002:a05:622a:20c:b0:4b7:94af:2998 with SMTP id d75a77b69052e-4e576a81e8emr108725741cf.6.1759760942317;
        Mon, 06 Oct 2025 07:29:02 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b57f0asm1152277766b.77.2025.10.06.07.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 07:29:01 -0700 (PDT)
Message-ID: <8f81289d-7672-42e6-b841-6514607cdb38@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 16:28:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe
 failure
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-17-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPdi0+c_FqinVA0gzoyqG6FVFp0jq5WSLsWWKiT12VVs3Q@mail.gmail.com>
 <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CADhhZXaB310hVo_w8_CoJLQ3j9dy1eeTwbmk0q=vUV2ga1PAYA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AGicf5uwO1foTxpKybOssrlvW7YMLRoV
X-Proofpoint-ORIG-GUID: AGicf5uwO1foTxpKybOssrlvW7YMLRoV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfX2LmlYW/EQEo7
 E/zy4/lO1qxb7AzjcS/X+YnEnkE3sfeTGfH4t3fu05bp8KKHVNBdNt23COiB828GhesfuC05NG+
 Ivc0NG9ICjRkkxvm367rLFB4UK2c3y7ontdiJAV9VulwBc9YOY4e2RrPUsFVfM7N1VRRIjXVVgD
 0stykKGuxOXa7rgYnvgAza+6vM1eanQ1HkCD9B6fNjxChxq0G4/N825S20CdenpFMrVwHMcyn4z
 os+fsApwFHQwHlLhhb4yrneHGxhwJrtyTNdaCC5MSi+H21AIv06ktRMYLIxB0uxog16XmyaeRj0
 CgQKIf2pPdMdQkaKX/fV8sC49ccJkT+5K4UHKrHtNnQUAKpmwFH8vkzBFFvRkISHp9DhIxSuN9c
 GZqd8jNeKRiT4II5rXvvwaaoPBn9nQ==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e3d230 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=arJHdyfYHkrX3WdpB14A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135

On 10/1/25 2:23 PM, Kamal Wadhwa wrote:
> Hi Krzysztof,
> 
> On Thu, Sep 25, 2025 at 1:41 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
>> <pankaj.patil@oss.qualcomm.com> wrote:
>>>
>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>
>>> On Glymur boards, the RTC alarm interrupts are routed to SOCCP
>>> subsystems and are not available to APPS. This can cause the
>>> RTC probe failure as the RTC IRQ registration will fail in
>>> probe.
>>>
>>> Fix this issue by adding `no-alarm` property in the RTC DT
>>> node. This will skip the RTC alarm irq registration and
>>> the RTC probe will return success.
>>
>>
>> This is ridiculous. You just added glymur CRD and you claim now that
>> it's broken and you need to fix it. So just fix that commit!
> 
> I'm afraid, but this is an actual limitation we have for Glymur
> (compared to Kaanapali).
> The RTC is part of the pmk8850.dtsi that is common between Kaanapali and
> Glymur. On Glymur (unlike Kaanapali) the APPS processor does *not* have the RTC
> IRQ permission for the RTC peripheral.

This is interesting.. is that a physical limitation, or some sort of
a software security policy?

Konrad

