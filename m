Return-Path: <devicetree+bounces-239138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4331DC619EA
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 18:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 16CD74E48C1
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 17:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 717BD30FC1A;
	Sun, 16 Nov 2025 17:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PCcw4Ien";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R+Gp5WOe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50A92D6E74
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763315200; cv=none; b=ubVk5lGmpQEwzZdbl19a5lT3EV2c68MbTf7b73W6in31tHgIX9204mMnuavY4Qd9XqQZ2QlfXsVWOdz68iU79YCuJzZBmxMORYMcwIL3aNLl+8VyUMPYlLWjFDYXtZhP7S7qHbEkOaKnKPxEam04pdPEUMrgVDjdeeYscmWs+8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763315200; c=relaxed/simple;
	bh=gTVMN5yXdDZx5w0m5cq2yNtZ7OMuuhHWFD9a8A5vTlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzrpsnqXdUTv+a1ibV0gwr6xI3ZzKQItS3E4Yt6WNbMWurVYAXmdNBOTHcNmMqRc2X29yjFeGy8WgyJJsSslCrV0zR0BKDOVeR3aOdVQ7aFW0SHDyeA5oXSl/Cd3PZob/q+vn7J0CKL56HI8I6NVfV5oiPR+9E9VDuZa1B3zbE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PCcw4Ien; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R+Gp5WOe; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AG8eN5q895571
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wy1xISS/Y8XGRmNV/FnEfQIu
	ryMQgrmqIkYoMovA9N8=; b=PCcw4IenSjGScJrltPznT1JxFFJfZR7DEyVOiWsr
	dWAQkzZ8litymlO+1z6q59ysJENF6cR/jztEjfruOTuSVKA02ie1Mn1U0jJTf+st
	SaFf4BPgBOnWapx1wNNsri/LHBlv43n+c8kZ8zafq6mlOuXgoxJheSplmXHzHHCz
	XZAEKb+eH5F53xFDIhVRMnTPzEUzOiyXoJXXkSqh+bblWhBW1QzsZOiHuUCb8r9o
	zgbu/SxJ7U0MxjTDA1uenxQhvhZE8hHEHChsrDAFyPeSwhXotk5KcXS+PyBKofNM
	ezrjbF1RZgVfsav1gDdOdYa+9zj31QQC6mLxxYLIa6+DXw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejm5aepk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 17:46:37 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee0193a239so14925061cf.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 09:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763315197; x=1763919997; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wy1xISS/Y8XGRmNV/FnEfQIuryMQgrmqIkYoMovA9N8=;
        b=R+Gp5WOezHb1FEBrP7b/82K1QOpnnnVLDldb1JG/uVt1E6UsnBkKMIqhk5kPVjJ4bv
         zZsXZbLa715j0HM56EboRqoeGV5sIB3/gY1e/kqujQRqnqirhKKzFF+ZjkWWMPIDFwV8
         Hoal2UM1DBsHydPqRY2aL2rxqQ2skNcR6cRsHbM5n4ASISrDtYOnZl549eSed24wZpnU
         LoUxvFECIDuzf2WLiTDb0ImcSyKO1gkqUdWkcQGNunbWG3/jTRPpkIjx7UhBwXUvzLez
         mlUo8rhCVaRvS1GHmyKEsrhcdE8iY9RaCdij4WBcYf2QORqIaHDLn3GnhWMi3TaDD2lP
         seCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763315197; x=1763919997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wy1xISS/Y8XGRmNV/FnEfQIuryMQgrmqIkYoMovA9N8=;
        b=oiZ0u3VRzQ3NF7L0uH5Lzw1booa4Jfrx0cmOb0e22sWIhT6TTW7Q8QkwYZLzZG4i+O
         tnOW2G2KYxzz6LtazaBR0Yis8OCwt7neLEMv7JGmm+VKIEVx6BsQkTlOBujaN8Cy2+zU
         c//LirNZ3vm7gIKqWO9tLSrDSaXHi59vFkGM7yZp/xy30zyeN+iJqjwLbru+cQEk9JGo
         4wstHGasP9lyY03bnAAFACjLSdRBbxA2yi5R6ob3CS0xOr3qhJuAKMQr01QIeB5LmcGl
         eOu0PcqxFSc0KHxT0nn4KP3kp9MRmf9of6oxM7HW0gry9c42QisgJDy/SI18j1K4bAUi
         jJ2A==
X-Forwarded-Encrypted: i=1; AJvYcCU54dvBWH2wcLbi+eCmeuxzlKCwSSyRFB4SQZmPmpVIDMBE7yUA30lDCtWN2Ojft44e4xWswUhmmnEi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1ZzZKusCS+7QqALvQD10qrktjpDbN3uhq1LPUcuz8J9hQ6Ff/
	1PJUxojDqqY6t4FrgLFpac6SIe8yM2zHLf/UOvpvxUyRIEPir0wE81HFdOghfPqAUhTINi0JgZd
	LIuQLFSytC0WjlFp7YtfYUAf6MTL+S/Qw1c6XSsD196uH2hra+o9L+aMg6uoTsR2Z
