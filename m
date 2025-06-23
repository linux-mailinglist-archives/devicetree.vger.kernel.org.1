Return-Path: <devicetree+bounces-188585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2955AE40D8
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 557463B1DA5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E077D248F40;
	Mon, 23 Jun 2025 12:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z+t0h0WD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277122459FF
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750682382; cv=none; b=a/rOo8cM97acwlBH89nvE02n/CDFPJsH97SgOnq0KQXXuNT1j6Qav86T5UPfx9U2JQRXeLW5FTMybaRtpSxB4JFFDb5iVte0XsvOaDvyaB01orwGyZ71MK9eRtJcGwISsJoGr3AFQWwV+KYDfJejE0P8c+uNFlxSxAUpPRXing4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750682382; c=relaxed/simple;
	bh=Cu9jHf/ikY8NTIpPtIILN+lROMbPCSrdR9Xd8v8FLdE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Txlh0tVL5JA8RkqcO/1+S3Q/6uBGSsyGlWbwegxUSJlzqizb66o3ap7xHZiKbSXQm2WIhyS9ws4UjbF2e9I4jNQj+3jNugp2iPxTyWwm/pA1+5dTecndxun7POxC4PPgTu4zYc7slC6lPjDKuXgdrFZnmol+j3CPJL9gYyF+AgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z+t0h0WD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N93ITa015940
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jogcupaRNgtSLcD/zdh/2effoHJ0lzN8HVzNy0f+7KU=; b=Z+t0h0WDpKpKqXL2
	g6+2p6EFptin2q3B64PTIZ6rJtpCa3WxnmKiHk7ouLlSBmEtzWaUjENYfE4owF8/
	DpqPmPjQiv+Epmo9CWNOkjAcZaAB6o7nZBOVvPA/ehLlmB7fxrjLSYN0DC79BBIg
	FJzfP/Mpx9zLFnbZ9NHli7X7DtM+s5NYZzyuE9qBqB+3oe65orBBVN35gKyaXAeT
	sFLD7tq3kyLMLNX1LTZDGt3K/UgCl2Rh0nzHGGCMTL76LQgRp/f7Y76Efs3cw3yb
	y/4KLgnHkVqiOPJz4jRU2TnABVP2UPahkzPisO8ZzNePgOUzKX9H5Nljt50vcjLp
	mXr0CA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3xu0kyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:39:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d097083cc3so139036485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 05:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750682379; x=1751287179;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jogcupaRNgtSLcD/zdh/2effoHJ0lzN8HVzNy0f+7KU=;
        b=cS8oLmGIBHS9SlZyB17cyFkPBmnbE4yBsZwJzfi4fao32KwPHrKwixhbk0VywYF+3y
         e3uICMjjqAd6rgITAwi7yTvqIpayOe6w2HbbnT6Two0IeTnBD34qgFn6XOAHfOQAcyPB
         KSFgE6I7y4bOu5aIzC2sLhASbJvTGaGAuOUgseSgxNrBJRt31ve00wUCfDnAgKqm0dle
         i9A4LogWp+vadHIx7LFRgh1itOO8j6JmuNniYK6ZF4lZZ1fPMX3h/uqls/06jp9tsJWa
         LwPPtrOnGn/Cz5+WBgtBGvXEuQyYZZdfgWYgi5gHk8buc/8hmPtNXBfKUjwzXPqM0pfG
         jbbA==
X-Forwarded-Encrypted: i=1; AJvYcCVyo+lgUhfogCIUPXPELczYKnycmb9g0aPSuytZBiFgDiGGkigr1N0C/udM/g8OLF7rgJ2y1XvlGWN7@vger.kernel.org
X-Gm-Message-State: AOJu0YxQa7x42HHgbFwbHvUc5wthOikOHqNc8e7MTTW41BG0cUsuBGjx
	RFXnI9bgyATnxryZTccvIGxqbkY6Q1s187VrYI9VZGtuZ+9CVTl5B9v3ilEJTHSkVcM+ZHi+iTv
	bec7VhBrkty7ILIPFVOdKU09lWZNwh4sBEvG2ie0iLdaUsA3jYNlanVulVlqWbvOj
