Return-Path: <devicetree+bounces-158925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A81BA6891F
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:10:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4EDF18933BA
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC294252901;
	Wed, 19 Mar 2025 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="anCMVJdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7524FC1F
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742379033; cv=none; b=dNiwWWNbNXUlrCNuB/k+28U2YqE92jnaYwTElhAl3e1gFTZWZlP/2UweF8PmLESLYqRQ2Wva1iadlvXRi/hQ/bSC3UyaTwTS24H3SOi0HUSUAhVbtDKthypbmJwQGqkV4srbpEP0k63tzW7GoAVRt2VEx5W/3EL7a+CsYxT1S1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742379033; c=relaxed/simple;
	bh=fYuae0Em9A2EnlCg3kMbKfLvDNuhclJG1YzHqvQep5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrVtp7w1sBRqVCo4AREeJLDeAJHLhK6VergAXStIeTwCMXDWCb6HNPp5cCk7Dfh6HD8QeFII+ra/r0uFrXPIqaoQJr/cff0n+ND/YnnNdQ7WOjVexpSmR4/Hb6AOutc0grZmOuBSjDnN6jELn2RdRD4MLKxUKrqz48OeFRqvcnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=anCMVJdw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4lgKS013138
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:10:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hfoVbFjBm0lH97eGzKF/pQOq
	7LjV9TNtpVNaGzwiCK0=; b=anCMVJdwJTWh3GRa8y6SOdHzjqOYLDMnUvjX8q6l
	fPMIgpnpuHDBa/QuCYvpVZHDNGbz0VW2qwmI5xAhJJnUYkCnA+4GXAmPYVnf1SqE
	U24qLD6o0Yh+it523DCXV4W0LrvKHj0+M2WjCONtHIL/y9qkV7cJsscn2Pig/dmt
	3oQX2JNrm6kufHLz2M5qBYFWZNJCx9wcGutsxOQ76gj3iYFsLsRAtgO8TdigNJ5C
	mxJxnmZUQfdTylrZRRKHeU5jZYRWRTsiu1pOqMNv9esSRJ9sL5Li4Rjo32PGlLMy
	Xz6WslCEz1S7f7v544UR3a30I6RA0o6KXICTF9kpktU+MA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtn1fx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:10:31 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8ea277063so163164776d6.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742379029; x=1742983829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hfoVbFjBm0lH97eGzKF/pQOq7LjV9TNtpVNaGzwiCK0=;
        b=p1OtAStsN7nv69txia/KgodE+CSqIvAPvjZrU6VGWBve8aONWQLa7VPm8EKELNonL1
         5pWVfY6xwBvqxV579lQ37nl3FHq6rR5i6juJxJDfT0M2C1arFdWXxhD6qPL907lNJ3Wi
         L2bwOXwPni76o+m2Gd/0sg0oaqPSUZd8cq5oompAgxeYVezS4UZ8/jHMR72+2wnivHgS
         qfVGHU88y0h4mM3qwcPhKODPS4ZNehX3stw4HBozzYEwBD1ob5Ujjw2MtxgQcA058C9W
         eP9yZ6emwTDytScGCeiEWiEVXKHxSJB+d+yH0HHRfWzbgu54rc8K4+hZ+tDE2VPlulBR
         kHOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgmC6cIHA/OmpOq8+OOGrLHCHRNa4aLegD2eG+tsuje3j+Eo4lIHqN7X0TUY0kSbBsp+iFFUfkOtse@vger.kernel.org
X-Gm-Message-State: AOJu0YwzSg3ayQSlIbEo0kZoX1l70aa12o0caHbfflCTlwzsSf4MRwYD
	EOY94uru3OCEHRdUHoW8LfRVaedXKhe+nE0YcT4nbKpwwSwbpUkj2ZXZecmH2CKHvGPLcQxeERW
	F1lEU4JOFmB+MxagGINPj/iLOa5MYa0EacxJE1G/ja9ANfI3eR5f/bPv0IkKXzq5sT/DA
