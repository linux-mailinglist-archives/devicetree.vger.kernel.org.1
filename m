Return-Path: <devicetree+bounces-246997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7961FCC2C7C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15CE7310DF69
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69793659E6;
	Tue, 16 Dec 2025 12:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e/4t52Gw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dzSmeIFp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646C735CB7D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887146; cv=none; b=bZSKJpEhSxvyrgxPTd9KOp84v8b1qE7IDkuMPw2XvDzuDKpBRF3LLuVSBELNZGXPczD7Uha9KOWo9PGZK59lL3SRZQEX2PyYj0PzHKiHbqNPB7r9Iop3wmjTd+Ls6MFIGrj9jsKQZoZ9Z+wv6ZyJbiaYAX0hxwrI2gUR8yHKHjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887146; c=relaxed/simple;
	bh=bkTIQyeWp/MZPvcJfDiSBDWzKxP/BNy4vT1ZS8bsKJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bOf0Tu3mGFc36OC8SV1s8VRPNTBbsauItdl1bI/pHmJGfljtt0ZLUDPFj65DbxRfQkYVhncUClg24mIkUuwq7VZFgqg7DzUv3guh/hU8kH7HGZgx4kDSbfuZ/WXs4drMIt8sL3KY8YTpp8dllcV6rqCCRt7EVvQC9rcnHglAtmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e/4t52Gw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dzSmeIFp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG8JPiv2573323
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:12:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4vWVxed6lx1LvkP66PLXZ6Vp0SoYPsSztBsPvb54e+4=; b=e/4t52GwzIBWbzz0
	8dtzFQXyaktGfVH4LQVzmyLsQTDE4XccGCyk+0ZFzo2kU6tXuvc7RN1zJMkpQr7P
	M6ksMT2dsWMBVH34fQFfFVdu2JtUAHiLq2wDn6Qn3QYZTJv9bP+IoM4GMRHv7dFy
	7BFl1mOMxr4zx83HsVjQ7sG869EqhAYC1phHliV7IJXmLn1XB31a5gRU4yVS3ikk
	LLY8Lmu6KtYS+rm5TfLzcnpcalWDPEBfXauUNrlc5ztbEfxZtLiUQQ/27zqoU2HV
	2Mw0M72Kw1HaxH1FqP5xAZjuYWosIqtQfQlC5N2hMWAtgeXun5CCt/KZfpnYFfzp
	B3pk6w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b33thryu6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:12:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2fd6ec16aso73050585a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887144; x=1766491944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4vWVxed6lx1LvkP66PLXZ6Vp0SoYPsSztBsPvb54e+4=;
        b=dzSmeIFpWIRpD/Yxv1Mc8wktagndqqoVzSlxyHNcGpFvffdFK6sGPLM/u66OnXt6j7
         jlxkdkJ4277QoYuacfLPbe8tG+QaijnGHFeCXaD86Byv/s75+SFVZfIH7Q7fhXO+3gnD
         C6u3HX9fODKt9Y10EWdvNW1OHAibEEAHdOKjcdyv4gAh2k+xE0UHi9VVo6c09tWvBZFJ
         JvBU3YjnZYz112eWGfdREGPUOEumGlnnHwl9ASxCg2i0BX+o5cUJvXzqCn7wq7kRUgQO
         PYzEhRXxNHBG63fVTZ4GA+IMo+vVq+lVPfUigyK2r1GJ2CMjIz+SY+alVCKuZOB71hZ0
         BSag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887144; x=1766491944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vWVxed6lx1LvkP66PLXZ6Vp0SoYPsSztBsPvb54e+4=;
        b=P9ifnh4MyYd0QWUAl9UeLt99D2ktXN4KQGNv5WMlwmnrHWZXo8/pBMSphZRicytnR5
         Wkr6B+upK/I9hUUqygdgNs70GrtRCFToyQf48Kru0gL1Y0ci3p+ftYDXgljYr8MTa0A6
         L2ECPdb1S4sLDZi9G1VrjwYB2BuiBQAewZ5vbCDf4PzBiw32xS8klOg9cAXScpGv4SKT
         pPqsYk4I3VYDc7hOIOMnEfMvDXizGYu2pzmyHWIOgaAH2a6kNvnjgeBlLqll0M2LCLbp
         CM68HMdGoR65qnJ/UZMe5DSyKc8rJnjwgK9AsahajXkBK419q6h2VXRZCUwjxyaCmIPf
         C14w==
