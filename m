Return-Path: <devicetree+bounces-218845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE43B8498A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC3981C8370D
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C31C82D3225;
	Thu, 18 Sep 2025 12:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pSJrnu8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EBB19343B
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758198816; cv=none; b=P8kiNnhcZokg7CAgGMm5QjDN+QQm9poAkbxr0/oHLcRWjGUdj0mqG/QL+EMC8FEYz7B6N+TZXKysFQ6kUVC8Ws2N7K1VfBPtdIu+Xl4GfFJfL7CHMIkDWDkzN18VZU6zmzVdFhNnJ2hAgLSo5d375rZswLOUIKjo9HeqAAaIk/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758198816; c=relaxed/simple;
	bh=Q+TYOaA3yGG6fFlm2/faOhTd8PZmeKZWyUhQkFUBBVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uItjg31wNMh5cI/qsOYzkH4qfymTDbEFO3qOqQct3CWUbqspy8No/2nCg1Xvyyg6Dchn9l5BKxBN/Ol2JjIJsntM7F1hCy4739P2kg9WGmcshopQOb2y1W86N2FZUHKJMXSJASYTlFSgeni/BNtrTsM4827PTZKjjNqg37vJ1EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pSJrnu8n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I6g9lq021854
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:33:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M3+3wD6GXgrzfXYSdL7W2k3T
	eizE+SNTVDS91lGfh6I=; b=pSJrnu8nOjjTAyQndiQ4wgox0QLDzruS7RITwFmE
	OSCYKWvxe3TqIKiMm2WwCV/ZdKDh9f3TtisNUcBr9aS62s6yI/zN4X4zhVZWLA4A
	RjOMy+2J3YB+/8PNb0XCoVi5ieFXC9dS35xdT2qb/j/8jFvTv+ROS7N4RbNSI5CS
	y07+ZE85yWd9pCb4eHJWmsh4bt0fYjG8p3ugBQn5ybofwXZn/s0MU98Xa2jkHMoz
	BK+JKfaJVM8iAU9errQHzV4SPst9CB9fjVudrxASsJ1gBf+bHuxy6zi4/Jg7j8pf
	hydlgJ95bVS530rVLfT7RPvoEePwY2xhJOa5uPoaExPrYw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxxxa7b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 12:33:34 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78f2b1bacfcso14174336d6.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 05:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758198813; x=1758803613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3+3wD6GXgrzfXYSdL7W2k3TeizE+SNTVDS91lGfh6I=;
        b=w0zVqhhGowwNtGTpGpYBSAbZMscGgbi5+72VBRJMWgEKpMbLTG2ADryKi4lDXd0NqT
         +MY1QJlsn9lWP0c44M1EWk0GhqxTLPOI4YrnpTYbH500ceEG7QV09AiqhFiaVs8D/ied
         kSEf+8p1krijWO+OCOi9fDQ8ApSlG/2UwKKnHGO5gum5FNkknlMYLKdEy6jqQXh8tmnL
         gg8VOXc7FJkkT67V55AemAxYOU1ZkD7iAthh+bWcgpRf2MXmhrUXv3xoRGzXx4uLfP7A
         e8g7sKmT5qFsIp7BIljJPd4MQk/2ZNoQo+OONj//2ZC6Ri4G4ZQTxwItPa3hX28MNKtq
         4pLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3AwxiZWdz2jazBaXjYVjbsaiXP9+Kyj9nP1OKkrfW1JDjwJTvOH8PUfZdB9WgbKcHnUpgP8470gEt@vger.kernel.org
X-Gm-Message-State: AOJu0YyUQd2nIbo9gSMHHoT4ita6f8PVGhojOZ7ZSPPoCxK1YmsX6quS
	C/ZSsjd6dqLpaqXgVInSbycjWYWGPff9/kvUkf5ch5DGZEh9WxChGxMRy68cHG98FufBLR88sRX
	qie+Q22bY/V0AP66+L2Box3gs3TBcdEoBggOQqZJB2OSrbUgunXVo7fFlk+rKIrMo