X-Gm-Gg: ASbGncsZY7bWrE/xtQeVRyp2qSGZwsxPQMl5ZABqfqD06IhUhx/K/YUcEDtEHY0XmpA
	JgJqxO975tyXRAaRbj/BxQmLrhc2MRIXk0ErcG7GhvJjJ3VrRHjS/IEp5+01epxaJRuTRo4XTtT
	Bkgt2VHD/fK6W6cVk0puJiSWoR+lNjBk5v/rwna+85RpFlmd49mhWAgBTthxEM0xpq0dnYy8+FO
	Blr1L8sZ3i17mjjfbU1+w48thXjGhW2zMBIq/sSQbGtMnkgedzqDFpgFCYBz+YjTwO3qHiqGRP/
	FZecLg1zsXpFLJE9wp67qoledVn1/nabqEM9u0XpZr7yOcPDfRc/vXePjlNhEz3WxcdtK2IsX4X
	OjS8=
X-Received: by 2002:a05:622a:253:b0:47a:ecc3:296c with SMTP id d75a77b69052e-4a77a0b9c3emr72710041cf.0.1750682379040;
        Mon, 23 Jun 2025 05:39:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEzLE5XIZwxXABQIRsBupydSEdmMwxw+uZsKhm0u2LXtGuTXdMotWQUEt+fgx8u5hMzuy3tA==
X-Received: by 2002:a05:622a:253:b0:47a:ecc3:296c with SMTP id d75a77b69052e-4a77a0b9c3emr72709901cf.0.1750682378617;
        Mon, 23 Jun 2025 05:39:38 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18cba668sm5900336a12.58.2025.06.23.05.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 05:39:38 -0700 (PDT)
Message-ID: <50b0aa77-4ec5-412f-9ce5-6ec613dd0afb@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 14:39:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974: Start using rpmpd for power
 domains
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <20250621-msm8974-rpmpd-switch-v1-4-0a2cb303c446@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250621-msm8974-rpmpd-switch-v1-4-0a2cb303c446@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA3NiBTYWx0ZWRfX+tR5UiEwxjlr
 EfdDykFOhjrQnTTg2w54XZbBZ0QQVqPjzVS7qzmSBwq0uVxRem4XpOsy6lf/yErdXgXvp4Lw6fY
 RTUuJky50OqKSU8jMM+SITFUy20xlqbUYoKiGC7nb9fEWguMBAv21ziEqbX1G+1EnqrmLvjaiTr
 kWbniu9ITqYMor/ZCNC46cTh+tQ6tX4OQuE2dr2MoZiw/49o1dNdPkzb3I0DHA1sBIg+B6Gn/7u
 C6JQ96qvsxb2VMAODcUaK809/VYaZZsXS2FRK+Du0dUgomQ8ggqnwahUi8uhw8fGd4+VmRcSyqA
 ZLw7kJuzAdCjfQpSP2cuvME0GJDkLek/JMWMFGT5DhnTbdEe4L33s748XDJp0CQsOmKyX+leTDY
 2FmpkRtadZGnYOVxAHt39zlxlwFbMJEHD6tb/9p/+b0EGSJ3er7u6sps2YrTPCDwsVi0S5va
X-Authority-Analysis: v=2.4 cv=SvuQ6OO0 c=1 sm=1 tr=0 ts=68594b0c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=obA5ZJVW5cAYRlcEQtoA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-ORIG-GUID: I5XaoXP3mnYX5LnrXFOJYWB-3dmp0-9P
X-Proofpoint-GUID: I5XaoXP3mnYX5LnrXFOJYWB-3dmp0-9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxlogscore=920 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230076

On 6/21/25 3:19 PM, Luca Weiss wrote:
> Due to historical reasons all msm8974 boards have used the CX power rail
> as regulator instead of going through the power domain framework.
> 
> Since rpmpd has gained msm8974 support quite a bit ago, let's start
> using it and replace all usages of pm8841_s2 (CX), pm8841_s4 (GFX) and
> for the boards using pma8084 pma8084_s2 (CX), pma8084_s7 (GFX).
> 
> For reference, downstream is using GFX power rail as parent-supply for
> mmcc's OXILI_GDSC GDSC which then is used for GPU, but nothing there is
> modelled upstream.

if you use an opp table with described rpmpd levels and bind the GFX
domain to gpucc, it should propagate - check it out

> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

