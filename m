Return-Path: <devicetree+bounces-141427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD91A20AE4
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD4653A7EDE
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0921C683;
	Tue, 28 Jan 2025 13:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dPWSEeI3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD72629CE7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069392; cv=none; b=MAA6Oy8vgUZihDrlAzY+umxdfHVTvb/dIz0ys4Sbn0anHTgGxmazCcXKOY++q/BppMVAU7Xhhsuelqz7/HcjAtAZKgWRcr/0KD5GTPJDcXAg1wiIENf7CHU/jXVO8cCkN732sSRKnMNxSMohs3O2hdI20613yY6cmzKuabdPhyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069392; c=relaxed/simple;
	bh=CRNXz5Do8hA7wQ9Pp0drIPiIP/foc8Qd53Aqk3CTtys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F1a0JEaw/a1crFP4064A8OIw7i156gvY+yoOhHteOjhBOy6mHyky/w8ckDY4tMMSiqkT+CWHX9SruBCGuwkr41DJdf2LBO4pblhDdCOfqHeOkZ/fuwW5vgfEleh2dTY9lLygAT9fOLwE5T3t/dbJr4V7vl50Se4cHgHVWwM4zzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dPWSEeI3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SCj9FX030026
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SccPDJ7IsQUS8tZ1suiF0ums40XQ70V/e1OGN+43mpY=; b=dPWSEeI3rEX8iIWy
	7fCk6tLKHQ/pbbADIKDTnyUbFAQH7rcS1KFRNwBf95LxoLrshzw+oI/7ADr2kSGS
	TOk2cG8FKF4EjmgFtAmAAv+HR7j0LfKehPpZO4+ht4aLWGGiLVd96+6UPEQYG13K
	auRHGvCI5BBiZhokTOwmQzOB1hKNUF3HaVH/fl6kLq89f2+PkDMAndyReZC1wy7I
	xecZYvEMHpLmNvsKvggyUAZm+rMcePrA7GEBztdul6Guqp5+Pd0XD1FSwx4y3sEB
	WmWZNVLgKQevlHeOnddPst/U0+8pF58eL9BQZ5QZZFywspLPIiJw9snhLNgpn0Bc
	lat/1w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44eygu81b4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:03:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6fee34f95so22957785a.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:03:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069389; x=1738674189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SccPDJ7IsQUS8tZ1suiF0ums40XQ70V/e1OGN+43mpY=;
        b=XJUnbP2GZDvyweb6yJMiIidp2cknYVuTdJJ1z492nIL26guQcVJnnEQURvfjlU9Kl6
         YGaEg8BqOe+5r5L9j2uVNHINOmRPLY540/IvvnHqHVB6f2LE13yZ9Aapt15eNUHvvDjf
         3yXlc0oags6akT2bu27IJ7rJJP2vK7ss1AfmZERABFIVFeejfSnI/rMryLzPqsar7M4X
         5OjoV/AmI8AmgBmY99LuAjbrF6I6XJkb/f9HeD01+4QYrnyua31PaiDDD+3Vo30Y241P
         tVYZitfkp1WIqDu5xENobpY80JIn+lvZLuiE52ATMxMrraOpvQatf0bmL6BLrEG7o3GC
         +9vw==
X-Forwarded-Encrypted: i=1; AJvYcCW6kAAd+Lfj8Kc7YV0yyIn+UVLj80pW0dRIDzbtAVSXEtHeyKZ6oXPcn50IclTuH3fRUbRjkp6sDzqV@vger.kernel.org
X-Gm-Message-State: AOJu0YyklvdpffZFTmU1VMR0ZYe1RW27FZUyWTD2BhGGifCt0s4Qli3n
	YFACPB/h2ID4CriJYl1VyxaMdCxVgYHbSXz0e1v/QxzJ7KJNroeYR4GzU0gUJ2gbbhJqb8HZL+E
	hja1eOl5wkzkHKXqXxrUkYfcHRqda/U55n7v/JTZYfPssp+Y5tFqss4RWdjJI
X-Gm-Gg: ASbGncsz5vWy7l0rNQc1H/XW8KAOAMr2y2IJatpdJdVeG+D8RB1MIvpJ0HFx0TsNalT
	RBXuO8elf/Hy7Nw31pmTJlR9wCCeKkijzCGonqzScj4Lx8d0z9PXyhaTRZkYUzybmlVUsM0aDMW
	LaKV69iq0AUScpMZQ7M/ESsn9Fv2rwv/umzAUjlTT3bCXFmVQQEDEQSa6E1Skhv4fYUQVN87l/A
	K6g3RkxW9h+sVByMdJPg6Hs5MU1csK+9AVPRR/Rxkz6fyCfpmlXqFqTZgWjvgYxzqKam6sAGRsN
	cuq4kPICYMHFOg8L5AiXVW34UOQgXcLsyqiQzXT6x5G5pbNhFseKpp4MSQw=
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2259375585a.7.1738069388774;
        Tue, 28 Jan 2025 05:03:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHobxKrxfFza5mt8mBCNQxJsHHa721FQYalZldxdJgzQ0HAKK+gfBEy0gUxIiSZPn49zX3B4w==
X-Received: by 2002:a05:620a:4252:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7be6320aecbmr2259374385a.7.1738069388429;
        Tue, 28 Jan 2025 05:03:08 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e12199sm776861866b.25.2025.01.28.05.03.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:03:07 -0800 (PST)
Message-ID: <b6191629-a486-47a9-a6ed-e82fc51784f5@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:03:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] arm64: dts: qcom: sm8550: add OPP table support to
 PCIe
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-3-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-3-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2QFjrvaolncl42JQEuvTX3e8VZ1_p2VI
X-Proofpoint-ORIG-GUID: 2QFjrvaolncl42JQEuvTX3e8VZ1_p2VI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 mlxscore=0 malwarescore=0 phishscore=0
 mlxlogscore=888 impostorscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280099

On 15.01.2025 2:43 PM, Neil Armstrong wrote:
> The PCIe bus interconnect path can be scaled depending on the
> PCIe link established, add the OPP table with all the possible
> link speeds and the associated power domain level.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

