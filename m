Return-Path: <devicetree+bounces-236810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 265E0C47D30
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61E4C4216BF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:58:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC4426657D;
	Mon, 10 Nov 2025 15:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZpE82+7y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PHJT7SIo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1598F26AA94
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762790334; cv=none; b=pw1/LOA6TMRD98U/yAwlVT5K/vByMWxrrRp2OYRdMOlvzfR9be/hvU7eJWNzdZGDozrsPUoE/fM1HmT0eNa+bq+mowY2y4oda+jiB8eAyJwySiCHnx1bBxwZHHRTHYfXja9dJ6mtliDh1XKqDDzq9rLMckN2nzuxtxKdrg2YmZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762790334; c=relaxed/simple;
	bh=QDDX2DA6fHm4ELtkSv88cWLg+c3haBcu7aRJJAPg5+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fH+o3AxMhgEPjqOBe8iOmrvtmiDZbu2W0/zYugEyGM+hVOX44rLaiHKdgB7jaJHRMbCg5GWpQfsrYkFQEzjAG3kB/xZNGriWZE1r71V2RaEvwCNgbEU/Q6qt8W/YL9kii33jhLe/qs/MXzHzChVcOew9jnLmHHpUzHVNDSI6nBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZpE82+7y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PHJT7SIo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAFhVtM3985424
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:58:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vLXvSvdzIuLRXS7nXEZVCb3O
	YqcNIx8WojewEu7d1PA=; b=ZpE82+7yefLfNP2tTB+GFaWzfkHt+pbzN0SzT+kA
	43wtNUyZgBhyPB6DMdexUUkrTLuReqOvo6LP4+qXLO+GbHtEyS4GOS/mrbRY7HlD
	NCycR/wPxeL8pPwM4VPlE9vg00Cnk/fLFVNE2kNDJ3auAPOjPIO5Mfd6mpuE8QYJ
	biSvi0sn1tnXl7mYsipsPklT7+MPLogSleDCZA1Zci48qLMhdTSsAe2nd8R4MVh7
	fMRhWyddmfE2h6Rc8uAyZHYmZEAr4wombQ6/RcGHlsij+QUQ0ZhfgutnCY3y6ebI
	iFYDZIZqNwnnK7J96d2oWsul7fiEtv00ii6J11LY3Mge1Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abjxqg1qk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:58:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e88947a773so80463661cf.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762790331; x=1763395131; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vLXvSvdzIuLRXS7nXEZVCb3OYqcNIx8WojewEu7d1PA=;
        b=PHJT7SIoKa2f//8n+1SHJ2xrb1kUc2P+XnZBn4dmrGPxhBAdKJltbaboCflRyI6M63
         j+u0ivPd5tCXL+Uy4HlYiZapZTR3U7+AJpxXP8Q9Q3ZyZaxXlw2u7lns/FKl1dpM46tB
         I3Lk6Pn4b7+85jVt/CCRPZfKROPn0GMovdX5fI/1oiePYAAlaZ/kVQdwn4wAucQdwZNA
         vKYxHpR4kNq25heJFMF0dTS2Hxo5+6zGhoe/WuDcJ6U0pCFV14MTZa4iTpdizLCHZvhc
         Bj+kmXFTw01pd9qAdDyS8p/3l8NUz1x5WfYvVbKbx6AnrFh2iWptg8Db2WX33IlDuHEA
         ovQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762790331; x=1763395131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLXvSvdzIuLRXS7nXEZVCb3OYqcNIx8WojewEu7d1PA=;
        b=xAU6CngOXZbfoBBHtuQJ3LbclTsL9+mg6R2xYxJ9yR0/2cnrIvZNsP0gnBUpPvQqbh
         NHr5FwqPVZr40XuOp4r1WIe4/8DFY+wot3DDX5M4VIyU3Iu3Sl5KmDD/12qNsiFTNjQ4
         JdtWmywsTv8g/xCvGEkwUjHQqqXY7FfsvECv/NBpQHdX2rSEvqFY5ZgILL1EJhSZ7bnn
         4e9/s+ZTb0LyRMf/7Bv/Z0Q1X7zszEiZFn+VlYXXyroHKEJ/B+JqmC38fJsQD0VNrjzM
         gJ591mfW5vRW2SJSwYad0veqS4jx7faW6v7G+RIcZI/fRm21Sx/ivtbRPlxCUTkyt/qX
         EEmw==
X-Forwarded-Encrypted: i=1; AJvYcCWT+THFpafn8i9GMxVPCQEbla1m1hysET87aGRZtI6WG2Bd3Bx/rfp/YeZOUsQZImmQqRh3lFe8g+xt@vger.kernel.org
X-Gm-Message-State: AOJu0YyFMVH4l4XMFeqmZDu3EOmfB4fd+X8y3f165c2nBs+UsC6GVL2/
	F3TEjUES73OwkqGxSXI3sTK0dlLtYmZoR0drwIgmH3sK8Ju1e0XcjnB2nFDNLJs1kXOOhPR0eCs
	GVZiAkwxBmrs/rrWsyfbYHDE9HggcBKnfMqgPiYWhBYpb20NPl5rryEC1WK+wAlkW
