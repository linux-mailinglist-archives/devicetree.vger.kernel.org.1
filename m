Return-Path: <devicetree+bounces-178198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C114AABAFA5
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 12:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22C393A5C22
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 10:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCAC0218ABA;
	Sun, 18 May 2025 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oyHLh0E4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6332C21858E
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747565913; cv=none; b=njTDl+T4hj/pGBOaBKiybrAJhs+mnH0ScecVEDeoBtXPd3Iprko9RHflbI0AqT0LSBwx4OTC54d0C59U/t+LMB87p4PMVUIKbl2G0CQQ2kpTnPlVFBnVAKNjEmJ5D2Yy+VhFsxVRHJ1SWr8YQCsZVJog1dyDtKmXrZ7tNEe6Rfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747565913; c=relaxed/simple;
	bh=Kf1RaFNUgXQV8P3hFgMzRJzehXqOmieKWtM+BxPAu2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qHRpwZh2bm837xjlmJM0hwIW5NFjgbApsbv+PFdozaYqt4e+gxdzfrII439p06NH6lGwOh0JdX4Eg+yuqZLaGxND1bqRy+5LnlrUPvf1eaqjkCe0Ug37Orr4chInqFzqGvDCC2+Fy3anuuhHhpBm+wlS0TkFgh7bQM203Ickrn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oyHLh0E4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IAE1jx030512
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C+kAhzs70HWO1mZC+/wygNfV
	TouKKuehRfxHw2wkEf8=; b=oyHLh0E4NtKKPiUoiC86tFhbXkkMe8QpCOCaR3vU
	GITYLlXl68cwTN1heBxqCYCIuUhCyEsWsfpjAqRuox9zS4b3+yyd5mO2QCvYqeWg
	xajvGcm5OkKi/s8QzMPZj4JJ+Z3D8c4sJBE7oakYp6d7eMVYzkJcgJF6mK7QhlEm
	EZZngxvIC47S4mA61pu+jq9CRXPuVeYOATBHINVYIGHrPbO2daMEa3bywyHADZGJ
	E0DtOuD7WPzvec9Vck/+qAzCNTXv/08OgJYVON2QlC0e8rNmUe02WHld206VyB4v
	eQvYeEDjcx6jW+szLW2j3Dtr65XgJ+yUNSnvmbRLk6pqKQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4svnk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:30 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f6f2c41eddso79233366d6.2
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 03:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747565908; x=1748170708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C+kAhzs70HWO1mZC+/wygNfVTouKKuehRfxHw2wkEf8=;
        b=ZBKHtvkKUkyBuWckL/chdeHb294a5Po9fjfcbpe2JyJBkUf6Vs2wAl1R4JJAdu3qQe
         BdWBQsvdxj/i+m3ZhF3fKMqtLlJ2KFfdIfESR9hldYxnBS38vBizXBfAsJBd1kNCk8Re
         ETuEOHvNvTZfdLURF+BepBfsia6rbIYKTXkr3scQaTuuwWj+N+D8b0gjCEn6BovOJZti
         RCPJlEM9X1XsnfKEP16dEuSccL7pVopCZ/MaNAnd4jeoWGS7FRenTsMAuNsJ7pKhY9tO
         CkresnodALqOqimXsXMqITXKt/+r/8jWoBfBiQIMllWd+Q2na2zIMpXBeQJRtGG5MyRh
         qkGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcpVuWTvt4l02iOlaDTqfrRKg8tM5gBfgi0gDmO2VP71gj+YtcZF2fuq3GD49VQzNxTQDhD4eJlrvm@vger.kernel.org
X-Gm-Message-State: AOJu0YxCV2xaUAK/co9Penw2VHqRL6iisqvVMj11q+Ptp8+TwCOYkTDb
	ob+A75JRFKqjREnfwOtPMxgUUU5WUbjLMRKR8FOxgZ9ISHVj7VLfsnNRNR5g0Us7YGvUTdpgufH
	9/CQ1NrDSpEOsl1KZhsRi5iQpPczWxBIUh1qh87iEazCCzwXXhjhCMnJQF1g1TwtKkwWW0M7W
