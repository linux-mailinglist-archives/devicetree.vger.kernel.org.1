Return-Path: <devicetree+bounces-246998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FCBCC2975
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F027430012DD
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D187234DCDD;
	Tue, 16 Dec 2025 12:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LD7Adl0b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EwIsrSv6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346F134D3A5
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887210; cv=none; b=IIRbcG/Auh0DizUhX09nUX4Nmm1SzRJ7zkotpCLmEdEFC8cD/oqWYH6Rn18yqLBqQ0089KU/28hlOB/WXzLE4jww0AZWsbulR9Kcj1YyCBrcnZKIybtrT0GPXEWLLd9Y0jNEpZ+FWmCBquMR18Fn6rKyrglGHjnEM/6IL63hAHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887210; c=relaxed/simple;
	bh=EqPoMDbyqQevPFFWEYcU+ic6ViXZu/vhtuQUgrtP8s4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CRLqmH3B4wofDvagUYNb76WiORIOKi7IJN/ZmMdyEcOsRKgLl6WZ1ZAsJ8hFMBKmLnaFvcsZ3b7r9IAggnSN/03IYphBuaLMCBcbgWEOpMEnjgJbDmLWBS3/TNleQBD7m4JsTNU5ejOTpg0HszWVS861rKmrmBPoM73kIYPXLCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LD7Adl0b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EwIsrSv6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGB8eTI3872254
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:13:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=; b=LD7Adl0b9Z9hCHI+
	xXtxGDtwzrA2wWFnADYTSjtBY5FugwiM65xEzbLuxPywfhOSHd8IJmVIo8U9XwJB
	Buw/PvORcDPj+WmnA9arbFlbI44CQiWi3RjX9TBsJJ1aocZ4jDyfT0qd23E5HYw0
	glNcK8GsVtFXGfV4KGOws/hIz9x7y+VJbFiZAVIussCLOdEjrTeTXog5W2oAOE+s
	5xrXX7MdoB1W6qy6HI32BPWyS2SE8J7gS5SkhG8wM2wPAlSoYWkPwSnrCB1ivmRl
	TiVpFzLrem28n5en2mXzij3iSN9IdOBlStgp5Z7KrA4w77VWK2lM3RMerMiwBlMF
	JM9l6Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b369w87ra-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:13:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88653c1bab5so17383446d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887207; x=1766492007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=;
        b=EwIsrSv6+7UA3+4s72RYOmTFr1GPU37xr9q+lAiH0aq83aD6jDgXzqwOMCWS5CI2ST
         Ki5gSbmDA2eBp6o0s0TVGjRtWnrBy9dGxLdIG9808nAH1L6wxyKX9n49J0P+kLM8ND8A
         MvNft3vpQqfTirrOH5dX0HiPEE+n9ZXO7Umgcgp/Bi10qH+rh7g2DdAmpsu+xTF++7YS
         TucDggOeo73p+INg1e7QYfxmTn7SAv5WsT3/Hp62NfTbCzmJ+Rly6LdJou+9VCFLozlC
         4p5fsgtBCF7R40X08dfWRuCBXliiORq41MvbL5uXhDi63xd1zd0VYvmYi+dva3BeC6/5
         GJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887207; x=1766492007;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nBDtvdhlEDZhHvSsqtGF/U9j4heSI31S4RRQPhJZkh0=;
        b=dvMMRnYWHuFwTzT+CJCSfFvevIGc6f+UhBiPpgmwaDJjxgMVceHIW0LqFwOEYoOGYk
         JZdHdnHSRK70Yy3YLmF02uIxLkP12z+7h2gk48AFwEKGrR6iPz+sDZCDtn3A8bUS/max
         Osyx2aHFMyGF/wdRArU7Jm2Z6EQkzSr660wT2jl4CpYD7+3ByftR9ztzfIWv1+qW5drr
         v6s0fcd0ENvnNbcQ+QNir90sX2AF0X8loXtu+v8NxmPGcn15Jt+4bvtc3l+sX0H50woQ
         aEjiOnC+z+dS525AbWoKYVUSJbzGVTuHQiG7bm/zTV/CrkQyLSc7xCWt2uczLJYyJKPX
         Veeg==
