Return-Path: <devicetree+bounces-223231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A284CBB257B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 04:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FA31188BFDE
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 02:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8701624C5;
	Thu,  2 Oct 2025 02:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ayRPN5oL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450D634BA29
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 02:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759370804; cv=none; b=VQpeUZ5ZjzkyOt8omcatA99xI4uw3P5t++ltIXbi9wq3/GWLRhVfaaLbZ62VrB+OV4FYjR64eu+tx4fIKNwGQG8e1gdy3Cloa82dzeZoMRuifx4jRVVxn4vao+Ydoq++bKoTDkOwkERIq6WRHH1xKn+ji3oa6AcXUYKrEiEKbTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759370804; c=relaxed/simple;
	bh=kV6O/7xr+ozWsJJbk2YUXyEa+iKmtdPky6IvJGU1gXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZNmC7TIswwxcdaxXw2NSIYUtta1nrFvHaZw5EfuzH0LAJo5RiCGR8bjpvUH3zIOuDOh927ktoMbiudq+flxuQmtyv/HmMBDD2dSvDnltMxJeK17hWBFbMzgd6g/7dK1E86E0UOZlL8tKOt/JsPTRRhafGVkH1d4YnNKCPI37su8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ayRPN5oL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ice6r006911
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 02:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Es0e9pv5niRRIId7gi4sYI/e
	tClgkXkV5fl6Ta1xdZw=; b=ayRPN5oLVePtSw7ld1xYRluIOFQLJk5WFV7us4Pw
	56WBYICkCiR+KarEqSVJg2SeC1aaCGbfAhJIZhfljSotVzGBylrvyf5T9pvBp+1K
	iaSjmO0EKC+0qXaCmIwN9bHOKHSIEFAb5x65o0Dhe2XguIgkSXAKk+14LZgEo0xG
	sTyYc4T1eqKxQlM+BW5hanIY5vkAvdmjOt34wqmnNvSDW0Um4iyHpmUIJAwlxiu+
	eXsHIVAesy7SAeWnvkgkSwcDw7TAsa3cvZ0D2qUYPuy1Xzfe+4xbCGHi79WTJwE4
	xxyKdcNV0E8O7djFg1GCkMFchAK2E6M+lSMRtB1148QSfA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e851pebn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:06:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dfe8dafd18so22789271cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 19:06:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759370800; x=1759975600;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Es0e9pv5niRRIId7gi4sYI/etClgkXkV5fl6Ta1xdZw=;
        b=SfJb1JWPbQcTO8ahvb2Ehon5RtXfpX0VMUlYmAFD9mNbS4gxOQbhqvoPrcT2X0Twk/
         n2QPsaEGYKSjGHSStkyJf80Ch8nmW+Ii+C+sqN3vbPdTd+r2JAzhfSkHm3fVShNt/JRy
         QUNXHWEgm8BYJpY4B7WK0cqW8jyX4bxORNl69sAG+XG59R4IAKXt7qYv8hwOrz2MzIcs
         XRNs5FP57iTMjdBV++m14+Q1V+qjo6zUu0VInM72e13/FbARt7y8Z3KQmGTqUAbJhtxt
         qJgDMTlan1mKu75QQclDhwry6aJ33brdQ03/Zgr0ruZnK6VJVP6fXG2xtbmD216gMv7n
         Y1fw==
X-Forwarded-Encrypted: i=1; AJvYcCWGJ5x0VKz6uFAwbkdqqoRVTalk7oa0W6G28MZvEtZFHMBcxvRNKgb3ueqiKm53YW+rgTqC+0fw+Sld@vger.kernel.org
X-Gm-Message-State: AOJu0Yxp3tUyhXW62ecmQsmbrmYrrpXGut3xmAHsioXXreb3gfbN9jFT
	aANnhAZjDqYFk30pOputaTUg4tmCdWxJHBUqPksSnXzol2+KgDd8N88txVWRMjzEwD2hZFdT17E
	AHU/GQ7tGOUaJBUJygP+kkPuXj8MnvSzuBKSay8dg9tRtsim3VxPHn3D9le1aGTbC
