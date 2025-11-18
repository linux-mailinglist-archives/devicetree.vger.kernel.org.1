Return-Path: <devicetree+bounces-239644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062BC67FBD
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2C3FB38451C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2A530146D;
	Tue, 18 Nov 2025 07:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PTztex/0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HTi08K/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641732820D1
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450838; cv=none; b=aE3EcpLDWJNP+1htkivW10uqaTSL0CfGM0hX3yjIbufc2ZB9JO6kiwL3CMpxDhAtoytXd6j1K1HOV4h7KDI56YJeUqiI00G9nZLf2o5CAAaLtzXqVPTPetTDQQoTq1RUjGvnF/+aW881gE06LuixwsVCtjZYEX8cCEr76dnWuKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450838; c=relaxed/simple;
	bh=GNoQn/hthikhALi2JpZPyjQoYPFTEfkr86UlLOs2u/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BGLHbTOQJwgxhqyqtuc/McVPHOdN3hsueJDY8IoAuqWONI9kPmksn4tVC/6agWJkEFsnvAN2RT/a5q3zhMG2/jPypVux59oBEBiZ78NC/hb+4mHDKe5TYhiWS18csM94Qg9IaLYW5CGhXY0uWnXrC2ndk8TLuvqehB4EdW/Z1h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PTztex/0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HTi08K/s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI5koEA3916568
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:27:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+YPJPXMwuMWtPIDlSQE+IIGY
	3z6hcI8lbExcS5jy8Ak=; b=PTztex/026NqxlIOXpfBdEY885w56E0Lf/PCLzhG
	b250fsyFZgxVXFzv7gNSy64bNEEnaFaVsGMduYqatUlnQRNRm95eHwwQv3hWrv8/
	YNTt8RHIfOLI5sNXqc6B+lfU+i5/S/c8pym6IcdzDyg1zPn2Q9QODQcz3fXaIYKK
	woiRMQifn7mjCgnptJOYU0IBDXQ3kitZAn3SnkIs4/lk10J+tPBVF9VmK9dm0/NP
	mVAB1r4q2ptOSxbABkgMfthmvWBYIEda5sQvQb5V6BJJfm+7iYIh0L9QiMSjFe71
	Z2SIzxhcIoUL0pX0sdOzFLVdkxCiq4lJ3TPMvcsGwE+LTQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2fxb4wu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:27:14 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b95d06db747so5309711a12.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763450833; x=1764055633; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+YPJPXMwuMWtPIDlSQE+IIGY3z6hcI8lbExcS5jy8Ak=;
        b=HTi08K/sMHDVAiNbYvl9nsgN6cF98SQmgyg44cxtqeVDQPEB0yfWA9Jr0gI3j3/Xe/
         HtPm8xfQkd5OPkIa6yITp0iOfBpGopF2VeUu5Q5pKgFGF7FAU3tVgnVZ/jWuXa06Olqo
         VW/z5Mcp5M+9W+AMpeKuB0oq6+HlHbUbN6HZbBmVM480h4iNDC3HTqWFk2tURUOeKikm
         B2ibPBS8ZPRmwBwOvez15/Em7W04/3zMCkRyZ7QU+8eUYTLTJ2+ZOyJ9P0MjlCpzEV5O
         zOGR9MhJx5xUC906fj6RlV61QwsTQGlAkFRZl7Ko8shcUayJIJCvO7rx1L6YvKXDYfrN
         gT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450833; x=1764055633;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YPJPXMwuMWtPIDlSQE+IIGY3z6hcI8lbExcS5jy8Ak=;
        b=ZPXMOUg0C/YI3Xq+BVihJurreZ7E97bRv0q7oBJP6vIc7j6NFSI9nUImXkA0yy6D4P
         HAY+09fUWHn4+w5Mn9GVo5os/nbauyZr4bvAaZnWI2nmX9g5Mx6+sXWlZSBSCXRyp6v0
         VvzJs3X9ZeQCh67DZCM9UzyGPHD6kvCjXtg70AFQ1qgbRS7HPzWfwXMNfTc3iPHDb+RF
         siKSto+ul6WPeLZMU2ARw6son1SqN9g/O8WBSsOR/ctos+IeC88u4BLlPvvq2X64dgYl
         +UJ8nEbFcPgbpA5yO6/M5PxSh+ocKYV/lZGv1y0QXH8dCl9p5fs2q1vZai0gnczLjx7U
         EHWg==
X-Forwarded-Encrypted: i=1; AJvYcCVummvUYz1yFBcsUQ0FmRYFtu1Oi7r6bBb5wkV6OceVJMEjYK+STCgyhm6z/u0C5HiFD+yCiqYD6fUm@vger.kernel.org
X-Gm-Message-State: AOJu0YxhcJn8xusCgSPVIyzdRcSQfTYLGBLmtdORpgcnVrJ4jPJU5W1p
	y7ykx2clwUeSPMHTfRaQc4oLfOJwWrAIySFrAR2gcN8fEsCN80ZZTYJI+RNlvFxKx6nPrkaU/3C
	y0LSNg3RmGA5nNa1ZM/XwZ2HdYKjrELapBbqYGNeTmcx4ReIhnI3vLBmNfxptmbZ7