X-Gm-Gg: ASbGncvatRdcJaaQyK1nn9xxyyK4D2E7fbEAtjFxmcDcYf+Qxy1x9O1ent9W5KBANLt
	SdE6unjQkx+u+V/F6fouaj/2Kktk0dNUIo4b7GifLk5PZxoJqQDU569E6QHm913Gtz4hTfL0OR6
	3vjvCVq/0iuSK0mDG62JzHZlAAYuRHNMRR3mnTs+CB+sFlBj8WC9Vau40WXgM59hdHdv+r8/dxq
	ylEDZEmfnUJ4ZPnfuFevXLKGhXnr29THFCzVYZFNJ/nBw1aAf7iETdX5uT1PJoHtIcUzwjJuQd8
	6w9aBw+1oDuDK+9gdmUHoX6AullEpvp3zH/uSOAq+quAPctErfyjLrVaKWFugmcZgEUFSeROdsd
	856TYKMNNEDF+iSnKt4XEIX0fx9kaR6nzr9DvPGpNzWzJD5NxRCT8
X-Received: by 2002:ad4:5c4e:0:b0:714:19c0:623 with SMTP id 6a1803df08f44-78ecc631871mr50029446d6.11.1758198812795;
        Thu, 18 Sep 2025 05:33:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIEjbSnHVYCZgAfmK5LUEyL4h7bWS7oPOvfXkKCrkyyHF5jc0atUb1w/yRFTyA7FhWBYoGAQ==
X-Received: by 2002:ad4:5c4e:0:b0:714:19c0:623 with SMTP id 6a1803df08f44-78ecc631871mr50029056d6.11.1758198812174;
        Thu, 18 Sep 2025 05:33:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a90a21b6sm621589e87.78.2025.09.18.05.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 05:33:31 -0700 (PDT)
Date: Thu, 18 Sep 2025 15:33:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qrb2210-rb1: Add PM8008 node
Message-ID: <k2ksad74xlhxmgr2xjikp6xmumk4e56dq7qkef4exugaszseen@qttpkitxaurz>
References: <20250917163534.832523-1-loic.poulain@oss.qualcomm.com>
 <a3fkaue7vbh36gtvofkuucop23spupytjwtsuh4yq6k2rznf4o@fyfw6mi6lqol>
 <c94f8c86-625a-4c88-be9b-b29ddb28aec1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c94f8c86-625a-4c88-be9b-b29ddb28aec1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX6ePQnm8LWlUU
 ndHtDLfnI8AUvt9AWCYL+rYh5gpceULLg9q4oz3Te4O43wcvf+v8uwL8PHOgVwq+iVRbiyF2jyT
 L7GbTWx7/6AyPWwX8hpH0LZPuP/dJWt7ObiTrFAWZI1SnT6CpBwAEShBoSC2ZTUIMhee6u/eR6g
 tL3EoUX+QqypdEo86JPfMMgs2PCPS+sLxekQDe+ndp4K/CPYmgHjZ9aqXfnMjVjx8VO1kHnk5ft
 XzDF4/2gf/v5elx1OmqK7rV07p3uzKJKf9wnekm4EhHZIq3WuUPKSq6t0BwkN1P+SFf8YQXydAd
 XOD4tNBJx1oI3phlthSt+og+18bC9jh54avFX5yFwJAfNBTPk1x8X6KCDk98OpZbDTsCM0dpEAQ
 AaXc7jKX
X-Proofpoint-ORIG-GUID: E8y_0SJ6v7wHrXSVlH5re8pkMDSq9oUV
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68cbfc1e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=nCZ2oXYPcN36r-49cCkA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: E8y_0SJ6v7wHrXSVlH5re8pkMDSq9oUV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Thu, Sep 18, 2025 at 10:09:20AM +0200, Konrad Dybcio wrote:
> On 9/18/25 2:42 AM, Dmitry Baryshkov wrote:
> > On Wed, Sep 17, 2025 at 06:35:33PM +0200, Loic Poulain wrote:
> >> The PM8008 device is a dedicated camera PMIC integrating all the necessary
> >> camera power management features.
> > 
> > 
> > According to qcom_socinfo it's not present on my RB1 board. Are you sure
> > that it's a part of the main board and not of the mezzanine?
> 
> I don't think socinfo is going to be aware of I2C PMICs
> 
> (except maybe cases where they're the PMIC_A/B.. and critical
> for operation, like on certain IPQ SKUs)

Fair. I checked, on X13s PM8008 isn't present in socinfo.

And I checked the schematics, PM8008 is present in the Core Kit.


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

