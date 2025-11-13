Return-Path: <devicetree+bounces-238089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BB7C57124
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C2D43BA080
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C50F33507B;
	Thu, 13 Nov 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OX9cuSGu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YM0qVUW7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15141F5EA
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763031533; cv=none; b=ooVkSp6rvw11EZgt72/FAq22k/HykfDxEvzezuX6DrEAjvI0nbhacmebjgN40pR8cJr/z/f8/04V6pzYEvL4xngt8RVLqZh0IgwF1+JQak/ej4lMTPC17KEw8DKuAdk3eBWaopuW/tDpJKYp/XdElHSx5H0SH9BNsI0/C5yKW4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763031533; c=relaxed/simple;
	bh=0SfTgwIzPX/BA/JPrecUkCRKouOa5PWWI5O6ZWAA/DY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=moMdigS8EBymX9+rtyriou+gcSdOlcFDP2kWbcixkP7o1oUOVucPLmYU4wOxs78Ff/miEBQLW+WubBJDsGvwACXeqLygCjCYhd56jwz3BAev+pfLU4eYI69UJ95D68aOJf3VaO93oDGC2MUS82tMynF6gTSOuYFjcN+1bWNs5iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OX9cuSGu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YM0qVUW7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD9QGtm3121987
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:58:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jgBPaO5vYeetCNzgFhvdCRkSv11ZkxPO6+3HoWQmMsc=; b=OX9cuSGue2w3yOTX
	RFu0kR0LgWyxuJjvGc9Ya8ZqJu/ZqNoTzEstbau0fpspsTIz7A2U4jGS61BnCtCN
	mEYsktpis3zl9MYBs77wYRrjIyaC6W/8QJD/51E2bNPgb9Iv+K1g1izUJi8I1Lpg
	HzZQaqYNNmysuiKoJAVqbDA8E7jho/Fi4LdG4c89xIA1kf0v7crDJl6pP0iO629q
	pCVL8VYZ0TBBAGpqHTB7GkTLgRmc0Cw1zBzr09i2kVJT8wlPD8Di08D6tanVIyft
	ejsV1xCAzPbKU9jkEpynvoDWKlIQTmNxWfm7ecuemCUk1P0cYWFz2BAx8zsxDbbs
	Ce82oA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad5pusk1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:58:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88233ac98f7so2154186d6.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763031529; x=1763636329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jgBPaO5vYeetCNzgFhvdCRkSv11ZkxPO6+3HoWQmMsc=;
        b=YM0qVUW7JOstpF8Kuv2+fm0Rg1K5X5g3WNov7BBdTqfaGo+S81rzzFx1iWUKMqqobN
         EEgtqeWpayXg4kI3ern4fC819b+pbJbkYpoMEs13XWLaZonjKKZxlqLkxDb02EkyxxZv
         crhwmqckv9r4f2SiVhUYcpig2fs3VqqR44sjUy2K8NQkWKe+LM8L35DwehE0Dah2FQcr
         LCpTUsz/zYk5EB+hBTMMn972NaBPyIFgOV5WOaRYQKZG1YCW353cbvq3gBXCD+9LWaZe
         1Dw5WwaiU6FPAd4SZuZberg4vWp6c2Y5aNmSb0SjVYzPYgmxolNtrpadcN+YYyoxp/UG
         7Hlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763031529; x=1763636329;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgBPaO5vYeetCNzgFhvdCRkSv11ZkxPO6+3HoWQmMsc=;
        b=GAXodag3V72IIa8zF6nS+Eu0/fPtAd9uL/CWTVAeIy+RbeB70OVUSJdBPULM3EqLik
         9jYA25TNQUyJcFsj1oqeacjYKCIJRBKMEZNRyctn5cdXPXm6F/R+S00IT3HSDKPODaL+
         O1Sa8jVsYEXtC7CjGENyzlj4ugXgk3cKzjHCGz2V3DB0FdwdNvtNwNT7Texc1wbbdxiX
         AeCmju7Fh92joZoxUVeqP/TMW9gMqTImdUoGBK4pUlo5m3OiVusCBjI5dL731WqUILrP
         IvxpOv0lxkPbFx3RTC/k885fGaiwk9BWfSu3iVYesScQOUnnl0dYKeZML+bOq1GVqNkq
         jbsA==
