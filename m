Return-Path: <devicetree+bounces-223477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 340D6BB5BDA
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 03:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADB9A1AE42DB
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 01:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A9928313D;
	Fri,  3 Oct 2025 01:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SU60i7k4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD46227B336
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 01:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759455084; cv=none; b=LT0sVfkvIV4WCvsCDCSCp+jSwVIhNBNu+v0tzjc3itu67ZCwJVKJlwAKk7Ei+DeiPeb9iXH/Sr+klQGV2xgMQBv6WlJiacDL3TlkRg5Pb8OJsp1WOf16KwPLxbBg/iqFCKpUrH7K5WB1CRa8seLiCmGFY/3KYI5hsLjnuV0xKHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759455084; c=relaxed/simple;
	bh=a9FkrWyOH5WfgbO8iL/H4O75+4Iab83fXgGTDnad02U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FL672uen+WK72J2IbKDh+U9gvwoHzWBsUis4uL4WjV5uv74qbfqPitSd8IbUj8VEa8ECwQ9vJ3zrsDzPA1yYyqZZ4wm4apAB5MQYYd9EFNEGClXIQNeXD74iDGVz4rIpLaBUEZ2Ws++FnomchKCJdJHOLMxcJb1t+iAEBPsbWx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SU60i7k4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 592Mos7e010749
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 01:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZUor1GGEeb/RyaDdlp7uKfdhC1u50vkNwD9/2IV9XEY=; b=SU60i7k4P4K+3P6A
	5Gl+1FnQf51S9cNmaOZndeBtnzfFASHWYUfm63imI3LLrwAAekOiini0OIRvYuI+
	Yv2Zsqbfq+MUTLEVPIJlcq5MMOIruLpLl8n3Id/7akROVi9qOWW0VQO0oKt/fJp0
	DikaEnn/iLCBjQE/nTGVXu3X/xbAfT0kAp3TVmkJDKQExi7aMNUXAo+a17rxUNkM
	HB2+k9Qd2kqDSS7eUIykaoaFC9+fqpHYSZUI/JDjjfurzuVjfJGi6mTDmE5Zx566
	W4E+761yca4tsDEnR/TfM7OYY8Y0nK4cov+X9aMBBHRAbcSaE5TH99573+Fz1iJD
	FiV8ww==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hs5a1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 01:31:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4d7f90350f3so35856911cf.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 18:31:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759455077; x=1760059877;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUor1GGEeb/RyaDdlp7uKfdhC1u50vkNwD9/2IV9XEY=;
        b=jxbtr3TybBCCHDJVO16as9d6syCpBh4xKk6reS656qh4k6FgMwo3eagbhsDu2rPMO0
         MOhwbNuaUfIy9cfnJrEw0lwyqsHv2mzCmyp7/LDND2++OEMXfJ6dFLH4KR215cl3PTX4
         He5JbuvWy7M7BGCGZYnoirgLfGFHxhJ7PtAPZuuxCkiS42EEW5dPkCxvq6PPIaMgX6Eb
         XPs16cdg7x4WLAH8XreyeeKr58kQNECRHikbGtho4ijWNVG6NQEvFJKLuB/McvxUZj1F
         2uOsEGCB6+VNrOUTguQRH1Fnwxp4UqI5l1W16ODYDbFgEFn4gflNFN8pXVeB+/vFWZBP
         kbYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb2EQNda11aUJL2cOgGwkraugrLQLHzrAtrJjdl/SN3bYJDCP6n+Oc4whsxle1Xrfya/NrRVYQKJJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YzdgAVrjMEVXc1r+PwdVj5qjKd0j5VBfg97V/L2REYeOVqHnIDP
	MYg5UihfA+GfAZw4QfOIgjwsMp7U1pLRwlaK6vVaO0tkvTSOrsiHjkvbxXuxEDSlVSZ/JLk7FqF
	RyrJSeWN8ULHRH/wQHCbPkbK4MRahteOfdjuWa9c4rxYDidxj7mBWCFIJRKMX7uqYHoEqrCIhgO
	Y=
