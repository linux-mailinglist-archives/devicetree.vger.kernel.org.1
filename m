Return-Path: <devicetree+bounces-244620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CB2CA7191
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F1823009B47
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 10:10:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A012D29CF;
	Fri,  5 Dec 2025 10:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EnFt2avy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GTmplznz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB44314D0A
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 10:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764929441; cv=none; b=pi6gyAXttIhkM6O/a0wiH2wolfNEjrBqQgJQEDyF0aAjjszf8WcsyMSILBoUVS5cXsCN3KETlSt1Vb7ii6uvbSFkGJdhf6Z+rpF1Ps50WpcBBxxKNek0w8Xh6niWFeKm6hu3Oc/v4D86z0VayoFpCo7rC0GM+0lqL2gjmRLCqgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764929441; c=relaxed/simple;
	bh=7QNr+/WNso9juVs3d73JtADhdzg9nNZmzQC8Q2c4FDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d7pbaMr9VgJ1LEI1uHt9CLRU7HQwU6Y26yi3BeKqKerUmeuEIr2SgsRTOdW/FJ3vjacIawRbBdnNfNegrhFSfy9Wqf4Tx+CX+5B4I6bSneDzbzgi2OEcYaWMO8fgX1pIOtw8BBCYq21yCbvOyxxhkrNClLs39T3u1RgM6T0G5rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EnFt2avy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GTmplznz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B54Kbwm3645165
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 10:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2CR/m1EziAWXkhlhHGXHaDJSzwxk1KHIJ35EMa2YMpI=; b=EnFt2avysqlqU3Pr
	R1TTsAjPul9RIqEAR3ZM4ejGNfXSxuJnh60LAdf5ma8OPXmnBjswrM0Vo+uZyzwh
	SO3fhr26TY51CgYQ5FTqLdKuxLwiWHKUEJqakaZIjfWUeoeIbpYTGKv6rTrcR5+X
	w13wk14K/zUiChaHyt9Onw3qxCI3xIcae/QxU6li4UWBQUvC51quO3K6l/crHtUt
	JyhdXRrJrL9LhByjOJZlr9ZIq21Yl5DN5F+i26IW97XUk71/kIXR3dUEt0NOcaWB
	TuqG+cg+ve3k6n057nm3vA/YJ+seRs4JWALUE6OmX45hn8fdgSX2PJUFSGlXLzZj
	BPAntw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aur9arwrp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 10:10:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso6625461cf.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 02:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764929433; x=1765534233; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2CR/m1EziAWXkhlhHGXHaDJSzwxk1KHIJ35EMa2YMpI=;
        b=GTmplznzzrlmBHWAU1kMJx64WUOq3rif/6KaPP1chUBy4tNqvMLNrIUB/SSsCKsrME
         Ks/TLMls9UcJ9rremx3Skke35BLHILofzuJpMEaNkXrZG+6Jn21Y7vPny9qNd315Y/OI
         J0YHOqhBcJyL6dimD6wDAw7ayYHdAwa69WfwZmshpN+B7o5qJ4hTjqsg98/QTd9copCa
         8zZBrMa/J4CAhKNJo2E8wz3TRwUs0BtRyff5Tt0Ny0bcEGPJSk+W2kUQz7flpJM7/zjS
         ug4pyRc9KsA6a3aa0V1QG09xFuWxwYgtQ1w99DZPjqx62LM4wxGapSiETSpXEehPCVY5
         VSog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764929433; x=1765534233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CR/m1EziAWXkhlhHGXHaDJSzwxk1KHIJ35EMa2YMpI=;
        b=oIYxLg2hCPdAfpQ2gcniDLw1rbVQJXS4Bet0a0qiN/h/En5+Uwao2Ch+4nRc/tjBcq
         tDv/+Q5NedxO/0TH1SA2Vf30lb2MamKeOCqRhLIgvGoerRlaunOz+XUUvABILSUMQMc2
         oanx1uNK4zOliZc6uj8pgQ/SxQQ/hhsLkMU9HvJj1a2K9oJUxASo+82F0gaNpDfslWdH
         grLrqmI+noXY2EBSSkK3AG3M42khmP+mzpwsorbRjycnnJY2gTLSwTEjd+UFBW6B1jpY
         AzQMctSGYuH/m0L4TnbVlNHjuuN7t63+DVGjclr5rFx7FjgX+81dSbaJiYGkCxuIQR6V
         CWnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx5E6hDBmVU6ISu1kW/BHpR8TTpBGeHMKthIg6UMAccQfknrGNVS1fmfsqsgy6BhfC6HaFLOKz8vSD@vger.kernel.org
