Return-Path: <devicetree+bounces-218405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C5B7F910
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:51:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95DA8464279
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CFBC33AE80;
	Wed, 17 Sep 2025 13:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kGG3Fati"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F273397C6
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116520; cv=none; b=JnfSFa7PqEAvBjgFLc08APoejaFBkRxgRsCzUm2LgiKw1sO+x+Ek/Hd+fopu5ZGs00yzae2LZxcH5Na5s31IXATqZWVlja1/otB6vYaTnp629oeL6sR4St2gfFARr0lTLMLImTYKYx4spOS1bVsSphMDraViBErBrP0hqlrCwIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116520; c=relaxed/simple;
	bh=c3p3OzQJm94uowS2ousRWbIHVldkwb/XAGj2i/aaEtg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rjRy/mjE1zcH5oy3mCwNet8lVx0POrgFIxfC6LhcSttdYFbON2IFBMprA1dI8YY3tFCj8LX/kjJDouC6BA8asqJscKI5gTBwNXBxNLdS3eeHZy2MDq2KCpSbbs61L3IdNNrCD8qcHFxkGTLd8eQpl2AeZXI2D4N7CpeyHFPMt74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kGG3Fati; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XY0P026824
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qpC6Qh56Qa+EAaZ3N4PmVjwB
	N0QhCvBYaOuM0pbHWqw=; b=kGG3FatiQR/uGrofjwfwmNyP3hqzm4R/v2uQda4X
	FCn7NEfuhG+5K+efRmNAPf6TER4KehfOQfag50DPSKIaUVHTG0FeCbxYWo9hmVa3
	Bu48FRayL8ZLNeXUAEm5RMufa4uHdVklQcafCM7oTYpkWWsOzbe6jAYSpfBgQYz/
	yPw7b6bkQs/Ywz85hiRpn+pgOX2B9KRKcI6S3SyUqtdh641gOLOOM78BeEvs/sHk
	xDYkChTX70Zs4IH9CLlSaOMRRKilWMiI5mpO0yFSmkvflf8FlRjSAsuhQrR+OV/l
	ohgFQWEdDU6vvwpOAa7ig5LKiiKwIbVkSs2VqLXgsr43jw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxt2hxe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:41:57 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d7c7e972eso122467396d6.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:41:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116516; x=1758721316;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qpC6Qh56Qa+EAaZ3N4PmVjwBN0QhCvBYaOuM0pbHWqw=;
        b=YVHlUyVX0R4WCuE5i1fBc5aZCrj7d7Yopuatayz6OmS0r+KLt+e796c/5GU3qoLQ0C
         j42EGnfNiIQsGO4KiL9EQyuHNnBMf5sodCqGil8Xa0B83Njmz8jwQ5f438hkI2P1yQ2R
         xRPzkmjBwYy0eTNz46hB+i3CZi9mHuy8rSeWQeMBUYcD1Lp9Wh32Wh8w0155wKH2jPQZ
         zLv3niZ2xWJjszSrYEpGIa4af4Q48Hl0j8y1Td+Mv28dVHuz0FkcE8NAQ4/9yLRQgnQS
         jBB3Dcko/0YJmmMOLHypSXJEuJ2pU45qWHsAHAPzDvfuFee8+NziKG6gWHMVFxSfV1oN
         A1lg==
X-Forwarded-Encrypted: i=1; AJvYcCUl5ykNDcvonFyTb4SmIfys74nxONeywNWKNxtTK7PG5S73senM+tgEFC1AF1ZbfttwmJzNQ6vQ2IS0@vger.kernel.org
X-Gm-Message-State: AOJu0YwFZNVq1+IFnDcCetLChWNeB8/CLISuzsw2u9+PqdNP6ttpPt3z
	UJoTHs0OnxzqJFsJnKyWZlNLTY6EQfwd0RcTw12zbiaGcESFu2TI8LYqaAmqAOTNA43gefVod4H
	Mpnjyq6HZsrqwpmtYJ3G681MyRkbDRVdsmF26xqUZ36bjIuqJrqxBf3dUp++R+Rn9
