Return-Path: <devicetree+bounces-169930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29832A98B6E
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AF63189BE35
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6F8019F48D;
	Wed, 23 Apr 2025 13:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EMq2faP6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326BE1A2380
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745415477; cv=none; b=EXI0Ld+HbhQG91QIHRzSWa+VwgTL8lS9KUEmaXEOGeyUoktvaACq70fveGy2TyQQqPyrx36aRbeU6sqX5V0PtASExke6zildjLI+eFz6lHUPCxdTZOVDh7y3CsM6E2rIB0LWA+0g1SmQ/j38TlB2dR+ZuXs2Uq3YYQ/MWctXjOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745415477; c=relaxed/simple;
	bh=Bk1vBly7Gn9wz6+X16ugqS+ZdEVmF8hiBAf0LZPkYjI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NQOZGuTy9XEu5KbKqT5n+hdrtfYjBXmcRixGMoGVctgQ1jURplw+eAsB44RRPXDzEehJfMMTyfjODvYiHtMIC17d4L+O+DNy2zcj4gsrjo2DHU/qDKF+1F08mzB52v/uEh5XkTSqU0sScvKMR+CTpILqTLjVnvNIAae67v6Z/ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EMq2faP6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAIN55008439
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:37:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+2ze/rnX+AqFYjoGgrqs+s9R
	DoXeSpWH2VHtigOpg8U=; b=EMq2faP65RSDIjkMhd4B/vQC1OAI1u2q4B8h76xD
	bo05K3A2ocZpXMZDt7r/8iq8PtmXUjxoVVsauKPKOvCOisWrNCrKBAA1/fY0Ioo0
	pau+Txpiq+sCHgqfJT0r5wEeLm+GmvzcjuPXAfIOjnj1eOEleAYY/K6hafyWCxfL
	uBoxCQntWvVt689Xcxwy11Ok4ppVL8Hwm52qVNUV1EbFyNO++6dfZROQo1Wmmyd/
	9tmjR5Uw70HUs4Akj7iaFvXMqmImXtj21goy0VVnfU1T0qdHg6VyfXXX2od8KqAT
	VK+E63ecyTp9hUv55QmFN+4AFm2da6ryERG3fZyqV8QKVg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh5a9fn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 13:37:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c793d573b2so1171833985a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 06:37:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415474; x=1746020274;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2ze/rnX+AqFYjoGgrqs+s9RDoXeSpWH2VHtigOpg8U=;
        b=Drs5E6RiabXp8hRIrZOFU9MmD1hWVxFdazJshX+Lh1HtcZHWYg8rJeyBJeU8lCz64B
         /8LTuBzg9L7mcoiikETjOjmgzWayrT8yV+E4Ld67bKQ612Alg4bL+O3SU0hIp29gHl4o
         GY4+n0dl9VWaHTDWDxxnS/QpoWjoNjPHkgEH54ystOBWTGOzb/2eDsSz6PC/r7WcSSKi
         LHWbwJ2SxsfbgT2sScuOZbAxtpBKAYqTMxzdeYC7d2kCWVZRALplc1czajLpdwf/1jSI
         XH34IaILcmh46otzm6R6CaiS/l4w8padzre2T5orSzQv3XdNHYi1SwgeY/EvC3wPU6T9
         6ncg==
X-Forwarded-Encrypted: i=1; AJvYcCW/3THGuljn3gG/vS9CqCrCIkOjgnplI8QMovah3ZInmpme7QUEQ1iWQr0Q467+M5HfUtcS+z4yMHEV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywboid7/gU45AidzqPvHG3UBriIkaxBXNRpKHh1Q0y2G8wKapwY
	MTkjdAR+yyv8i8ydglqqpfma5NPseLMPsDbcX5OasdQMcTj46miTOGeFfrVAK6d1yS3cb2axlqP
	ULW0mwaTtFf8CSlOpyvbc8+bX/8M+1v1W3Xqhivp4D8TnUcBiKftUdONTF88o
