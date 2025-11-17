Return-Path: <devicetree+bounces-239404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D2C648EF
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EE5764EE656
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A8A335544;
	Mon, 17 Nov 2025 14:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CaLNWRlL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y5wwF4Xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AE3335099
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763388060; cv=none; b=GrFHNJNgb5pK88OqLa7mFxUtGQqO97pQ92P8BJHrbcATCPatM9czALPyLf17El4t6upDhf445w9cFHRifRSssxf4eU6zvbzXdPZa+VzpuPXgB9LyArI4tbSfJ64Qyp4BA3Yvb8CJXtobimC/CQDW11bZVAR4uf+5gRbdB3fun0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763388060; c=relaxed/simple;
	bh=tYRyG8yGuVMjxpdn5RQJt9JNXWc4lvUyFER+lwm3rfw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vFwKBCNGBlBfm0SdEQCShBuAk9/1fbDA2WTC3MaRtcZcFd5xGByl8H3o48IBILbL3IipbLS1sX7osHcAix7Ulk934i7npev4mOtFN7KWljRTbUrTKX48zHQojwInvhATDDCoR0ORHECw7dzEzJ0rKg0+lGmqbPYh+uYzcWyN/bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CaLNWRlL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y5wwF4Xh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB64iQ2582446
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:00:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G0N1uC0gRebFM3m/xAV8ULblmBy1UD2QyB1c+fLY+4A=; b=CaLNWRlLM2uKAZYN
	zumD9UYmsPf6oUOVgIDz1j75aOapZi2Zk3w6jEeuZ902Te9KZ3QoHgAavMpXGXWz
	mTd02hHbgfZkTTFjDcKhu2o5YASXC4Q/C+toi9qYmVOCK4f9u2wWooLVtukLDy4d
	MGXQxrrRs7k5FW2a1qAjNVQ2JWdphcxhmjwohGDR0Qd3txoliwcX81HHKJ2goDWL
	jtY075H4qCqC/6NBg0qRZiZoywBsPHJ1KVjg9w4kC8d2cLtTvZEv6YFw3DWZAilg
	Aq2rPi+fMQoHDf4THYnwBPW0FDV6GeIaVcHbAZ0atBz6YFIfvxvAbmKM/gXIfuck
	GTkqhA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4afssfa04x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 14:00:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee07f794fcso6464451cf.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 06:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763388057; x=1763992857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G0N1uC0gRebFM3m/xAV8ULblmBy1UD2QyB1c+fLY+4A=;
        b=Y5wwF4XhArx2pXqrXD6jaYbNakCLmL0EUejUE6l2WGnO28l6qRJKC0KY2uubuEbvit
         L6DZ26XrT9nozVFefXOSdZVIe5awk3WOAzfU7vP64uxOZ/Ex9m7Ne0AZXMRrw029OM1T
         k2wpDUWH+he6kAmD/AwbeFLOMfhv4pmD79W3Q69MPx8ZGvYkQkFIZXUTL7q1h1HDGN6V
         wr7aAtmlEaeqEsz38WrAIvsNFR/bqSA+n5/8DofDh7ymSqtU9w+B1xEv3LJrs9wDfq6W
         udqCrs2/P0wpKwoOycz2ZcKyv1eNwPbRhQq8YabPn/rsrxedhcVuA6ou/hDElrTskcTc
         KJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763388057; x=1763992857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G0N1uC0gRebFM3m/xAV8ULblmBy1UD2QyB1c+fLY+4A=;
        b=CHEU6eJgX1xJi2+/SDnKUgnK5edJ56SnbqqSv2pdsel88KI4XpavkuAPTuEihqxvZn
         wdVkZAvl5m0CBnnMouDigUCHUBmnuMixW1BkHc8VP+6xP0/X45LANNp+rvxtsTexFnQS
         ILV/2fXQLjLzpnNcIRRK9zGSs6YgkBtXYL5U8U4b3DVQ78G0Fx1prw3yTnzTxEj1S+Q7
         9WaUe4vJKXGUjQiLiqOz2ATlhptfA77fLxNVQnAcyRbKaGdYA4nYrwpKfc7eXiyG+AYg
         o0hwJnpkgiJrWcoEXgKerDVHtANT+eTyQRmQsY/ZeIKP87cHVakn6pNmmHoz8sbcF9an
         tXgA==
