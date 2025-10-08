Return-Path: <devicetree+bounces-224511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A1CBC49C3
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D53119E16F9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE2FD2F7ACD;
	Wed,  8 Oct 2025 11:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UProDiaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452862F616F
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759924020; cv=none; b=ZiU6446r1cAfuTcDbUz7wJZrky8FI1kpEN5jZrbdGtI1EKVTMMnirgvH9o6i2jCjnIeMV0vtW4pE9LQN3v4+XdvO5uEq7k4SaNqkhDrEziYpEIDcMOHjIWkqonYoPI2heO3ez1kBYa9TFFxICkOeggK0ONrGj12qZc6IyL/ILzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759924020; c=relaxed/simple;
	bh=pOLsyu91bA7BFOduTPfXQwDrZ2/gTjYFrA2eBRm3r78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OeO6l8Tt60j6lzxtad7Pa3xpLTGKsajS+6f26F5rH30BQBtSfmQyfwpn+x3czTt3n766kEkLxNf7ZIS9ynVBcCrX7POT4+JXmazz+SKI1HEcoGeTzLHdkR6tEvg15M0UIzSBQWg3IIRfnxPUucnLXajoGnOqkXcKH8dG3Bq1Tsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UProDiaF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890ZZU029617
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:46:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zmZqI/hK2QIPAuDXDoC713x1X6hbDw/7hyjWJFFNTE0=; b=UProDiaFd3+bNfr/
	JAMFmeTOf8+SkbvblGKTR06dC1qYCi72cCccPdz1X84A0oBNXWSbJ8NXXh02KB72
	WfE0bPkXgRm49IMMYEmrxBpBP+nVx6z3K2iO45mzz7Wwx+HukjK2twkuu8CIxbxw
	WTBE+B2H7tc839FrzveOhRa4zPiTRyyUbGlBqud1+orHif/6xN8ni/W5G0lZm5KT
	iPJ3GfxERsvCOkLRpg+Sp9XfAasDi0khKs3qMt1RI5Ihf6Oz+xK089HZffFb3er6
	qVOeaokX/617+OZxzQQ4C/tq7XTxpDaE/NiX0t7D/T5oLvwppVw3wlEzzeVVFp/N
	/D25Wg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49js9e2f5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:46:58 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-819d2492a75so339870185a.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:46:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759924017; x=1760528817;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zmZqI/hK2QIPAuDXDoC713x1X6hbDw/7hyjWJFFNTE0=;
        b=hYxii5R8S/6hf+1k+LbMM/se5Yb97FrdVy7xQP7HZznYXYetr+tnjoCi2+i6maVo4l
         xiEGuzWCgjcYf48FuIBJbQ2NnDz51NEBHNgKk9A087nJ3ztTwABP6XBaKM77t6y7Y5bg
         jSpzOUAKHSVR917YTvWxI3QyPXe9M8RC8ZNmnlHZeDMkNWt7KnB0HQZpxWx5P7/Yjqrh
         Bp2l2IpCtYG7wDarFMQ4RY/SfQxbpHNTMiT5b6oAxg70TTttPlRb+0FqaK6UZCppAJge
         7PjJcJJbKvzvybye13DnIaYavYwuyF86Dxye/ZyI9ZHDL9WbiE+95nx/dU+SHZpkgMmo
         HiAA==
X-Forwarded-Encrypted: i=1; AJvYcCXaIjNgMElw5pekC2BEaNLwYSV5VuXAzC92hLeK4Q8lH5mOamLEi5MUxp+q6xZDePKbwI4Gw4oT74EE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc9mASLzhuzZyZMmGDq8URMTJfqvY9aodHOP3fyLrFnaJ6dDTq
	w5GkVZEsBE1mDYsKRQpFPYGgSZJvvFJCrGd8pBedG57iMHlDUYq4wgPZOREZ/9VcCcbzn3cREoA
	HQ2uhWd23hAMsEvbcecuAUUMKGSlULggZndYyv2Fs+KmUd+bLbi2DONE4afkTBLYE
X-Gm-Gg: ASbGncsEmgsR1nzL1GaZeXgb4SVDHjtIXwtd2fCpLfEtrBqrnVgJp/sxTfgYlEduMnQ
	6jJLTFqDK7kaliw75UuXT1GHRy9K9RaboiMEkHyqt7VLoWMphUTzFOF+b2OA+4lxg9b2KV0rO8b
	WC/S/RvRn7xmWtoataxXd1tXknRZsj299BOjRII9XMwOVWxyuMvhc/wzkR/eW0Qjj0CzcYxNgzv
	n63Y9Va9dBfGY8949cnxpMX7BXp32Og7r+VUWRBZfoOEDOqf2TdoTiFCKRNu43ivRTHvKU4mkna
	F/WplREovuGEdrdxY40oCPTm3AheF5+meAu8oCjGxGC/Od6GnD9+R1cTHXxOZyQj5zYUEagknO3
	LbOt4h3PVupt4D8GddCVTDy+Q+BU=
X-Received: by 2002:a05:622a:4c6:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4e6ead390dcmr28342041cf.12.1759924016851;
        Wed, 08 Oct 2025 04:46:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhzBijvONPiblMY5efLfCzWLUGbZqk/BjrQ0UR7ejEdPzLuUFe2mN6EtMi9WvZDTQu1j0KPg==
X-Received: by 2002:a05:622a:4c6:b0:4db:1bd:c21c with SMTP id d75a77b69052e-4e6ead390dcmr28341691cf.12.1759924016308;
        Wed, 08 Oct 2025 04:46:56 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865a83f5fsm1649154166b.32.2025.10.08.04.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:46:55 -0700 (PDT)
Message-ID: <fd49f3db-560d-4633-ab59-fa80f9baf698@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 13:46:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/17] soc: qcom: ubwc: Add config for Kaanapali
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse
 <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-1-73530b0700ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Hrl72kTS c=1 sm=1 tr=0 ts=68e64f32 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=WkYBtKvuumTgCfpkg3wA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: yuiYm9h5-aWBatqIYK8Z5R_W9kBw4hl6
X-Proofpoint-ORIG-GUID: yuiYm9h5-aWBatqIYK8Z5R_W9kBw4hl6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwNCBTYWx0ZWRfX+YkRyuIAfVf1
 ooB4Wtz60dB6lhrX+PYApe7943tcTS+nzbBGwYh0Jhlw4cIxiFLpcbR5LPYq6j2yEllboT7f5nU
 nTqTeVQmerFbZV98ypjqZvSTtyEwIZ6zioCZ4CMLlk8WMy0+11TCXJ+arHp8zSwqYQpJgQ7wHUy
 Wz9iApYJomIBMhfFjXiWZxshiTC9s9/CBYYQn0iayP37RH32sUQqvkWPtQNv0oxmMndE7WLJ57A
 O0jUHm8yn7q6El8CKq/SRX7RAsUvsCTT4MNsJGf+JH2S/4LsUYixesVoJW56S5Ajq/m8QOw8e/b
 Kn2iCQBxvyMrOORFb0jF9atwgGToRPEitWC/aZ4CTfzPvPMhY10pqhP4CshS1ggC4cBbFzp/nau
 jBEWA6dVJplTvxyRDX6IFMxuUSFB1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040004

On 9/30/25 7:48 AM, Akhil P Oommen wrote:
> Add the ubwc configuration for Kaanapali chipset. This chipset brings
> support for UBWC v6 version. The rest of the configurations remains
> as usual.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

