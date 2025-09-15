Return-Path: <devicetree+bounces-217605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1BBB586D6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 23:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D61D37A4FE5
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 21:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6474279788;
	Mon, 15 Sep 2025 21:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gQxDCVFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1B6280324
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757972098; cv=none; b=CPyalsw0+DO2tHXNEZt3efQ/4jeXJiwzV+wUYaD+K1m+Y5kN9QETfsdhnccb3IcOfBiLdALnIdx/kp01BbHDhu0uH8xfIMp1bAgli+7Ul3LMCOsJTs8c1sT6HKs0cxVLV0+IC9RPw/IaeDhk/uP2Y8txzfTSvHZDcY8TnE0viRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757972098; c=relaxed/simple;
	bh=3rqDTno+y5MRlGA2j452QDWVWRduF3hvtfQ/koLMGZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rt43xZjJexDBQpC7wZexV5Oh2C8yRhI97SpSjpxKSz9N0NGrbyInTF2QkmAVaGScM3NziHEVKuYMHs+OX5OIdMGvc37wrgc6q/DRX7MW0UyPsiHPpagBSKW52PMWW2ELgH7FtchqI9n27FnzK7bO1TnTdaEHMjHz+h8UPkaGbaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gQxDCVFS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FEYlPW006392
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:34:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0RWWNpLVbQn5FO67vcCLaQi1
	bT4s5vqNnyqBSJCo1Zo=; b=gQxDCVFSRaSielU22l7W80gE5l2ivv4B6rlulZmr
	oruCDEj6RDZQxhPA9U8wS2o9d+RM9fsQ8rXzoeXmlEEXZbG9+P3co6L7Br/4sQwf
	RqOi1HEhqPo/gAOsm5fSQ9eZAPWdAUI28usJucogm1eaXIBMxRHDPi5dsK9weOsc
	oFVIocDKtzh7ftRPEQf1FhGvVCHCWN6OT4EfvdugY8y4Z1xBtqtTSGVkOssUar0W
	mFq51uQUOLxHhWWIwgrbGwBTGcG3voWc6r35gOTtraH5VOSiTzJcaGefjArmwGZo
	Z0kpaeqPExEXSgIpwqSZrMDC9KObKhiNWULxGnh28qjgBw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chedmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 21:34:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8178135137fso1280396885a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 14:34:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757972095; x=1758576895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0RWWNpLVbQn5FO67vcCLaQi1bT4s5vqNnyqBSJCo1Zo=;
        b=fIGDbNjlr25obYJqrRaMkhKsECtrLisFul1k/gR4lPNS+VfugyiNmKed8QlQFYEdby
         ec/uSm3pfstnvcHF1TZq0iIYWSID5CenfY8+8GwQXJ1I23F+mSvZrfRJ65hxvv4+z5NM
         KTIk4g1Vfaxh88zN5FJkujt4FZmUfJdI4yzfY+GkkIyq/UNw2mWvxslbLOXn50DQTJC3
         lcSGcWTlEI2Lo7Dzaz3lgVV7NvWgAEJwUO/vLHdA+KHx8w81TRU2+x9vTgD2e69Qp+Ig
         4Coc2/ffw5yPEKZY+WiHSgb+gOz8sxsR6cceBHbr+0TjLg3vtrAban5Btr0TRb9ErC/y
         RuMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUolqojpyFrXXVk0RS8VZfrJRGQJlbJIzg/01XtlZyQbIqXJJd7Ua94dc97DmjXkbb+gfXqAI6WUtub@vger.kernel.org
X-Gm-Message-State: AOJu0YwrXXSNcBkjie034XOhsdxrQEGM4zLW+SO/wa0SvGaDUO8ZbJMK
	SXL1OYLDIG8A8VGcOEGzd0LNEmis6sDTHPXWS4S16QoIh/enJyuQhDS35NGGzS41hOM7AC7shUd
	uI2gE6m1m3TFtPukAylbktqJIShZNbsExs7OQrUVgNh6Cxps8qM5PLZrHA0DO3Wjh
