Return-Path: <devicetree+bounces-232695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F3C1A7AB
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 14:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 192171A23CA8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16A7434A764;
	Wed, 29 Oct 2025 12:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HxI/3Mu1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L2WtPw4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A4933FE0A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761741334; cv=none; b=RnLqW8CDPLBw+nnRMJIV5p74B+yO1CfEI+mXjBuolKSE1LR4Qc+fxwDnLn3oMxzRpYKXV8DsyBwcyLp6VS2t1mzukqLUtZLHshDHvCPYh09LOVbDV1MXCaGBnaD2xfgx6jq2rxiRkS8iHiIRLJqG9E2MopJRbZgIKtRJ7pjV1fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761741334; c=relaxed/simple;
	bh=8fFke6c0149lgV+lkfFHo2TkiBcnS7I6YDsk8uwDra4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rz2ABtCf3SRSVoZ7ap+wbfmqE/IIcgpl5v05KFm/S2YX/yqPC3W9C0eqsZd2DL5tnH4sWJUyZJCgp+ZHBM4S5SDwKdqJGZ09vrfzxoTQkRpQc3grblDbrSp0fGAn4iXodySHIStZRJSWmtIbT66Y7cVfMJfIzh6CYWUTj7nFxTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HxI/3Mu1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L2WtPw4e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4vDEl3755273
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:35:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zsNFzolgSKQC2bBoDSwKUuUH
	4xZt2AoJCzH7vtyB6vA=; b=HxI/3Mu1imbJSjFZxfP9X/PST34HR+EnlaSiLN96
	4W+mFcnYBfVb/wI/Xa2LSjgxJSLxhIPy6i4Yupox8wY4UiBlDYwkdT25FHOPQ38p
	QhsIcc4uXG+IhR/dCDe2zlufLR+p4r/Qe7kwkmAEtfTVWUFg0941hRkt+r61TRbm
	G/vjPeMKwVNYsu15hF/VqlAzrJOTwi/H4Gj4ss9qS5t4Qn99KK955zZ5CtiIfy1p
	MSKNxlXEz7I0nHlPIzian4Bza1K13gFQtHmz/8rZzYnaKc5hkKyQsrLS9CJgGK0Q
	70hiHjvSoi0d+midtFxfXx2PegS9PUpbmFUdvLZYMr+0hw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a02gmp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:35:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e8b33c1d8eso177324281cf.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761741331; x=1762346131; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zsNFzolgSKQC2bBoDSwKUuUH4xZt2AoJCzH7vtyB6vA=;
        b=L2WtPw4eogZlnY0aWCqU+rvCp7mca0pBh2finvGp9beyLrztoecv2J5WAXr2lPj/H0
         oATQKlmzW2wL7AC+ANHT2EUfWa06hXUhql0GrveZmKY+V7p0HQQgSJxEov4l94wuk8Uy
         dNsWRFhThX69rHJNXkt8Hf9QgSlw51B5rdgxM5r0nOPWO8cStffzxK6SROmhcd8/FLgp
         C4XVVfLH7LiKeyuE7xkIQ4ny0F9wMWVMexGTtDwPYd2+wP2ND4pI2fOlmL5fDHBuqslN
         ZnhkvAWQF3SI0jnV13zwBHKisFqTlcERNL5J/zd4W86eZLK5oDVVHRL/XsrY8cNFr6f+
         vNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761741331; x=1762346131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zsNFzolgSKQC2bBoDSwKUuUH4xZt2AoJCzH7vtyB6vA=;
        b=U591JZcAbHBG0tRs/OG05U7xoy0D/wrBvhvRxyp3RyxoUPQApMrPAqC1/w8i5/nXoo
         1sKUb6iE7xm7rsdmUtG2SnrusTVEraAEWUwsYWxqvw3btdHK8/17VcV6q+zKQ+x34QFR
         Tjq98Vi379w0en/7X9Grlm0aYOJ/W+Fut+XFYoTln9BoqPRvXepbJ0H/qpAChhx5MFUt
         8EsqEaE0G1X3UpUFLyxezR2s0akbCPYb39D+42Npm2fLTQEAGlr+4JLT8OjpPu+/9rYj
         MDfg8XIjOtru0CMVf0m+qbdMQw+OdQiVYonNP9QeKhRiAL6WkSGtToke5mlYPPepcHKX
         OIeg==
X-Forwarded-Encrypted: i=1; AJvYcCW/q49ALsONZUQszA8hPbyyJitLMR17DdBV2CrI5IPj6ukz0qprJGAMs/5IV1hMOeyzmF9eTTsVzEvC@vger.kernel.org
X-Gm-Message-State: AOJu0YyMVZl3Mx8TAsrca111GolKMfrd2DTRtx5p4az4pr3HjH/ujiLd
	647pXN9EEi4CS9sSuEk+25+u0Kxnb7+W2EuwnYORQj0WxzmmBBCsJ/j/l7Kl8OPvjxTrMfVQYvE
	YJDvCMX7ZiLQ4ToNLM1lGMttJUYvX+x9GH64ZD8Mq024KeujH69v7Njve+XdFzLsE
