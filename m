Return-Path: <devicetree+bounces-253287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB9FD0A436
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:11:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22738301D593
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:50:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C079D35B14E;
	Fri,  9 Jan 2026 12:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JHN2rQSF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TeB4nmYr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAE035BDDD
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767962943; cv=none; b=C8GnIVPp6uG3jDGzkHT3ORrzliCXiamB97AxZhBBUEPM48XA7bnAuj+FWwWYiYDkwfDvPxU2rhbYJIbC1hF4+RHIeHkO7MpAkCiy8zAuCxkaNSJiJJRoiIITUo+1yVMeb8Az4o3UU9/Gy7xJJkhfzsIYcASH4i7QhkKGHRc5Wp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767962943; c=relaxed/simple;
	bh=6qG1rNjyCaGlrXAIvRBqTkl3SOnTDMr1BgTkhakkCQM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C26K0JBuQWcV7RTiZlDRAKmEtnnQWYZNdq6fg9/qrr/S4kpSA7Nse0Is6QL9DaUzcoV4g+pzaaNY6evToP0tQpIyU7sX5tiU6le21XHVP5Ti5X97KECPP8tJN/rj1WiUxr/IJ2Tj7RNMdso7OYc5my8RruPpW5kxkEHdoq3Fr1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JHN2rQSF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TeB4nmYr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099NCCI473084
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 12:49:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BySbXPvrZP9cAL+k8tl1Xy7c
	VBDb+ifknkZFrjStDAA=; b=JHN2rQSFLC1P6SPWah92CB567EFV5X+eapoIVRrC
	mnBhetP2o5eYP5tHC4OE5SECEonYY7TyRwy1d4eyMaVU1v/ogDSdOSJW2i3ob1id
	D9+NJ9LddqQ+tG3JvbcHzXk4xDA+zw8I/aItwsI8C0WtiqSeySkRiSWIGy4bfJGY
	Wfr6LNM0ybKyfVt1nAFHDpOrP+Aee5Ay0xCEGJ5fixITnPTtOOoNI3bNrCAPMHcx
	dj6Tk0sxR7jL+aFOzAwiOQ/kSYo/rZdNE42FEpEvcFQ4rHBlm+I0Bo/p0CWVC8vb
	eT79jvimAJkesYtT/T3MhOccpxljTisp647+GcC7+Qt1sA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy0a0jxq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 12:49:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c38129a433so1042048285a.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767962941; x=1768567741; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BySbXPvrZP9cAL+k8tl1Xy7cVBDb+ifknkZFrjStDAA=;
        b=TeB4nmYrBbZLQTZXpZHuHdYqHNSny4A6D+XKmTPdsXfUmxqTbMiATqUsqgSkwtkM6Y
         Jv4GuK+/AXXJnTCqc+kxcTKOCEFpQQHmvrvn/H98HEcTQcR1IEgu4tTPWkY1kOPSsz7y
         hww2g3jtlVCwO7tiRiqmztQMwByJ3ahFA3JXeEHO1btSv/7WxYlcVKrKgKNmnNjTSv1n
         AYrMwrHJSQWXKrVCvJzdcZfvsShm1fe2LJyOn9KRnY2k6cpGi1D0ab6oT1QwtqLoCJXP
         Chn0f3dfcGZXnMS/7eO5N1jpfRVhA4ghOiDK8WAUdBCsZwEHztpT2KC551NUcCH1B/Iu
         U2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767962941; x=1768567741;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BySbXPvrZP9cAL+k8tl1Xy7cVBDb+ifknkZFrjStDAA=;
        b=W2P8Hvbsev2uPn1Y1OusCiw5Q+MK9r4iyPgSynWHo8pwDGJd5pMyNI+o0a2ABYNc0Y
         YnFt6imI6lBNfMDG4VuPhSAqUbwQGLbdkrCBRUzcaW3APOUKFaJPYDrC+buEEDWoIOgZ
         zsDT/s9tPIeh5ME97YH/upUewZ30Ni7qwxyAH4TonOg44E6nJieV5R77Txia7fUqy0y3
         KOFMDEnWFFUxdrVUeqNNVVSnKq3lYxGmG1xHUnoniBFEBatvXuqm34EUZb7VKGJrTxv3
         QIKmhr8eWPa9yVeQIKoJAAoTxG4gWbO7YO1JlGqL2bkO8a/w3xxOsj6hv5PVnv0Hgnlx
         jysg==
