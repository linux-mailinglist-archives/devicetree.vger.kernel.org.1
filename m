Return-Path: <devicetree+bounces-255765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF78ED283CF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23D7430101FC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 19:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E54230FC19;
	Thu, 15 Jan 2026 19:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XUsztqgQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MxRfbjOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78642214812
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768506597; cv=none; b=poJEEpV03NofcLif1ynEDWMHSJXOMJ8d+f5lSkCtco5M4uKScU1Jut1UZ8jykUOSovNDmDvJnTuVBP007DOJ1Zfyhg43chSucf7isS4ipkTlSJvZGxPB6yOeh+P5Mk4mnqrjdEZI2yql5PV5No6LwxKyVfvvAyKU+5I2eOPnYO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768506597; c=relaxed/simple;
	bh=3T+dCHvAmbmc/P4p3inx2dFMkKkPNL/m8uObI81JOaA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FRlk6xXIKmzKhu3xxBRYfPzTXkFc+RIsspdWSv9dWYgy05bLJFZqL8lJM6wHvZN5e4s/1CD6fdoY3//j3YFFjQyyyRc8IG60SnmMDnLrTXYD5dFSCl7Sfmwh4/15pzZSPn2iFCAskyKVgkHvA/pNyWy1bUWP25Fp0nVFqAw6xuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XUsztqgQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MxRfbjOx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFY5J53202032
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:49:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vNyvDLfAN8WwlT6zHodw9UdF
	0NznYHtN6ODgBj8iUn8=; b=XUsztqgQbuqTtAauO4BbRi703m24+pKfKphDtgHJ
	yrnswfowqOsQGwwzimVC6p9+cCb22cHJsJBcVGJRjEKRxzCzR7OE+JX4Tjk/3k8r
	oZJ5Eqb/dEyP5YFDAtePk9fB5wCxmgqCjbz8pHVW1Phn5WkFmLRuvAt43UMt6jom
	8AYQUgvp2s3IvVcBFelprbnoHTLKa9/MhdCKCcxDsGJa+ZLp647w0BmxRQuBsvVh
	BG2eCkHtp3bKsxF3cRtFYwFYU9SCtt8cOGex39HIGHfuMXXHSsHXAedu/uf6aV6u
	5dV58bqsA3+rGIxb+bM4L7Jah2hTaUB3+G711eGzrz6ksw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpxhs9nbh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 19:49:54 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c2a3a614b5so326928585a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768506592; x=1769111392; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vNyvDLfAN8WwlT6zHodw9UdF0NznYHtN6ODgBj8iUn8=;
        b=MxRfbjOxQoHCk50Sk4rlC445u4m+PHHbWJphN6MAc905QQV7Z8CspCLNIUT2Yb2Esb
         XQ2rweR1yJIlBiOgjLSg2o8x+5M7RxdRdm8PVkBu6fWvGNDSt7EY4gXz/otXgkc7aX+x
         ADIn88knaz/huz1zPMGSJHgTihWmz30B3nle/puAMXkj8rbMRM1T3jTdDzV6l2m4qbbz
         oBd0MeWiwAemIOHLUMQCz/Ddm9Qaxb/DUok7v12rjwDTfBdoCBYV/qk5MtiyW9P0+dm/
         PIq8Nlx/w3vjXWyDzEih1IGv7AM/BKvjyr5THAjIalBZeKbn0BTgNWoVIHSsP/5aDovJ
         ieiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768506592; x=1769111392;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vNyvDLfAN8WwlT6zHodw9UdF0NznYHtN6ODgBj8iUn8=;
        b=kAi5wH2SovR+aC8AvJYA9eUUjiRXFzR7NbyG+udb/3tdOhE+HiurLGsKBB2bG4CEbW
         xGsrwoSpkagakPkbPEaWgf0WKmoOe5kSdTuCnXQyiNaOO/Yvw29tUaFHejUPkHVc60vh
         0VrXYkqArpsYpN31klk3MVlIF4NCPzxPPeHahLZmF9R/BPf2vz/n0+YvHg+sOc+1K/jL
         MoU8dznSlcdXEVyJt5mjRNwu0Ktitm0MEUmdFgf3czr/lTLKGF/dMKMfvp6Ea7S6KcuW
         YELGdHn7aHKStBHQVOsiNdAkL2ftoND/bjIc/JINCk9PQP/ho0Qua1KbWVUReAA9ig1S
         JWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXS2w7X6TTdPOoeCd40w8xlBzb9IPUEgzRKobKa6tap71RwiuoyQTu2dlAJiQaj7vXI9A8HslDzJIDp@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt7JaE6q1LtuMFzVW54QWFj4On56wMgtFisA8JGLriOCJfvB2D
	nGg2p1fVyRqClO+Jx9XRTk0Qn9U4uiiuYmgLYDLWoVCYvacnLdnF8nFqJ3wBXuzd6aDyma/U0FH
	cfGqG0hv2bTBwOzGuvZruF3SLu5L2WrpMz8Rw7AKkZ3ZvgyT0OfkC5bTWp3kqAxFz
