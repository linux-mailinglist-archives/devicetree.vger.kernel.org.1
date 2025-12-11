Return-Path: <devicetree+bounces-245850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D75CB6083
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:32:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D56F73049D24
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2863064B9;
	Thu, 11 Dec 2025 13:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCFzAB96";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b/x+8VHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DE82D7D2F
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765459822; cv=none; b=dAuiqFyp0IvnT7lnvQRq7H0vSLZ3rWgZrrOjWUbibEpIOUCDU9VRPK53GiMsWT0jnj/wW2UlcSZco+VaXCJyiPdgT6isCmeofu+i4uOlmrIUbOY3dPP17NY2B18QH4pUesaHa3pGkXLHGu/paQtUfPf7VXbxMq0maDqv3VHIQfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765459822; c=relaxed/simple;
	bh=Fb+wUO3exD6mEl6k5WS2/mc/HEywylJ6qlOWJKk8TYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a+L2SaipTSMmjaWSHu0qJqidAPSZpYlL+Ew38npe+u5S5OY7Q/ochVj1i0ZB2lU2vxFW7oW1HAUrToMr8r4mLy8sVOXl+wq/UGPvfvql5GDEED8MrWIDmyojJ1Fpqnx0hmM/v3+eT/RAX1/nOlWsIfiQoSv/M5s2ZBvevwbajsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCFzAB96; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b/x+8VHl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXo9L1369291
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:30:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EO+BUDe6vdph0zzM9WBxo/An
	GjHrkdByqNLFm4MV5Ww=; b=ZCFzAB96/4RAiCpyEqXbHM8WkPaU4A0HzgO8j7F/
	YsutP0EKmUazLZSRpPher3XrYHC2ZRE/sMT67fbLPTEiaVSLvqg/h8c+JimpDX5L
	M0/qvAQ1xnMVa8/GKXPr0nj2EtZG4e4kEeU1pEkpbUdiJXVKbJTLsNfRCOSJKc+5
	EsZvdFbI2lgKUGbumX0D9la5eQHuMBc2fdq4yL0Yal2XfHZ3vTEObB0jToLZJzvO
	5qrsRw0F7ufE2RNg8Zj9+Mgj+WyRPGzMQqwD7HQGCUL4xs4Tj7aFV4kPOBrVE6EA
	TaW+Q7MclLXJExhYkUGdirSfW1NtuLrMQegrvnLXnfRv6A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ays4qh7ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:30:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so1750181cf.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765459818; x=1766064618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EO+BUDe6vdph0zzM9WBxo/AnGjHrkdByqNLFm4MV5Ww=;
        b=b/x+8VHlxm0ZIzDORVLp32Fictpo0tv1Z91jID5zXmFI5/dTHvH8oEn9aVdGgpvX2g
         Z+8GvN7MB3iPwh8Bpx0B08Z93RHL3eYbvh+xZtkWj6BrsylJIOqm2bNqrnqQqTQsXFSi
         XYQ0SyEy0hwExAJGttnDDvgeeegiJmRiEyzNyzPKW503a3BDrzgDe1QAySfufgv+xJaN
         Z7LdE5Yz3Dbu82sLzt0B7i8zEmpPGiWWW7WHbbFRHdudY2ULsEdWW6APzft84ZlPZCzG
         BGv7szBZaAVEjMAN9H5nsAXAYjsUqdWeZgIovtOvwK+jQArJIXJTq/2uS2PUGhbY5wY1
         7V4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765459818; x=1766064618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EO+BUDe6vdph0zzM9WBxo/AnGjHrkdByqNLFm4MV5Ww=;
        b=nlpqaqQ6tWQSBWJhls3yDuKlAv7j3YLaVQkkH1csXgolcwb1CqT4GiC+boEOTxAS8E
         wtvkdPNKx/2fs5E4iOnneAsYjcGJqo06/TeWJiIJrY2X9SEXVpcCo8qKoyKGN7tNFoh6
         vskSjSLNHPc2BKngPOtKWFdFDO6sj3rTveTcAD8ldMUTallofbuCK80kVmgohmeuUePb
         eyvEUqscHn/uvXIWEjM3P2H5HQkJDF3mgfyQ7xAYUYtUT/PZkkUrOkOpsjnE8jCzvCoH
         y9Ja/WJvZ3/XokfbeTujUHOPiqaA1RHGjAjRvO1O36arGXLAFM31Z83DxIUlZn33pVdN
         6lkA==