X-Gm-Gg: ASbGnctMI1kCafrL9Q515CU5zDlmE2mu7bNdsokD9OjqB/BtQKoJb+/z5xn4p7OTx4T
	zgvDibhw4UwAJYDFnxwbYUSws5cftHc6UIeGtIs4xFFxEGv4cRY0vFqcOn08VK/fusBgUxNeofy
	cHJjRN4kVSC34A40vv84sB6cHa02pUbEbE/g68ZMPz6NWN6lbu4lUy0NFvtERTD6SPY0KidK7g7
	QK5DQtHvkeapSTeSy91bsaWMTznv5h/Rg6xIKvL7hzXlMbWEyw9/jXje6t7mtkvEIfNxZei37qt
	dYWZ1wu2PHhIl+S+Pxzf2xH1z+5Vmna+98TVlB4M8+NCh5PVhpNOKdwcF1GrSTVe7AmI8VQdqQy
	H0NQlHEYtH3HbE2c91LLNiGhWEyNIrMSEQeJCmkxEKxMNthQ6z1lxOoT5srAvfK9Piw331p4xFX
	q1tU6kuCbUs3To
X-Received: by 2002:ac8:7d4c:0:b0:4e8:a9f6:360 with SMTP id d75a77b69052e-4ed15c9afdcmr29484281cf.70.1761741330784;
        Wed, 29 Oct 2025 05:35:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxJGkujipYQz/E6q183ffjavTVh1UaVtvW1PPo8+MkU/PVJgSAz9nur4gBHFIa/6cE2OuOjA==
X-Received: by 2002:ac8:7d4c:0:b0:4e8:a9f6:360 with SMTP id d75a77b69052e-4ed15c9afdcmr29483741cf.70.1761741330083;
        Wed, 29 Oct 2025 05:35:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f41ba4sm3794759e87.22.2025.10.29.05.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 05:35:28 -0700 (PDT)
Date: Wed, 29 Oct 2025 14:35:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] arm64: dts: qcom: cleanup GPU's zap-shader node
Message-ID: <dnup7gntevuioadecmslch42ye7j7ioamoqq2www2ytmz4ymws@tvka6m2e3js6>
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <c83079bd-ebd2-49fc-ab62-1fba08276cc4@oss.qualcomm.com>
 <51f10d4e-3962-4c20-9d5f-afd0ac3f598e@oss.qualcomm.com>
 <289d000a-b142-46cf-ad15-07ab8ed377c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <289d000a-b142-46cf-ad15-07ab8ed377c9@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA5NSBTYWx0ZWRfX3rrBNJutu0Yp
 jf2f2NHz8RZKW0ZkscJf9tbu3JVzKKnLMqvfPpAVDZGn03tmLAvJIrcoy6C9TOLEq7ZuscjUYxy
 ZJXaFikfSy5evUZQY126E69g3+p4JlIefwda6cQJ4O2uyXywlWNZDvdQ3wjXu7UZglEf07Et/k7
 ncC6f6Hd6d9xAHnaaEyaQ8ImZ2wChcOqAF6lqUnpfULxAUUoWBtKLwMpL3IACI0yhl4o2TMYzMu
 nKyTlwdMx6alxqSTrWPuE/SW6FHxbU4SvLEgbqZK+rSGaFLG24mdL+Q4xa2A+UBEZrI0Ov/KQii
 NAOMmCsYgSwkuAkLWl+BlCLL55Ha9pFsaPMeDwpM1y4GbDIrHNXZ3zhyLYiUrvQDra0fI9XlA2F
 aB/RMjbA/05wF9BVYP5D+1Mm2tOEMQ==
X-Proofpoint-GUID: beNaPmm8viUZk-HCURLbA3T9vDtoGUaO
X-Proofpoint-ORIG-GUID: beNaPmm8viUZk-HCURLbA3T9vDtoGUaO
X-Authority-Analysis: v=2.4 cv=epXSD4pX c=1 sm=1 tr=0 ts=69020a13 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KyuLurKa1yEd-JaHsGgA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290095

On Wed, Oct 29, 2025 at 10:36:45AM +0100, Konrad Dybcio wrote:
> On 10/29/25 10:35 AM, Dmitry Baryshkov wrote:
> > On 29/10/2025 11:33, Konrad Dybcio wrote:
> >> On 10/28/25 9:59 PM, Dmitry Baryshkov wrote:
> >>> Historically all devices manually defined GPU zap-shader node in their
> >>> board DT files. This practice is frowned upon. Add the zap-shader node
> >>> on all platforms, define a label for it and use the label in order to
> >>> patch the node with the firmware name.
> >>
> >> I'm not sure this is much of an improvement, since at the end of the
> >> series, boards still have a &gpu { zap-shader {} } section, with the
> >> inner one not being referred to through a label, which reduces
> >> duplication in the single LoC used to assign memory-region, but
> >> doesn't e.g. prevent typos in the zap-shader node name
> > 
> > By the end of the series the boards don't have zap-shader{}. They use &gpu_zap_shader { firmware-name = "something" ; };
> 
> /me wipes glasses
> 
> You're right, I skipped over the last patch

R-B ?

-- 
With best wishes
Dmitry

