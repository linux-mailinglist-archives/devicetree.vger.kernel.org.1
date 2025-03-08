Return-Path: <devicetree+bounces-155687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDA4A57C8A
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17A323B0471
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AAC1EB5C2;
	Sat,  8 Mar 2025 17:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bp8AdKXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259341DD0D5
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 17:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741456222; cv=none; b=Cm3fIkKqjGu1HySASu+O5ZIIpeiyqHvXbu/LjYb3hTJZOPz5BgiicFG4It1pfBswk9snSh1ekHyZZYZEQIvXgDMLIw0AJ+gKLOtKvsGpBRo0CHRsINsJzfQmUzUP/mE0p97MjlPuCg2ZaJtwifqRkdFiKUlut87br01NtISWVe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741456222; c=relaxed/simple;
	bh=dQIUYzi4H3jR6gxsOng3CxQaSFYuj4bsVwlonUiWoN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PA2vD2n1L9GwAVLGdAW4Z3ulsnDEqNSO/VJHlVdRj4NMdnOWPUo2JpG0qKtKHNzB8twQ5CrN40ZxwRdBBCPbvbbWT5fYVDdLAq6MwtVtOHSkJyQ2YM18qSSPgRMQf74gBM6tNBLX90wqtYhTLhgCWHCO4rMPIYxlp0L1EC1lTek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bp8AdKXK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528Gwkiv022694
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 17:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zj9BnuPodZObJbGZ4wO29xgzIU45v7SD9LP2K3bAeJc=; b=bp8AdKXKCQU0aZ+z
	PXGOaa0Y9Js0wMBIgch4E82UVeQPjB/LSmoIQwEVkoHq0QFZc4sq2BVX1BMXvR3O
	Ol2/jPgN8zedvuw5Mfa9En87qOZL4kWW+tMY//qZJx3/VjJzerFTUQPElWzCEpBa
	sICvlOE2rvqDzp6RF7C8snMchafCHDzkteSsYHE+BqZzROI8VUTjoKnxOAE3HENz
	XpYV4pU6ajPwS94hWnfb7JZvVo8uCCjAc1pmvogjSmcmSUxy1aYAXiYlKCyGMi+T
	BZq7mZLqLSTIU4xiTHjuMVmul2fS+V0sp1rqtGqfESolodSaHhzebSvd4mDdz19g
	U1Dbag==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eyt0wtk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 17:50:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e906c422a9so3913056d6.2
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 09:50:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741456218; x=1742061018;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zj9BnuPodZObJbGZ4wO29xgzIU45v7SD9LP2K3bAeJc=;
        b=G2GEKJARzqsWbeaiEYf6WO0nXwYFWTUE99TtsjcGP7aV8iyO6XbrsaukIzmKvs5vjh
         UjX/I/+uPhgF+kC/H6kLNKpJzLcYejMmcVw+1CTy/NN4M+apzShTNuIF1Z3iuzfPfZHK
         327Cfoej9xO83axnxLC3HW76PIAp6Pmi7hoAnmQWRyCMpyzdVlIyYBtIv1VQ79JiKGjx
         ktxAJlVMfsrCqTS5jYqtZ9F9qdncxiN8Dr+VwawTLHkVWysbrS+6JUmixgYUMNejmPRx
         U9RZV1yFn5TdUMdrX6bUutDcjNQaPV+4a2R0UpvWupvidddrmm6F1DcMm5iKtsG3tcl2
         BgDw==
X-Forwarded-Encrypted: i=1; AJvYcCUQo/OjyUrnJAYFZRe7QAh6T7WsklY6YGkBTniXxc8SARfCYcv2jmdBM0t/SlVM9xYeV2G51gOzbqHl@vger.kernel.org
X-Gm-Message-State: AOJu0YzF5gtq4hC+x9SgZoIi8uSaKtsOeIGdBsTEoO/4dfcovqJB1Zz4
	BqAlV2kK3Vj6FWkix/TFuOP34jYKF47J3vZ5gbgQhJG29+P9W8gRkLnSZ4gtB8RTQP5naodsh1S
	5x+1P8zScIIxHxyEVBauIIW6pT17gApKIyQsfxg/ZopdrfMygekpaV4Iu5QDx
X-Gm-Gg: ASbGncuIQUYY8bPJI7PJ6oGLHz1hsyJ41dyJVIqhjFgtoQLsCNKgL55GH6M0v1/25cW
	QmtfO5OQMCpuRQmb0rKWDsHA0der6PCkX9UZVqKuFvjETSuckZfHj2tOTjPaXMeP/J4PmJDzQIK
	BIyQA/Tey114+Gs9uFkM0bs5+ruO20f1G55x8f1JBydXkWGYIlgl9/w0tis5xQ96SxGsiEg5tnr
	QDiYHhff6/JwDtnOTmv+xhZNRvQxWWeMZXQDEKIJF6lpM9QmxG7OyUfK886zNbwcKaHnjPJ7R8s
	7r+3ct+TD6GlqF4IODJcRk0Iw9qkgolgVtTAgJOUGNqHlvHcQtcE7zBukyESvnbBykNJ9g==
X-Received: by 2002:a05:6214:d88:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6e908ca70f5mr20078156d6.3.1741456217891;
        Sat, 08 Mar 2025 09:50:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkXMzgQacIMxKsPPQ0qqQUPmgYGnLd1EMdHSa1p+AZWWj27YmK4io2DsVwwuxR16lQY4gJ9w==
X-Received: by 2002:a05:6214:d88:b0:6e8:fa58:85fc with SMTP id 6a1803df08f44-6e908ca70f5mr20078086d6.3.1741456217568;
        Sat, 08 Mar 2025 09:50:17 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23988b64asm462789466b.155.2025.03.08.09.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 09:50:17 -0800 (PST)
Message-ID: <d2db3fc1-3889-4718-a905-9dba892be251@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 18:50:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/7] drm/msm/mdp4: use parent_data for LVDS PLL
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
 <20250227-fd-mdp4-lvds-v3-4-c983788987ae@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250227-fd-mdp4-lvds-v3-4-c983788987ae@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gzDEPxdx5flgavwER_KgjMngzd019vy8
X-Authority-Analysis: v=2.4 cv=CupFcm4D c=1 sm=1 tr=0 ts=67cc835a cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=f9hqsFba6A7s5isENxwA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gzDEPxdx5flgavwER_KgjMngzd019vy8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_07,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 clxscore=1015
 suspectscore=0 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 mlxlogscore=639 lowpriorityscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080137

On 27.02.2025 3:25 AM, Dmitry Baryshkov wrote:
> Instead of using .parent_names, use .parent_data, which binds parent
> clocks by using relative names specified in DT in addition to using global
> system clock names.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

