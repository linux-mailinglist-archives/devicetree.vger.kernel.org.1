Return-Path: <devicetree+bounces-248500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 710AACD33D8
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C85930133A6
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 16:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6C727E049;
	Sat, 20 Dec 2025 16:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X55yvZpo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YDwRPS0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65BE23EA92
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766249001; cv=none; b=BMu7V/Mobq0qhD3YnfmvQcVWW8pEzg7wYMyL9StN2NbEZRtEW/pLQe4NxXTTWMZPQSluKFxA9vMAOiagmu7tNEPNubl2kHey3HL9G/XuNOBWALQ5jMcjDMr7qjDv6Gk7JdHoCelDjyRlo0Vvm4bwDPWWq9uW0vre4gD2N2ww0ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766249001; c=relaxed/simple;
	bh=ma/va1xuUA+E++ZNGOD79iybJzKWBcfWFHkG8XZUVds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFONm29KrOFw1gSxBS80Eki1ris1l1VPl91l9p+EAP7BfanlzS5ujAmn/3aEPKTt+g0rQHng4gvnipagZu/IIE1Yo72ihYLTryk3QlgeIgtZXBzRMvR+hX1/dYjOjJZRUej4b2/D7uaCigVy35PMU+OeQb4tWgfz9HYPqE+JeuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X55yvZpo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YDwRPS0H; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBP15j3813079
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:43:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ohdhdwiC4FFMEEaMOcvAmr6l
	y1HKYTiQl6IXfBOvxWM=; b=X55yvZpozrjBaV6bBMoYJgTxMDqXI5TP7cSzxD7R
	D6rE4dhUmWkwZtbw34m8FtIIqn7p2175nF/J2Hw8NJHiEsY4eqE/UTn7jyEq5QVE
	Ah0LDQQNxK96f2JFOexYtJ7CCoJgNhVwidavYIW2Uz0LkYvC8bqfQeWBsOnlEBjD
	BdmieJ0UvLp26cs1BfvwTpU9YLqTY+lhmn0NPJm8xUGe3qTOwJH8fFQSDHO5k7IS
	SdDzQUo+Cq5RudouZdKHCVXQ/ZY3o53gIMy5ZQysrxz7jAPI6dYCCZBJ1MCCYj8g
	cQ2khI7Ja2g19bMlliYBwpZ1xVe/KesEaXPIYP+z3LZWkQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru0yqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:43:19 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4a92bf359so52652111cf.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 08:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766248998; x=1766853798; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ohdhdwiC4FFMEEaMOcvAmr6ly1HKYTiQl6IXfBOvxWM=;
        b=YDwRPS0H4pt9JDCS3jvTRc6dgkVFzUb93owSX/4HHAYRBgCDSomX5p5dASU09KR5vx
         gor865GxGuk+o8AZXJOvHWMiMArO2VSHPVXmfAFRpS+eEw7tNOp+xMPcSOf/LWzt9r05
         l8Qe8pkLEirpPhjdTBTwEjRMXX2U5Z4B9jhFrjJUGMHBYAa4J2MF9HCxeteT+6pZVgCn
         dh20i4vEaHjraiQj6/B+KxK0l8CtLFj/7RVvt3MNS2e0DCfLh1ivw56sPTi9V7V0WqS2
         n0zzyzF0QCOETCQ5Ut1dV2CAMqDybsE0WBdEntZ3yuR+5KL4zIAlKCBFSzHxyvhTP1BW
         /Feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766248998; x=1766853798;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohdhdwiC4FFMEEaMOcvAmr6ly1HKYTiQl6IXfBOvxWM=;
        b=FQQhzKOsNeqgvHe7YV7ix2K91trKRhakDctlM6lVm6LzD5VO2ThY+qC9ywKswr1bJi
         WXZROQf1PIv7A30HVFMwN7rt2Y8Khv5d5U0HfhT1Cvt00sXo8pOSCuApPtSXyVNa6TeN
         R+cELyUNj8SwOlRC7bLO3L+rLdoaSh652YM96YioS0Y39IqMoMrJRses6+55Mp31tVER
         HjSvbubbJX9pvxJYdqW2sD1UntIXMrZK90SMGgAh+EBg9hm7O0bpLxsQHCP4UF+v8/Tc
         EOZEz5Ss5A1MoVGP3eyt6ajR7ljG8+v+jVqX0D529ZmkV7dCzUoLI7fUQqcQNdOvP7Vw
         lD4A==