X-Gm-Gg: ASbGncsO/dRdh8AUys5g6KiIvjqdd395IBqT1jYoQSGl3kbel+OfOmuQQt5IAoruyzo
	MPfxLB6XAjsuXAwoQhPISIrLbiT62ECgMgewZe5y8JGwpXV+n8Mb+kkaoUyQdnl44vGfCfHD/hc
	4wwXmcokey49TkxMJ0OIA4E3bK77tXWJ6+2nuNrz2V48sKBHyXRwkRYnS2DCO8h4NlP4TtYr2V7
	/KWZKf+BJgtZTNb89K80tLSGg7PUfrV4B5rMgoWfkchL4NOjrSlqcl+hWhjxhuUSiHAQRpICRZe
	/6QH7NWPhaPWbFNa9sCKvDuhJPP1cpYRsnyK+K62hGMnw6cuUm13GldwqX4qdZ7Q52NeIYIm1s8
	aAUK3c+fAQQKR32wQKm1+vIpCdexR8KfllJbn8Jb2rSXsIGynkusHONvA3AymHdj+NB+wLEOhv6
	EV7AAgfijMztTG
X-Received: by 2002:a05:622a:1446:b0:4e8:a97a:475 with SMTP id d75a77b69052e-4eda4ff22cdmr113143041cf.79.1762790331269;
        Mon, 10 Nov 2025 07:58:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IERvz/5tzN3fzzFof150ow0CPkMngjJVvCc1HpPWCZ4P2NqMVrHjzZly5tI/ZePmcV7OvSq8g==
X-Received: by 2002:a05:622a:1446:b0:4e8:a97a:475 with SMTP id d75a77b69052e-4eda4ff22cdmr113142801cf.79.1762790330852;
        Mon, 10 Nov 2025 07:58:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a5a0d0asm4077997e87.111.2025.11.10.07.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 07:58:50 -0800 (PST)
Date: Mon, 10 Nov 2025 17:58:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Dylan Van Assche <me@dylanvanassche.be>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add
 ath10k calibration variant
Message-ID: <bxuhdnfapc3nl5kmvvk2czwxhyrzaxunw2hmccvzoutk2xkj6d@sgfb5tgyxyy4>
References: <20251110-sdm845-calibration-variants-v1-0-2c536ada77c2@ixit.cz>
 <20251110-sdm845-calibration-variants-v1-2-2c536ada77c2@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-sdm845-calibration-variants-v1-2-2c536ada77c2@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEzNSBTYWx0ZWRfX+ch+gOIAHGG9
 mEQf24AT2Ng2pSv7IUk22Olpd1oMZCwdblbrK48yE5HvhbFqSmW1Va5cxOaruqzWE+Uhdkd9vW3
 RuFIFNhPoH6byKi/K5K56FteAfHcxTa7o5GDsUxK+rHh1nDDDu2iTCb43hlr3gxkwpgZXHdh8T8
 mFeuyyQ9SEpnxvxx6mtKJytCzsBUrbF7y4n6LEnQOdtjpCfbSWoSKE169HeaKB8/v/D+EAu9wNl
 ftue6JEREnvLb1nXXppMBlFgAgHXfb6wT1601bAnZVSOtfyk+hy6BShiDrXkpSFzLWs3V50xuhs
 dU8wAhCz+Na9GM1o68vZm0I6e00j25lGAO9J6txbfLj2hj9mVL09XpkSPaLy/LA3kQyS+O5aWVx
 cDWOG8K9XXLa7s2ACiQLtGxjibEbyQ==
X-Authority-Analysis: v=2.4 cv=CsKys34D c=1 sm=1 tr=0 ts=69120bbb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VnAOb1fkWFh9DQKIKVgA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: RdRd0P5wskXxtWXoBT747OgdvLg87Jv7
X-Proofpoint-GUID: RdRd0P5wskXxtWXoBT747OgdvLg87Jv7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100135

On Mon, Nov 10, 2025 at 04:37:47PM +0100, David Heidelberg via B4 Relay wrote:
> From: Dylan Van Assche <me@dylanvanassche.be>
> 
> SDM845-based Xiaomi POCOPHONE F1 has its own calibration files
> for the WCN3990 WiFi/Bluetooth radio with the ath10k driver.
> Add the calibration variant name to the DTS to reflect this to
> allow using the calibration files from linux-firmware.
> 
> [David] Adjust the compatible as ath10k-calibration-variant is deprecated
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