X-Gm-Gg: ASbGncut1LfQIv7Yz0qVR27A+cshEg+JDA8IBk9Y7zTdgeixaJg8SqEnZATAW2EohB3
	puz7LGaaneTlEJwfxupKt++DFpGN+/w0ZIsaF5H1MrhEg6rDEjANElkTG7jMqc72IqDjtZ639Nx
	nKah/Nb+QftCivxOGwGE0qlSVODy5f+F2/UXiV/L26ZT07jCjo5rE4up2T1ZPX0bHKVlKACzsBt
	16AdK/gmjEhB7HYYrvbSeTRLnl6XXTgWkg3tPS5BbQkGThH3G8Gv+a5Mzz/bMQakUbMbWDWY7hN
	4NtEpl4tm2R2d+hJ/49TaIVMAZ6HA/KYnwljcYVbSlLXH5FxQ82tigXhSdBSyIWHCfhf+iEkmsI
	YzH5NnRNSlPQe5T2G0gjXsCDkCZspKE6NlqBY0zPV3l9/E3ZmjmKApng5rQf+kxIbBM9KZ1aiKk
	fnAub6/Vq0Cbca
X-Received: by 2002:a05:622a:19a7:b0:4ed:627d:49fe with SMTP id d75a77b69052e-4edf214da7bmr126105511cf.75.1763315197110;
        Sun, 16 Nov 2025 09:46:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9uOaEI0jXEnLXHX7UN/3SBy3llAGJpGHgAjSA8kFWeVEFs2xjYMUrU9oBjkd2XwzdELosKA==
X-Received: by 2002:a05:622a:19a7:b0:4ed:627d:49fe with SMTP id d75a77b69052e-4edf214da7bmr126105221cf.75.1763315196607;
        Sun, 16 Nov 2025 09:46:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b33acsm2586564e87.33.2025.11.16.09.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 09:46:35 -0800 (PST)
Date: Sun, 16 Nov 2025 19:46:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Roger Shimizu <rosh@debian.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: rubikpi3: Add qcs6490-rubikpi3
 board dts
Message-ID: <qirvwqob65x34yytw4warziotqfdas5bqjkbwfiighev7czz6f@zpofwqcznfwv>
References: <20251115-rubikpi-next-20251114-v1-0-fc630dc5bb5d@thundersoft.com>
 <20251115-rubikpi-next-20251114-v1-1-fc630dc5bb5d@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251115-rubikpi-next-20251114-v1-1-fc630dc5bb5d@thundersoft.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE2MDE0OCBTYWx0ZWRfX4qqbzyGZyhYz
 gSeZWIDpHONi6rNvwjsFp5GS0d6cV6lyQzXD22CisiwJzfSEcgdTiRIWCGyuiAYmQJGpk880iOi
 h7wXdz+3XmTwA6UpVdsw85ig4v/ntOq1gn968NfCUBSxuYIOwsQ7CzJpB5uI+VKtVm/dCd3qDUj
 4sOP4j2YOjLwr7yS30glbI/pmO1sUuc5zI/NhVrn4iJaLSMFdv0XDRQMPKmMyrJaYsxRkUikVL7
 iUZi6oPLTPwih5Be4NmrTHimpNotHV8EFAgIqgeJBT9BDCBFkle/b/mttcNUzxS6FJj2FzhbP5u
 qOARTPghS0/0XeJ6YRkIV0Nlcqr2mWWOatFZvDIqilYl9vXKy69HUzScPi5yIqCUR0vAPaaivk6
 qYsEGD3fgwa/qPKLbII1GogRxckMUg==
X-Proofpoint-GUID: i9HCG4ZUpLjwp7ReS0M5XM6xrHrYhQ0F
X-Proofpoint-ORIG-GUID: i9HCG4ZUpLjwp7ReS0M5XM6xrHrYhQ0F
X-Authority-Analysis: v=2.4 cv=Pb7yRyhd c=1 sm=1 tr=0 ts=691a0dfd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Wdb1h0LgAAAA:8 a=xNf9USuDAAAA:8 a=9RU0YAj3ioh5PmlCrtQA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-16_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511160148

On Sat, Nov 15, 2025 at 12:34:15AM +0800, Hongyang Zhao wrote:
> Add DTS for Thundercomm qcs6490-rubikpi3 board which uses
> QCS6490 SoC.
> 
> Works:
> - Bluetooth (AP6256)
> - Wi-Fi (AP6256)
> - Ethernet (AX88179B connected to UPD720201)
> - FAN
> - Two USB Type-A 3.0 ports (UPD720201 connected to PCIe0)
> - M.2 M-Key 2280 PCIe 3.0
> - RTC
> - USB Type-C
> - USB Type-A 2.0 port
> - 40PIN: I2C x1, UART x1
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |    1 +
>  .../boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts | 1415 ++++++++++++++++++++
>  2 files changed, 1416 insertions(+)
> 
> +&pcie1 {
> +	/* Using traditional address mapping */
> +	reg = <0 0x01c08000 0 0x3000>,
> +	      <0 0x40000000 0 0xf1d>,
> +	      <0 0x40000f20 0 0xa8>,
> +	      <0 0x40001000 0 0x1000>,
> +	      <0 0x40100000 0 0x100000>;
> +
> +	ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +		 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;

No. Don't workaround bugs in kodiak.dtsi in your DT file. Please fix it
in kodiak.dtsi instead.

> +
> +
> +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
> +
> +	pinctrl-0 = <&pcie1_clkreq_n>,
> +		    <&pcie1_reset_n>,
> +		    <&pcie1_wake_n>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +

-- 
With best wishes
Dmitry