X-Gm-Gg: ASbGncuLxWyNXi2hvlekNT/wX0yiEm+P4LgUVwAieLjzoSwkQj1ntmA+4wzRtQVihKg
	bLg/WAs/Vdiv7mcubMmHjobJq/u1JGSO/NlDt/vyL0eh184ZkobX8MxyhmIxaPABZG68Hv7kF8g
	OTFFpAtZXCfbG8MAlfi9Ca1z2iA+ooef8rrYs49LswNYlNonKPl+ikDwsVv9LNoMInu10mfoCmD
	DN2MobeeKfOxPpCEgMqVBMMqh+iAkLVLvVj183V03HjCVz7N6835K5tc/IR6pRwEPG6IrbPLI1B
	TZO2cvXQfm2Fu7flVD5pc9STz4ukQGjM3UjW4viKYiZ+OvicGwWYGoGPAKduM3rTtWWGyhdsz3I
	=
X-Received: by 2002:a05:6214:20ab:b0:6e6:591b:fa62 with SMTP id 6a1803df08f44-6f8b080f716mr146093736d6.5.1747565908565;
        Sun, 18 May 2025 03:58:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWwPNf6b4oHQwVwY5J6NAuClm/OnyCb/hY8gSkEcTMvpD8A4ZCc9Gw1UENXkTw1ZvfEZtpEw==
X-Received: by 2002:a05:6214:20ab:b0:6e6:591b:fa62 with SMTP id 6a1803df08f44-6f8b080f716mr146093486d6.5.1747565908199;
        Sun, 18 May 2025 03:58:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084cae55sm13842111fa.45.2025.05.18.03.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 03:58:27 -0700 (PDT)
Date: Sun, 18 May 2025 13:58:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sc8280xp: Add SLPI
Message-ID: <tv27xnenkg7uc7webgr6yqhua7xntqvjv5fnatmngfm2sjlhqx@rdoxt3ng5wdn>
References: <20250517-topic-8280_slpi-v2-0-1f96f86ac3ae@oss.qualcomm.com>
 <20250517-topic-8280_slpi-v2-3-1f96f86ac3ae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250517-topic-8280_slpi-v2-3-1f96f86ac3ae@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=6829bd56 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=GJIz9k70rp-aHLqeSlwA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: -RPqGf6friaikgEzvW39lMejgBW3XaW1
X-Proofpoint-GUID: -RPqGf6friaikgEzvW39lMejgBW3XaW1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDEwNCBTYWx0ZWRfXw/cQVKXlSn3h
 R7oiZQ/lJ0CN2HiMv5r9o5RhYMQZxBO4u9DWt/xLz2mcLob9w2nxH0MQvcTEKi1aWhKyLFGZ5d8
 Xbec0qs26QMNVwddteZLEktuNh+9O93eAMcPPNmNTqt/cXbluxJiNaIHiQwj63MHr5bktniV94v
 RRFCO9X1GOoxNBTjsVkQLhTKGkIQDh2qrTT4xNIHh2hwIg2dfU7MNMeU/LfW0RGT3PviSyVR2mB
 jQhutM2Lnrd9y6uWdj64tua9M1MVrZ5UHGIEFkhHZ+mE2klhcY9padox9sjy0lrYj4Lc5A4lQsR
 /PDqNE8m+NVr0vd2dGIKMlW5A2/5lgyYQYgVjRf4bxPt57RO/jf+9cJqz0oChOUV2dAcXMl7z4p
 hrwzzhBqUe3UHzz5SCT2POn2Mq2WgEMLk3r1iuokQEUcByI59UC1eSCHWtmArgPJi/254NSP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=763 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180104

On Sat, May 17, 2025 at 07:27:52PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SC8280XP features a SLPI (Sensor Low Power Island) core. Describe it.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 99 ++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

