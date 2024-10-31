Return-Path: <devicetree+bounces-117903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC609B8466
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A230A2846D5
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA961CC897;
	Thu, 31 Oct 2024 20:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ITwb8X6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D231CC147
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730406662; cv=none; b=cpZowgdM9UlkhK8iBUKuIQ/1liwk0xiV6FO3hsXwD8RMDHg5GX7ob1egVtNPMOnbyn4zxMHFWlacwDY+6SYjvNQ0ELB7pHAgYqEYxmyslP+S6wH7abLLI+jnvWP4oLJSS9F9jnTzKZe/lswxhvgTtjN2OwyuAqoYPdYPTECjTLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730406662; c=relaxed/simple;
	bh=lq86gqNXWApaNxzaEeUR5Lm8zZvsZpiDD5/0iktoAbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rK7/RxPn/XkK2n22eV7af/vRKuWfuV5+5jeBviTID0r0zDFL+NTT8FdYW7bEM3xQIZuU/OyEF9fmNCRQ1gG+c/0sIkSHClRp3X7Ir3JWlLRWjToB8v6VlhMEPrT2DVKlcJX71QDCMdB8lT7kIRXB9bYWt3SwI+8hXdaJ5L7SC1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ITwb8X6P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VCJ6ZO002338
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9k2M3b0n7oscrFwRKfsA6u45GGCm173u3WDMqWDo1xk=; b=ITwb8X6PDbIvjmfl
	ELr7FmINRqIoyn79Hh+7Rit+kINT5dybgp31/iqDOJ9lOWLZKSMPNnlqsL/D2vhj
	mkqDcvPqMY4TPYea773VS9TSu4IbnWZ6h2AXjvkitfFVMPViLJNVJCalQktZAb5h
	VfueIQ8W718wYtbf5Q1d9Bjr4o5w05ws3rcPlZt25L7EKLx41WnwvzkCeItalpk6
	H5omKuXR3O6pQ4oaiFv5fOxlIDEE9/EOtBbKhGTGaXCN10IaAID1hgBfUbt622pT
	j2uNWFqhJGWEgUYh5Rhe6BXp2M5mWi52WljNxFKOENUQZVAVzmtOFIjJ/0if82lz
	x4SyCA==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42kmn5ctvc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:30:59 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-84fc8975e12so56168241.3
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730406658; x=1731011458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9k2M3b0n7oscrFwRKfsA6u45GGCm173u3WDMqWDo1xk=;
        b=h2AMfm4a4EtvZcIQUiA/HHuoGRCT0Ulvm/hbm2vj2KSCoEYvGBQO2knqsOE5brUl0X
         /X9SY0loSe+QRXtUT0YACGk/91cFR2x4XWrkFOML2SJdtjnjtSgRYXYrysVWhjUeOqUz
         +DcMIdv/cT15GFFnFZ639e7uiVAW+K4cQpS+uffmHd9zF4hyd97sGeP3QBUDqsdvpmQn
         ZRN5Q47oGshJ3CUromOrxEQPESfastoUEP65NuWibP+L0vb1DhWJ+FNM2+MkZSaPMMQb
         /cEPcMATtlG7QBsPDGXRh5IJtnEFoM+AVQKzjmgUUR4fQxoGgKFxw0Vz11B9s82m9GzB
         5Uug==
X-Forwarded-Encrypted: i=1; AJvYcCXgQpR7+IJNlX+blo3gsB6Wjg8gLNts45iD1ZVx8XnzmKPKM8X97c2K75xrphHWoYI3P1PMHXPK309n@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg0ba0gVdKXuB6mz9DNBQaYXdT/4OobCrK8jrcHME86FUowck4
	irzltoAdpDExhYrFrAytyAxR5RtJ9RegfhGvkd2+4s+jgPj69DFDA91nckFQbWEZ8n856f1YKT2
	t1+t+DqXgmZ7gf5/caas/5sT6qhQEToGJLAFKtNmzctP2a/SSL6u69X5jVHZt
X-Received: by 2002:a05:6122:84:b0:50d:4874:6c3d with SMTP id 71dfb90a1353d-51014ff78b5mr5809010e0c.1.1730406658424;
        Thu, 31 Oct 2024 13:30:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGq7JvNQxAihqkufmrhlP1Kc1i6aseFNdHcqNo96oE6qeQc+5u9i2EYOcAH7guDp1OzQvnpxw==
X-Received: by 2002:a05:6122:84:b0:50d:4874:6c3d with SMTP id 71dfb90a1353d-51014ff78b5mr5809000e0c.1.1730406658112;
        Thu, 31 Oct 2024 13:30:58 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ceac7e93c1sm862582a12.81.2024.10.31.13.30.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:30:56 -0700 (PDT)
Message-ID: <fb0b1d8d-e47b-4357-b35a-6acd14507653@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:30:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sa8775p-ride: Enable Adreno 663
 GPU
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
References: <20241030-a663-gpu-support-v3-0-bdf1d9ce6021@quicinc.com>
 <20241030-a663-gpu-support-v3-2-bdf1d9ce6021@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241030-a663-gpu-support-v3-2-bdf1d9ce6021@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: -hDbVMVJrVRHsLS6q0VjluL3UYlNxSgS
X-Proofpoint-GUID: -hDbVMVJrVRHsLS6q0VjluL3UYlNxSgS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 mlxlogscore=629
 priorityscore=1501 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310155

On 30.10.2024 8:02 AM, Akhil P Oommen wrote:
> From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> 
> Enable GPU for sa8775p-ride platform and provide path for zap
> shader.
> 
> Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