X-Forwarded-Encrypted: i=1; AJvYcCUSeZiqiouuVzryoC0iPd4IMG2od/MhAo1peZJpnXGBXudSTm+SeqaQ/fY+ZDvr9ux9FXkNE/rRMxzb@vger.kernel.org
X-Gm-Message-State: AOJu0YzDJ1RPq7qRyrDFLZ17Gx16Xk9N1Q9n+rN+z1kbxNbHX+4q/Qwj
	i1XNk5Y5S/L93mXi3pyffg4q+ssYb5n7s/GJHiMgylVSxrA3UDnplHuepunb6njG2JLPYXqRzrx
	xwrr3k40Etp6pD4StlzwXG9dhjTwXqXmg2Tm8eb5QJv4Va211v/8Ck7Nw9JiYfxV1
X-Gm-Gg: AY/fxX5nsmwdUH69XfXCuw1USRKcl0ICMMHeS5JuetOlby6GJFvsYxiBnHy9b3bBw/W
	bjJdf0YTbXeBc0jE1MdG6OUNm5/EeLkqSsHS39CeZNRSBuTOTaW+VwFrPZMxN7dsAbTVEuK8NOl
	4isEUcplm8zh+qBj4NCg4Gd/DNaa7lbzqZOoZZW8e9Im3dZDBfG7rqTVBP3hGIHVW/4J2xaBlS2
	tC1sORY+OksfbEtv05o2vbR52Tnycv1EDIRuBDTWLIJj7xwZaQPDh6Oov93MHU3oUBz54idfaMY
	M5Rfzvil3PZjAGL5urkYBdPcvXd3yfFEPLl8OxGDIOY7VRfqf99FmzVR1edK9HwusYGUMl3pmSZ
	4DAJzzhCvaxuSiEWUiD7C5Sk53DngS33abbtTZz0sWj1x04vgQrwXkokr/P61nbYWTA==
X-Received: by 2002:a05:6214:3009:b0:880:6fa4:f55c with SMTP id 6a1803df08f44-8887e15808fmr175508256d6.6.1765887207383;
        Tue, 16 Dec 2025 04:13:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFjpAQSTEKJsFIxdXDIMo/SjcylewI+gSwe+VXgx1EjplcjIJAqldB/vYxgwrqEiRixO01dow==
X-Received: by 2002:a05:6214:3009:b0:880:6fa4:f55c with SMTP id 6a1803df08f44-8887e15808fmr175507976d6.6.1765887206867;
        Tue, 16 Dec 2025 04:13:26 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-599115eb95fsm494275e87.19.2025.12.16.04.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:13:26 -0800 (PST)
Message-ID: <fbc5d96f-8c3f-4566-9bbc-1097604142d7@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:13:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: dts: qcom: dts: switch to RPMPD_* indices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251211-rework-rpmhpd-rpmpd-v2-0-a5ec4028129f@oss.qualcomm.com>
 <20251211-rework-rpmhpd-rpmpd-v2-2-a5ec4028129f@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-rework-rpmhpd-rpmpd-v2-2-a5ec4028129f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ztNiFaE5O3xLBRHqQ75xJWXYYMLKoR2T
X-Proofpoint-ORIG-GUID: ztNiFaE5O3xLBRHqQ75xJWXYYMLKoR2T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwMyBTYWx0ZWRfX5+OENUbYkqWf
 mIOjWn40OoHm3GQI1CsxrrTv9BYSKP3PmszEu75NIb9ATCpIADcQY90DvBo1x78jIbw+eBZUWxY
 QljM52sd9G10enaBjL/ULlMH1u2ljIzr4Z5PSA7AMgu1whGrCgXqfEFNHYsWn41aAFO5cVnm+Zi
 CRG98l4sqzdTm5oQtNlRdqhF59EO+0ljVcP4vMWiPQEz+nnWLIYZa/MNOkhPSaEqjqn5o6QdFOh
 4tH3hRhc8xgRbzPyfA7GQnaSHfr11QZo2+S9qBl9r0Dmh96+Ar+bKz19ODjJjx00cJcr2Ydn7Qf
 W8bLsqkK1Z1+LB8UQ2WK0E22xh0URbUV/BN9dxW1he0GhJ/oUg5YgqOh9ZfliWCdnxD9+29rbtp
 ird1p86WcbRLHzNd7h72f5izenqChA==
X-Authority-Analysis: v=2.4 cv=MP5tWcZl c=1 sm=1 tr=0 ts=69414ce7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=u_qTJo_YbU8fZNC4VkAA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160103

On 12/11/25 2:52 AM, Dmitry Baryshkov wrote:
> Use generic RPMPD_* defines for power domain instead of using
> platform-specific defines.
> 
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Acked-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

