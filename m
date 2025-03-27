Return-Path: <devicetree+bounces-161262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA31FA733CD
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:02:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BE891189D679
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75C521767C;
	Thu, 27 Mar 2025 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PhVxOS8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3E7215F6E
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084033; cv=none; b=ZTj9B+WJlN6ecdfStJvGj2/NdPzVJkpX0rfvlF7ejM40/GkyrbgR5EODve+ItJw9PmYvIpW9LdHCl+M0AyjKsNDLRI8u0bbMgrCBIwIoGEDZN/D21hIAtxyoIM4ouefnVq7qfJdJsnVcluj6jW3NrhfuQzKqFNjUU3D5cwikF/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084033; c=relaxed/simple;
	bh=yQiHjUFcyJIrOWKZ5UhJU8gr5ewgmJPG7QiORquZUdg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SAHvUCNGk7iqOZPHuWi3g7pikzfktdHDYi3MUcUhkh6bbhDwqRryLz8TYT2xmUCbnsjdw/HODa4pv7/yPhTCArhMX1ByNVZ4zcGdIqsAcSNK4719dEA7hAC1MAuwKg44qoGTPzXLbyWW7NPTcSbMrvLmk/4WU5YMwsOeiOnXR80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PhVxOS8n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5ja9H023247
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xzv6Jdtih4Pjuewr0XazKhab
	UDZVPmr6YzAUTkg3XoM=; b=PhVxOS8nHVDf1TOjSeTHcpCxOCi97qEGEJSd4VXm
	0K4Z/+g1vZ0zFiThjZIOTP/zXAMBGmao9w2XM9dDyL7V8NyKyTnZpsY2Je0QUmzn
	ImTySzzXPzufvsQoPOQIeqfm1kyns4x2XP/3Ive/4X+8uO7Vyx8P8hj6kgvLyBjc
	3uXX2roKMB10WBx6lfNUa0h+IWuvC5O7ormyRJ6j/gZ77rBOhkCT28WsylfoqDTa
	CD5oOCUtAEXVKuqEC5/pdH2LLrz0J3Ff/bshJJigOUJsPyy0I24YfrZbN1S5eYce
	oqEvDdpPOlBcY26dWUi7tYoTZbRlIrHWJ+eycRYFiewrQw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mb9mvyva-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:00:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5ba3b91b1so196224485a.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:00:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743084030; x=1743688830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xzv6Jdtih4Pjuewr0XazKhabUDZVPmr6YzAUTkg3XoM=;
        b=Eepdi3JU8qh6gxP+fs23lD22O4tydBaucrJg7ob+KJfAw8AOeFu33naUIPEoZJail7
         3ucDLLMNBAW50iFekoil7PL0QVi9mjqqoNP8CN9mTDk72oREOKlinGl+pUZpKqWb7mrL
         Dy26ObibI0WwRgXlBrr750pOmhOdUpTfySGI4/6RnRWNxKSufmpfweX9QKKn/M3Fh1H/
         U22mFj6tiqlzRNIEXo/A7n9acbjVZfs6J5uSvawO4ReFsVbIyTz0ye4VQ3f1N0C/Ze0i
         rG99lV8c9o9W2/1BmlJl9GrphelipVyOqsuIvdmydfc6MA1ssV0QE6MEw7KgzlO3x0Pj
         PXIw==
X-Forwarded-Encrypted: i=1; AJvYcCW+b0a7+P1xqjgPN1bd+ZTsRGWOFy0d1OS9TmrZ352t/lvVDDTdmnWXtVVEvOc5wu1Ct1GSXmQhvHgg@vger.kernel.org
X-Gm-Message-State: AOJu0YxUah0GHlf/bf51Vqkr3p2w6eyKMZrzCqNeK/ayWWptA7iG12RO
	bS3ReCtQdElAxd2KWBLF1OPMsyncJGLbpfUemKu8Wg5UncG9MrnRu4lLeK+x+0va87tWrHNGuHt
	cRE+u8xedXns9G+Q4y4TJDpzm8i1kWsB/LHMxMynCrUJ9rwy93v1Sb+PpbfLO
X-Gm-Gg: ASbGnctEj+pFF7eqOxu+kGi8iowvusaLIGlZG6L4lfpKaR3xOskUZGDBRW2+cTUmxYo
	BW9t20WpaYP/ShW6V2pL5bVIhfD+9Fiwpb1f8Oyt69w0v5V+IYFR1+pOU4xrs2jELgQ51Ex7b5O
	pjhykZtbAz9fsh3lEjE55LFIeNpeJ5Ljswg/TYkUWC2uuvyh6/IpLMdHI4EK6c0mB7tOd/G6C8C
	fRF2dmMkUVvmoakP7tI7AMTABKbYF8rIMwU/vuUWyIcwS921ro2BuXGM4a4mGLNs8DVQ6CO2VCW
	2QBVXo+/rqwQPQCXoMMDvM1VR/vsSpDor+5c5+CG9FeaaN5J3Jl+/c8sNeldOCE3hbP89kRPH0g
	ss1s=
X-Received: by 2002:a05:620a:424c:b0:7c3:cccd:92ec with SMTP id af79cd13be357-7c5f6afe158mr46282185a.0.1743084028423;
        Thu, 27 Mar 2025 07:00:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdaP58PwQwtVzSyQhWchxMjVTCY2g/ULYhQT88j870psO7tT+kuGTL3evaUlHEe+4GDAFVig==
X-Received: by 2002:a05:620a:424c:b0:7c3:cccd:92ec with SMTP id af79cd13be357-7c5f6afe158mr46269585a.0.1743084027452;
        Thu, 27 Mar 2025 07:00:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6508158sm2091751e87.185.2025.03.27.07.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 07:00:26 -0700 (PDT)
Date: Thu, 27 Mar 2025 16:00:24 +0200
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
Subject: Re: [PATCH v2 11/12] arm64: dts: qcom: sa8775p: Clean up the PSCI PDs
Message-ID: <dr2wkctvk2glk5agdxpijmz2wifvj5f3dwyh2pjlzesravutwx@xa4zcsuyur5p>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-11-b763d958545f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327-topic-more_dt_bindings_fixes-v2-11-b763d958545f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cs+bk04i c=1 sm=1 tr=0 ts=67e559fe cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=LKVomu9JRcyPd1K0AmMA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: uY6qqtA1Q34syfrYUDLNa63zbFBBBd_M
X-Proofpoint-ORIG-GUID: uY6qqtA1Q34syfrYUDLNa63zbFBBBd_M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 bulkscore=0 mlxlogscore=983 malwarescore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270096

On Thu, Mar 27, 2025 at 02:47:13AM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Because SA8775P comes with two disjoint CPU clusters, we have to follow
> a similar topology description like the one in sm8750.dtsi, so:
> 
> system_pd
> 	cluster0_pd
> 		cpu_pd0
> 		...
> 	cluster1_pd
> 		cpu_pd4
> 		...
> 
> Do that & wire it up to APPS RSC to make the bindings checker happy.

Should these two be separate commits? One being pure cosmetics and
another one being a fix (probably with a Fixes tag).

Anyway, 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