X-Forwarded-Encrypted: i=1; AJvYcCXIQOfwViW8SFNeAi9sYblxsg+pjRgeQNojxu6eRZiW+kd9+uzqu5lcn4nc4v9Eokua5CGt1MO5Swki@vger.kernel.org
X-Gm-Message-State: AOJu0YzCu22akXUYTIbnZg++J1pTOyAJel8zp2WpOW3C9299TbM3MQZ8
	+jFauX9OrWXpExAsVKjgl1T+l9sGP9TxmS63oteEdAqOKkWOlZhrivAPd5IDpKjDXeptV8luXYu
	kQ25TA4k8oD02/xem8yRQuHG/2sHABMXtoPwwCAtt9C+W3rMnqefqi76sESA3HBpV
X-Gm-Gg: AY/fxX4o0n2k0ooE0wzvqXaqht35A0E1Uq2R+px0DPGwFxnuSQo5L17A9PerjGYHuSv
	ucwEutBbVyoB1V507upLgbbZPf360gZ9ZOAjfuX8hBDY5b08ihjmIg5skgGCgpyjiHFZU32jvVS
	hS3wHqt2xOlun1SPoXaV1Et1yFAUtYnZZe/PFIVdj4KBSGn11qb8UEwzORqNe85Q0z0f9sqVoF8
	5arr4MzQDbvtDIRAeELDcoWjHZEXYoaJC3cP6wcD6BEezVjMDyG/eGOtMneJbn+cZf/KrgPheww
	OHcNMm+fcrpjjXGj0PaLKxWIts3Ru0LdJxcigx3OXlzUcj/RCWU3qH0ERyyDXKgJTOIFmJHDBvS
	yCF6d/tjEtICy5p9PVWVm4CSrImQLYKg7oujUwhETcYFMDSvtKhRgk5KMVN0Nu/fnERcRUgfi1b
	ujyhAuGmu8RDxrIRMPzJxfY0M=
X-Received: by 2002:a05:620a:d86:b0:8c3:5a72:b11 with SMTP id af79cd13be357-8c389426b89mr1222955385a.90.1767962940587;
        Fri, 09 Jan 2026 04:49:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjjCiWu8ShBJMtcLcpGp6JkeGrIS/k+zABDJ03A4V/tQwD+ovwftU6fFWyq8KcIC2Sx7Hcbw==
X-Received: by 2002:a05:620a:d86:b0:8c3:5a72:b11 with SMTP id af79cd13be357-8c389426b89mr1222952985a.90.1767962940089;
        Fri, 09 Jan 2026 04:49:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b78894960sm1163363e87.4.2026.01.09.04.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:48:59 -0800 (PST)
Date: Fri, 9 Jan 2026 14:48:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
Subject: Re: [PATCH v2 2/4] firmware: qcom: scm: Allow QSEECOM on
 PURWA-IOT-EVK
Message-ID: <jmkjhy36tmnel2p3aacuypc4ualgcjv3sfiz7a2efpm2jxrzgc@axnin6cgsxp6>
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-2-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109080000.606603-2-yijie.yang@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NCBTYWx0ZWRfX96rRfOi2IGDK
 /cuYvXPtGPkrRxOSF98b2UE0NdamU6WSf8dE8h9BW2PMYw8aUte/bRLVXDaOoC+NZf0tW6ZLPI4
 z9KQVCrKGuZeTuoqG8ELrA/GRhIH/avFo+kubGmCUfpRU5iOLyzKMJS9VkL3No1cGRabSTpF+JA
 rW4DtMlhKobsb7IZtViywZVZbtnY7nSUA5UTAzLe3GyQiKc/fRA5cx3R5xFwEeYDSKFXoEzAybT
 ZM7hSwh6vHWtoExbqsaommm0j0LPUgMrdfS9p8NyJfufXPOHL1T9ludB3efGvJ1tIQ0fVxHFTlP
 lQp+Q5l2eH09yGWKuaCCfNWsUsEOxeAJD1JT/sPcL7w9eXFSlmLcHKxNTHu7jvJ7eMULjjJaYPG
 P5NPq6VF2xRmYwhjRGaGy8ti4OaZhr9fLZll38d6o5AZe4lXMx91Voq/IMRq/gshTKsFA9fIzhd
 mU0G0ZV7XACHtSNmwJw==
X-Proofpoint-ORIG-GUID: 8iWy9T_dPqvUGEfKZ8QtsJDx3s1Y7K_j
X-Proofpoint-GUID: 8iWy9T_dPqvUGEfKZ8QtsJDx3s1Y7K_j
X-Authority-Analysis: v=2.4 cv=QPFlhwLL c=1 sm=1 tr=0 ts=6960f93d cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=XsGshA-rMXuQ-jq-uTMA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090094

On Fri, Jan 09, 2026 at 03:59:52PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.
> 
> Guarantee that subsystems relying on SCM services can access secure-world
> features. This change improves reliability and prevents missing functionality
> or boot-time issues by making service availability explicit.
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  drivers/firmware/qcom/qcom_scm.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

