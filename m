Return-Path: <devicetree+bounces-133610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3613B9FB068
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 15:54:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A77F51641CE
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA9B1B21BD;
	Mon, 23 Dec 2024 14:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSd1qDvC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74311AD41F
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734965642; cv=none; b=EKpxjr4RKWicfIUvgFUlQZ6JjipYdZSAppG7w2VJW/wPFw/qA7Iz6zuTdrtyW6JquxjHWb51oqjCGRNR083srJ8WPWB9EMbqWXkLYGPw3CO0ONGMcdI3p8kd3yyHye183nKs4Q785ERVJYsuMP0IgBh3V3GQ58gQklzu/NJ0nzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734965642; c=relaxed/simple;
	bh=xf8XZkKz9WcW/XsxNkHMPIe0BkeE0atiLw8egHhCS60=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q45euMqLWJ8B+yBfc2slQKHXcnoNHEE2CPw4ixm9XOqo3xDCajstJLS4bMDKOCkQ/fYQFyL6SUgm+m1z6FM4qeojkkfYFCWcLHLpp85R3AbiipybVek57zxHoUeX1uCRW3mmHIk82Kipqq+u4k9CPs6hVszbGKgPZkskU+4zfhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSd1qDvC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BNCao8L004165
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:53:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5ghtmWKaZ1U0P311B2DIkY7UWMWyv3IgV388/E65aHw=; b=jSd1qDvCPg9OmwlR
	w8YwDBuTDcslSravko4wcTOls3KbGkkO8yfBLb1PM71EXvje3jKDb5YsdYfMtshL
	8QuWgu4ryxxikuxGZlgMqF5Qtyv9Ibda7s1swX9S+hX2Q1DghmY+9/jsdD/poJ+W
	ug9x9VQM5+VpsHpavUHDMB5bLlLvgvX37X/Lu/9cp0jw08unzJDfKkRFLgoPuLF1
	nJHd641KZn3UkHEMXrxriRXCGwzY19qurZNb0xXDtz2wje9lXh0JvLmZWlpoyme0
	oQjYt6rBnObUB7+6EYz7TMzAMpUXpHZCcJ46zrKXGzab8El2Jp0Iqc9QgjHtmFaU
	yKus/A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q8168c1q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 14:53:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6f134dac1so30282885a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 06:53:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734965638; x=1735570438;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ghtmWKaZ1U0P311B2DIkY7UWMWyv3IgV388/E65aHw=;
        b=jvjIBQGIJUEeTVu6Dh3DZXxwZYWqmwZ91s0wYpN8sZv1iq6KFfJxw/jdNHJmYhTROB
         ueesYXs+/xYSIhRiAO3BAjpsIOEr6xBRpNAAuwjPj5rkNJuT/O2S/TFI/PYU/atrGZ91
         U23NeuhaovbdAqSFuVXjzVICFCrhUebPpJFlh1fbsjdXtO56hodJnsVEbFNIoLUDcadF
         fNKeCau5YXi4fxpXE7EO71F4h7baIfVC3GAsxysp93BVP1oEgBSz4kzXufadpiDzpp7T
         Et2/x8fm/0Yf1GjjDfuncchPFzkRfDbvYP4W8Ck0Azoo8BrQp+Z2QCri3QuGngktv7sK
         y8og==
X-Forwarded-Encrypted: i=1; AJvYcCWJEqZ2NnqRNS+zrHHqI1dsV+PXjtoTfPXxxogSq+yn3CRdigYCT8rjXggC4++4N6SL0EHhGQdnnryk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5yUtT9iHsBE9bDUrrmn1ixwa0RRyeYJtXMrkbyddLpZVKkPkh
	OnRDXLpCrGWJZ8R0VHUd+N85ieN2T1N9mvnzvPSrWCB2XCw6Y+NybKJR1UOZUQK3/UfnS7CoNLd
	ZnClwJBrhuxMRqYKmvKPhGCEfRCvDb8E1OxQVVIoPvZAjuGEtFu8DAxrvh2EB
X-Gm-Gg: ASbGncv/02TI6joAd/VJPi/0sslh4iRls2jN+OuEAgfDe/uyDRJQ+PsX+4KbnDaiJ4v
	KqF8b+LlaollwdX15x+tS7/+MjrRAYFy42KkCPVlqe/2hPrKqzIWDgj2kMsAsNIpQjNOuqWawjZ
	kooJu1EHQEbRJjWX3u+F0Hoapl6pL0LeqY59/tlgjdW4OMsYbyjcWTHP0gxPQIml5pbulZyXhgE
	4MEzqkvWTeRLNp1e28GjMzawvkH/J42mu6AZiBqvE4YEHIWB5Ek29+Pkzius3yvwNnmS5zGurQq
	GX1aGm013Gjo/Sr/0t5rCpj6e6Wl5zx+S+g=
X-Received: by 2002:a05:622a:15d4:b0:467:6283:3c99 with SMTP id d75a77b69052e-46a4a8cdd7bmr81247691cf.4.1734965637863;
        Mon, 23 Dec 2024 06:53:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0ijPdXH8OJJzJaaNa9GXKoX6mI+05srwOUkZxvg03q2jV0DPYvPA21HOuhd3j1qywYncbGA==
X-Received: by 2002:a05:622a:15d4:b0:467:6283:3c99 with SMTP id d75a77b69052e-46a4a8cdd7bmr81247361cf.4.1734965637498;
        Mon, 23 Dec 2024 06:53:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbbasm5192315a12.71.2024.12.23.06.53.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 06:53:57 -0800 (PST)
Message-ID: <43785ae9-ee3f-4107-9f8b-08b882e5dec4@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 15:53:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/7] arm64: qcom: dts: sm8650: add interconnect and
 opp-peak-kBps for GPU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20241217-topic-sm8x50-gpu-bw-vote-v6-0-1adaf97e7310@linaro.org>
 <20241217-topic-sm8x50-gpu-bw-vote-v6-7-1adaf97e7310@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217-topic-sm8x50-gpu-bw-vote-v6-7-1adaf97e7310@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tRhv79JQ966n7z8YnDSalgMXJsSfXLZo
X-Proofpoint-GUID: tRhv79JQ966n7z8YnDSalgMXJsSfXLZo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 suspectscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 mlxlogscore=745
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230134

On 17.12.2024 3:51 PM, Neil Armstrong wrote:
> Each GPU OPP requires a specific peak DDR bandwidth, let's add
> those to each OPP and also the related interconnect path.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

