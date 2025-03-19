Return-Path: <devicetree+bounces-158922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1707FA688FE
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 409C51898BED
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E754D20551C;
	Wed, 19 Mar 2025 10:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqBTkA69"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F8A1DF240
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742378594; cv=none; b=WbRjQykjX517rs4Xawit5SO00H/I8pRJUVH3DttMtGtBIAOEnGUGBeSw6V8z7fNC0IQndwb4jwvC/VKhUPv4yTufyULPir7an4/Xc6v+IHYvnxQb70iSdwAidevTDfzndfHBcO2WtGzqxIeMX4aYzwjT+u8R0/sIr2OSfI8dTrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742378594; c=relaxed/simple;
	bh=jtxsEGScLiDZqdRASBnRspe0wt/Vw0O4Lr2pCux0cvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T8imDXB3oumyXKtDtFcqb3U2andLWqSqDVNLCEBAPSFamL4WvrRSWHGVSpDyssno8Ph3JWx8caHE9qIBV3Om2lx8FeZDiFK4onoc9DgqzI6WHms7GiSIkhPbVxn/A4h2jw0zKuAU4dhCNgej4bfnc8KiYvEbs2c6UHPyL3lnd9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqBTkA69; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4lqaw002134
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pzEcf4HDAvKkc0s10NYP45UQ
	VQBRG8PAuzto9PKZ5Dg=; b=BqBTkA69eEZI/G1qqN2BtMg+oAQEUMZ0gsd/tALJ
	j+sBfzlVQjnqzDD72OhH6AfLkoYa6M0wsevjAAqbYv+a4LrkYOIbzC16Tyg7r3b4
	cjzX2/vXGmLuHryxCmTqPg2Lzok26AyZjYtbFORNtGfbYnjTfHzynE7tLBLFywnS
	Td96SeiljGTK9JS90W2LPMLFVR07KEGNYEhP46akC6sgrWyqTPNjy1tONJqrx3HB
	1ayeqx1cLQNQlfu3PGowXP/8sKBl2vmBZmqWoaNiK2ndvteNKU8y7QaqqLHJLG9A
	+aYbFwUo/fpiicTTsLQFD2EQhposPggt2giZfaw0Nt8WWQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbwfty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:03:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54e7922a1so1536328685a.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:03:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742378591; x=1742983391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pzEcf4HDAvKkc0s10NYP45UQVQBRG8PAuzto9PKZ5Dg=;
        b=hB7Ith0X49u8STokvnOQ8AvFcm+DKvDvrEH9KUBHRyD3vSGbkWK1WRo8iLT+lSKxhT
         whxiMNH8WHqSZBVUIUvd9LvQYeG+ev24S+wvIvf4hMR+1E3Wx9M9MD95VRe7GiRg1xPK
         eUHkIHDJmqzpUDFvDEirw43G9VvpuZIq6YXNaZabukYH6IrHY2iUb1KbVQ3ZxSz8cMRq
         GID/f3nZSf7mfI1FaIYAQL4epPvi2lHonrK8u4LsQ+0j82MgzMY6kKwhJhNmmt6Asa1x
         IzZQAt0WtjfKmYTMe3A/RB8sXSt+hWNbS6G3OJHdTfyN2B0TKhVjk5AJWVQ7GEJWYl3d
         xk+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUh2ss7hKqD5NGInUawutHFpQISvQR43SyUpb8Vxi5jUcN5bCF7GiyAIJzkr3X4jd4AEx4J7Yz+bAEO@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ1pgFTa4PhIxMKgOq8WhxgHGQUI3rmfhmVeGk29w0CTCb9478
	+lTYYeCoaam/oFvkhSMNhs30PHzeBLhog7B5/5NKSVKb11NUl2aS2JRRERjz8BXBGmuOR63ue7R
	RCfAp/XbCJ6/z/6cfvBHIMPk5aMvs0AH4IFUAmYR9Dq3l7VjjN0jCSRkMgJ7C
X-Gm-Gg: ASbGnctXOX5ygNak4s1WmEPms3lp6/mM1VeEPmx4hjU4di/90D0GH38ap7zXsHzHZqd
	Zd3jSHu+736Q0De0pzqj3k1Dl841FPqG5OhWQr0cSESl24tpJTBqwrHno4T7ttcvYptnC5bstdq
	QoS/MDAJknalK3owQfJBcbYfGB425hvHIIXf9ewtcOnx1gqHI45pO0J1gGlPRX+I+4EcKKLrIpO
	by5S59VG41XX+sMUMI03ttChhYe0AiREDseTDWD3kPzyS6DheQRUdRHeC46O03rSkLrhtbLr/e0
	5VwT7Idwa+vXMDXqIBj0fAQAGmAoTvjoBKcrwLO72Bpb4H04Tuu1AAFjg2/3/RXQHltN0B5F++6
	a2M4=
X-Received: by 2002:a05:620a:191e:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c5a8469da7mr296599885a.46.1742378591362;
        Wed, 19 Mar 2025 03:03:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH36w5UmUaf1mc4I6TLyh2PvcyPbnoFFFtkRaEIewokWpjJyi3q3jXD3wRgymlu31aI1qnIQQ==
X-Received: by 2002:a05:620a:191e:b0:7c5:9a2a:aac1 with SMTP id af79cd13be357-7c5a8469da7mr296591985a.46.1742378590754;
        Wed, 19 Mar 2025 03:03:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ac4c02f5fsm431400e87.61.2025.03.19.03.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:03:08 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:03:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom-msm8960: add missing clocks to the timer
 node
Message-ID: <k5oehu3yt6fn6pabvjze44inzeojavznsv6xzipvb47p473un7@zrslz4kv3oph>
References: <20250318-expressatt-solve-dts-errors-v1-1-14012a4bc315@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-expressatt-solve-dts-errors-v1-1-14012a4bc315@gmail.com>
X-Proofpoint-ORIG-GUID: v8BMWTMsahGzijmN2FtmqvLGcSJjqVFH
X-Proofpoint-GUID: v8BMWTMsahGzijmN2FtmqvLGcSJjqVFH
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67da9660 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=HvA0BsX6I2lc9pbQE7YA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=719 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190069

On Tue, Mar 18, 2025 at 10:10:47PM -0700, Rudraksha Gupta wrote:
> In order to fix DT schema warning and describe hardware properly, add
> missing sleep clock to the timer node.
> 
> Solved by Dmitry Baryshkov on the APQ8064 SoC
> Link: https://lore.kernel.org/all/20250318-fix-nexus-4-v2-6-bcedd1406790@oss.qualcomm.com/
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Running the following no longer returns any errors:
> make ARCH=arm CHECK_DTBS=y qcom/qcom-msm8960-cdp.dtb
> make ARCH=arm CHECK_DTBS=y qcom/qcom-msm8960-samsung-expressatt.dtb
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

