Return-Path: <devicetree+bounces-206759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0079B2D71B
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:53:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ADB93B1EB6
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4703D2DAFBD;
	Wed, 20 Aug 2025 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhKKNkil"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53A72D8DB7
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755679892; cv=none; b=Ug2NhxDD/Br6srTNWFNcyswjZc+ENbGpcPHyYOtaCrSWR07+Prp4mL/ZgcJpS46waWlL7zvoRJhCVwF9pGDrpY4y91PKoRRzjH0mI8/wFV9RbTXvXmgeKRUOZUoc1HAxlWhtsatGWnmy2uydSvMo6YRJB8au9lnD8hqO6kzC9Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755679892; c=relaxed/simple;
	bh=/ds2ps/9fiQfLgnyFNZdjYCVb+MpjXSLLk6Lrhal8gY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Lel3ZkdxK7VktPjcWVF5nnbjsZer8lBMrjrAhDHP/GApHB49cfITaXk28ThO+kt4xNf06/vXcOP+d+cTKri16OmQwajxpdYhObk1uBd6rTrD6K9LwTKJ6mLqmoDA0biu53MHU8a1UvEZrqKCN+aFElVZFuJTNudMhRWXRxOvULQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhKKNkil; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1pAsn021351
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:51:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y4OMPtXQhdfS1IUPfrekUduc3f8tO3YSwKKo5NLCOZQ=; b=GhKKNkilIu9G/9Ca
	eNi6oFbDH8z4Sd+aRC/mlkWsbAJFSgM2bzmI3ygq7x0rs4sw2R36/Bt6ST42zrQ1
	U7MNMRdCd6uN0zoNCbWXHRxOyYXulay+DxAQZzvAdkQSQFEKOv0mRsYwTbXW3TM6
	VzWSlcihfaXgMF3Kovl7GWHRcuqHzI05IAGzV2CQZ4Aj/h26L32aomHpoFQtcvbh
	5rxbTiIXKS3LCbTiGvidjupSmFwh/YdJWa/MH4FFu5hkd1/iMqHYRHPRSoRZaPB/
	8q0DwSLI+26DrZvp+7uJemkGCtMTYPsKupz1CmcGPEOLslBdDroAsb2zHr48j1KT
	24cXUg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n529126k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:51:29 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32326e21dd6so11901542a91.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 01:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755679889; x=1756284689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4OMPtXQhdfS1IUPfrekUduc3f8tO3YSwKKo5NLCOZQ=;
        b=FA4j+yOvNpQmwsipj5nLlMv+0U2nDYDmKgwHhfIHuPsFTJqSQUrJyKDCtdhHgmdWC8
         sIIEnXxxVHGRXOLtpDDo7xvbMs3xt81WXr46zLfjw5H7EjYjyrjgJgxYumwYbdSoP2sb
         vm20jxsL6aDgOWG4kqSp8+GPC0rWf9msNBDoXkDpRTyHeVRralBsIwoiHGQHOQ67/PV5
         wwZztXeH7s+Qe44Q8ccHnVulFlNdd1MImsagpA5ge4pyzZDT30lNlsoABl1mVIkRIuVf
         8bNC+k+HtCMatrVNx4pOQZm0xxcVGrAnsIFb+tzvuxgYKdiqBquEUz8HkN+iVIepTOvj
         diZg==
X-Forwarded-Encrypted: i=1; AJvYcCWlksO4t0F9Sh7IM9XK8Av1NqaNt+KdMENJ4uP6Nf3WmfjbcNvKdqsZqWazWw3KPTFOGWsgGIRG6q3Q@vger.kernel.org
X-Gm-Message-State: AOJu0YzJqtL10JDERzaq0XX7Pq2MeNb1vl9KGLxlF/HsYQeKtAFjS0FO
	X6b9kXcIfhm+1b7rIeU6jQltqOeDMkXN5TUeTi1brHVFmyVsm5oA7kWS0eR3l2WoU6oF9ZwN47h
	QTsPm4JBH1Eje8RjKURQ/dVgOJa4SPhT+zW28HpAQGZ5ZuMI51GbKbGmjWGbcQr07
X-Gm-Gg: ASbGncuRRzFeMt7Hl/cthtA7NpDmzUPbrbe2dyrzIneJ3uXQOOOgkK+YybBSzASUgS0
	4xfyoiKb5F4lLJ5Nba0yVKGZaNiqOEDT3PXu98mqIeKCaHDP+KDyeadW2Wqvj5U5Ks+2oGpOAvj
	Gvu2YzKWzDIjj+fMCilEgXeQuGV3RvTUPzLSl0IUJV9RI0yk8a9g37/4T4SG2dLMRBtWJ+acYAP
	nD+5HjoZIQbK/M0UQ8rfR6j3KEhHVSNZ7ho8Nlo1BfhxZzk/1lwlxYhyce1fwXZxZCjAFGG1h7o
	GXkHez3lnJbDTuv/1eVgpfXFd/49JSKo6yjJef96FHLiMcZ0hfI46qIMvxF5bV3DDPR6s8Eq
X-Received: by 2002:a17:90b:48c6:b0:321:c0e3:a8ce with SMTP id 98e67ed59e1d1-324e140d2b1mr2658896a91.22.1755679888782;
        Wed, 20 Aug 2025 01:51:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT7ZIz0JNmDoMWE9x4Ai5P9gO4JkYSgLlzLle23lvK2iLaSkN70tzxtR9pL+Q06Be6RHXqWw==
