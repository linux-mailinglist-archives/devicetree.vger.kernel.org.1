Return-Path: <devicetree+bounces-171007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4559A9CFB6
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:36:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8FB41BA7DD3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE6F2116E7;
	Fri, 25 Apr 2025 17:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IFgJsbAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448C520F077
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745602548; cv=none; b=bDD1XNRA2lksmDASAQmHLEj08DjuS4HxfeFmt0zkAelzbuDCpgpxZzlHGb9bSA/DYlZpsgR96axTXFtQUlPB8t+iv5h9I6qNLbQU3vKMJOga+hSkgMP4c1EEp2sQNSYGqEL6uQbybjufYRSg9UutS5S9a234ZVYDDOUwpfXVUiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745602548; c=relaxed/simple;
	bh=g97QnI7TsDtM6koSlVu1VNup28kUC3gBLrfnGPhJwjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tPPpec3f8iboaFq4zi076eybGhyCXQBM0+Znj89SdNd00yqelv+oGqB3OIdrAOF3henvF1+M8ZpdYMWLjxKN83yt1XLaPMnuqu/JRAnIk/9QjGoBvCLL9FQmhb0HvqAzIx/vAhy3w0Nt0X1u/pe/rzRwj4spYKpCxStaht7FBj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IFgJsbAq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJug8001345
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zyNlb30tETnAmrNGQNUqaiWR
	HGW8KM+qAPfP+miBx5A=; b=IFgJsbAqJKuOGlBpIFgySo4WWLASEoB3ZQ19aljX
	DrpYDERBeY1pth+PtnFJD7OgtLRxJlz6ECxG20yFzK8u2XjJZgpWGEayswYtyUTj
	1ZZgdve/JUCkWo5088uaTvZzl2XlYnseZAMvmnmMP0KxE6jU/UhDPpg2/BndO3GF
	SIr2jl326ozUOmvYAiQ/v4AitsCrU2QDTCDMAiFMCJ1TlKC4P/zjcRaHbWh7NOQ7
	v+06SV30E89kiBF/W5MJ/JhCWlcz0c7+evCTVfZUxlllas3ltOrcP3HZnp7wwnl+
	e/BxrkyXnaOyqxpgwy7TwcQ0PRciOWJO0ziFXQFx6wNxlg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3hv2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:35:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8ffb630ffso39606876d6.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745602525; x=1746207325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zyNlb30tETnAmrNGQNUqaiWRHGW8KM+qAPfP+miBx5A=;
        b=oMHQYhmRf8LAzRS1owe8wLdxrOaK9HOTxMEEmo/em6pDwYlFMajFrmceHSiNzQORQR
         8VzKID9cxxWtr7mdG3ofO+nfJrKQsB6BWYqjCtLA7i+aaI/BlplBBNQdKVKDaetjWtz3
         Kveeb/QtufTdGL92EZaaaCIMnKPcOCa+IbV4SE+GBZ/IhvrTwDMxAEiJHVLf9ghI87rZ
         Vm6ZvFLShm1oO7OY+3iL/JvAbMErjcOxSSjRUQtP+YsdDfU/gsPw7UXEHnSE67TVHwnO
         e7A+am3TBVPPOYQuOFEOnei1/JI3g9EqlKV5XjY8mBvPcjH2GPXigOXFqFZ2BM2FchXt
         cHUA==
X-Forwarded-Encrypted: i=1; AJvYcCWFgHmIffMi17e74p+xK1Jafqw/p6UQwZzfKCQFHzHg6t0olR0S35JQV87cfpWgqHAOKDHKqO+TNuJz@vger.kernel.org
X-Gm-Message-State: AOJu0YwtJLzM900e3kvdSRb8+lot6fH5dGIEuodLOUlPglf5//GgnfSF
	235NqzF3afY1s63TKRrOao7FKL+w19GgTPxI67hqLMCs4xGP5rk1/m3nfAwGHBDk4fI6LRbr+2C
	98ObFtg4t9nlpjCOBQpLhirHeG7wl1Koob3UxiiaxuTQupJUu0/ydlVWDQI1e
