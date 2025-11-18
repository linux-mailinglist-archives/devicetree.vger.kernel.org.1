Return-Path: <devicetree+bounces-239794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 586C2C69534
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id A6B412B9B9
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4919355023;
	Tue, 18 Nov 2025 12:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dy3q72Rk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="koQnHpp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D62F3358D1
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763468168; cv=none; b=niOrPHle8XnAVtOCISC6HDdi0PN4aquNizYD1s6NE1UQzo8g+zUe7kQnRihLXLV0V6DSooX14d2pcCARp0+L1mMhr/szjt8Cor8IDwHGt4HorBFNsx0KLjUmD8ciRM/VBdtXGftsLrIsjHNG3nNi3rzZSa6M7Q5j+8pE/Nl88zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763468168; c=relaxed/simple;
	bh=kP+Urr/WIu+EN8H5qQbftSeZQbMZW45LUypXJK0yNdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XDwAxaPz9WY5BD065LF67miMyniehnQO8M7OFZ1QBuh69UOpvbQslO0uMzU2uv37Cb2cW3EmF/7uRDj/vJq2hT5wH3eQ+8mPNhDDTspY0T312RL85jXOZoVy8MERGS/uO8qQhyAxMA+h3T2gF+vwMV1VC6bDb0ZFG2fWGItZ4iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dy3q72Rk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=koQnHpp5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8VR8s2249923
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:16:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	54AlXktT9apxczmnoBTDmz8mEG7d5mGc9KLiJxsdO+g=; b=dy3q72Rk9f3oYRbr
	zNi3J61/WYUKzpHetZyKDQTWBG/fHB3Kzqpo48ZXTHNbpKaIu6XDg4hESvAZJz9h
	/xjRFqzI6CpzTkcGgf6UT0sg96emUiP2Z0IqQw3UdFtXigz1Nk71p0Ioz62Xa0+l
	Fdj4R9ckr/GmEf9lxI+jmsE0J3Si7+ZwsJc+YxykQWdsvpXQRmGbUjeurgEb2euS
	+wzmI/o9bIHmluzJoGs4LUpSn60fZHIFJe5Y39nghMenEsdVwgAczC5BZYVgWiLy
	Hw3d5YOFnAt2kijNAlyb6JNRXb7z43TuYvTBc9fXO26eKIc04S84sKoYvtNdL7VV
	+IyjVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnc5gmur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:16:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so12680661cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763468163; x=1764072963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=54AlXktT9apxczmnoBTDmz8mEG7d5mGc9KLiJxsdO+g=;
        b=koQnHpp5j8KxGsAmjfAgrTNIkLujvgSeVD1DXN1pAFCUiL1qklfR7QgxpaKWsHiDps
         Vpl3/7tdxhTHWbUIVjugAyrA2Cm9/Eoi9XHCPoMRpsvoI1SmKdHWTaQjv2TsppbA1bKc
         uHydi5uHsjedyzNdmQig8rmU/2IHOZMaAx0RxgTckew6oFLtf3zjJTJ3LxmEpyw1vGLU
         iXHWeaxI34e6ZaLaBRTWBa/VZBjKsqIxv/tF0qWCNrHqq5UKE1HRgbWSLVo3N0EGOo9Q
         GNwRM0NBe5Cfk7+16l2gVwHoIWdXGTTiHvmQooBez3oQ8oLTIU9qiCezRquwEkMYPVmr
         6TEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763468163; x=1764072963;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=54AlXktT9apxczmnoBTDmz8mEG7d5mGc9KLiJxsdO+g=;
        b=ruCdSjUuYv+l/P3D/yECfP6fdi3osk6dP6UIojRhVSguLk6av37vBU4lrSiZF78Efh
         rrt6D5utCZyjge9mmB7Y2j4oIwqzlyBzgl/N22sYtFNB0aOtU9jw5HwRz19R47v9uTH6
         MwYHOCXfym9RXDvQolcq/NTkXqC6/TZj331psdzEQOCFarzcDF9rMTLi7ytkq3ky9Y2t
         jE1h2AR03In5a5RgEwOi8y/XfR9mt0NqW2V+F+ibMYlAKXfdDwAnZTDX33wFW1b6arfq
         d1dV5X+I8nv17eGSrOrPcoBYfD8PL4Q2S5YJCBkyZBBC/cnaTn6eU+mFM8cfYwmVNnZ0
         LF3A==