X-Gm-Gg: ASbGncszw7Mrx2roa5LeIi7SI7GBBNsDNYtfWjvv2nyMV5cZbQYdF/C0J20soLG2Ess
	r6DEpKsYCjAf0bGMdFuOQ5o7kz+OY1SFEUiAbbNlKrJspYHQaDvfbBPYB2pReqRfN7HkRnxhwoJ
	Ynd8m4pY0v+FxlSPLtpZOmerMS/Z9PiUdw0AqKTFI7rprhXytI7Rf1Aji7RbZ45kFiSZPfxYJm/
	TlsS9+O63NxH/enjipBSzmipwUBn69tHUcYJIMqceW7zEm5RpqRIdXSm68l/imVLs5FR9pJnf0d
	mvAZD0b77Fb1lqaWCSkx6aIWMB+7oW6rCKRdpSWyCvh3NygizfjRgkb/uRB8lJ7cCpUJ7DxKuZM
	=
X-Received: by 2002:a05:620a:d95:b0:7c5:18bb:f8b8 with SMTP id af79cd13be357-7c927f63367mr2730405885a.1.1745415474049;
        Wed, 23 Apr 2025 06:37:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHQxjyT3iMSomg5ijBHCAHqMp5xzTzundL8sqlTqkPCKrDcBt3wVLGtMzpfLC7BB1RtedrtQ==
X-Received: by 2002:a05:620a:d95:b0:7c5:18bb:f8b8 with SMTP id af79cd13be357-7c927f63367mr2730399985a.1.1745415473543;
        Wed, 23 Apr 2025 06:37:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5d010dsm1533420e87.120.2025.04.23.06.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:37:52 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:37:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
Message-ID: <tqzmof6rq7t7k3jbdmay7dplz7el3c6i3ehesdiqnp7iq5f7ul@3lnf3awj7af5>
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX12YTab+QfzqO B1/o331yo6sYr/urixw4m8ImCJGxSuiR3aGP5MnaKtrNgRijcWrQFHP6+Mp7ml+ex+s7Fhwyokb td9Y7YdAijpDVWlhhKJ8cuqSuurE1tKNCUilJRV/PO+HAmjgDUDk16so3lBpMr7cBE+DPx++nG4
 +jWonZoJCOjYqO1TG85GiPnFZXYJUkD4VFVzOnCHBmFv5jubvIA/6bjV1yocu+gAzrZtXLPXU/4 BM38fqNGN0gmB8vb7AYMyuhghQCXmPU6nHc9qD+HfnpUUA3g5+8PaAJ5mDUIuJwUY2AH7OavR/3 e7aIAWg+LYiWKBZ4mIV3BdzAic+UI9GnkgHMR3WgpsBAWYMGz2T/l1HyS0uf0sdCUJz8ioP3tty
 ha50sgRwmeDtb1BLzN0e8Qfgyn3YnJLnmac+Eb1UrVs47SEAZUhs8CuG24w8Rs8xf6ezKw4b
X-Proofpoint-GUID: AeBFNtuQy6lW5Lghduy_nIwbqBShZvoy
X-Authority-Analysis: v=2.4 cv=B/S50PtM c=1 sm=1 tr=0 ts=6808ed32 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=Vt7sqbXHGhqwYxysgRMA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: AeBFNtuQy6lW5Lghduy_nIwbqBShZvoy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095

On Wed, Apr 23, 2025 at 04:45:43PM +0530, Mrinmay Sarkar wrote:
> This change updates the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.

Please read Documentation/process/submitting-patches.rst, look for
'[This patch] makes xyzzy'.

> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  5 files changed, 66 insertions(+), 41 deletions(-)
> 
> @@ -3191,6 +3194,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
>  	.rx		= 0x0200,
>  	.tx2		= 0x0800,
>  	.rx2		= 0x0a00,
> +	.ln_shrd	= 0x0e00,
>  };

This does more than just updating PHY sequences. ln_shrd-related changes
should go into a separate commit.

>  
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {

-- 
With best wishes
Dmitry

