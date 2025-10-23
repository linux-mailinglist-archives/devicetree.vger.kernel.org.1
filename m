Return-Path: <devicetree+bounces-230123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBE8BFFE3B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 10:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3EFCC355394
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77DD42FFF87;
	Thu, 23 Oct 2025 08:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M3D/dYor"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364802FABE7
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761207747; cv=none; b=F5jqGMkjQbj9EO3ys8GQEIOTP/Y2zMm2gIX/qYHAmLjr0rUA4PIWCSl30dx9hW74/6/jK7EzIZm2PJG7+uMCRmtwcX+PhgXNN7i2BQ3mLJvjlXXyxfUdj/ZUxaqoAAgAQ884IxsllirikINlrgaMdMBXEa9JaF5fJP33md6l4mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761207747; c=relaxed/simple;
	bh=S4vW/Rc/0VyuVVLJvAg90iQZN++icVTdUocdP09y+/U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ARgB/M5diqu0+KHDMCl3aC2qXoXUvuJW56tBbEpfDEZTPPy4iHwUiw6G3BwNK52VFyKpbDRr3H140hn09XSgPfPHQJ9dZSwqW7/6h3ps7HdEuoIHb7qsnuRJtdFgr2e9fGjxrTXnVZLpKaOaEizi+wzVO45oRLM8l7tGN12MLvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M3D/dYor; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N7n9lj019079
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:22:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8FruMMDEn1euhlML1huGGXWeCVKOxK18le6bqpoMasM=; b=M3D/dYorK3RcIt7H
	jJ55aYz/7RKPCryvULpMhjyJ9CHcFylvfk/9r8H9Tn2J8jtVr2TgatzdVW5ocAzz
	KlFXjdcFtGC3bI4brJU+UxlgCUrsy5NCxQB6AFvK423OOVRf7+11JVVAhbuDANhJ
	L2L0yPns8sRASb9lkySjZ9xkYdGQ37kadKwbrS0+vxDvNpJXaJq93zyvQhvMMlV2
	Bzktpfq7R8KJtQyDbqDVqOjpjPsKyx+65fIbayk+NxEHOc+CbVMUjr0YnSCjgUfY
	y/2yIXnKfwTbicUp8R09X6pNgtrzl6ZCx+riHFJkKiF4FLWyXcaqCqisfooJCSrT
	FXqyfg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49y67qhjvd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 08:22:19 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-873eac0465eso2111806d6.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 01:22:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761207738; x=1761812538;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8FruMMDEn1euhlML1huGGXWeCVKOxK18le6bqpoMasM=;
        b=LQ8RWbL6RDcfsGBtvahgfzodJVmv0CUQhfe6gik8nzyfd9LC2NvLtX6PrLaAmGfawS
         Nc4+T806/8kzoUTC1gUdW1oJKSGLVrBNyoZ3ZfvTs8zqaY6A5QtGUl8QDLtk4Um27kor
         xDLTcK73NJ0Nt6k0D5IAU8NTUsUb4NdTXvWXdCOwfRZi83EF3MeRaix3NMlX0n8AaHI2
         OVmEJHwE24nA3k9TL2x7BiS0b0Jmh3vP+mGOiZfXc9TDOg3723nCHkoKEVuBWibzoFDZ
         cbjzfEUQPmDVGRyMjFe64BYm26/IwHPhx6iYp9GonIQpCtHRLI9JOOY7rPyfBL5EeFdR
         SeOg==
X-Forwarded-Encrypted: i=1; AJvYcCWIajw1zgcmkMxPDAIrjuagh0uFRODVZ1S5THRVitIFGBF8wn+KyYJ6cz+PHi6YEL2DFzdC2huKpTLG@vger.kernel.org
X-Gm-Message-State: AOJu0YzHR1mnZHB3Qu+vBIfvv8OMpokCmHrvPHo1asd0oTdpotV6P3j3
	zyZtt0UfwDrvSyKllihxIcbxa5wbJOlARUyXJwbOvbKWT+2ZYdhywJ9pd0r9buL5kl1PbC0hpOm
	Hqi0avrR+7b1tsaXS/gYzGLTELjnbt/Px0pE5lK6+HFKSN1Jhd1y+U44/3Zlql5RD
