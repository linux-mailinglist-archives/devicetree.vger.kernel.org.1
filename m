Return-Path: <devicetree+bounces-135338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D92A00933
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 13:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36F6718844B6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1CED1FA151;
	Fri,  3 Jan 2025 12:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3bKE+H/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C991F9AA1
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 12:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735907276; cv=none; b=L7/fEPedjYrtWw1JDUKQt09KBz5UI0WwBrpjv2SGlesyOrfZYLPnYi7BJiwWPTul+sC49QeVm+JjBophZrnHrzsLyHJiy6Pr9aNiviftqv6L5YCmD0a+jxWdFbtslUyiF4nfo/GQTSM5NpZInUO6N1icRH1ZBG5PtwKj7OIBITE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735907276; c=relaxed/simple;
	bh=Pqwl7N6kCzQ/hrkxhcYrmAOFRMM56Ip/rYR6bmxRT3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MsitDhmxA5wjzM5gwnBo1fMYFCn6s9ZqolLWgsYHLx1Yt84D1/fhC7iQmfuz10a0UhnT/mXCZ1pYd4b8bCYFpYq/HSl2VkgLxqzb2kkhEdkjInjdzAkS4OSadK3UTxWXTTxOUYXHaXuzCeTLKdnOy3fpjIQ+WqEDcnwituZMufg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3bKE+H/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 503C4YiA022458
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 12:27:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QdbJ1dOWvgh+OgR4NwZE+j5YlKJamHg+xsDrOvj8Qik=; b=N3bKE+H/u8PRNQb7
	C88AV19SPgf8adrEUgxVI0CN4QPjJXgH2zwKEINlA6GrU/WpuFleQyD+YMHgKGEt
	kBkuXz36JyDyvscC2WeVjZ5TJIfqerz5v4EifdhermbvhdJE6N0mSbmrvyUBcfmc
	OPu2dAb6vtAprnjO5aiE93jtBNdNHoVz/9vUrZsYkLZQ5s805ezeU71fBUCKsPmA
	+lfTsurWNJshXatDRTAkex16q0Odj+V2j7Nb9vU3G7VXYZkYqV2HwhY9/fyHukq2
	FCAGWqNwt+b+tSAo3cNEvLuP5CaKRxkwI9LP4aEB+mpxsBAfQ/sihfFTOOe/Iw/U
	azGUlg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xfk3g1c1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 12:27:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b6ee03d7d9so83230085a.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 04:27:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735907273; x=1736512073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QdbJ1dOWvgh+OgR4NwZE+j5YlKJamHg+xsDrOvj8Qik=;
        b=w3ClvC27q0TsoZeeH4oHI0nblqR2zaXlK95xhFPN6JHRgn2IupkzuEz3RHUHaGHFp/
         Ys/otfkGFuw6t1XqwCz5geBmz3hKkzih9vdNR8ndnowiKp7vT+tYup1jBbXi7oJsw1pp
         +XtqMOZJCzhdZHX2uT+LxeIs/fiD0lD0GIVwX2DOOEW+JL0eH5yjyAeYCrLXVmCOOCtu
         /7/U36OLA50ag9ymYnCV5mHYsHdrekHBT3r8pkScBnqmkeW5NhuCkoAr6i7cBQBFd0pq
         41i0f9Oizq9w2ZqKFbXNAgCADU1625z5GFBPonvLb4klh8r8Qowfa7dRmyQEhG+co8R9
         nlSA==
X-Forwarded-Encrypted: i=1; AJvYcCV4LnrG25bsVwiI1naZWwTh8ufj7GfBGuyEfEveZKH32ImgUPS9WqbAjBBFxxgeZ3OL0sCXcePA0pAs@vger.kernel.org
X-Gm-Message-State: AOJu0YyYwawlkVzYWlavr49n+A1dc2mBBAsgOoCliWs9a8bvNBvkPZ0y
	2N1dPEDlPazPgMDyBnxNaX/Y6aPV/KW7cFTRpRQqHAuNw0IdpEIHsUtlIuAApA2WoAaAHKEDRFg
	EH17Tx4Wmzqg0FpQxVXaMRBV6f0FbjUmI1YqJwGxAF1SHI/ArZ3iEYiKnc3oa
X-Gm-Gg: ASbGncsRjFAT5tbSitJEV+wlW+o/JgAlUD2ZpZ8FeIwAtboeDHYws2I6Ky/m9bUPYrp
	DQPLoZoEX74E0IYYY/Wj10r75Oe9w1K86IdgEb0pLfTle1aB2Jca9JIfi/Vtn0nbVcy2xZYF0Nf
	HyTVhjk/lw65/F81QOSBZDTOLJVfyCl6BvY3vUDtOltnebWhKZk2lpZhYoZOivEo/s6H1ZITm0h
	htZi8KAmCe2AuMeu6BhaydlPLhTLM3IMiLIcvTLJyw3Zz/2kER4WM1JRM0K9opkOiTuD4lTooLl
	5kGespR1spwq2Ei2gLDk4V2kORJyDFnfF3g=
X-Received: by 2002:a05:6214:4007:b0:6da:dbf0:9645 with SMTP id 6a1803df08f44-6dd23317478mr274820806d6.3.1735907273063;
        Fri, 03 Jan 2025 04:27:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH15Wpx7u9V/hOQ08GkSp0Y5O0301pekMRgSHOKCQeCdUs50MNnQM9AG6NcnIA0Lbk63M/OqQ==
X-Received: by 2002:a05:6214:4007:b0:6da:dbf0:9645 with SMTP id 6a1803df08f44-6dd23317478mr274820606d6.3.1735907272677;
        Fri, 03 Jan 2025 04:27:52 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e898689sm1875427466b.78.2025.01.03.04.27.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 04:27:52 -0800 (PST)
Message-ID: <c94ce3c4-5b8f-4d7c-8acd-afab63306018@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 13:27:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/5] arm64: dts: qcom: Add CMN PLL node for IPQ9574 SoC
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
References: <20250103-qcom_ipq_cmnpll-v8-0-c89fb4d4849d@quicinc.com>
 <20250103-qcom_ipq_cmnpll-v8-4-c89fb4d4849d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103-qcom_ipq_cmnpll-v8-4-c89fb4d4849d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: p25bpVhFBu4jUJSernuOLCseTuxgYn_R
X-Proofpoint-ORIG-GUID: p25bpVhFBu4jUJSernuOLCseTuxgYn_R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=961 phishscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501030110

On 3.01.2025 8:31 AM, Luo Jie wrote:
> The CMN PLL clock controller allows selection of an input clock rate
> from a defined set of input clock rates. It in-turn supplies fixed
> rate output clocks to the hardware blocks that provide the ethernet
> functions such as PPE (Packet Process Engine) and connected switch or
> PHY, and to GCC.
> 
> The reference clock of CMN PLL is routed from XO to the CMN PLL through
> the internal WiFi block.
> .XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)-->48 MHZ to CMN PLL.
> 
> The reference input clock from WiFi to CMN PLL is fully controlled by
> the bootstrap pins which select the XO frequency (48 MHZ or 96 MHZ).
> Based on this frequency, the divider in the internal Wi-Fi block is
> automatically configured by hardware (1 for 48 MHZ, 2 for 96 MHZ), to
> ensure output clock to CMN PLL is 48 MHZ.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