X-Received: by 2002:a17:90b:48c6:b0:321:c0e3:a8ce with SMTP id 98e67ed59e1d1-324e140d2b1mr2658869a91.22.1755679888241;
        Wed, 20 Aug 2025 01:51:28 -0700 (PDT)
Received: from [10.217.216.215] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d0d1a44sm4787237b3a.1.2025.08.20.01.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Aug 2025 01:51:27 -0700 (PDT)
Message-ID: <7d3e5cf7-4167-4005-ba4b-c1915c254705@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 14:21:21 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: interconnect: add clocks property to
 enable QoS on sa8775p
To: Krzysztof Kozlowski <krzk@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-2-odelu.kukatla@oss.qualcomm.com>
 <90b51e31-3217-4483-bb5b-ec328665a723@kernel.org>
 <28b97952-1b67-411f-a7fb-ddd558739839@oss.qualcomm.com>
 <ac83c453-c24d-4c4d-83bc-9ed13f2f9d1e@kernel.org>
Content-Language: en-US
From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
In-Reply-To: <ac83c453-c24d-4c4d-83bc-9ed13f2f9d1e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iwSIZzEH1wVMLhd1qpsZbU9PdsZPCdWF
X-Proofpoint-ORIG-GUID: iwSIZzEH1wVMLhd1qpsZbU9PdsZPCdWF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX2QHMsR4Y8Jr+
 7JoHuZIoAY3jrVEHwkJcKApMzxJAp38X4AdqPWuXyF9qwo8azaLu2Xt2fSfppIzYvrveBTyecFj
 h+ISNyjUGTpaT3zWyU20T/AZRzI/i5+dtHjbroPDKWp2c+ltStoVlmpNAHRziC/homFhki4mjvW
 k7TjrtguFz/5sHuYkbXzBkR0R/n7FFvPncGtOyOUgLDRw+MixVnSryH/ssKP5V2MIa5UAiKBPdx
 pf/4ONB61oBAm2hgsfkMV0tiVqAv1RWBgTqcNwYCAJhRFUS1J/QtY+iCd4W9kY+WlHJ8Hqr3AUI
 MHXxtHytJZl93XG88EyU6LJC8OfDyEIeYjZ6WLLrV417kcktpxiSAohoMNqcwUqlZAa3HMDV2o7
 PfZfnHYpZTYsRdq0k4Pysbl5RBw0YQ==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a58c91 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=tJ9fhpcgm4yphQaQ0K8A:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013



On 8/13/2025 11:32 AM, Krzysztof Kozlowski wrote:
> On 13/08/2025 07:55, Odelu Kukatla wrote:
>>
>>
>> On 8/12/2025 3:47 PM, Krzysztof Kozlowski wrote:
>>> On 08/08/2025 16:02, Odelu Kukatla wrote:
>>>> Add reg and clocks properties to enable the clocks required
>>>> for accessing QoS configuration.
>>>
>>>
>>> Nothing here explains why EXISTING hardware is being changed. I also
>>> remember big discussions and big confusing patches regarding sa8775p
>>> (its rename, dropping/changing all providers), and this patch feels like
>>> pieces of it without proper justification.
>>>
>> Thanks for the review.
>> I have added description in cover letter, i will add here as well in next revision.> And this is hidden ABI break, no justification, no mentioning either.
>>> Again we are discussing basics of ABI breaking patches?
>>>
>> If you are talking ABI break if we load old DT which may lead to crash, we have .qos_requires_clocks flag which takes care of skipping QoS if required clocks are not enabled.we have addressed this issue through https://lore.kernel.org/all/20240704125515.22194-1-quic_okukatla@quicinc.com/ 
> 
> Format your emails correctly, it's difficult to read.
> 
> Your binding did not require reg and clocks. Now it requires reg and
> clocks. This is called ABI break.
> 
> Please follow Qualcomm extensive upstreaming guide, it explains this,
> doesn't it? Or follow writing bindings...
> 

Thanks for your review and guidance.

I agree that adding reg and clocks properties to existing bindings is an
ABI break. The sa8775p is a relatively older platform, and when the
interconnect provider driver was initially upstreamed, QoS configuration
support was not available in the framework. As a result, QoS was not
enabled at that time.

The motivation for this change is that certain interconnect paths on
sa8775p require specific clocks to be enabled to access QoS registers.
QoS configuration is essential for managing latency and bandwidth across
subsystems such as CPU, GPU, and multimedia engines. Without it, the
system may experience performance degradation, especially under
concurrent workloads. Enabling QoS improves system responsiveness and
ensures more predictable behavior in high-throughput scenarios.

We previously discussed ABI concerns when introducing QoS support on the
SC7280 platform. To address this, we added a .qos_requires_clocks flag
in the driver, which ensures that QoS configuration is skipped if the
required clocks are not defined. This mechanism prevents crashes when
older DTs are used, thereby preserving compatibility.

I will update the commit message to include this justification. We also
plan to follow a similar approach for other platforms like SA8775P,
where the provider driver is already upstreamed and QoS enablement will
be submitted as a separate patch series.

Thanks again for your feedback.

Best regards,
Odelu


> Best regards,
> Krzysztof