X-Forwarded-Encrypted: i=1; AJvYcCXnqUfBpmvbbt0NdMIQbm6omASLWLZ3hE0K2JNrTilqnj/C2FV7haMMTcoHYPk6zIp8Dpe0jMcJlOa9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0IF4K7bxwbK3TM4/sAT0TV8YfnC9ycmruEmKT4ZG7WwzXVsRf
	4QenmqF9arXQlFH3cBDBWePwAOtoM8U4CyKXVVYWx36LpTc7LcfJ2j71YKkywTIDoIOoXxVAu5y
	PpTb9rHEvXOP5cojYbqL4xIydItbF295xeT+++DGw9+x5t+jAp6ExTeHVD+QmJlWh
X-Gm-Gg: ASbGnct2BeVvThm39JKsJAQ+kNVKcsyomLnZ0xBSLrxzkHDv6ftKdBZALGAAfKpRP58
	XQa+aq/K22qrG6NynyLYcyFg5tyuPh02+o9Y2xSuudJa1w4tKI2iVau5AOtRCtfvjPC097lwOQU
	Ihx2Z1QNoRheaibxFZAOpAHcg09+jQjAeOzrDvo3Mx+3nILd0d1DU9owZDCKu/kMXXbcxEDMC8q
	rmxVAAGXTcsbFjk1UkaMwhKebgzc9qFxVT8DGBdCAgS8+J8yPf4VT8mmMdclaulEX80PZYv52ix
	EMDOgDUaJmssuVkutDcARqqzMkOAWgBOcmmgMR9k58bnegFc3ZPHe+3/7qkzQ7ARszAHvJBloZJ
	tS1ydX3p341roCVrFAU1XEauJrsfpWwuveu9h9+eo40dRSQ3Ow0CyuwTq
X-Received: by 2002:a05:622a:1a20:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4edf211b66bmr120920901cf.11.1763388056370;
        Mon, 17 Nov 2025 06:00:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGj35tYdr0HD47+9f9g95x0CjScjhWZaLoteYTa+aiaYqadjZmKPlu5QoVkMf1uY20EKq8T9Q==
X-Received: by 2002:a05:622a:1a20:b0:4ed:afb4:5e30 with SMTP id d75a77b69052e-4edf211b66bmr120916341cf.11.1763388051601;
        Mon, 17 Nov 2025 06:00:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fedb91bsm1079743966b.70.2025.11.17.06.00.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 06:00:50 -0800 (PST)
Message-ID: <ff634b09-c28c-47d0-a57f-6203755cedb6@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 15:00:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/20] drm/msm/a6xx: Skip dumping SCRATCH registers
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
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
 <20251114-kaana-gpu-support-v3-3-92300c7ec8ff@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-3-92300c7ec8ff@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NCKuh5WNs56UqHnHACK8q4hiZ9JP5_yY
X-Proofpoint-GUID: NCKuh5WNs56UqHnHACK8q4hiZ9JP5_yY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDExOSBTYWx0ZWRfX+fg8jSey1I1J
 Pmw/+mXo6DQ9wFvEN6jlfSBtcVr9UKMjmeg/NCwl5Hy8J/fQsFQ6HWQeaCHz6Ga2xLYG51ij7Hl
 xnNRZJNGb9gJ76ckEw+vLh6YE2TufAsVT/T1n6RQmRaPHVNMPH4wRFueXN7UCxEWYYhKNcfS31w
 pyx84tVRMO4b7gqKBkiOcWhQX4KyhxGi5mFF6pzmkT1oO5uJKCiEgi0KnDcuVZe2t34bUb5IH5V
 khuIkLV3j6d3apPgTEu6Kk+lbbUY6aEUuiy6s/uF54nmLmhOrZZggvS4KtwIMM8niaPKoDrNBp2
 3d01mJ4wFphysb8UwoKTfhQn29SfdX7DzXqMTDOv3CvAGi7uBZPtNoPC5pcei19Nx5BgoZQD96H
 AwoTjpOm9uCc3hmKyJrrxeDjLlClVg==
X-Authority-Analysis: v=2.4 cv=IrkTsb/g c=1 sm=1 tr=0 ts=691b2a9a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8
 a=RYDHkQwZWS8X-3Noaz4A:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170119

On 11/14/25 12:29 AM, Akhil P Oommen wrote:
> Crashdec doesn't require SCRATCH registers anymore for a6xx and newer
> architectures. So skip dumping them during recovery.
> 
> Suggested-by: Rob Clark <rob.clark@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Looks like this changed in:

https://gitlab.freedesktop.org/mesa/mesa/-/commit/95104707f189b2e1b06c855b563c1203b33da354

and needs_seqno is never true now?

Konrad

