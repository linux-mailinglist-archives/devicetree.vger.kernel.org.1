Return-Path: <devicetree+bounces-132868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6870F9F85F2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B4BD7A3708
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699011B6541;
	Thu, 19 Dec 2024 20:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UubtjLmU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CB21A0AFA
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734640278; cv=none; b=PUzwYHMVunO9v1TIeFNOi1/7JsvHCfWB6YU0gStYMWv+WGD+p4GddiP3koKDSqhkXAhhNzwTxQBKkPwdHRIK+Sdk+QCVjUExWmwt3PZ7rmayHXj+ua5HR4mRl9zfVK/zY1kaBxjdOKYL3sJaMo+XRv/seJPl06a99HCaG0SbBbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734640278; c=relaxed/simple;
	bh=Stb5F+PLbGVcj04yCFnD7g1zWF4aaJ0ugAOc3kFyYZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hxUJcIFlZZuy07F8U8t+2KmMQfW7qfLNoRhB2fgUBNEFx/FSwaW8DcV+KvI2vLLh7uHy3N18i+yP6yt0INdjwLsGLIAzd/f7sfHwUVqsG3y+Zze87IQwSzVQzpiUI1dyGxhtF5iCBjj3Q9UqAjS6vA/hUFg4B35jMfkyGUQ2tuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UubtjLmU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJJrUQ4024248
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kEd1ikdMFXCq6Hs/06c9ITB9jI1Rf8Mdc5eUz+u92eo=; b=UubtjLmUFrZu7DFM
	pYmBkWti2jQxUHX3P7vSJQL/uAMcRhRf5T1hzt938WX46iMyQdHT/TpBwD0EXZ0P
	+rE3L81KCdp8OJgTILgnahpOaCei6SiMIkD+75sXbn8PaMwXVwCYL/fcSUiUMNae
	gHyFyXaccrv8tmUp5HqQnppa8LWZwmKJNui+itVnPYovq7F7CQIvOZaysLVGXb8d
	60Kxc1BOSU9errnkq9Cz0I+H2DbQzut65KNREizFPYowz6WJrfF8NekRznIdvzVc
	by2Zf/Eq9aXNhuuyiMAYZsaRPip8c6QWIum7aSpHJ+EEFOh/bwTLVMarwTcefw/J
	/z6z2Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mt1wr2dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:31:15 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-468f80bc8fdso219941cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734640274; x=1735245074;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kEd1ikdMFXCq6Hs/06c9ITB9jI1Rf8Mdc5eUz+u92eo=;
        b=kg7E6kJKyL9zx1Azp+W+mPX1MpxCoJ98rFq8UUmUuBZI+Zqj6Fnoxp+ioRueKwh0hV
         /ecrQ/W2r1WbY88/vAHYIfo2neQ6OofLxKDy0ACnX2f56wL2pbUiBOLsjU257MVhbeD6
         HB/foUIbc4B7SwhuURL23mDEG0zTmn/+F9vu48aYPAXVzo9lWrIOQ5GxP6se60x6Dr9p
         qq848+wBEJegMseiRQcV8CtkAZ2FQ64pok0kiBBr+IPdYSPYN6APtRmtBVmbMDw9TGYU
         /Ssz+lUuYGe3kMCxQ6TVP9P0Yaq6qdcd59AQTfT4mkQvAnkJ4nUK2SeXNnynG8tZreq8
         f9Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUuFDxvZKcThUUHYiFUM81fJlAUAaAUSoWaRIDDzr4GImofwtFVD+M89tBWvp8FImD9la2YLj97JcKB@vger.kernel.org
X-Gm-Message-State: AOJu0YymjTtTQcwZvjJzGUpInI1QE81dOifDnQdvp9xkAdEtgXRt5K5d
	tNha2KD5EIyUahr7soBC1x58X0oQhlEyQMhrbLauLjk70ivN//w+J9SHSOWZoDmJMuOFvjBWdN+
	ZilLZ7fCxBFUOsET7bJZC1WAQu91rfeOtJ9ODHlXNMAGY9Xb3GM8b/1iNYrDv
X-Gm-Gg: ASbGncu+0II1M4vo7LQNP3aP9bZ+T5HV4f3l54YFkFK4uq+gMhhWhqABqawnf43TzEp
	N5LF+x5EOHDOLxiNdOqeOHvOmAC0UNHajwsr45egsQQlYREaXtvsdofJcEodO5pFD+6n4UQRQuX
	rpojU+/hYCKxRy7w36+6XjNtjfWoL2lk+JYhZVNNhrX229njpa00x3c4b15nkmJ1WW1ZJqXvBF0
	vzlmguD+ilwpkrhIzkKcv/41Dggb47oX4d+b/92SYIqkz6/S5wg1uAXQZ1IJ4dZl7h6gfM4vFFl
	LCDkan6xEFHjfnIpL5DIwAU4lws3vzK/Rjc=
X-Received: by 2002:a05:622a:1909:b0:461:3cd2:390 with SMTP id d75a77b69052e-46a4a976f47mr2527001cf.12.1734640274529;
        Thu, 19 Dec 2024 12:31:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFw1vwgTOwOzVY8/Tn7DUj0B0ykISEDQWZkgubggiXEVzJ9LlH9NuacPGwqxgW8at9UmwiV/w==
X-Received: by 2002:a05:622a:1909:b0:461:3cd2:390 with SMTP id d75a77b69052e-46a4a976f47mr2526841cf.12.1734640274122;
        Thu, 19 Dec 2024 12:31:14 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f013ab3sm100448666b.140.2024.12.19.12.31.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:31:12 -0800 (PST)
Message-ID: <52333311-5649-4d0d-9160-9c16d01764db@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:31:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 18/23] arm64: dts: qcom: sm6375: Fix CDSP memory
 base and length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <20241213-dts-qcom-cdsp-mpss-base-address-v3-18-2e0036fccd8d@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-18-2e0036fccd8d@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: I6dFjt2pgXSIUsFSHlY5_cf9nkQLvTp-
X-Proofpoint-ORIG-GUID: I6dFjt2pgXSIUsFSHlY5_cf9nkQLvTp-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=780 priorityscore=1501 mlxscore=0 spamscore=0
 clxscore=1015 phishscore=0 bulkscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190163

On 13.12.2024 3:54 PM, Krzysztof Kozlowski wrote:
> The address space in CDSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB): 0x0b30_0000 with length of 0x10000.
> 
> 0x0b00_0000, value used so far, is the main region of CDSP.
> 
> Correct the base address and length, which should have no functional
> impact on Linux users, because PAS loader does not use this address
> space at all.
> 
> Fixes: fe6fd26aeddf ("arm64: dts: qcom: sm6375: Add ADSP&CDSP")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

