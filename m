Return-Path: <devicetree+bounces-158550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F69A67394
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4FCA3BECCF
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B070E20C000;
	Tue, 18 Mar 2025 12:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NdDB8vrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2489320B209
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300012; cv=none; b=aRKPkGcZ0cMBMjEgI6oiX9GM+D9ho7tWYCQm9E0yPZ39gnb0+sfB1sEWpvfncBm676u2Qgec3N6RdYojcvznYFvWHzZGpQo03mu0YS1LLeVYUVxYVPyVF0D1eN3ZrjkLnDngnUn6e1PwOza9XDv2I4gZl718fDU/WBVWKvMYsqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300012; c=relaxed/simple;
	bh=frUuH+g+x3SXDn0kukrlBXuxRP/aJulriG5eEnACBr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yi7OkdYGwEvvcjdkiL6WDscFeEdUoDQJw4eMaWKcwGYsSsF9qaDiAQ3ol2X3VyYgtpmbMdCxl1vLtnBymfuk750zoFdzRb87FZgxifrifwGzuHtOg/RyktpZgTfPHDBNz4cDNc7RsHARg5Sx5+pWLgPCgJXRj5RToVpNj9ggf+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NdDB8vrm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8pPKS016310
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:13:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GWA4RMuv5Jsg9tLzqnTr2CAziRMMoQJlkPXD8EK+58g=; b=NdDB8vrmmtVUVhtE
	CXCHwNTuANP3skL9wayZf6jWMFfodBw+Uhh9F+yEtiV5j08T/3uF0Hve5WQogOq6
	HFwn9wsPrCKK4Q/mI8NZEvkKepfeZLDLLV+im9dy9YotURnCZlF/v/rc/Jt7O5RK
	//EXxqPquaXuKHZJuFMPio80/f1TzGmDBCdtkeepElOoWUpwCu//mlQkYr1vNo4F
	ZPTTyqJ8gZcZaAnwRQ+yXGEKlCA48p+3q43/Yq81MtYCfFjHV6+S4rV4uhE+gSd4
	CaEgS1i+y1sMjb0thxdv4zBmnHKduBEyO7q2iDClLKXjPL7Mh3smpibQ/foTywz4
	UAtWgg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1rdr5ac-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:13:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5530c2e01so30881385a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:13:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300009; x=1742904809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GWA4RMuv5Jsg9tLzqnTr2CAziRMMoQJlkPXD8EK+58g=;
        b=p7k88ivBOYPidwQ4f5bW0kSKdl00tMBWGttxRjZfbq7FbVida9GklbsavuXAh4rWi4
         /wHU8/F3Ojg0vxBMCweA0hZcgi2kJb0YI0397JXDggQpUAmDD9nggTVCednoZC+tgQJO
         MPWt4oA1/hQROyTCNZcdlYPPp0LGEqlO19FJaVPyQSglXIlYoO18oefe2hdePfBU0Hzl
         N9U8D+M7Guydrjh8MjFdAnxrReQ51GENrp4up5IYhdGYuQGVe6y//hdR4EtU9NkNfEK9
         Z6/tOsQaHN1eArYvcNt+oKEftj9wh3KQ9RPGiGdz3Rs8JwsFFwI0a0UmWRWXh3gnayUi
         kr1g==
X-Forwarded-Encrypted: i=1; AJvYcCXiPP2L6pDlkVqfCBscLjsCPGSaHqSeNlgFXhkaZVz4kyVrtF3vS4jIzdviti5ZgTymxJBAgxzRFFUd@vger.kernel.org
X-Gm-Message-State: AOJu0YxmnilotwpEtvhjZiKy/AMyYx3H1Ybz5jhH2VPN+qSBTlsz27e3
	EsMI6g4LcTMrXAWI9waBM03g1O1wMRLPiPScYUP7Ao9rbFgIOM1pNy5NrRTBUKDhhWN9z6VasH1
	jbXkOZVnJRaqiM0FtW3U2tXa97zrkTHo1Zj3t00/5EVLFEUzGDm3wB/qN8Skw
X-Gm-Gg: ASbGncu/bAr0EKUQilg0WfYxWFvsPLu9o4g3MosJwadHR6ScTf5odvpuUyOxfIvcRlA
	f1zIEhJk+Il0rjl6wQ2GEOvzB5l1JyQcVuyf6vwqihxpcmgug+32uyYMAnIBb5byB/JZGwc26AO
	GHt0o+Cw8f+ttrDzJmyXDKZ2lK42xE0PaLSegC+Uzu9m0yZypCKQue6o5rkcRb+C3iZ2WrOvtt8
	+dyaZclS63GxaRaY4RBIfWppHZ57oYEYmEyxqJbkBGFxvggEq2t93X4tnz2YiK1slKWfKKqHdYa
	2EympR63BpeGYI1/xhK7a1nQQ8M+NusRsjGy2EnkRieBuhHyQWTtJwTYTKCoPh5wLAUZ3A==
X-Received: by 2002:ac8:7d44:0:b0:472:1812:23da with SMTP id d75a77b69052e-476c8190534mr96005251cf.11.1742300008845;
        Tue, 18 Mar 2025 05:13:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEe06kgM8AmHXFM5Gw3aBJVby/YG/haZcqc6BvqbAFtXAm2nFUQvuHUdNVMcDGWgpVpF/fRZg==
X-Received: by 2002:ac8:7d44:0:b0:472:1812:23da with SMTP id d75a77b69052e-476c8190534mr96004821cf.11.1742300008446;
        Tue, 18 Mar 2025 05:13:28 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a48b51sm849452066b.149.2025.03.18.05.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 05:13:27 -0700 (PDT)
Message-ID: <e26284b1-217b-4afe-af40-ae65cb7ee646@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 13:13:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] ARM: dts: qcom: apq8064: use new compatible for SPS
 SIC device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross
 <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
 <20250317-fix-nexus-4-v1-8-655c52e2ad97@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-8-655c52e2ad97@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Fe83xI+6 c=1 sm=1 tr=0 ts=67d9636a cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=GlwZi-m6aQ2r2PzHKf4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 9w0noodx11PtZwFqB8NlcoESS2eXlDcD
X-Proofpoint-GUID: 9w0noodx11PtZwFqB8NlcoESS2eXlDcD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_06,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 mlxlogscore=485 spamscore=0
 clxscore=1015 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180090

On 3/17/25 6:44 PM, Dmitry Baryshkov wrote:
> Use new SoC-specific compatible to the SPS SIC in addition to the
> "syscon" compatible and rename the node to follow the purpose of it.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index 522387700fc8ce854c0995636998d2d4237e33df..a106f9f984fcb51dea1fff1515e6f290b36ccf99 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -402,8 +402,8 @@ saw3_vreg: regulator {
>  			};
>  		};
>  
> -		sps_sic_non_secure: sps-sic-non-secure@12100000 {
> -			compatible = "syscon";
> +		sps_sic_non_secure: interrupt-controller@12100000 {

The register that the consumer of this points to doesn't seem to exist..

Konrad