X-Gm-Gg: ASbGncv0Vpa/Cb3QSaFfmV2RSbGa9VTOyfMxmgXycmPfUaDAr3WtyxmQlclsxxysbDU
	tG4mem16tqw8s0xabRl3DTod/Iw8YNqwPm/kbfSK/57L34iAZDCKzHU9sJK+lO7t3cx/7Yfdnqg
	EZ9gQGzRFrWjoLv7wu3s7l7PphLJuCuKkL91z19IUtBDjeCC7EwnB57WwDzG6fY9qy+JwVu7qkR
	OsECApfoT09oXrM2BDC56Wk91/FrZ0dxrN7c7tgGew1Ile0kEwWYSNLcqBmdc+mJ4Pn8cv+pfVR
	CTnFdBE707jBIJsYeYX7IOj1ua33oK+wqLaJcRfA1oWwDjybp819hrsNIjpdul3kXB7YVMo3bi0
	=
X-Received: by 2002:a05:6214:248a:b0:6d8:80e8:d567 with SMTP id 6a1803df08f44-6f4cb9d67aemr61638826d6.18.1745602524420;
        Fri, 25 Apr 2025 10:35:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFU37Zaa9PWwzxzLZ3L3wHDT45dKPCZDd+e4wx5Rp2/ForS3F+FljJ6cRIuW3K98foPwsG1kQ==
X-Received: by 2002:a05:6214:248a:b0:6d8:80e8:d567 with SMTP id 6a1803df08f44-6f4cb9d67aemr61638366d6.18.1745602524113;
        Fri, 25 Apr 2025 10:35:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7fae6777sm612960e87.240.2025.04.25.10.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:35:23 -0700 (PDT)
Date: Fri, 25 Apr 2025 20:35:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/11] arm64: dts: qcom: msm8996*: Use q6asm defines for
 reg
Message-ID: <a5ufjxvghgt44sqerzzd3xcf5gdq7uknj7meajja5rst4k7rip@kjxpvi62aobg>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
 <20250425-q6asmdai-defines-v1-4-28308e2ce7d4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-q6asmdai-defines-v1-4-28308e2ce7d4@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNSBTYWx0ZWRfX08vbVOyf3TDI FDVQidpc6RakSgNM6aONTWiQkP0+uBNAZlA5ztteMqpCq5/P/otF3yXMMkY2WoXcEei9Q+jWmOm RIzFA0HH8OSbXAYN+38f2QjmQVVoJZwtNWSGtXIjlFqYWJ8Ncd2o9nfklH0xB5LVzseCxum0kYj
 fu4fxuKMuZGrGRicgOSRejDVue0ZUlcU1Wxd/TKvm4YqkCmOOXrFFztDrf2KJhYwK68am6zN11b OhGNaOwAu3U5kUseNlDMU2rM/Ou+l80zZm3imEfEDNqkjLEH2nL2m/weKdAjjuEXJlVsTi2DVQC InngZcrEMbaiIf72ygf8ASSgOr2hPMPiTmw46DUJ/rID7hFJ90FjVgSE6hUecwHirGiWtMGaxJe
 fEiZ/PeLloe3rs7gcgLJNd3wAQVebjPmh2uDA7knsDr2Zz261z00BVP2s7CxxGu42/Wtgt9k
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680bc7f1 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=0uHdMyS-I8ESt-gxu3MA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: 0-wUwO3fsazVDSx14yt63jDTV3UHJtOo
X-Proofpoint-GUID: 0-wUwO3fsazVDSx14yt63jDTV3UHJtOo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=541 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250125

On Fri, Apr 25, 2025 at 01:53:43PM +0200, Luca Weiss wrote:
> Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
> readable. No functional change intended.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi   | 6 +++---
>  arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts     | 6 +++---
>  arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-natrium.dts | 6 +++---
>  arch/arm64/boot/dts/qcom/msm8996pro-xiaomi-scorpio.dts | 6 +++---
>  4 files changed, 12 insertions(+), 12 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