X-Gm-Gg: ASbGncuEjL2WWZ7LzyZRK3iUvJ7Xj6rGAlVBwOl4WGnrqMSmwbtvIGe15PtcsmKZulZ
	nSFz/9OMTrKAHpuR1jKWRl1sPSjG75GteU2YM3z31FM5CUQjCWLDwrKvrTJw2DQuIx5nUqtxcd9
	bMI+Bgeph6tTncXEDGwk8dCsFHmBiTZR9WDI/qtP05Zv5dUIyy5O78njE50JSOXLciSwVc0p/bF
	cJM6sO2E50Y7iOVO02pZrSvnmkmVxW8tV2gJQd4+Kzaov0YQUIcIKJ7vrVgmL8HmlnvuDLebCTo
	0GlF9c6AY67PJ/P6EckpPXq7cmZ6sfwKwRzyOOTL0Z2mRPg0KulUiFii7zpXUvMW8VVX+TH2gGS
	3PszC1zH8XjrpeIW6/RipWDa938YVriPCpnpZl1SxEnliRQ==
X-Received: by 2002:a05:7022:4188:b0:11b:9386:a390 with SMTP id a92af1059eb24-11c750a7e91mr1070243c88.23.1763450833056;
        Mon, 17 Nov 2025 23:27:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbNCvsOiL8ZS+pAuABDL3Gy6F8Zr8vYWsr5Bzv9WUjJiWh8SDxOqpv8j0+EDDltIqiYDldGA==
X-Received: by 2002:a05:7022:4188:b0:11b:9386:a390 with SMTP id a92af1059eb24-11c750a7e91mr1070226c88.23.1763450832431;
        Mon, 17 Nov 2025 23:27:12 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b80fd6790sm31322813c88.10.2025.11.17.23.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:27:11 -0800 (PST)
Date: Mon, 17 Nov 2025 23:27:10 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aRwfzv+bs6/4W66/@hu-qianyu-lv.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wEDRObN4vp_4UiwUxNORFlWo5z3WoWnV
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=691c1fd2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=CuAKqyvv_hBz-pJDB50A:9 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: wEDRObN4vp_4UiwUxNORFlWo5z3WoWnV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA1OCBTYWx0ZWRfX4EgzOOngGKJy
 RPW1chAavqQZRgWGV6/V2lGUwemtib4BiQcIytBii0UyvnrZ5Exg8N+YckBj9n3lkTEjPsIMLF2
 tBYkF7aFgM8LScXQiFrKH3yo6OyjofsUIm9IWzjLZ/mSbKQzMLiPLTXJi6A5sNMEsTlCfH0EPqp
 +kCn6X3eEIzAS3ct+sto9f7ffCt98PSNPhvEv1b54HtAUPFG2WAkCuCTJh8AdKRj3dTGukPosN0
 oFcfbXRROFP8ep/wUiOUTTXiFZZFZOlTHpKSHK9t/CgTwPWdbiurGIYZDQ6jF8hMFsASxDEriF0
 lOOWhhCIND0ZuoSpj3sHJBszuTnWCrRAjzi0mDN5C/UCL32Jv9FNHv6VmQ/SFFY/Pv3zbmI40W6
 lT/dIiA/IwI9MEg5GjqUZWd3prpmMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180058

On Mon, Nov 03, 2025 at 11:56:23PM -0800, Qiang Yu wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fourth, fifth and sixth PCIe instance on it.
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> and sixth PCIe instance have a Gen5 2-lane PHY.
> 
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
> 
> Changes in v6:
> - Rebase patches on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Remove PCIe Gen4 x2 support because Abel has posted it.
> - Link to v5: https://lore.kernel.org/all/20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com/
> 
> Changes in v5:
> - Rebase patches on 6.18-rc1.
> - Add PCIe Gen4 x2 support.
> - Link to v4: https://lore.kernel.org/all/20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com/
> 
> Changes in v4:
> - Rebase Patch[1/4] onto next branch of linux-phy.
> - Rebase Patch[4/4] onto next branch of linux-phy.
> - Link to v3: https://lore.kernel.org/r/20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com
> 
> Changes in v3:
> - Keep qmp_pcie_of_match_table array sorted.
> - Drop qref supply for PCIe Gen5x4 PHY.
> - Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com
> 
> Changes in v2:
> - Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
> - Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
> Prudhvi Yarlagadda (3):
>       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
>       phy: qcom-qmp: pcs: Add v8.50 register offsets
>       phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
> 
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
>  4 files changed, 50 insertions(+)
> ---
> base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
> change-id: 20251103-glymur-pcie-upstream-bee1d45f5e21
> 
> Best regards,
> -- 
> Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
Hi,

Do you have any further comments about this patch series?

- Qiang Yu