X-Forwarded-Encrypted: i=1; AJvYcCXAfRip1lLoQBrHFfuZ6IfH/MVdGnZjnH7CyUWlnnrrEX/BnBgGuPdffCqNm8TlOdIK1E1ZeXdFWB/h@vger.kernel.org
X-Gm-Message-State: AOJu0YxS7F2HOj5+OUMdRYfj/QAdzSKTX7c+GF5EYSV+1dzOia0D9OTY
	cY07KCzVyz2KX9TrTdnkOPQiP/xW2ZemoS1ZCYzUvn/WjAepttk9HAGIadlrBWscDsw/gcIS2Nx
	yF8ctpms+0q08hqK6K9QSvYFI6jkjwrxHPJ2o0lCYR52UYPlyXFG/8egI06shgxSx
X-Gm-Gg: AY/fxX7BNNNupZNGC7rAG4qYG0UhsK1ItOTf1vUn4M7DkDH3OMLfJeD2q+IedepzObr
	TMMvMFwLR7XLMWAhIP9/HfAIhX+VVl/laZMB9Ygod0RHB6jFbxMobaI3K6ygMUnHwR7e3/noJqI
	UW/FT+p03/2+FWCleMlAFhzPZfMtj0lQfjqzK9r36u8hjy37wTOwqaui+ii+YsU//N3WfnOgY0Y
	8FkT3hGMrpY/4xoNOZ27HNfAPlRGgmTaY0CKpTa44Z3+tUhO+SMEtY0EaZEfA+3mjcCQSFbYWTv
	n2j38jn0VRyZxretnQgqwl8RvBs+Sgxi/xM0d1SM7absen4gpUYNGlkHJQGRxg3CK1iPYtdSIh3
	L9pX2+xjZ1YtNdM+C9s+0K0DI2ICIzDQzu8UYe5uA+UA1mpdHbqcUnBj7X6Yk9jfjC6t8gigVYn
	CDs9zl2Sn+z4GVggPsSD2B9s8=
X-Received: by 2002:a05:622a:5806:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f1b1b91046mr76448421cf.80.1765459817525;
        Thu, 11 Dec 2025 05:30:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAhdhH0nn4P7B440k+djR9sb7ykmSQg3YeqAFNdrpZPHC2OvvdjB/siLR2Kocqqcd4BcKfPg==
X-Received: by 2002:a05:622a:5806:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f1b1b91046mr76447771cf.80.1765459817038;
        Thu, 11 Dec 2025 05:30:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2fa7780sm880650e87.67.2025.12.11.05.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:30:16 -0800 (PST)
Date: Thu, 11 Dec 2025 15:30:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v6 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <azhdq6zxeiidaijw3cqhhsepyc6gchn4e3gataqrejss3win33@6ntrm3bk5zgp>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
 <20251211-phy-qcom-edp-add-glymur-support-v6-4-5be5b32762b5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-4-5be5b32762b5@oss.qualcomm.com>
X-Proofpoint-GUID: 180H-V4Gnr3s8HSnwknQFe57UicuZF5e
X-Proofpoint-ORIG-GUID: 180H-V4Gnr3s8HSnwknQFe57UicuZF5e
X-Authority-Analysis: v=2.4 cv=B/S0EetM c=1 sm=1 tr=0 ts=693ac76a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Qj678yAOHSKhnH0m0hsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEwNSBTYWx0ZWRfX2W58//OKRl9I
 +z6sWoxJixvoEF5Q8TMWTGcPGVc/P/PY+IMWDQ1y/AfcIPZMw+OjRNrJyPvWLitWuJP0ZRuoW7K
 kcumAl9FBzVYN6X0Jex3uGYz+67TEoxRssfN+PK1YIbRZH4uZJexpIHkiQ+JppVS0e4EMhZk1Wd
 zWlz+pz12A4oIA/V3F/OIqCw5eSEUVeLGK9JZYpkdynBm7wcTe7svwcqManlh80AG1ejmWpLEF9
 mf9w8vwwCnIIMkgZrHSRuEiJMGn2VnmPvdCR1joSQFXa83XEUinLKANXB9YJ/nQhXeT8VgokYRD
 zU1CcLm7YTR73jTZzZ0QtkLIr+q4/MPSJgKEQ2CYPklDsdJCaZLNbiA5rk50OrIbQqJjR/JeSCw
 6ptLm5E/fSKYPrw1dns08DmBlRCvZQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110105

On Thu, Dec 11, 2025 at 12:17:25PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The Qualcomm Glymur platform has the new v8 version of the eDP/DP PHY.
> So rework the driver to support this new version and add the platform
> specific configuration data.
> 
> While at it, add the rest of the AUX_CFG reset values for the v4 and v5
> platforms, which makes the handling of the platforms specific array
> cleaner, as they are single sized now.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 227 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 219 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