X-Gm-Gg: ASbGncsACUJp8x854XsVsnqCOx3rpdn4z9ZXnJTRtzw8+nutckLmBpAhccbf8LXwAAu
	M4jhfyjSSi+lxK7NWb60A4+IWvFXxVpS/UhHC8CXyMIUsS8g6T+dVAIj/pMKh53zGwuOytn/SFQ
	xiU7HoYdIERUS2mRb/F/6lj3ZdKjiegMjdGdelesHWW4r/D6IFo9MxXtm77Ucl1yyjaef/KZQh5
	KoFvSV2AaU7Ku10VSrZryutfcp5g/7htYMh+9FqhZP6qJ2IS8MEnG+n+7ZiWVpWpUOtAVwqhps+
	Rlbc+EbX14EbOwrJPs6VNW2z1wZJ7nYQJO6grLPNFa2ceX5dNXmgjIRPPrXXiZxvJCL1LifKxnG
	Xn6Y=
X-Received: by 2002:a05:6214:21c1:b0:6e8:fbb7:6764 with SMTP id 6a1803df08f44-6eb2948029amr31141776d6.45.1742379029559;
        Wed, 19 Mar 2025 03:10:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6nPWr4lL40shrvGhvld1ioXV9TDj2ynQPlNrEi4elNXyPBWBEeHgVfboyb90akUr84MNm7g==
X-Received: by 2002:a05:6214:21c1:b0:6e8:fbb7:6764 with SMTP id 6a1803df08f44-6eb2948029amr31141176d6.45.1742379028830;
        Wed, 19 Mar 2025 03:10:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a82d7sm1967182e87.18.2025.03.19.03.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:10:26 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:10:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stone Zhang <quic_stonez@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com,
        quic_yuzha@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <pbfj4hpihijj7zr334agmjcencik2v2bayizntfik5rsmvyecf@7jfm5qf3entc>
References: <20250318093350.2682132-1-quic_stonez@quicinc.com>
 <20250318093350.2682132-3-quic_stonez@quicinc.com>
 <64ccc09d-7e1e-4c20-90e9-43b36a9cc46b@oss.qualcomm.com>
 <f01f371e-730b-4845-830c-68eb2acd6809@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f01f371e-730b-4845-830c-68eb2acd6809@quicinc.com>
X-Proofpoint-GUID: R3lkBrfISVL5zaVsxeRe7i2th1MjUVPl
X-Proofpoint-ORIG-GUID: R3lkBrfISVL5zaVsxeRe7i2th1MjUVPl
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67da9817 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=qC_FGOx9AAAA:8 a=COk6AnOGAAAA:8 a=ALGLAe0xcYOngpMLPdsA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=fsdK_YakeE02zTmptMdW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=999
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190070

On Wed, Mar 19, 2025 at 12:21:25PM +0800, Stone Zhang wrote:
> 
> 
> On 3/18/2025 11:54 PM, Konrad Dybcio wrote:
> > On 3/18/25 10:33 AM, Stone Zhang wrote:
> > > Enable WLAN on qcs8300-ride by adding a node for the PMU module
> > > of the WCN6855 and assigning its LDO power outputs to the existing
> > > WiFi module.
> > > 
> > > Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> > > ---
> > 
> > This change looks good generally, but please align the various stylistic
> > things, like property order in the nodes you add with x1e80100-crd.dtsi
> > 
> > I also see that board-2.bin doesn't contain the variant string you've
> > suggested ([1] @ commit 646e008ec53a8bb9ae16ebf98a65b29eaefd6da4)
> for qcs8300-ride platform, WLAN uses borad-2.bin from link:

This phrase doesn't make sense. The board uses nothing. Users /
developers build images to be installed on the board.

Please use linux-firmware instead of using staging firmware repositories
from CLO. This matches expectations of other users.

> https://git.codelinaro.org/clo/ath-firmware/ath11k-firmware/-/blob/main/QCA6698AQ/hw2.1/board-2.bin?ref_type=heads

Please add a note to the commit message mentioning that the board uses
QCA6698AQ instead of WCN6855 (as Konrad and I have thought).
Corresponding BDF files were added in 20250211 release.

> 
> > 
> > Konrad
> > 
> > [1] https://git.codelinaro.org/clo/ath-firmware/ath11k-firmware/-/blob/main/WCN6855/hw2.0/board-2.bin?ref_type=heads
> 

-- 
With best wishes
Dmitry

