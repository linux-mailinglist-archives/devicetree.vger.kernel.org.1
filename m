Return-Path: <devicetree+bounces-199020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A6DB0F10F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6842617CC95
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C032C158E;
	Wed, 23 Jul 2025 11:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZxK2IUO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D90C2BF010
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753269706; cv=none; b=amkyblWGR2/6xxqgCEYMrwrZ47Pqq5GwCNbjS3Jm5IRH3iuU/EJnBzA/VTqIQUFcZibOHNkOnwUi05iSeZjokP3wx6J4p1ZHV7H4zQMKLkubwgSgHsUBJ4q7qyv98hYlgIa1xb9YB12uL7oAhSGRaVwVQG7rqO6g/5Flc6yk6Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753269706; c=relaxed/simple;
	bh=xiHjPoZ1Ch+WHyK1NS8LeVxkzMAb19jum18ZpdtDhw4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HElr4vIxlHvOLwyv1MfI0gIpN4Dg+fMZj+lOvwIPOinrUXqT/QqIGVY6F8ovGUQ4ZE97sI87BAL6/RVjoIZMibMIit202SrIj7kBr4OqTQqJF7D+5Y1NVcuh7qgt7FzKyz6gxeOCbaXodDssGF23U7BQUeFHPuABrk8iunVTL2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZxK2IUO+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9bjeD007832
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:21:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2+gD+y9pyiuUumkiPvbz0Pru
	9JWie49LumrPX7GQnkw=; b=ZxK2IUO+0YFoi5xXH+EbAoHuWmBBG25g0RuJ3M0R
	WUZ5xc+1rwleMgRso6KHrwlowF7twXbEEAxYFFRGHcxRs5A/4BHVluKpD6cmsMOu
	eSdECwsAdSaFLC+rWhZS2EHTIVZdZy1K1eS13LbouNx79qt97GCdw5fGUxHcjNUM
	6MDR3pEwkVpXP1280dd5AFLONIhnuWECO4C/d4moBnERpj6XHoGibU8Dyk2Q7NZP
	Ozx3sY3JGONNsw5zoUq10mIklh9tKFsBnJBTnuLfZWRcpICx8pt0XHUjFjip4CNA
	0P90ktKRo8tofabzn/SgpqilMGABCAcTKsnGsMnb38+Kqg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047qcx98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:21:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb5f71b363so119681836d6.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:21:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753269702; x=1753874502;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+gD+y9pyiuUumkiPvbz0Pru9JWie49LumrPX7GQnkw=;
        b=QZ9ZJMhM/n69k7pkCJtAsV29rLYZKlF63BJO/38aR0nw1395SKj/mGxLAls+uP/kmJ
         Fdv3VZybwSSWIgjO2XglQ7UH0GGaKH1Y1aV4JmzbeL4Lv9uDgYNrl/ti9vVtfMD2nbNA
         wYlPqkF+eakqYjI0vQ1IsvnoU72SJ1Yay7XMWAQJqZvJypoWjeME9lKSUwexH8wyJ2Fw
         FmxvFVb0CK/XqrbI5gqStq7MPQJmf+dHF5C6eWz4EFxAzVH76hAnS/ABkMhefBpAh7bA
         ibl8TD4WCTtpO2o75Qafz3SOrnsBqfXmO0LylkjpsREkWECNR8SgD9W/6wl2bJYSv+3k
         YIDg==
X-Forwarded-Encrypted: i=1; AJvYcCW1DNcONGJpgqgAiymJMA3qCFS71WPDv2FWfPhnzWgsPxpxJZwxyMD09wxLE3dGZdFgIT+lPFsVtBRk@vger.kernel.org
X-Gm-Message-State: AOJu0YxpcmPwsY+087Bf5U91zgqoRI/1rx0a2c7TVh0HzUDC7l8hl787
	7ucoo1Qd2dkZ+h3MNuCQPVbqId2o6mFEuL3Wh+UJFVnT0c+E9Kz2Jpq2WEFeWDEEveTDSxdkDGm
	ZlzKxH4EpC2gD2+I5rCfuXuFzoprKNDSTiemzrSUDtH3Gv1wmXoi9u5H7Pp0XHgWL
