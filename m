Return-Path: <devicetree+bounces-144780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D78A2F3A4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 593E07A06D6
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:32:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B08F824BD07;
	Mon, 10 Feb 2025 16:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cn0JoMwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51898241C89
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739205147; cv=none; b=NHk3KhGIK0wPm+WmnkJgHlKajxiJ1M6LWNh/6AmF/pdWEBYANKjhp4Swa92qdRqYAce8yyPnRi30i+XdwGrdIoW4dopoAnT/dlbePhyN56hKjzb2uJCVhGP6JzMPVRv9CufOO4GWDWy2JCi0LrvVZtw+LBCqTfYB+sRzV4h+E98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739205147; c=relaxed/simple;
	bh=3JiJns+OUPcfmrUNS7GyiLy03TpqRQlFAZ/nTjInXaQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xxpf2slUdVbczXNjx9jdoRXfUwrtjMU83ItjZFkOiNV1X/UoQftOMidXhvyoRVOKBe+eZa3Yz8sRQZAcv1ZXjduAEqpKh0nM3t0j7a6b5c+fumYeY6Kt0pcLdG+y5qo9J8Qasws4ohSQDRGkj5tk6b3jnOZEhEqRHfprICSY+To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cn0JoMwZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A8es2Y006137
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PllHdGFA8xSW0690rPMUrAEqzelfEIRuIJxgSYa+UlQ=; b=Cn0JoMwZEOyoPkef
	61kkoxfOO8ACryC6Dz0YVUUIuK/gbvwFhhTs6OuNOwazixlUJJCm+GW+Sgz4Bdev
	NI4OlSvfNmM0ilNyUagm/sBmSUnPrAb2ze7+t2hxVxFxsFLWp67rrppA5TtYa+aD
	5PwSa/SmbQLC67e45REnAoXtBBJnbXEXdLOMDqG2xYNI3I9pxn/ERV9iHyhF33yf
	qba+zQ/kZxr0L9AGSZw+SE8XImfJZ9wqxIHz0+dgB/B191xN9/fUGG/3dTC+9tVF
	zTjQcFrEL0y7wmafcq9tspH64NgPEzOok3vR9QuYI1kla+ullsQK0Hb1f3Ro0tYN
	uOaC9A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5ms951-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4718adef552so2349661cf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739205143; x=1739809943;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PllHdGFA8xSW0690rPMUrAEqzelfEIRuIJxgSYa+UlQ=;
        b=KfrP8Otn91Vq8gL0FewKq3P0a0n9+UQOqEjw5xa62W82RrhSRvHocLWuIH3sAnBh8R
         pAyjTloGMXApdBAs99i7wjO/5GTd3pkovahamoiBXoIlJo1q9mucUdKsAh3DwlxgSX/Z
         vqdg6TvyU4y7RjODYqiNPo01u85pa+VcyynyMQr8cNCx6QKq1vbU910SHmQbcIFdxBE9
         gdtz8PqKoaDuDxNYhYPYjj2V5NVEV7q2uELEup4IBYAV4/KCr5p5GLnuwfVbLo6qCdZG
         NDw/0yyKLOi6nY20mBiqaWFHrQCgarvU78GzkqsVikEF0z+6xaQhN9qjT4k9qR7Z0EDT
         Iglw==
X-Forwarded-Encrypted: i=1; AJvYcCWw0dYGX+8d6Pk2/ZgshNI+5WiEOGKnXJ+ay1lgfC4QwODF+R2i5m1UWatMUurAT9lh4/zznDJU/6Rm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5rhWRW/syznbjNZNmDqp17WeVkHdrAPfidBkeIIrwaVYOwrZM
	Z78hjBZ2q9KTF09DYWGsevMOZ7gv2hlTPgl4Yh6nWQvkV4G0fWl79O1/PaJZC4KdxSHlMAiNGNt
	cKqLTAciP5qRi7aCyihwVllLABk0BNDmYKPR26Q1ZSpDwFU9YSPS0vaMxoyeS
X-Gm-Gg: ASbGncsBcgxuXrIhn6NqeMPMgCvCFzj6G87WygJyR6F1tEu028IXPVc0MWapHStDCm2
	SijhANQUa+L+D/xOT1JHHbhPYECkxzc49lyFJxLJI4NbVel6qb2Pth4sp9edBB0IITi21ZPe65H
	OglwdZkRdO5yKfg7+1R7JMgEgyd0RRo5Ga/Nw2UgZJsK2jjCntUz5aiH8m9NISO/5k86Lb3k1Yr
	zgl/ArpS7tgVNlk55bOfaxgo8TZKdWPPbTgQlp87fvpAtRJnc7q21akQem8iim7ggz7KsCNsafy
	a6c1KdnETckpImxZonQwHfwjjAiiSMlSIWhJg2Uqq3kea7qmJ3nNQujDTZQ=
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr10935631cf.12.1739205143347;
        Mon, 10 Feb 2025 08:32:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5IbZNKFe36TXsRdBve9RfSnI6zfiiQRD265XZv9cUtcHZVy3F19fELt4eG6KVJYmaMFNtpQ==
X-Received: by 2002:ac8:7fc3:0:b0:471:9a28:9cd9 with SMTP id d75a77b69052e-4719a289dbfmr10935441cf.12.1739205142905;
        Mon, 10 Feb 2025 08:32:22 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf9f6fa21sm8114981a12.68.2025.02.10.08.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 08:32:22 -0800 (PST)
Message-ID: <1ffe8c68-3668-413a-a289-51a0b6bbc8ca@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 17:32:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: sm8650: add missing cpu-cfg
 interconnect path in the mdss node
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
 <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-4-54c96a9d2b7f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-4-54c96a9d2b7f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: NbRoh-0Psri26wbpctKv73OQe-bf16p_
X-Proofpoint-ORIG-GUID: NbRoh-0Psri26wbpctKv73OQe-bf16p_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100136

On 10.02.2025 10:32 AM, Neil Armstrong wrote:
> The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
> add the missing cpu-cfg path to fix the dtbs check error.
> 
> Fixes: 9fa33cbca3d2 ("arm64: dts: qcom: sm8650: correct MDSS interconnects")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

