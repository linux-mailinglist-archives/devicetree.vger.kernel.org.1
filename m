Return-Path: <devicetree+bounces-249326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA157CDAEF8
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BB2B304E155
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 00:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522572BEC52;
	Wed, 24 Dec 2025 00:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OCRNWuAx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KeVwF8tM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F192DF6F4
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766536169; cv=none; b=sG2F33SECBhuP7xYpJ4ARk7GLbZ2mdu/Skd90MsdWlz7oZlBO3c7W9yQP/VpyIh/4H2gh4yWbb8bWq5G/7sNvvqGy31jA+qGyYs7YBXalHf6a7V2M+piZ69/QcPd5MvMSPgWwDJyGm4ITYV8iJ18MJfSBIXNvEtVHYkFWTADsZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766536169; c=relaxed/simple;
	bh=CPFoVPkXdirpnIpJkbA+pD6Bmx+TLPap+UrhEdXlwrI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqlU96ycwgUppAZfx4W6d7K7qlSbTV3Gl2YJQJeZ80JxjSix21Fd1jSwBRC4F6XOB9d3Ff5HDgTavyUr2TkUP0UlJ8M8/uZ30PoNj5R++5KEqL8yMsSXHKXMMnJFmWMdlj/IcahN4HhTDrufmFzYC17UrdfHEB7V8wGSZYqlL20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OCRNWuAx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KeVwF8tM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKXnop1206932
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:29:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UDQ3oxT765FpuHJ/jLNPZAA2
	mmhp6VU1FmiG62bSSF8=; b=OCRNWuAxrG8upM6GMPbRGXOMfoOZbeh0Y9XwWCAN
	8qENcEe8xt1exVyYJCJqbLrRjoOg20wdN99zuPfVI2rBF3GPLfw1dUm0GXWsZg01
	zloJLdTXl5uQ3nIamLycrFCIkmxoXsTQvqdHZHhVozikO377dB+o7VrnvpeLyRdE
	dmfrUSuhsFKUhDB18K1jtd+BuakD32ugb6uRyC/s1Cl/AzFj7t3WxDfUTogDkFvt
	IG33ktZQLc50Zy4qqgCULRP9UhSPAHo6MTARXrsG2eSbZCn1uZjTq+xl+3dALN8+
	3mKC1R6mNaXTCss2YbXS0c0/Zwpwskk/uYEy/IcLtoGn4A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r0en5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:29:23 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a47331c39so139792586d6.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766536163; x=1767140963; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UDQ3oxT765FpuHJ/jLNPZAA2mmhp6VU1FmiG62bSSF8=;
        b=KeVwF8tMgeEct+5hY42IGc9fwHpPUrLnXabcpO+sj+WsayXdOeyitidsl/O0Dj/L7t
         uxpmwFl3H2Wk25SzD+21PwExqiXyDLre1oqaimfVR+bm/FJzFWn1Gyj9iRFPWslUuIyG
         3muRpzREnO5I69YyiwxNHxmrpyKAOCd4j8N6/oEs2lMkbJTlnX5y4US37kQDRIjVG0EF
         2gHUEeM8mf0jLnOyOLP/dKTdCfcsFrSHeUu7DyNyHQdo0gpHH44NPJPLZvTc59UJxV3P
         E/M7lLc5Bx9el9qvB8dOS74srW9dYvz04GyUQr4sPGB/gGlu+yfwXR9EEuP2KSeorSRc
         0Yxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766536163; x=1767140963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDQ3oxT765FpuHJ/jLNPZAA2mmhp6VU1FmiG62bSSF8=;
        b=IZQjCOW9t9vu872a4uTxCakDBCpp5TIl6ca6yyEMIiRKYdgZlsFBoleBnoHuflm6Bb
         zFpCyoVJdZwJQU1sb1UrIAVTOQWyvA5dR4gBJRcbVmj1V8uxtgbjzN2AVAAS54ER/aKB
         tX5IKD76xEeyP8AKeEj4AQtXbszeeSKFjdZg06vH2xRAjhkdsMnv7gBGn1DakIHXpNIF
         SQDpwOdBnGP1IdImIh03fCt4YS5VHi9Lajr2NQ+mONEiVlGxnxJ5rSVNiuGBKK400+fX
         xKDb83Kt50k6WsuJZOMyVh4m2D+3XiyFic/yhg3w8RisFnR0KQNaIGI9MICj+jBomKds
         /LKw==