X-Gm-Gg: ASbGncsfeqyzh0HSPAl1MonC8Lw4v1xwKtHPul0Z5UYW27Mb+QFAR0IWzD7nB58L8Cw
	2tvpeNKJXpTus8vEa6IgM3u5ZUNq3yazt7f/hV4isBHvxvKtkk07tES7cYRYaSlG9fRvoTjsiSy
	pI7TxvpVlM8Kt6E41AfVlCRyEWr+F4Vm+SbwdFt8BU48o/u6XoR7OqPTLIrNd1LMweVbILFP0nC
	3nJDN5u5iFmhc/MACoSRcGhE/Z8n7jCNfWPds1imBq0R2fqGJwzJHiGrTuSkeaZlfpKPYdMuUf7
	Jf5bvZdPnsLu0d4AbXTl6IuDY0KqI2IIrkuaclLXfGKdnMsxhljXV0Zt6EdonCBGGzNmp6B6wM6
	rEik/7Q1SGaAyjd7j3ONoS3Mez7t/zL4UWohV6QueJssxupHK4T0m
X-Received: by 2002:a05:6214:529b:b0:706:f753:6b1e with SMTP id 6a1803df08f44-7070058f7c7mr37003906d6.18.1753269702388;
        Wed, 23 Jul 2025 04:21:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/jRwjTFDhjdTQ6agzavI4ZAmFD7F1mUk3/N3mbcvr6gWVlMoJQxSTH/nLA14Ob6QuV9j+zw==
X-Received: by 2002:a05:6214:529b:b0:706:f753:6b1e with SMTP id 6a1803df08f44-7070058f7c7mr37003456d6.18.1753269701946;
        Wed, 23 Jul 2025 04:21:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d7c7d0sm2238663e87.121.2025.07.23.04.21.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 04:21:41 -0700 (PDT)
Date: Wed, 23 Jul 2025 14:21:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Enable display support
Message-ID: <6wwcxwgcf4wm4ekb3d4ukkyyqsseaawo6l66umzxim4kcilynm@fc6mwj6ymnes>
References: <20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250723-x1e-evk-dp-v1-1-be76ce53b9b8@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5NiBTYWx0ZWRfX/4CF0qOF2TGZ
 AhX+UcQdDMa6Q2IQT8lDww9Bltk+T1bgxTfh6QwBX/xTT42uDU+YgfkplE21rA8EYjAfDLe3P3Q
 8AMYW5sITarm+tsmACRW6Skl10+kAsHQjgSTHQcm+0Mc11tQ0iKcAtLzsja/QP9Q8gTYfM6E4Ra
 o3EKTSk9x8KJQ85wIXGFI8ZJfikEhz+FQAkOBfFSrehdB6NF2rjRau3MAh6EqD90cFek+ke3KjK
 fbZRHVaIm1SJTcEt22xCUGo2KVNKbJNLoTZq1jhbnro2OcnhbRtA5KgqSXjh2i7GMobgMIbLHbc
 c/dZWePDyYb4KDM9iwk+k+5JOW7NKLNLQW9NH1xhV/qp0AWvaoeNQZdOqvR5bI0E+TAYp4YeFCU
 Ux3zjv6wCQumWEQt6NZDL8wDzTXncLuYmmzs2/5tV2B7fnq78UKsv1uvLSMOU/o/OKjK9h8Y
X-Proofpoint-ORIG-GUID: j8E0lIMh_d-HVArmxTEnuqJgc3f0HhdE
X-Proofpoint-GUID: j8E0lIMh_d-HVArmxTEnuqJgc3f0HhdE
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=6880c5c7 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=FtQQbC5FwJ0cWtqdlLwA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=948 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230096

On Wed, Jul 23, 2025 at 02:14:55PM +0800, Yongxing Mou wrote:
> Enable DisplayPort support on all three USB-C ports of the
> hamoa-iot-evk platform.
> 
> Unlike most X1E-based boards, this platform uses FSUSB42 USB
> switches for the USB0 Type-C port, while USB1 and USB2 rely on
> Parade PS8830 retimers for Alt Mode switching.
> 
> Support for the PS8830 retimers was already included in the
> initial DTS, so this change adds support for the FSUSB42 switches.
> 
> Due to limitations in the USB/DP combo PHY driver, DisplayPort
> functionality is limited to 2 lanes instead of the maximum 4,
> consistent with other X1E-based platforms.
> 
> The platform also supports embedded DisplayPort (eDP) by default.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This change made top of initial DTS:
> https://lore.kernel.org/all/20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 156 +++++++++++++++++++++++++++++
>  1 file changed, 156 insertions(+)
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			mdss_dp3_out: endpoint {

Add empty endpoint to x1e80100.dtsi, then patch it here like you do for
all other DP endpoints.

> +				data-lanes = <0 1 2 3>;
> +				link-frequencies = /bits/ 64 <1620000000 2700000000
> +							      5400000000 8100000000>;
> +
> +				remote-endpoint = <&edp_panel_in>;
> +			};
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry

