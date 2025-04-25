Return-Path: <devicetree+bounces-171050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75252A9D1D3
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:38:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19B0B9E2010
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C411F25E827;
	Fri, 25 Apr 2025 19:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JdmlEomX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E651229B18
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745609676; cv=none; b=IDalw9HvSAW8YaxesqnR43oT06HG+EaQb+3Ze1WKqjHaKmmoe/OoDwe5AH0AQhINZeHlOqRjG81NqGSqx6zU3znBpoBw4h92cKx358p0zHD9f2Y5SM0Cb3QYqQE2S2ysShxqyBuS+nKn49AzFPdPvNo8WcSTsCPzcHQDuQ2xBHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745609676; c=relaxed/simple;
	bh=163cahu5ENu9FDqHl1M5BVKZOqnHDuPHcZ50Md70BVk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JGBkC6DYxa48aqVoA+mop9XUINQ6oJUjc22FJ3RDAJMg5eXa0v5SyuhE7yVqu+JTpD2jziYvBGm/VAawxG5sJOwfTRXMfmdekFzGum8JD4QVAQBKRzutEe/KNHicfuzHCU+b54Dm+W3dklC7GTtEQX5pvDmxfGY+TNuh+NIenpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JdmlEomX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJs1k004025
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:34:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Gbzbh9sKilox0bBpv/9uc5Xe
	tDa5A8nI6Z4xbs/KARc=; b=JdmlEomXnx0xyrNPEElivGjEB3Xi6jBLj7b0F+ep
	aeggcMkZEda+Q0R6ifvA8exAVf3iRnGlkKRofjIQJM9H3XpgMNqX7qfMYzSDhrhM
	SROBEzbLPe8V1K0s7garvHMVdHFkJNqLljXca8mHMd2+A+Mm8j/Xez/+FKHNm+BM
	rPrOWjFfGdE7bRJdL6r4Bnv2bCJvFkBj3xJmcS9elNgg6usKzs8SMifphHa3Qlhv
	M4PeO12wrT9kHvAu1teauKhfcSiNZMRJUJXXw8tFJscwrGTJbMkmo+NrvjSQAHh3
	VEWPfDlixjNOZK+niNS8bTKcet+yr20iGO0WiXAnw/kv1Q==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2a6dd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:34:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8feffbe08so67565786d6.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745609673; x=1746214473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gbzbh9sKilox0bBpv/9uc5XetDa5A8nI6Z4xbs/KARc=;
        b=t8eLN5jI8/kHKV9yQmJkBJi633Hlc5LvoULWW+qTEqHpA7Kh4l+48Z2w50HuLiagjT
         gW8n41pEciv32H8qTSEWIz2A0h63rMnOzyEnXPWWWwiguttrOBDMU1PhCHQaKJsxmn5s
         zDMPIa0wx0cwKFU4k2nON7kEuccy4fT5Hb57OwiP8xanz/e+MHZO/5FpKRXma7Od9yjc
         T6dDReynX6rzNGbjC2q8tonNGXZlcehb6zTNH3F6MfNgCM8zafF/T+flmMfiY3GUVJ6H
         ETHPKhidTMxNuRd3WGQSNheXHAjJL3V0loGGvJC5Bib19GHbpfdaW+zasSkKGquP/RhT
         evaA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ64XnuAcMH70/UCwv0GLukW3RYAHpElqMtChs5+o9oB582LSSR7ywJhtabchDr1vG3/AMyCw8vya3@vger.kernel.org
X-Gm-Message-State: AOJu0YzXEyhGa1lIhhiKlIYhA0hjSXBZ8PlwovrSbHavpxLo/8p80Onm
	eK+7AzeF+5vkaAKUDtzSFy3vnwaEpALytzp6eToW05fUMN3ur7ODEhYB4eVF9dq1OJOKbgl1kcu
	iZWzeegI7hulgKKZ8GvD1lNk8ePIpfoBgsKHNC6/s8yq7OZKBRvzqGhtn0fIY