X-Forwarded-Encrypted: i=1; AJvYcCUQOObW531es7NWi+kTq/lS2hVmM9VKmVHg+yH5GZGoc2VSlHEfZhIPe+dkVtjmQVvyaWynL8PPAYwx@vger.kernel.org
X-Gm-Message-State: AOJu0YxYrOm/xy0RTlOuKUwSQbv2MdzZ5GLGSO9aqZzotAimqcZLwQh/
	erPl+wWqpn8Rn2u9f03l2XJxaAFeNZ7oFfySN1s4j7aIN7BWwM4zF41/Zrd63t1B1ptsuax2FIS
	/Sh4nrpU4ki4tsKOnb3+dVbeNSr4ydWjM29i8lpEPabMB11oz77hE/rNQBPVQ4Y/F
X-Gm-Gg: AY/fxX55mt5NW5tewG40QH8oQe/MlRyQxA995KPBzJqAYk15WNiIJWOIS17DqQlL8mH
	9gov6I71DKoK286iG7imf3r2SkHXaKY5wYJoGmM0P0AqKBqLGxmMNfntnf/3Ej+Iue2Qf0FG88S
	IqSKDRI+D6kfm1uIz0Jvi+JCmHF9W1JIlXfK9fQkk6Fb1W9UgGcPh6RUHoT/mC6QJgLTWei0UkQ
	q5bQ66nS0SQ4PEdXlBSRIzMTKw4b/f+59Zd9iFzUbGyhPOhgY55lpE2FZw0h6zVJp3316brTnSo
	4IsI7cZ5lFnyJY/kTe8VfU+9YxiBUk/O1x78lYdVmj3OKu086H8GnwetNx/zLbxTqyL8DZyI2wa
	XiH3fGulRM8jxPtlFH/Me2yDTZOtmqeLvCOdi/hFllft33+0iAhpXM7b7NWM16wmc9Fw3UqlIKg
	odZj0vngH0Q8Kis86U1wHHQZg=
X-Received: by 2002:a0c:d808:0:b0:880:1be2:82d4 with SMTP id 6a1803df08f44-88d82236803mr187404216d6.26.1766536163080;
        Tue, 23 Dec 2025 16:29:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7Md7PjYRXQHL3Id19oQhC22zfC7CmSq9X6sXaNWDe87LjPK/TEH3ewnXLSbSHp25fi9bspQ==
X-Received: by 2002:a0c:d808:0:b0:880:1be2:82d4 with SMTP id 6a1803df08f44-88d82236803mr187404016d6.26.1766536162667;
        Tue, 23 Dec 2025 16:29:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618ac6sm4507541e87.47.2025.12.23.16.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 16:29:22 -0800 (PST)
Date: Wed, 24 Dec 2025 02:29:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sdm845-xiaomi-polaris: Update
 firmware paths
Message-ID: <imlvmuludjdqjwmoftazi4dtulasdoypqdmotrg63luamhh5an@glsk5yyfddgf>
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-4-a2d366f9eb89@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-oneplus6-new-fw-path-v1-4-a2d366f9eb89@ixit.cz>
X-Proofpoint-ORIG-GUID: p-3XYkydvFbkPY10vUxjn-jGK0rGdMjW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwMiBTYWx0ZWRfXwh9OgWgWgoWb
 0TtE9bP16UyEHQgcGmRokFuC7uG4/Ws+EbwaTCFiLYWOdUtWzyjxLSaaEC584fLcFvC86i37bLc
 R+u8OfwEqP5RV5PxxrcTh8yQzsLmTT22NUO1SE2g7CN7b95VFzOkRlfit5gZ6XsALtZrrPahosY
 YXtRnLs27zQQzoErWeTG59ZP2I4Pi+a94kzmzDPwDzMrjPbVcvtvANjXt1Cl4V31jacaPRDPkZX
 i4GD61TSiA0ITIOYcCA8vLZTvQUdT4ODj0M3BRZZZ7lKApb57vWuZhyVVY6aHNcz5UGhST/gXgq
 Uy6ezGAi+JtRyo/tRckp/9YxhMcSwQ5rdHPHvIVsMeOmd71K8f+2hRfeHvaF/Waw4XDuPX82tHH
 M2rbU+eDqBAWtLUxS2/g8ne4jMUFt/wnYW/XzwR7mRHcpGQioddx3L1Zkjqkd9KN/U1D6svqHM+
 TW+70kT14nlq1ZhxO7A==
X-Proofpoint-GUID: p-3XYkydvFbkPY10vUxjn-jGK0rGdMjW
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694b33e3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Je5-vcQqzLJVh6QI5oIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240002

On Mon, Dec 22, 2025 at 08:05:40PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Conform to the new firmware path scheme.
> Includes cosmetic cleanups.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