X-Gm-Gg: ASbGnct2yx7sqlsnFAeQuwB3s8CnD+UzkVJ1WO7zmRZ9aA6LVC8o3dHkpg3zMkPd3A0
	l64Q66ye5U49M6UIIAHT7JB+PZbKGMRv2eAecVKFKvQYN0eQWA5iDuSioWJyXVthAuYRihfaPP/
	PWEw3ZY7A+BapMK7xeKBstT+RjWveCK+2ezCYt/V7vYlKUgydpYGMGbAGfr1bIgYHhXKv/zpxb6
	AlbsO8bLr6PLbmeynvuG6oa6IUCMLMTwj7uFpbmfZ5/WxTbFhVjjZ4MZ/aQHdfLJQKX/2S0D/m5
	wELoN0mhGKNdEidL1Jj9qnVguSmZRTxyC9rwhO/SZ2Xj+LbYlF5HZTwk1dMI6+1jsU63xwGAwlJ
	R3bL3SzOhn1t6vmoXi3moi+4IyjN0HvOPb5wdvmam9cOdy8aTkvT/p0gtmQ==
X-Received: by 2002:a05:622a:514a:b0:4d8:2245:e247 with SMTP id d75a77b69052e-4e41d8a3201mr84427321cf.54.1759370800121;
        Wed, 01 Oct 2025 19:06:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvECAJBZExthaTuqlaw1tux8fLUgY4bEAQ97CI/RX30reaxMonreDyaN02w4PUzNOLGdujtA==
X-Received: by 2002:a05:622a:514a:b0:4d8:2245:e247 with SMTP id d75a77b69052e-4e41d8a3201mr84427151cf.54.1759370799692;
        Wed, 01 Oct 2025 19:06:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d33fsm374381e87.91.2025.10.01.19.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 19:06:35 -0700 (PDT)
Date: Thu, 2 Oct 2025 05:06:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Baruch Siach <baruch@tkos.co.il>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v16 8/9] arm64: dts: qcom: ipq5332: add pwm node
Message-ID: <fbkpfbgkn6ycwfdmgqy3hzqu2lg2tin5gsw5k7ezn6o5fqfa54@hv5ge3qzojcl>
References: <20251001-ipq-pwm-v16-0-300f237e0e68@outlook.com>
 <20251001-ipq-pwm-v16-8-300f237e0e68@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001-ipq-pwm-v16-8-300f237e0e68@outlook.com>
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68ddde31 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=W8KEJANZPcvdmftmyl0A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX/pvTXn+IE/9k
 9unrhF8X4e//yJE1k7eSXkZjPkviscF0TebXd9kbMA/FKwcjUDO50bydGeTL67/so/6I0kWZSzG
 Gs3IkZMoWDpmIgf4wKe0RBfQLyGOzrTgZvWuHhKW4jyeNgeW7hq9LcwjK2gT/P3Q5NP+QfAcqZ4
 MTtJYRdoRA9B2HL1YPpx47ZuFxdK6cjW1AJyzsglbxvQE8alWwslV7sZUR4pe4Jc+35JznH12uf
 dx9YeAdSE4dUCXRZ+BBc5VeZMFdX28MO4RP9wRk2F2mmmo62VqhVQrJrTuqlLoawJzLj0wDR/aq
 UjmSmeG3sVjX/fk0pkwelBwDIwAZLpcr/xVG60q6KsK1QfIYgRRE3q74wsVtwTHDK9e8ZgpdJ44
 2wCgWtOAXrG5sPM0JJ9UjDi5pvBTcA==
X-Proofpoint-ORIG-GUID: J2jYF7_8w8N19r-FbF54YOUYaWHB_XQ8
X-Proofpoint-GUID: J2jYF7_8w8N19r-FbF54YOUYaWHB_XQ8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032

On Wed, Oct 01, 2025 at 06:04:24PM +0400, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Describe the PWM block on IPQ5332.
> 
> Although PWM is in the TCSR area, make pwm its own node as simple-mfd
> has been removed from the bindings and as such hardware components
> should have its own node.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