X-Forwarded-Encrypted: i=1; AJvYcCWiqBuD3wmrHp8f/vPQcL3ExdNZTgf41S6hH8SZ47/zPXWdYkcXGgRjaS9NkVe7DwxX8uBPjQPGfQFt@vger.kernel.org
X-Gm-Message-State: AOJu0YxRKe9bQYwBoYvr0ODPYNruIZz1/SoH+bTe/HMCDpUgKmPMp48y
	OHp/ciOFuj0Na0sPNed6YGgCHm+YmkqOAFNBNS0zKLRjuMZSxjKhuLQeZvc1ODJ/Zl0XM4C9iZD
	6DjVmTJaajeTacoyLfxcXJzKOf8NBpmQCVBknwHMVBT9TJ5E+Nl4Kd3GvHB6pdEUL
X-Gm-Gg: AY/fxX4h5igelMiSY+IHJz8bnokWO5AHpmt7IqogkToWT12b2GJE7ChMQI6fSMhblpZ
	DO5urdOCkIDSZvWnBCseRdzuvIObv68euPc42zed1B7CRkTGpHQaN7aUE0GzIbyUh8tYFFedGVr
	pWeZKGEIV4wja4UFW8BA5RtL/NuTaUwz0sQBRMX5IvSshC19M2rYL/UlyghZ9ncEiUWVHOCPyT9
	MTQDAtAKen4PQxXY5RMhGaWSUNHi8Gz3BW7UmPULtZ2KsJTgt7wDiv9GRz9cgWoMrHP/ZpUMBKT
	JZTQ+IFoYpIPsobr/3zC/FZL+L/EjR2CgaXe2t680fAwmY0ze8iywgadj+rVSOUVnhx5+pJZMHo
	xLle1eYuSmvFDNG7mkhpCoZdKHauSaByZYlfRw2f10qkm5SqasZgigFj8YwJXIPI92Q==
X-Received: by 2002:ac8:7d14:0:b0:4f1:be96:568a with SMTP id d75a77b69052e-4f1d01680b8mr146265991cf.0.1765887143917;
        Tue, 16 Dec 2025 04:12:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcOGcvmVgn3k3SfXED03MrDqYUrxG+ufi2Qr/nd8NV9X5yw6yzf3dN6Q7v4nN8pYsNzqxqVw==
X-Received: by 2002:ac8:7d14:0:b0:4f1:be96:568a with SMTP id d75a77b69052e-4f1d01680b8mr146265731cf.0.1765887143471;
        Tue, 16 Dec 2025 04:12:23 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-649820f76f3sm15849858a12.20.2025.12.16.04.12.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:12:23 -0800 (PST)
Message-ID: <d0f329b9-dc5c-4e39-9bea-32a84664651c@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:12:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: power: qcom,rpmhpd: drop duplicate
 defines
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
References: <20251211-rpmhpd-drop-v2-1-569e5e8ab34a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-rpmhpd-drop-v2-1-569e5e8ab34a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIPaWH7b c=1 sm=1 tr=0 ts=69414ca8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=lR2tOKNDw1Un2gOXHDgA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ZAP8yrsmXIzbUF5yhUnSg-pzKv9uFX-d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX75cAqc/KOJ6W
 44hnCt+OTb1qbXwVoK1bCwPFjqP9woso78qHLB0uBtiYpr7pDrUoskdZxmBTahvXlxeMndsXiZr
 wXAIDEXIPBJnVs1HFgfUlLPwA8zXN8GOdo/yARueVNMUMqzQx23PGsMNA0KSdpOuHY+4beC38gh
 ZL6R9B+vu0Gl8jUO3KH219Qua/Px8KrVxlwZcHeTnYZ041ANMeUlRHRsuI28B6vZXJkr2E8zJ4R
 Arw+Le4fXDuEt1DQKBNnnvqUQIqUCrI/4QD9yUoLD2qaPibelUQlFhiDUlJ3k39cy6ibynKTyV5
 U/vUurYVy/y51ZHC9uMGh2KHSw4FCjGA6j06IWhzMugUckeDFG4dpEQNgsm/uRu9vxIoW9RgHkb
 5Tk+R2mdI8qWWhiFDvvKoUSmAaaIyw==
X-Proofpoint-ORIG-GUID: ZAP8yrsmXIzbUF5yhUnSg-pzKv9uFX-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

On 12/11/25 2:51 AM, Dmitry Baryshkov wrote:
> In order to prevent further confusion, drop SoC-specific defines for
> power domain indices for platforms which were converted to use
> RPMHPD_foo indices.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