X-Gm-Message-State: AOJu0YwDwzHVhZFnrRB1PYw0iOahGEMGnprUW2+2BqTRYOHK7tlrN6ko
	cO62cXkBSrXcutY01aF3PXVVT8HOxWDrU6/dZDIIKcdmQsOu/c+UAYv7Frd6V19oaKapqdZwmJ/
	j8ZGbOWLBxpQqvSfkz8HOlKbZOa7A+nOnIqsHhQiJB52uOnsDCDnDugv36b5v0Pxg
X-Gm-Gg: ASbGncuXvNHAKSqDvs/lmL16IACkt2gmTZYP8yc74FfjqCeaPpivZvDKHq5IdOb5Ip/
	ctpQr0S/iOZ1/OrsrPB43XHKBug6IL4wojzoXEnFpcJ1xLIpNowiAEwM7pZuJa+vL16MALx0r0n
	dLt81ZAMGEFO5zkDzVNPrI3PEDcH9DBx3uXhEac/PD+H+Mk58/VPrybbccbTe7HHYE46507+9+k
	q1I3oHOWBUzQDato9mWFS4XdRZoCv3YD45XmS6REmdzKKwL+dNVkExr6WAbGQMsChNUQzCjsQx9
	nOQOBJkpOyqqupUIKeDzk061NtrX5HmDTKESyPN+tKAb21C/LLOtomsW9EW3wuOEuuxxxzJ924n
	84ZJh+5sTwaQfdpSRBrcZ1aK8bNVBJeLOZGJ9v8jQyEq/7xlrtg9SxDmD+DbiwXJ6Aw==
X-Received: by 2002:ac8:5dc7:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f01b4ec03cmr86964351cf.11.1764929432721;
        Fri, 05 Dec 2025 02:10:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHyRAhn0k1YE9PnYXg3wa/SAZLktCWYdIO5bMKO203xivv/wR+f0izBEVjDCYKjQN90jdqwmw==
X-Received: by 2002:ac8:5dc7:0:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f01b4ec03cmr86963831cf.11.1764929432114;
        Fri, 05 Dec 2025 02:10:32 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f49d24a6sm323585366b.54.2025.12.05.02.10.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 02:10:31 -0800 (PST)
Message-ID: <7d71f882-1d52-43d7-9f0f-e7f7b53c853f@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 11:10:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: talos: Add GPU cooling
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
 <20251204-qcs615-spin-2-v4-7-f5a00c5b663f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-7-f5a00c5b663f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Veb6/Vp9 c=1 sm=1 tr=0 ts=6932af99 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QDjCMyA0A8yHJihhU1wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: WVrdb8ZwNjtNRtn8BkAdWtMIHI7Ag8P2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA3MyBTYWx0ZWRfX71YMK6UwZo5z
 Qko16MlgZbIteNlfa8Rhh8QpGga2Vnmy3mYfeGXkGKDYTYi5emc1PJjTremwUzMCm6p27rFAo+B
 aQl0GcZwIA1kjfgUEQQMZ8X8g8HpD0mhfBC4KKAtQhSZN1vDkLa1MVJjaij/cqkTfet7szAoxKR
 swJYZXNX/c+okOCVrmoaSrfkq+VQzW3PTx3lXt6g0vlXXQiXuvqdxRPSBfWpiL4XM3ctB9Syj3D
 DPXv4lhWNmuzkPyWUv9X4/iqOKtBs25cJA4UVQXv3vly4ERZiZv5cWs/doiViQCuX4ry7DjIJ8C
 i7DrTbE8t5V/J+mRdBRoBqH41B99up6S8PoTVdnvno/B81B8bJYoMgtT9AHamAu2mi63FSADcCw
 3o7LwHXsWx6Dg/Kh2Hfd+kj2MNbWrg==
X-Proofpoint-ORIG-GUID: WVrdb8ZwNjtNRtn8BkAdWtMIHI7Ag8P2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_03,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050073

On 12/4/25 2:21 PM, Akhil P Oommen wrote:
> From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> 
> Unlike the CPU, the GPU does not throttle its speed automatically when it
> reaches high temperatures.
> 
> Set up GPU cooling by throttling the GPU speed when it reaches 105°C.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

