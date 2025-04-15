Return-Path: <devicetree+bounces-167513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9E8A8A991
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:46:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E53F6173784
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2708257426;
	Tue, 15 Apr 2025 20:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iss8FBiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C992566D3
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744749997; cv=none; b=Tf9IlM9gUfFMNZM6ipXZH5bz4B3MeP+6jqoPj1zHEPnFnXAVCjfaP4b7oKjUJcDvGXZZyjADgSnXF/2BP5zEu6aJj3lBOeAYpBSSoCBXO4qw0bBndSU7IcgvO3WfZkmTuiwmDmEoqK1MUpbzW3dUg94bCG/nvKerLKXFK2rWTRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744749997; c=relaxed/simple;
	bh=vfr/VRykqbJeKWTK4pwPjRELlnhBE42z2Z4846zXLMk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GBRZ5e8n7iCGpvMgnPMDPElfWe4RrLI96k3nBHt1TU3bCUuxhk4vFte07DIJdromO5eiTu0fQAiMczCjy4kUe06vGdojEfFJPsqZDdDfT9id0PxWZc4EmdJHcfxZR0FAS4lBIuHUa3B/o5/1ZGyXoy6m4x/oBDh9ORN14xeCuaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iss8FBiL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53FJBuVd005844
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BTYA/YX4Ow0hsnVmRfwm8pQaD7/pmsS8NyHfWH3V9lA=; b=Iss8FBiLOrFcd6Jy
	H0CURZTsJspn0Xsve+G0FX+hEIooHW7buVCSacyDgHIk/IAJT3uXCJmMusciEWiR
	7icmBl1QuL+O4MAIellDYSg0mLIOtUhBekSfnW1eeaaBGTVGPUbvqybRpKcXEEhv
	ZfSoBnzQR0dhmEzYlJfURUEbJ/LpfB6f1j625NDiimOzg/qEEeLdtIintSzAuNGo
	f7gxt6KPV8HpUNMrE7aUXKhRMuJbgMky4x8TUo7bSi3tZ34jOunI3G1d+gi7mHpD
	c0tbOywIPfJRE7UeNX1SHg8hc56bkUlIPFArdj331gFZFyA8FdmJo85NWgtZPE8v
	MsKTvw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj9j5q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 20:46:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5af539464so141105885a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:46:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744749994; x=1745354794;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTYA/YX4Ow0hsnVmRfwm8pQaD7/pmsS8NyHfWH3V9lA=;
        b=A8ltUb/2+eNfMnxF4bABuVvPwOdmCcChPAXRwOUZyJtnc5fEz0oGB72s82/geD4K+A
         u6E6uw4iYxnZzjs4EVe0ZGl1I5BBVXPhDrp2+1PSqTuPQLVtd10NvfXKNk3Z7rlB5t1E
         gXr9FlfnTMm2u4t6v6Xt6nGNvZtKxi1VOqzJ2E7hEE1zEZSPlK4GchNDP3lbYyVGJ4tq
         yh64DV6PJDC+USVEQ6vw7JbtufbPFOtv1X/wM2XOcOzKsw3/Ym7HQPsdSgWQKmwhFqNU
         evWmzva+vD+21I2PSLnH1CA9ebuzdDVdVH/33LB2y520EJzzhH9ZIOr0dT+GAzVeJZ+J
         zwFw==
X-Forwarded-Encrypted: i=1; AJvYcCVje5DvXChoY4WjzrY9BqtWc1NScq4DQkDZ6z8cZGJ2N2hj2TCZViGGhxniGuYtfk4xjDf6u3Dx6/5L@vger.kernel.org
X-Gm-Message-State: AOJu0YxzWDSK1QZ3sn4Zoi6GjRSTF10kZorbtbeItdNIa4wIu9WJbcnV
	T8yf8CVhUW68eC79azU3DGr6+6xES2d0RaJCRUgmuoMnYCW2j9+ClljssAmL3Iwadn5ltSJDDmP
	Kso7vEnBZoLbwbDrKjfYNSmz4VqoFCPELT2xb5GednslVWpxbzBhn7gSWowNv
X-Gm-Gg: ASbGnct0bM3IpKygGrDaHTbXRcPYZDk7RYDhVD008gTTGmj01yyRGbD8tm178l4Mzsb
	E+Fug2mu90JinBp0gWGBiCveHJqEIWwmTwiAD8RlPihwyYyfMGhvw4US3R0ChHulUwKFYq2wePD
	GHudpMdXbLbTuT/azJ74+7o2dQzSYLsHuDGO9r+Ema+xOqAfIke6vQDalFQRzfEeJEY/9DNQLwG
	fmfu1bIhBk0u6UZdyDHjirrZhrBSCKsWYjGtzW1Koosj21LN5B3D+ek4/6cL0IHuJThDGeaSep/
	AbQMAjgbvQKYUa3ZK4jeLsjpRQXIxZzlJJv7kFpldK++erv8U9KRo/9mVrNTV44zUxk=
X-Received: by 2002:a05:620a:2408:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c91426a799mr51601485a.14.1744749994192;
        Tue, 15 Apr 2025 13:46:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHe2uVrJ0l4+MP0qlXvf/lUk4eaGJqZesswmBSmdDqzmucTn9AiaoIA1RcrmIUWXdghTgZOgA==
X-Received: by 2002:a05:620a:2408:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c91426a799mr51600185a.14.1744749993888;
        Tue, 15 Apr 2025 13:46:33 -0700 (PDT)
Received: from [192.168.65.126] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ee54dfasm7504765a12.10.2025.04.15.13.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 13:46:33 -0700 (PDT)
Message-ID: <d31a17f9-6aed-4b23-b67d-908a673c31e8@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 22:46:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] arm64: dts: qcom: apq8016-sbc: Move non-console UART
 pinctrl to board
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
 <20250415-msm8916-console-pinctrl-v1-5-a1d33ea994b9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-5-a1d33ea994b9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fec5ab cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=1t5JXeF_XfhXocsUcwUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Guch3fiuCDOBV-O7G5Xq3Fl_a3VnK1uw
X-Proofpoint-ORIG-GUID: Guch3fiuCDOBV-O7G5Xq3Fl_a3VnK1uw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_07,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=986
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150146

On 4/15/25 3:52 PM, Stephan Gerhold wrote:
> Prepare for removing the generic UART pinctrl templates from msm8916.dtsi
> by copying the definition for the 4 pin UART1 instance into apq8016-sbc.dts
> Having it defined separately in the board DT file makes it clear that the
> set of pins/pull etc are specific to the board and UART use case.
> 
> No functional change.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

I think it'd be better if patches 5,6,8.0 and 7, 8.1 should be
squashed instead

Konrad