X-Gm-Gg: AY/fxX5qitsvAP7FYNnZnrr7J8U8u6HxBXnsWcZrsrbQPl6MDcCPOohglNhyexfhaZ8
	1nKyYd0EDtUsLc46IU4ywsI4yzcZ17HRQmHwy7VRIMMNf5ZStCPldGjEMZStHygTHn2tmlEKLr/
	nbeTK1j1lgtYGAMGSwmtQKyvauH8dboNeF9detyCBof0zXDFQGjaEBessXRsBcWWHTqbMv+G+Y1
	g4nTQuB0xf+ZOllUFIQXvf/7DZ5/eloA/pSZy2OKXt7lG2QzgCTBKqFkM9WCB8BClb5EPwGGMNo
	clWah1V4c0mNMP1ucCmRUMsKQi6xPi2R0EA70PVI3+gVlWzTUi0tOef+TBaBRX/a03PM3ypaKOL
	uvemoA/cRHMMDB1NSq+EdBx8taXxYPRmV7/XuEde/8OFKK/vtCfxRt2w/EOzA14Dct+Ub1PvXf3
	X3FnL1b4RSpwaCZdpO8ihJQhM=
X-Received: by 2002:a05:620a:1a23:b0:8c6:a522:14a2 with SMTP id af79cd13be357-8c6a5221655mr223789585a.35.1768506590626;
        Thu, 15 Jan 2026 11:49:50 -0800 (PST)
X-Received: by 2002:a05:620a:1a23:b0:8c6:a522:14a2 with SMTP id af79cd13be357-8c6a5221655mr223785885a.35.1768506590140;
        Thu, 15 Jan 2026 11:49:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c150sm102366e87.78.2026.01.15.11.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 11:49:49 -0800 (PST)
Date: Thu, 15 Jan 2026 21:49:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH v6 10/12] drm/msm/dpu: Add Kaanapali SSPP sub-block
 support
Message-ID: <izgoqm4e2ydqrelg4sxc5a4ggnqzqei66m55ds5wvvfbhkgyat@trzbm74n6ctm>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
 <20260115092749.533-11-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115092749.533-11-yuanjie.yang@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FI4WBuos c=1 sm=1 tr=0 ts=696944e2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4dFScLpsznfeEuoa3zcA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Y5jrjrNLKOOn_ejGkqh5nauySmGqZN6f
X-Proofpoint-ORIG-GUID: Y5jrjrNLKOOn_ejGkqh5nauySmGqZN6f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE1NCBTYWx0ZWRfX+A8r3Vg54ReM
 0DkKPBP7wBstUbYIshAy4M0QhH+HuJg581HBQcru+2DksyNlwn7X0W4WCfdkolETInvqlbqwDOm
 D4xBh9+vj6K6q755G1VnBiATtc1LjJREXxF3VGd0ubpxx/z0RDX5CXWq1u+KQ01wLpk9apLezLu
 XZLWqGY1CibDNhH6Fx2XRbdkfAe/iEtDEDYEFSPZB3n9i5E58XSzZapsi2mmXfq9Es2IHWmMQ09
 7SBJ5G6U4QuAStFc9RJBTelgVrVmGhL9jCLUC3SsSKmiwRv1lFWxeZrd5CPYclmcevJOvl0g1in
 GnuWDST/GzNmdKGUGdp4FrK3jwrakCksbqKSPbxwLexvYLISAlBRwQuStleUfBtN2uDTHITwXFP
 Twm24F8f5fR90ucOQAOdaFPMaYDkzzjSwRxrUM3qoR47spTX8+DlV2BkIEq7s+QL5ca/M0ZM5Mr
 xmeVFzp+HuH3NW8fAGw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150154

On Thu, Jan 15, 2026 at 05:27:47PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> Add support for Kaanapali platform SSPP sub-blocks, which
> introduce structural changes including register additions,
> removals, and relocations. Add the new common and rectangle
> blocks, and update register definitions and handling to
> ensure compatibility with DPU v13.0.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/Makefile                  |   1 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |  14 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c   |  14 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h   |   4 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c   | 321 ++++++++++++++++++
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c   |  18 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.h   |   3 +
>  7 files changed, 371 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp_v13.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

