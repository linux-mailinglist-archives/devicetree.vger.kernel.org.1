Return-Path: <devicetree+bounces-160223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EED6A6DF79
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 17:22:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C838164515
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 16:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858E92638B8;
	Mon, 24 Mar 2025 16:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p2y3ZJRw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2079A262803
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742833310; cv=none; b=tl/lSrfsCK7KWhIQsvmlHhw+AqRHRVWXKCvARnXP1Bd+QIMXzU8PubfRIPKL4qbzci5+P8Yam0oqlZd274vPa8ry0PodWHUjnPCFcbvGWWvX4A2Cz8xcfLdPz6YabPQ9NiBFSFsC+h5TVoze1w4zYRbUK8hV9fwdP+KQhL/MU2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742833310; c=relaxed/simple;
	bh=G3ch8p16B56/OMBcoTpt+rlRb5rlx2rMrdh8cjqUYTc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=br76xX1SwmVP3UDtFaRQvXS2X4yY03FI0jkI4ArBSdhytGRigvFfAc+zW24Zq49aVuTfSOwQh8tTTBOkxLAlE7kQn2gjMm4HtcXi7T6C8+NxGbjIDxbTb/V+4qiZjjfeN1quz15j5c0g8+DRWCAvlvtt/LPRA618vKjEpXuxcFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p2y3ZJRw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52O9PORj022002
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:21:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L0t9otsKr/6SRlUjYfCBbvls
	lpbDLOmF4pALHvMgpW0=; b=p2y3ZJRwdWX23ECOlNVeXX/jl+BaY5RAQJXWAsKn
	mFTJxQbqX6NWIpFD3eim276CE4gPVCUfir0AUbCOVsfd8xhQPnnkvUNuWqIc2SV+
	G1A07yWQnKEeXF+lOFBcZT3y8VvcOR6RRzlmdq2smR9vFPXVpiaCNSoeGmDzTP6i
	LFJfiwL0oV2cMkn4Y7AJyV5Qx56a5IAt4tIypw98d1LiX8CC8xjHAoiyEow4X2bh
	Lb1CWazYkSMaHevBi5bF/7GPsqne71+Rvf4IICS3G09gJ1QgahDF9nP/x5JoXzAH
	t/d4fAYQHFlNnPXyJBqQcZmyo92kw5VUUnI9vLOcY1umGA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45hpcp4t93-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:21:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c548e16909so436281685a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 09:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742833307; x=1743438107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0t9otsKr/6SRlUjYfCBbvlslpbDLOmF4pALHvMgpW0=;
        b=Jn8puoL9uJiXuLmOZirYRarGnaLjYCAw2PzBSffHBTRcmZFeKto/uFmiD6btYDR2jr
         0dp1bsH0SULHFHScaoDu4pHVSruo+hFGbc7PomCd5V9inAdfJkAWcye/rFK0PBiIRDY7
         JLh5OKhYTGlGxHaldCdfKlU1wM5yGhD2Y5YvxIjJ0OOf4j72prdb46c5fBZY3y29GfE1
         1PmVNunwV1VwHAmUcKU5CsH9gPAVKBj4xpR1z5UBLixIz8qTzPABfqbT7DuvikO0d9oB
         UbxgJx5CQUlkcmMYqPtki3adL9hy2skJq62T6uLEjtgW4jQIfK1zxj6f8qLt6f6cHFRJ
         mImg==
X-Forwarded-Encrypted: i=1; AJvYcCXI4SbJhSeYFfUObr4aB4dm+TWHzndlJ8+RDOV1KYkV5Huxt6RWekAnQP5vUBiXxwnaLMdZWAAVz6nO@vger.kernel.org
X-Gm-Message-State: AOJu0YyGlt/uQbKTbZLpKo1wxKFvuwc+Hs6pbIsmijjgknkckBozaOXR
	ymqlkBIL7PJBak+zB0ZxtM6qBhmMBvdPzM3vBsM4qSc8ju628/DgkXHrn7oQnmjH3url9Pzxwts
	X1TChHo/kGOpZH6lFJy7Q3/HeXm2NmPDfdSy+VnTFpbHHQblweBZfn9tvzVrG
X-Gm-Gg: ASbGncv2XG7Eeo0+iyM36k+OKq6fVBUa1FJxCTcFaK0zsuPMNMHNVh1sZeLfFOn4XaG
	6hREjvIk89QgdDF4XZHzCzXB3kDVWtHOwQ8eLwpSKsq9Ym3a7c+M6PvWVjyU0HLaiNmIq4QttnE
	JiHw8N4/hYangCOkHao4pYN13V1WA1prgR2dDthihEZtkVnL1RwTq6K9sd44lfgGnqP/ZX9fg6t
	Fvtq4P8PMGqkYWGOVhuZJIGSwuWNKuV+xii7D9Vsvp6Xat5VkOFA6Zjaza574OxIY5TiA1Rw9WY
	axOaWM21HUq+iDiJTeN2ybPzWRfl53Qfv9lH//Go4WkstdS+wTKCUXUVyd4Q20PfbEFSU8n4hS3
	EZF0=
X-Received: by 2002:a05:620a:2943:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7c5ba184669mr1763344085a.25.1742833306746;
        Mon, 24 Mar 2025 09:21:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqPuV+DjbubvDGus9CrUSechSUZmqelOcYU26WWWKdtMe4ZBYTMFrpi13dRZOvosPr+OQhKA==
X-Received: by 2002:a05:620a:2943:b0:7c5:b909:fde1 with SMTP id af79cd13be357-7c5ba184669mr1763339585a.25.1742833306260;
        Mon, 24 Mar 2025 09:21:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b629sm1199719e87.55.2025.03.24.09.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 09:21:45 -0700 (PDT)
Date: Mon, 24 Mar 2025 18:21:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e001de-devkit: Enable support for
 both Type-A USB ports
Message-ID: <vefncygcuho2ga4aoatuq76er5c7euysndfdsreqrdvpk762tf@b7x6cu2frgbz>
References: <20250324-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-81153b2d1edf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250324-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-81153b2d1edf@linaro.org>
X-Proofpoint-GUID: 77TzKz8Lo_TMmTwcv04WSwtgXIXe7Y_V
X-Proofpoint-ORIG-GUID: 77TzKz8Lo_TMmTwcv04WSwtgXIXe7Y_V
X-Authority-Analysis: v=2.4 cv=PLYP+eqC c=1 sm=1 tr=0 ts=67e1869c cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=-ogRkZ1lWjz2smMNko0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-24_04,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 suspectscore=0 mlxscore=0 impostorscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 mlxlogscore=347 adultscore=0 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503240118

On Mon, Mar 24, 2025 at 04:08:19PM +0200, Abel Vesa wrote:
> The Qualcomm X Elite Devkit has 2 USB-A ports, both connected to the USB
> multiport controller, each one via a separate NXP PTN3222 eUSB2-to-USB2
> redriver to the eUSB2 PHY for High-Speed support, with a dedicated QMP
> PHY for SuperSpeed support.
> 
> Describe each redriver and then enable each pair of PHYs and the
> USB controller itself, in order to enable support for the 2 USB-A ports.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 86 ++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