X-Gm-Gg: ASbGncsoJGgmY3sc3z4mrWcmoHvf8oHU7+0s2B2J+t2iZS/5VxK/tWjjiiVoLOQc/LR
	UD3wX7iSR/js10hq2UPNcOhXqHDu9f3gou1k7fDAY3rvLa1RoOaTsh1/Qzc+Fbs8hxIXTzzZdT0
	WeSQxm4NX/v5UKNjibJGR09jttE2IrrEjUC8H+sr6ziNHJsG7hwBbu/k4xCpBwNbGCVDoJEsM8T
	rjtyJzpIOTVL49Y/qraB6EmnZYjaYLqOEQz2QLpdwnlkeNtOKMH30/4PnzQHoN2Xohm+z2wbF2O
	AWM3ZbVc2Z5Ej5fCb396+maM6ByghmXgJnS6G6YoXYhHVoSG8mqTlRVxOndTG4fu82Ba0J4qM1i
	a1UzySaf6OFnDR5oNErK7nlYezQR18tHp6Rof2r92BsaVVXz7FZTL
X-Received: by 2002:a05:6214:d04:b0:784:dd6b:e415 with SMTP id 6a1803df08f44-78ece74b887mr20326246d6.41.1758116516150;
        Wed, 17 Sep 2025 06:41:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYsXsicQy7T4aM1//JPfQjQMyi0e++rSfHY2nycNA09VHDuBpw2sRqKKR2CHRw/YR8Wtwgdw==
X-Received: by 2002:a05:6214:d04:b0:784:dd6b:e415 with SMTP id 6a1803df08f44-78ece74b887mr20325706d6.41.1758116515455;
        Wed, 17 Sep 2025 06:41:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b6041sm5296003e87.10.2025.09.17.06.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:41:54 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:41:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <bk2yuuqyhxi77ckoe2gkd4ghsgtuzfx7nedcvpb7qreqdllraq@ctdrddla5xcg>
References: <20250917-hamoa_initial-v12-0-4ed39d17dfc5@oss.qualcomm.com>
 <20250917-hamoa_initial-v12-3-4ed39d17dfc5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-hamoa_initial-v12-3-4ed39d17dfc5@oss.qualcomm.com>
X-Proofpoint-GUID: Vn07W4UTaPRpbJHRbBO6vr683C7lWOuZ
X-Authority-Analysis: v=2.4 cv=bIMWIO+Z c=1 sm=1 tr=0 ts=68cabaa5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=kMu10WXGbiujYwnt40gA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX1m9sP0c6XvDY
 1zM2G8ujGSgh2dFg8ON39pzXcqLV1AueD7SLoBIHKEqW80hVM9FiD++McIJ+735YmWxvzCtReY8
 b3Uvy4zQIXr8K9ysQFHOS7KCDsNvBrycrkFtqeeQLVwRLdpFw2Tq92yElWa8ba8GXkr1rfpBn8s
 u3STQol5J/kBjSEhQ3Ih2qE8Dlrxb0eQN/itMGU8G2KUXHijnpMcqSY57lr1qiX5q5NUrvueT9B
 rOZOnt1YP4kHo0EGjWrdCf6uC8UKgyT2glDpqPDYSNQePkzgfXRb9ievza1l3E6lFAqzCVLBUoF
 jviLVtrTTjMuJRwQf0NBkWTimWODNyRDfuFIlZg+JMySc70t4aCtWjZUfauPYnZd7Wmbd1JFDjn
 Z4xFVgxn
X-Proofpoint-ORIG-GUID: Vn07W4UTaPRpbJHRbBO6vr683C7lWOuZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 10:59:00AM +0800, Yijie Yang wrote:
> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - WLAN
> - Audio
> 
> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1222 ++++++++++++++++++++++++++++
>  2 files changed, 1223 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