X-Gm-Gg: ASbGncvwQWXpxIKJLwptyQKQgkJ8bJFbPzOWzjUinbyVl3EsTC1UWxbo+3pSCMymNt3
	lax0V4InEPJ/01hiRo2IRER1DUjI3iT0OouShrvxa9OPWzjbv0Q9rO2gLPPkTy6t7d2jv9fSTTN
	eO0YOxDPIokn7M5OZe9q9fSK7D2zyh6cuTRLb7moU3uXFj92gZMcZucvRoxTWv+PLDqWchEMK8B
	uIRJxrN3HQLLz5RDNFA9rzAl81yqV30LsMIKAK9ATEJTAOEV8x6UXy/Ion1Fw3sWBcKgL2WVxvi
	IAVx8lcLr8yMG17ZycuMQMyO7TmDSSZOMonsvuPPouq9vblG20pTnR5aUmBKSSqoge4k9/6cPwa
	txLO73x97Y6ZXQVHRbdm5m+5wc9T5l5BTbeYGWCZuEzDardAaQeYe
X-Received: by 2002:a05:6214:2586:b0:782:2aff:be65 with SMTP id 6a1803df08f44-7822affc5a7mr71332756d6.34.1757972094943;
        Mon, 15 Sep 2025 14:34:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtlDasC1ZQPCCjqNR+pgCjz0fr270/RvlCMQbVUAkHKkTOglxSSqOxCrnaXbiLVF7sx1pLSw==
X-Received: by 2002:a05:6214:2586:b0:782:2aff:be65 with SMTP id 6a1803df08f44-7822affc5a7mr71332406d6.34.1757972094375;
        Mon, 15 Sep 2025 14:34:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63d88sm3924118e87.87.2025.09.15.14.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 14:34:53 -0700 (PDT)
Date: Tue, 16 Sep 2025 00:34:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: konrad.dybcio@oss.qualcomm.com, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8150: Fix reg base of
 frame@17c27000
Message-ID: <kbmkr7r7qsymwsk2hkfldvjq5w7ubldvepe5qxzph3d6sn4q27@24aprkdxyj4u>
References: <20250915200132.774377-1-alok.a.tiwari@oracle.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915200132.774377-1-alok.a.tiwari@oracle.com>
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c88680 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=yPCof4ZbAAAA:8 a=EUspDBNiAAAA:8
 a=lAJItx95wPgQCyT0f4MA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: iP5NKejl2auH3zKDkA3TsGjoG24jobeI
X-Proofpoint-GUID: iP5NKejl2auH3zKDkA3TsGjoG24jobeI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX1v2yvGQ9JNFP
 EKHNqoKKyUqy9L2X0sv6eNeyO15ZprVq8v+2fghu3dUEHAOISM9iaWA541BTRY3XGI32HLSA1qB
 kpjYfliHfzVR1a57KegWCaKkyqQsbPGdP5+ov7WJoyuN38xCbpY3bV4d2ERiO9wOF6365mNOLfg
 7Dyq73zt4IRXrPQ3OTAGKjLhu0o1kZ6dsUvYH18kQz4+eVentTSRwjCROl8W4DeVl7yRiLq3C/H
 54m9V+JYLhUlgv7WMFQ/Vpvb8pipAK4Wxyn+oZZYWCsYCW4zoAgKXoVyCrMkET3OCyYj8UbdxJH
 opAS8RN65KOwn9vv5fSL10nelnPLcrEd14c9d5u64w+JURDbtHg1mhygua7qIBMLS6sNWp2h3fC
 YRv8rokM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036

On Mon, Sep 15, 2025 at 01:01:26PM -0700, Alok Tiwari wrote:
> The frame@17c27000 node uses the wrong base address 0x17c26000.
> This does not match the node name.
> 
> Update the reg property to use the correct base address 0x17c27000,
> which matches the node name and avoids the overlap.
> 
> Fixes: e13c6d144fa0 ("arm64: dts: qcom: sm8150: Add base dts file")
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> Link: https://lore.kernel.org/all/20250913183018.4017208-1-alok.a.tiwari@oracle.com/

No random Link links, please. Use the links in the changelog to point to
the previous revisions.

> ---
> v1 -> v2
> fixed reg property as frame@17c27000 is correct.
> as suggested by Dmitry.
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