X-Forwarded-Encrypted: i=1; AJvYcCVAHYOWFyur5L8ozZwyIljjYPtfOkqSBmiF9yneSUkld06oAVYeu9XkVXhZ2psyJEHk58d+O4wbAnX3@vger.kernel.org
X-Gm-Message-State: AOJu0YwoooDkNuFVQoWH8QWMBbmGaMYQ2WSDBfXL+3aayWmjOiG13YwO
	yCWs5pCF5H9ANl1+F6Vma8CQKqCIemmIu+8XAOchwLaeHdJhss8zAF18VBsj65ZImj6KCq3r3xm
	1gxe3yBUNvR+KY5Ec2qX322IiWXVY+H2iwJaehDoK49tqJSpGLUAuBLXdj4PUeaSR
X-Gm-Gg: ASbGncugbjeftUrLX4cj09xJWH5lwumKJwUTbA/qlkVedNyAo5JI6veA61icntdyDAb
	0Tv4dcETPq9Ei8HZpNCuOG+I1swoHbj8YHBpxCm8sc5Et84UBxsxeBKSjYf1R2zTBUqwDxZt8md
	ZTjTFwX5eT/O2kvEY9GS8AQnqSLV8phNp+LdKq9rc6F2GH8Rk33eFrItO226H5azUs7jNusTVMR
	Pi0uKj9U4/cQwcDnKqYmYUmeRrqpwIftRu0StxqAa/ONRGqsCZcIxAlpdMKh0aSD0bA/qwRQIvL
	LP6y4Ce/W8AeoFekiXN3CTHUhTfQDoAtxLxLL+Z9PtjSja9ZHW18vb3OjU0ZfjMdbh+Lop2dRgc
	aRe/HValZtJ0s4/xA8TB4J+5i0jI41LNRgwu3Qfwoca6Pc6nThtbWZhGB
X-Received: by 2002:ac8:7f4f:0:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ede794dd10mr20846311cf.12.1763031528998;
        Thu, 13 Nov 2025 02:58:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFdQDsxtlP4V4oPmd1PqozO62xfFzJpWU31Y99QHzv5aGDzw9SGa8isg87xEOWg69/ZZScEyA==
X-Received: by 2002:ac8:7f4f:0:b0:4ed:2f2b:aadb with SMTP id d75a77b69052e-4ede794dd10mr20846131cf.12.1763031528471;
        Thu, 13 Nov 2025 02:58:48 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad3edasm140259166b.17.2025.11.13.02.58.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 02:58:47 -0800 (PST)
Message-ID: <8ebd7250-fa3e-4705-a5e6-f01878389df5@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 11:58:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/21] drm/msm/a8xx: Add support for Adreno 840 GPU
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
        devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-15-bef18acd5e94@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-15-bef18acd5e94@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=E6/AZKdl c=1 sm=1 tr=0 ts=6915b9ea cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=1fD9zpMYXuRVFxAoecEA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA4MSBTYWx0ZWRfXxp97Pv5WLDyN
 Q9kt7XDq7ULZ4nlTlEP4k9fB8eBqydLg8Vi3AeNbHby4JQIbehXUdtj9uvBM5HPbpImkA0rKA6K
 WqiSns5xGW1j4aUWXL6lNa93KZeMfcV+RnUTVijF6RVlRyN4zewkKQC3H3DbETd+8SdKrhOODhY
 xTPHXjpoOJv7/zskNL82Rhfbq8aCVXKX78Z6+bzrEfiJG5af6qUeazlGEu5gcfXuHsa7vdJeRwB
 6hIYrC/GWVqaEFNKdHuYyMGMc2Sg2S1XLEGNjAS9i+fYs3ROvITg+ixmpgDr6P9EYcGEPJkbT6P
 wlLltIzgMAQwYaUbBxkIPjCqRK20YVaHzI4Z58bRbSX6wclzWp/Me8nfh/pXNUHe7hbAzbkY4LM
 2938ZkqPwLg7e2aZw+M7J9dq/cNYaA==
X-Proofpoint-GUID: udUarm_pdXGd6t3Agq98f-AD7d7bNn_9
X-Proofpoint-ORIG-GUID: udUarm_pdXGd6t3Agq98f-AD7d7bNn_9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130081

On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> Adreno 840 present in Kaanapali SoC is the second generation GPU in
> A8x family. It comes in 2 variants with either 2 or 3 Slices. This is
> in addition to the SKUs supported based on the GPU FMAX.
> 
> Add the necessary register configurations to the catalog and enable
> support for it.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