X-Gm-Gg: ASbGnctWrzzySB0Pd5crgqAH+M3KMjwZQWCCGs9m2v7rBQKkiLFivwcxE+eFwsrbpSx
	9FHSrq/KYjKoM6BDD9A7x4CKsxmc59vK0CqwxBDehqiYyBbOfC4I9TgjzV/kY6iOXT27EjhNPUe
	rsOAF1JHjjyyjZCYQVsW4aWu6GN2Q9/QBkdaFrKAvbOyEjRnBllMGFCEzZv0eOHur4F81mixjyX
	IunNE0RhqEd/+KvpZCcyD96wApkGUBRA7js3diLfItJj3IsGzOuY3WMRXtr8v9HsJ347U0crDHM
	xHWG+oE2Wh2YrlBUq+GiEsAwZEpzLFd5yrOKEFNOVA0U5F27zU7xQZ+W5zlEyfj2JqpQqFZIGpv
	Ddn/CBSIcoG06a8Swp6+1omIgsEZeF7JiGXhXPsyZXYUCTqsLbJHAv69J+w==
X-Received: by 2002:a05:622a:40b:b0:4e5:6e0c:d214 with SMTP id d75a77b69052e-4e56e0cd7c7mr56727111cf.3.1759455077119;
        Thu, 02 Oct 2025 18:31:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFe+bomof5ILxDfg2K8tXvUmU+StpWFDgcoN3h5HBzXv4s84eHcidVP/7kQ2fVYyiZVmTXOLQ==
X-Received: by 2002:a05:622a:40b:b0:4e5:6e0c:d214 with SMTP id d75a77b69052e-4e56e0cd7c7mr56726761cf.3.1759455076552;
        Thu, 02 Oct 2025 18:31:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0113f1b4sm1323179e87.47.2025.10.02.18.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 18:31:14 -0700 (PDT)
Date: Fri, 3 Oct 2025 04:31:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] arm64: dts: qcom: sm8250-samsung-common: correct
 reserved pins
Message-ID: <ksuinz6djsj6t4r26rpmrybw2cwqkqyv5kec7yvs3hvz4kq2qb@cker3eya22op>
References: <20251002184459.15742-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251002184459.15742-1-ghatto404@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX32UsgbhBXtZZ
 bpLiiGZTBUQ3LnKHUnqaJFXUBCK2Mga1wQpGbhz/UCUMdhzYpeki8bwKPfEyEr73ZtiiL52Kwpj
 bOdgbR0QXiMKKm24qdsUYNKXpNFOYCti1Mvd6KeQagIirbwPJSsP7b3RKXQb05eHlUVHCRzhi0C
 qc/Pwi1IEqHnC7uFZdpCqHbTBdOFvxRvITSRG10ZChf11O/RStscFBXmvjW7uRUhHgjEbnzXM/C
 tLzjQ9wjyR1foLW+9N5eeaAZhkLUCbNDzBSJXExY7tdeAmh1CaietC85gOBBOl0dResEab3gy6o
 QcezkziF+V3m6Gt4uNDvJi3pBIaeYFTZTshiHM5z6mn30/mL45hFXPPmabMDWHi3N1OzrEDDETf
 GUv/77Gs+pws2zU+CjtKO+9STHJYSA==
X-Proofpoint-GUID: C9r12GIqlbdoMGgUxLBIGPWaE_9oGOUc
X-Proofpoint-ORIG-GUID: C9r12GIqlbdoMGgUxLBIGPWaE_9oGOUc
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68df2766 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=18LQLPnI8caj5Q-2E3kA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_01,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On Thu, Oct 02, 2025 at 06:44:59PM +0000, Eric Gonçalves wrote:
> The S20 series has additional reserved pins for the fingerprint sensor,
> GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.
> 
> Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