X-Forwarded-Encrypted: i=1; AJvYcCU42OL3NCCto++xdPQ4wwTjxINxXU6mLB/1WbSs2/TQLY0HZglRHdyfp3MSsnnWEN/YXVtByFZPSWRO@vger.kernel.org
X-Gm-Message-State: AOJu0YzQwIgozpvFq3Q2z/xFk0TIXWhOojB8BwA5w8q3p7/kt9aiUjze
	4QEx54iNgrX2WamX5lNcrUP+vrmRe4NTPOjA/vB9dkxULy8PO4MLt346YNC/XSNTg0vOlZo59dQ
	ml/L2BGC1BpmpKdvQ2x9VUREaJPnGa9l14RKMLu4j5ktZNR3w1u3kPXu0McYM8gez
X-Gm-Gg: ASbGncsnACZYfJAAKCqB0Xx24hZ904HJs4yydRDKanJkrPIttV3r757L9mz9VQhyEIA
	lK6VygYfj06y0vcnhT+DOlFuVRqTynbt4qY2bP7OVVeA/qccuLEYlqDEdZ0y2qo0PSe4FkIyccI
	mNiMJU8t7zcMGxMTAOu1OFbwRBS+GFn3UZSP0YlIAmvGKaIAhviBLhmNO30zWJeUWjkUz9aR0+G
	uX7d+diTL0rjK0aQMK24+4xDYhdb1f8cpbgfHZQyYX9mw7uFo8dyu8W6fFCntmuJKd7INZCHvJs
	8NM+SQOQJdhm0EmufKmuSx9aMlQsi7e4aUsHpzvighuLP7/+M8nePzZ+OYz2GdGWmor+4ycksdI
	yhBxj+cloPe8e34RTghOMGdK49tQJXbQlpy6Ntn58YKKiTbxkg3vGf15io1qxDqjshp0=
X-Received: by 2002:a05:622a:24a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ee317b3acemr23702091cf.7.1763468163291;
        Tue, 18 Nov 2025 04:16:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6pID+a9PTJziO6Al+fjeQboZCd5oeZ2xL2RTvSo+ugWKwkruWzV8d/WajOx6TuvAeTk05dw==
X-Received: by 2002:a05:622a:24a:b0:4e8:a001:226d with SMTP id d75a77b69052e-4ee317b3acemr23701731cf.7.1763468162759;
        Tue, 18 Nov 2025 04:16:02 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad44b4sm1355453766b.28.2025.11.18.04.16.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 04:16:02 -0800 (PST)
Message-ID: <74b5d4f4-ed36-4691-a82d-37e76c52974b@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 13:15:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/22] drm/msm/a6xx: Skip dumping SCRATCH registers
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
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
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Rob Clark <rob.clark@oss.qualcomm.com>
References: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
 <20251118-kaana-gpu-support-v4-4-86eeb8e93fb6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-kaana-gpu-support-v4-4-86eeb8e93fb6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: krqCNioP8qRgwkPZxd-Q5V2DD_1cBt5S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA5OCBTYWx0ZWRfX3fgBjOcOR/cU
 IyRo+O2nl4krcl9eHYn0HMd63zgb2Z64H5OlJ+wOx9NALvMQsaAKDuH718bIcUHzykVXorfqLk1
 YC9cQ0BtDpfru+SPw8gcYsLo1DidX1yT/ZwyLMaeZlCMqsuu0Ko/G3hXlnABGWK4afgKrPxDM1v
 XteYWNPhlYXmLmJWiySWHAOBLaVq1H/3I+xDCyinJCaZb+47HINxIa5+75rCePIwdkhqxLMWKMX
 qY9ylBtbW355oRaJI1o/8Z+G3avcrT4pudPNbEHkbx5xvSxdOZfjIS/sIwamgX7KXG+sb2oKU9b
 adlfh/l5wONr+pbEvbduxLDcZxtRpvezyZnZXzlAZKuMpA6wZwbBAXY+dARndouD9IYb+Fbhaap
 wqtAvpZ5/nY1xVVBIuaxnQqcv41aMg==
X-Authority-Analysis: v=2.4 cv=BYTVE7t2 c=1 sm=1 tr=0 ts=691c6384 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oEwtcOY8yq9sNqF-amQA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: krqCNioP8qRgwkPZxd-Q5V2DD_1cBt5S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180098

On 11/18/25 9:50 AM, Akhil P Oommen wrote:
> Crashdec doesn't require SCRATCH registers anymore for a6xx and newer
> architectures. So skip dumping them during recovery.
> 
> Suggested-by: Rob Clark <rob.clark@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