X-Forwarded-Encrypted: i=1; AJvYcCVZqnwQj/6e8JTrYfid1sua6i3hSo7gx3Awt9pYSWJWduYi2JteLiYCLmnO1ba0ZTSyui6wu1r+5Nax@vger.kernel.org
X-Gm-Message-State: AOJu0YxvOJvZUdePXeOPLRRHtRY+0F8WDTrRvkYmdOzcczVXHRcdAs4W
	NZfGmakMH/VETvoTEOPc7rRCqG5d8M8BurVmVT6jprZ415kox4woUJdWXWblo3rdDueDUE8uDHi
	SoGuVDINyuFlkYzcC9xOq6Ob36NfXAfONVI+v5z7qkn5UnvGg4TnRDxDCepS6azU1Trn8ZEaf
X-Gm-Gg: AY/fxX6+3KVra6pAxvolX5WZX96fVS2jSlKD5YheplXCuJab1HBgD76eivcHtjvaZ/h
	EsNDHYNBQbnppWKFyUmOtYJYmS8riygowzWjsl6Ix9KWiKRt3ZVuzv9Dw+k+UBdr579k3bfU95N
	mBrepBK2WU+xMkYYlfAOsgGRA6LkTJZmhEn3JmkDRkZsM/IuKRkOIIhtuAM2NuUUuGavvC/lOqk
	4/e6dBraSqoUly+3AqZPPuAj0QXk/lsqtO+9ksWaVH2rssx1DUnVSZ7thi+p+gxucM0cXvdKmuu
	BzNr4uPfSQ0F/z44tcbHBEmjtRK/pVvKSYpjuTsJcOBwfIUAaeJVDTaLL5ugdNycluULRYuLUqG
	IZPp4qrd3N9azPQ+ibGOwopXqOPv/cb2/DLfO93uyheKpkQGbpcJSujXAEIXCReDc5Cgy/oDUm2
	gZXZeIiwmCmGDZ/17sDVy8n8s=
X-Received: by 2002:a05:622a:480c:b0:4ef:c5cf:ec0e with SMTP id d75a77b69052e-4f4abdb2eafmr104522431cf.55.1766248997737;
        Sat, 20 Dec 2025 08:43:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEeDG8QliabZqhFL6L/XSpUcLdYtvjSEWOrUClzCVnxv/MT1Uc5hNOfXtSD9CVyj8/GL/WqQ==
X-Received: by 2002:a05:622a:480c:b0:4ef:c5cf:ec0e with SMTP id d75a77b69052e-4f4abdb2eafmr104522171cf.55.1766248997321;
        Sat, 20 Dec 2025 08:43:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122501032sm12106451fa.14.2025.12.20.08.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 08:43:16 -0800 (PST)
Date: Sat, 20 Dec 2025 18:43:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 1/6] soc: qcom: ubwc: Add config for Milos
Message-ID: <i2nbit2dqu4ajefx44ky5aijqhieflocnkilbvo46vdq3ywd22@kpyomui5i3mx>
References: <20251219-milos-mdss-v1-0-4537a916bdf9@fairphone.com>
 <20251219-milos-mdss-v1-1-4537a916bdf9@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-milos-mdss-v1-1-4537a916bdf9@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE0NSBTYWx0ZWRfXxe6KbwR8TiUy
 FgZ715pTBoQ/Sv1oEAs3EW9XClSvmFaWksGIH9nqRcwKDbTp90i+jJQkU5Thz29f+1uriV6cRZh
 vN/Yw29nZqLZrinG+kOFbbwEn3TGq7m19vlO09Dtoi5W1WaqrWpzZV6F60pd5AI1DtTjImBjRIV
 +HzkXgiS2cMmgiG4hqjAXDW34IwOvjdQE7mo7ZSrsr8NmG7Patzy6GHXfhvo5WouSZ2s8Q4OCEO
 aXytR7JoeiDfQeBrixcHtGujkgyvJmVjXKcftXkC4bLNMbLUlZ60n+zkSgKnesYKzi3EY5EY1op
 /iDsJWwO6iRXxYR3BSWHMOe8T+paKOtpBeJNKW9TNjAjvulchFisnaWqaHFExMe67zP4VUdJWrc
 9vc3r+S0qtjuaxOdL8K3XOyXP0Cq72m9adFu0H9pWVrjDrc6hol8uZaWiccdTRndPJ7TJZ35qU3
 dNFFpow9EePLACnT9nw==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=6946d227 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=KB0s8L93-oSB63ZrkccA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: qCD0oASBLDXA_8ji6OqCI2fz28ntxhds
X-Proofpoint-GUID: qCD0oASBLDXA_8ji6OqCI2fz28ntxhds
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_03,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200145

On Fri, Dec 19, 2025 at 05:41:07PM +0100, Luca Weiss wrote:
> Describe the Universal Bandwidth Compression (UBWC) configuration
> for the Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