X-Gm-Gg: ASbGncuwvQ7aoWinW5o3t1p23jq/Q2t93EFbqS4K0NPu7VUornxMtV5s993cSS3y15r
	R2b/7WE7kegU9J20LdRf9RQLRHp6yKoDunn0rcBCaC0g+gvNmpYkjV3Xgs5TieXVxSo3qROXg9m
	aMX8J/t+Rf5GEw3hYlFTsff4s+E4uZwfR906UC5FEmQfdufHqExcL7ZWj/8m99HiGU+muzxxJBB
	YO7cI6V4vABwgGvaB7ZzNegXFRr+zpzM7Dr6FUZbTMgXUVkfuY8k9BsbOUIfk5LVlzMgfnOpHy1
	0LHKshS6sFDkUHoDWERRYxjx64gAqcpwrGFNCZTa4LFrOwFwMZG/ciY5dCxcRSQxzR1A6OmxhbQ
	=
X-Received: by 2002:a05:6214:d64:b0:6e4:2e12:3a0c with SMTP id 6a1803df08f44-6f4d1f9d931mr9596976d6.39.1745609672963;
        Fri, 25 Apr 2025 12:34:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGl9bHOMYkB+SjmxFEank3g/xII0FoIJCvCC1QCWpvbIk9euK6eKPgazIojwUkLXrFRDY2vkg==
X-Received: by 2002:a05:6214:d64:b0:6e4:2e12:3a0c with SMTP id 6a1803df08f44-6f4d1f9d931mr9596696d6.39.1745609672646;
        Fri, 25 Apr 2025 12:34:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb2630esm722956e87.23.2025.04.25.12.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:34:31 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:34:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC/WIP 0/4] arm64: dts: qcom: sm8750: Enable display
Message-ID: <w6f3s56gx7psqgweuntqvkzrot7elhc5pdrxhvenukzwyt5eys@fndmaszfbo5k>
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=680be3ca cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=NEAV23lmAAAA:8
 a=mWMBN-svVNVciv-ajYsA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: nXKjX5zEQ-XHESINGPMHvZuydLxf5y-g
X-Proofpoint-ORIG-GUID: nXKjX5zEQ-XHESINGPMHvZuydLxf5y-g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzOSBTYWx0ZWRfXxdHAwHIEu5eE dKN2N+L4GBCoJc84gC4mdUGZqMHghN4mrVjV+RpWObE/i9zk8hd2WFTVncSqdUk+Wed/sb6MAqz 8Kb38wcw60vlyzCvaIyUq/LMTz6QNSg26unSElsKxMlDi24Azy34YoUdN3mD6daz6oCTZUp2aoD
 3+6qGfM89SBYHsJ16tS+PbOVyrwAXQlioDwJ1bQe6bt/vlZAaPdleHvco/9IvFDIbMnGwSeTnTW sU8XOgrhotksEgAz8MKOmOQaQHINTWZVSEY2sj1B72ux9GyN0qFa891lN6RhT+QuuKlxWKhsKh4 SaEDf2UZk17QQy5x8VxvHebp0BQAHWDiTvXZRVt5S4OY6Vt6m/IOzVjkoQLPnC/bECGUJN+qj1J
 8TZiXRtajm5ZJt2x4zBzttnEn3dTs26+70l1U2DrZqaDNzyGuab2udCl90WWM+UqlgqC+LS7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=990
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250139

On Thu, Apr 24, 2025 at 03:04:24PM +0200, Krzysztof Kozlowski wrote:
> DTS is ready and I consider it ready for review, but still RFC because:
> 1. Display has unresolved issues which might result in change in
>    bindings (clock parents),
> 2. I did not test it since some time on my board...
> 3. Just want to share it fast to unblock any dependent work.
> 
> DTS build dependencies - as in b4 deps, so:
> https://lore.kernel.org/r/20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com/
> https://lore.kernel.org/r/20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org/
> https://lore.kernel.org/r/20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com/
> 
> Bindings:
> 1. Panel: https://github.com/krzk/linux/tree/b4/sm8750-display-panel
> 2. MDSS: https://lore.kernel.org/r/20250311-b4-sm8750-display-v4-0-da6b3e959c76@linaro.org/
> 
> Patchset based on next-20250424.

If the DisplayPort works on this platform, I'd kindly ask to send
separate DP+DPU only series (both driver and arm64/dts). It would make
it much easier (at least for me) to land the series, while you and
Qualcomm engineers are working on the DSI issues.

-- 
With best wishes
Dmitry

