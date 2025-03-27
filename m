Return-Path: <devicetree+bounces-161204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9821A72D65
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:09:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F075816F7FF
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73A620E334;
	Thu, 27 Mar 2025 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XSr+DglZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1435720E014
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070093; cv=none; b=p5ey8kEOhmRT+HadNkz1F/BApte9KHJSGIKzb0PradldkX0hyv7Kn5v2rB88rW6pVWJfNz5x2EBdvsZARuW36qphGMO98nUoD3kuiBQ3mny6pIF2cbUDkJvd3bWY92LJwB/Y1oRb8T1vtu+dyOpnvD7xhagjT+q0AH6x9P23wfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070093; c=relaxed/simple;
	bh=lmxrzIS+d76Qh3zL9kdazJJMQfZpNeJz82hwqqtwmOI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KLYK2v1CnSJJKdl6mZjqJOXgOeYr2kRxLicljYWMRlhJXZ04ufDW3tIL18fSjgpuRRxBX1KzRZCVV7Htwe1Yj5JxQIJHMYFETxpMIJTaDqkmL3EfhRAs0tLWXBRcjxG5uHGl2nPovWs2tFl3nG1ATy9+DBQpz+XZ6BjGoBcPDPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XSr+DglZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jEvm011621
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:08:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=v9Zn3NFoa6qbW13srYFRWI0q
	FLJJSbYP/Owvwt3xu9A=; b=XSr+DglZxUlwrJiiVO6p2cbRjHyH9VV5LZH6k+Fv
	2GhmzyQyJcpVvaTm0RUMLq/Hc9lJV81nRU1PSfzhvOm3h4bw1r5Lek1WRZwP/OQD
	TIVgqX4HH6ZU+6cniNZbXxsd4NtVY1PQDiplHWWDJCHFqM5XT+o4TpbkYjt8NGpI
	S8f24e5OKX2Fdb156tPJx53nE6gEgK+Md1zndI8/nmTvTrY9m+EHaWFJ2nSuqw/3
	W/1mfodS6oxPlaLK474YWT6DPmXOzgy6EyRDbmSaqTk7wWN4eHjkw0x88alqs/vw
	M+li+dQx4KOk7njtoU1o5wJnpgy5cKFD5XxCmM2GDziF1w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45manj4fpy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:08:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c579d37eeeso126232385a.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:08:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070090; x=1743674890;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9Zn3NFoa6qbW13srYFRWI0qFLJJSbYP/Owvwt3xu9A=;
        b=BRsoqaAhPoIA/buAogsGzFEGwfgRmIeMoxHUxlE3tFIkuphfmV38dFhicstYHwbteC
         gfYvaPh/aNMv11pKIhFBgTSAP1MHx5X5cvu2oOdtYSsEneMKyHjNGuQrFyKqWrLHL0AE
         cb8EgjGUqO6EEs221vrBrFqmTmuRFc89FK63GR0DpdhDYonLk85cGLR1T9dRfPKvp5v3
         Dpc3zzMuFxfqCtC3JqSuCd+qRLG3U/t37vtSUn+Y6N7k3sqJZcxPw+iK/QYPr3jvc8OX
         NCFYqLGL3lxm/ICubfApVjQbS3uCCnwDl58q7wiRgw5BYFXlmESQOfIn7WIpEMC/+9Es
         YN9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXwZWKjbG8flXgT+QO8sW70nOYvSoixahWgy8YtYmFL9va36ElGsVjUhXKcvILlM+uWMRQBC+Xq7RHc@vger.kernel.org
X-Gm-Message-State: AOJu0YzJLf59lqRPzQ0z1FehSXajRJsbb1pxcmptc2fBfiAehgZcK1CS
	wdW9w0wS0M6C3PpKvRWAUN2v0ihMwcuag2Me8LPo0fC/VPLOJSGJQi8dA5aH/HqPFvCNFsq0btX
	U23IzYknWKRSRrThv4/dADHyMkPj283Zk8gWFZ/zi5YtmixQfGPy13DRAgQUh
X-Gm-Gg: ASbGncspsmoOf9EZirzVwxtKtAvjI4Vqh5NWoIpUKeyCE+SnB2ePL9GWJr2MqK3gfML
	VHDNJVuAefgQNixZFOAyrbpADMVwL4B2Yx4Q11ezu2n0dHU2eKlZHdYnJRBas7d06Aj9qobO6/4
	TQMbMDEw15CPewjnqgK9nd9dlws+1Qp59zmySdvVwdmn9u9Gx5c/FfYa9+V/FThfVEC3j64GqJ8
	AumdwX+8OGv3XCbODxqZbneo+08HpCe3s4HZ6v8l18NOvF8OhxPyw4vHyWcsoAJBWFp1NP3+R0Y
	Q9mPn51WywfvEs+Kh6/ovoTi+JmysKOgQxjG5944M8DPOPLmmcGhVzbU1WiRoVQ2PD0+Zi+A+Uu
	vWzo=
X-Received: by 2002:a05:620a:31a2:b0:7c5:5e9f:eb30 with SMTP id af79cd13be357-7c5ed9fd929mr351144885a.15.1743070089909;
        Thu, 27 Mar 2025 03:08:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfo1HINB6YcRjR3qV8lWRD2r7J0TP04aAmHGCotilIOFQMpC4PSzHQ5mqIDTl1lKVyghovcg==
X-Received: by 2002:a05:620a:31a2:b0:7c5:5e9f:eb30 with SMTP id af79cd13be357-7c5ed9fd929mr351139785a.15.1743070089450;
        Thu, 27 Mar 2025 03:08:09 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b635sm2029989e87.63.2025.03.27.03.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:08:08 -0700 (PDT)
Date: Thu, 27 Mar 2025 12:08:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Sayali Lokhande <quic_sayalil@quicinc.com>,
        Xin Liu <quic_liuxin@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/12] arm64: dts: qcom: sm6350-pdx213: Wire up USB
 regulators
Message-ID: <voosrd5xx72gh2p5qbsp6ghdkm2jo4m5psrm5h2gmzi7rrmsmo@53qpvewgzd5t>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-9-b763d958545f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-topic-more_dt_bindings_fixes-v2-9-b763d958545f@oss.qualcomm.com>
X-Proofpoint-GUID: MWBBHy6meCOM5emncgHCaXBJpHtqwT52
X-Proofpoint-ORIG-GUID: MWBBHy6meCOM5emncgHCaXBJpHtqwT52
X-Authority-Analysis: v=2.4 cv=KvJN2XWN c=1 sm=1 tr=0 ts=67e5238a cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=iXEU_j0xfCFYBHAbzAYA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_09,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=604
 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0 spamscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270068

On Thu, Mar 27, 2025 at 02:47:11AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Wire up the regulators based on the downstream release to appease the
> devicetree checker.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

