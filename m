Return-Path: <devicetree+bounces-161578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A971A74A13
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:49:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D50A3BBE2F
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 12:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489D82B9A7;
	Fri, 28 Mar 2025 12:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="USj+T4Ha"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB0BEAC6
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743166134; cv=none; b=KEk+o3hXzeaPLaraF6vhiws5F8aQCSYaSnhxmKMh987VWmFSJ2VgpInF9SSKHbZweQv1+jjp9KGYkxIFOnDYWMymGcJ7sjTJVEcQRyTA5csFSiHVxlR+i/EZi3b4ovqyiA2l7DpWUSJGXUjFecOXued2eFaiMdbkNOS+LTo2RqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743166134; c=relaxed/simple;
	bh=aG9LbwcojodufeLX75+lvULHAcyRacaCsFxgbMpQgkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M0ebXImaQfRSYRRwwxbNgybrg3jEBrbZ/IDJJC8C9ec9NkvAg4TnGZfIIR30i+Y98zsSWSsAHV1aASbONWQNMBZJgXSEJbBnxfnLPV9YES+yb2TFNWKylJldS54QqPn5sxdBNkDZQHoCOZW7x6IQnobTVfA8e6LigYhe/o+sbqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=USj+T4Ha; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52S9Rp7P022339
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xcpiYNIqknV81nGF7GJN/LXy
	6620213LuyppeII8+H8=; b=USj+T4Ha5w+c+j3c7vVVrwz/lr60gyx1nhmou6BU
	mNmZuodmQDVxcP2YUl7GVCsEXHZv97ayGTX4XHMvFfGSuc9s8sir3TB8LqgK5sYc
	2jqvh6pljWpJQDNX8bHzM1aIYxlonNKZpOKBtjbbAn7/FjhjZjE0FGbHZUALMpV2
	KK3+6MGVGWp/SDK72LB6lGU4DxiIULjKQH1vjE+7dWihvazPVuOpIUHuSV0cmdOw
	DeBD/Bjb47QB0dS6DDIiCWnURADvGRW8aUzi6p4pLXtRPJAO85JzmXIn815Vm2XK
	eAavUgjhycHmAXgIOdFp6aE2oZeyX6N15HBAiCQ//1AtRg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45kyr9sydp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 12:48:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c3c5e92d41so329960285a.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 05:48:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743166131; x=1743770931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xcpiYNIqknV81nGF7GJN/LXy6620213LuyppeII8+H8=;
        b=B4Qcfi2ORB+Zn/hPv2x2OES5Ch3anPn4mwzGs5JE6LJytruz0rFv4PK6Ty92c6akdr
         oi0/IDVFNvSFTS49Kulwn73TypWg8/hQNFlY2rNmSlIJSzfz9b/oVZC1tbaGdNFVWcaB
         Xpr3HCVYOU1eNpiNmCRQxgeCoeKqMf7spcMX7o+REeosWrxmnytydh02XhdXNqi//Qg6
         m8U5pVow9TcKL2pU7g9AsGEgY7pNK7hclvSdvVXig9zZfQgxSi7tVGp3zLj4GfZpndOP
         ig3w5fgW1mWXiDlXjbyTiiQCds1CofBeI72hN4tfZf+0n7qpOZBXe3AiqgKvYewTUghN
         hrxA==
X-Forwarded-Encrypted: i=1; AJvYcCWEc0rmAtLpOpgGJSwU4a8iMvsVK9CjkN0WkRU9KLzAe+kEWtnWtfDl7sn11u/4p2mSjp/PAktC3Kia@vger.kernel.org
X-Gm-Message-State: AOJu0YwcoK5wCAEPLdOJ8A4iD/geyuVfl1y73YKZOhdzMeG/Q9MDn/1u
	wz+KusCQSBY07VAcWjbqMT2f7OfHTNEA+5LqZFgE33sKKjvwMGWY7tZOvPf1Y94GtubmxaEDjn6
	xBhemPa0oysw6xy03HL9QSMyHdRBYrM7ozg+RjYGDkXxR/Iht8ANddrzoGIWN
X-Gm-Gg: ASbGncvHL3Yx9B59TYBOcTO4nbTCuPu0mvP9t424zeFq7bXptfCBCInxHinjdpupxwj
	E+PlllYULZqP1cSDazafQZvJj+YZt8OfsTVGG3oGWhPiuVW3S4IhIDtTxmgpVzwqRYJy75KKVSW
	41V52Q46w9kkLrJ3486Uime2D1KAR7lzZVFB5VEJ2Bq5RBjpMoQ8ehgjbiEZPPYrsKjYsfaAz2O
	8P0S7LaCX4W4gH2NPYgvE+zlp7BoD3MNMGd+tCzyVyUyUd8TXxVLqV3FlLHtvE801lleFsVobxS
	YWHolW3UzJW4X2X8cv8UGBcXPZzL7gfTgg7P+YTvfj+zoXFg3FlL0LsPo1cS+vF+z57reqQflN2
	eg2w=
X-Received: by 2002:a05:620a:2492:b0:7c5:5f19:c64f with SMTP id af79cd13be357-7c5ed9d8b9bmr1117994385a.4.1743166130887;
        Fri, 28 Mar 2025 05:48:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERAubvl2cw0dj4D5vjvRb7scF9GMs+j0NzaT1mlxhC3MAFWppR+M1xWZGPP+2dt8DudrBXvg==
X-Received: by 2002:a05:620a:2492:b0:7c5:5f19:c64f with SMTP id af79cd13be357-7c5ed9d8b9bmr1117991185a.4.1743166130410;
        Fri, 28 Mar 2025 05:48:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b094bb305sm298081e87.7.2025.03.28.05.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 05:48:49 -0700 (PDT)
Date: Fri, 28 Mar 2025 14:48:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: qcm2290: Add crypto engine
Message-ID: <vtk6zczs6uc5z6o2fdfdqqwgakqxqvnmsfswbg3zuud4civl3u@azmmwdtigohj>
References: <20250328084629.1290797-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250328084629.1290797-1-loic.poulain@oss.qualcomm.com>
X-Proofpoint-GUID: 1S7ETID9e0tP4KN79cQdilOBv5Yi6dF4
X-Authority-Analysis: v=2.4 cv=UblRSLSN c=1 sm=1 tr=0 ts=67e69ab3 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=HZsnow9p7GAf8o9iJ-sA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: 1S7ETID9e0tP4KN79cQdilOBv5Yi6dF4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-28_06,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0
 adultscore=0 clxscore=1015 mlxlogscore=670 bulkscore=0 malwarescore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503280088

On Fri, Mar 28, 2025 at 09:46:29AM +0100, Loic Poulain wrote:
> Add Qualcomm Crypto Engine (QCE) and BAM related nodes for this SoC.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  v2: Remove redundant iommu streams already covered by the SMR masks
> 
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