X-Gm-Gg: ASbGncuGR2Z4i+Wn/l2eQu4kIMZ4qiKtudQnXrtHA7aa10gXDXclUmGzji0Rasm7fka
	WTfPNtyRafgr9tHvQ6jY8DBMfoEVyiJzINN5lVrWVI7N6jcl6hqAhDM/ToWd44PZ+noYuFKuydp
	6/4Nr0NV7TimOrx35gY8rkjrp8ZLFjPfA0I9VN5sEcdJffOS1YfLYZnT+XMeWBZG9RQjvnouEGm
	RpU0n1xo0AgR2SKUBUeFDY5BGxN6r4iA5W9bIVRmoTQsJvHBto2pI4G6PrjObMwXgRmGLrZiLkW
	svktqdW7zPxZE+W528jN+2EWnhIni4sQxD5dEBGd/68px+Q51DyAwqJNW7fF0F6TI6wfbfUAKzZ
	FrwkeM5nsqp1Ftt6xWly5/NhpU6dp5L5/XGt4kgqSVfvpPt81TTa0v2Pl
X-Received: by 2002:a05:622a:20a:b0:4e8:9ed2:78fa with SMTP id d75a77b69052e-4ea116a2337mr82965441cf.1.1761207737720;
        Thu, 23 Oct 2025 01:22:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2XIoSLrV1GTocr6bbATcJdQVR3JTJAVs0QtA04SjsNS+0NDII1q5KQNFmWxX0Qxq+jTp1XQ==
X-Received: by 2002:a05:622a:20a:b0:4e8:9ed2:78fa with SMTP id d75a77b69052e-4ea116a2337mr82965141cf.1.1761207737193;
        Thu, 23 Oct 2025 01:22:17 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d51471c24sm157607666b.75.2025.10.23.01.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 01:22:16 -0700 (PDT)
Message-ID: <4f9573d3-41a4-4478-8c19-39716b29f587@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 10:22:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/12] drm/panel: Set sufficient voltage for panel nt37801
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-1-yuanjie.yang@oss.qualcomm.com>
 <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251023080609.1212-2-yuanjie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIyMDE2OCBTYWx0ZWRfX4tTo8cfy6V2f
 fOC03UeiLsZweaxX0+PS2FWQzEJmEYUdIUIKbzSq4PvuwJjtWrBghClM6rc4VAn4dPcYrNSVL9v
 rl4NohiLJCoq3ROEUpPUeFOHnagoYyNM6dNM+HlcKKYTbbR8y28Og7Vp3jLfjZgnMGlxx3i4im5
 0YOZJfPOEkbFT1YT16iLP4lifNuPDT3ViU7Acf44WuEsM2cANnjlZJ7sUr2PDXRNG5x3xkymuUI
 kCT7wuEjfcSphH/6MJPIZzUgraI4+ri0Dx7xqPzvGURym+TM52aqh7VGSppGzm+3QFMGbgOqL//
 rGg4Mme7psGApFW0T7/sQEN/mEBNQh0DuzAicQv6BVdI2AlXrcbtv4dP0yFkjQDkrtcXZUPFd7p
 EPILjDm+kysgKtFmKw9wGwy6+RFGFw==
X-Authority-Analysis: v=2.4 cv=LMRrgZW9 c=1 sm=1 tr=0 ts=68f9e5bb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=91DCyrf_GaaWAzlYtecA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: dHGw_qY6WnPpXRB0kw8BIxf0hAmwk62S
X-Proofpoint-ORIG-GUID: dHGw_qY6WnPpXRB0kw8BIxf0hAmwk62S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510220168

On 10/23/25 10:06 AM, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> The NT37801 Sepc V1.0 chapter "5.7.1 Power On Sequence" states
> VDDI=1.65V~1.95V, so set sufficient voltage for panel nt37801.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---

This patch should have been sent separately as it's not at all
related to extending the msm display driver to support Kaanapali
*and* it goes through a different maintainer

Konrad

