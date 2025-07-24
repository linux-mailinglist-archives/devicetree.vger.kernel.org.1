Return-Path: <devicetree+bounces-199472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EFBB10D6E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 16:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9DDC1D02803
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 673482E2EF7;
	Thu, 24 Jul 2025 14:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BTQlTXti"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CA52E2EF2
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753366976; cv=none; b=AQlUumJjzX1L1/5+PqHchU0rh4KLx7pOY15SPLqgz7LmX+mj0xxERBB8B1q5u3uoXEo9ItwWgLZwhuhyZ6fTI+1uDJ2K1fZjcLLdqiuDvgu4qiiNPzvFJV6gPRV+HadVtUd18IzNN95aTCKv5FpWY2CSUHaKTjD60l/RVCfslNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753366976; c=relaxed/simple;
	bh=1x33KPEWr8P0rzqhURp9ysVQkhvrTi4Fminesw/AZ5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UXgTfYd/Lwzc9tIHaPdrsseaGFx9sAKxWOcJ7yItNHupDcpBQI2W/1EleM/MsGssYx0YpUP7V7Bxjebtjf/3V4Zgx9PdJy8z59ZBm3D/Snl3AQh8Nl23scXNxTOjzhu0cTVTWiKQ2weFHQOvkX/S0migjwjApzSCX+ewBbu2smk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BTQlTXti; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9fCIF028528
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:22:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FrqC3/J/0jX5Djcxj6BpkANa
	qeAZVYVDIG1wzxTG5QQ=; b=BTQlTXtiws+5aEIPPgDYv+c7XG42ityBA64UI/cD
	XEn87j8pSrLhoYu3p6TkfPR9VKA31zpjiPoigJmIm7K7mN15PC5mpQQy8EzaZk5p
	qYdm3jiGKFtqur0tgYzDJzul9yfxuD0PleSeUy8crSJ+2OtVaCmj/J+m1tlBwnnX
	YLbvEF/Td/GWIWWTMkWNRpsYAwqR43+wx+t7jfx352gZiUMT6GX3kZAKjKtuU8w3
	V07b0VtF6TISk0VlhhhocfvDnRbuO6ohXRflnlRtleBZSS873KdugljOdYNsUS0m
	HqelNn7PGtyWac5TJl/ineNc2eP+1pB/mDKBPsVd/kwkJQ==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1gbhm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:22:53 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-4f7c7aeafb1so887170137.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753366973; x=1753971773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FrqC3/J/0jX5Djcxj6BpkANaqeAZVYVDIG1wzxTG5QQ=;
        b=YoM9IU941t28Wm8YmBtaOoVcWiFHdp6Ui9IVL0V3OWZyOMe1bN/7DdLMC8gdvXAq47
         yqBA92Zoe1/r5QSRhsycjhuHetsrKxzJbkaSZldM6VGbZNwis4BBnLIGiLT4ADPDk6Eu
         HH0nC3Q5d1nTiWo8wYgVSIQDXXPX/LR122JN0YQzJrvv9IqhrA9m9Y159hdc4UY0Mf5w
         yuSeVX4ZpMVUtj5NU/1PamXa0jtSTWp9vyvEiOvRfYLvTloTzGK/dXjBuQIUkOu1lLvA
         BimA4yzXb1L9bhq/h8IDSWPfJGY6Lo693o5AXCJs7I3Vr7Rja5HU50djI52Lvg4VJ0zU
         9z6A==
X-Forwarded-Encrypted: i=1; AJvYcCWJ4HX9UCELYqsTL2bWhhk176p7kLx5KcJtF8M5wIa62QH+eHrWRk03jFwYJl1WMh82ngM08YKnSbBP@vger.kernel.org
X-Gm-Message-State: AOJu0YysD3XzZhEjiJ/4BsLQ9yiIaXz6XSj46B4WsPpmA1tHH623dCCn
	HqGrOrkzyrTpHGhOYXD0VDT0gJEl0dPyRC+K+/GCjTFzEKvqRXva+7q5Ofh0qDpBtGf6g4jlYOG
	uXKqkvtBU7+4QODH8bko52AKrzr8AgTk5kOIA4ZIZxr+Y1dvMp7jH+Tn3rEuHWc5j
X-Gm-Gg: ASbGncuSRV3wMMhcQV/HmlfKX0IIT+OA+sD6vsDlwZU7YX/rhwofZLRkGWyuASqvNsq
	wVfpsTnAdbrQdTw7DN2xamAJQJellz92RN0CZjIepHE11GGj779jQNFigmZ6rZGqKXfkZ/fikpH
	RF5WUVjHNQYU0Et20TDamOYa28TNfMCiQQtr+fHrjMAZ9AdFnvvXmdjiJXk9sVelXvcz44DTLcC
	zz7W0rL2YqL1H4ERIDtqsc0iqbtkscRq8Nlwpu7paVHngMzY0Q+bjRcKU7qkN3OCeF+dxtRCI3e
	/H0snv01/6CmLkAe26KYstdpTxAsImqCPR5Fbe/HoF3LPLbm8a8uM4TNLegdVAnkIeDZZTf9JnV
	WkuP3uncelcwy3AoTI9QJOMUyC9oMyt3CEC3lkMrbHy4V5CwMBAUO
X-Received: by 2002:a05:6102:32cd:b0:4e7:3e76:cd21 with SMTP id ada2fe7eead31-4fa1505cf0emr3376528137.9.1753366972659;
        Thu, 24 Jul 2025 07:22:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJRpdPWtOGNZPazY3KH9hmRCknrLNOq5//Alq4jYTQJIKkqY+VBmq1ZeiOKV8obh1Keq8aFQ==
X-Received: by 2002:a05:6102:32cd:b0:4e7:3e76:cd21 with SMTP id ada2fe7eead31-4fa1505cf0emr3376473137.9.1753366972140;
        Thu, 24 Jul 2025 07:22:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331e0913b38sm3202801fa.79.2025.07.24.07.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 07:22:50 -0700 (PDT)
Date: Thu, 24 Jul 2025 17:22:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: srinivas.kandagatla@oss.qualcomm.com
Cc: andersson@kernel.org, sboyd@kernel.org, broonie@kernel.org,
        mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srini@kernel.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: lpass-wsa: remove un-used
 include
Message-ID: <crqc4pklbvykswdza7favsjszl5zqhfw5obee3pnfakwzzqot6@iuxugh6illx7>
References: <20250724134229.103001-1-srinivas.kandagatla@oss.qualcomm.com>
 <20250724134229.103001-2-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250724134229.103001-2-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-GUID: t5bAHmaJtOyakPdQhTqHOPz__qSEOj5A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwOSBTYWx0ZWRfXzu5iVCEKoiny
 NGMf5UIB40qFvAskhG8tOJqXX4roGVwbzrxrUSSHu+LcnZjRJE7RhiCafbMY3lnzZf0fCR4dDFz
 l2mRLSqGWquaPUNMiA0/CwrHAK/AxCIOTrRgZ1WoE9+IluIYB7e7W6uN8tEK+u/bWzcNjGcpW9m
 TYSeIHHW0EKQ3PtsloTDAw/Ek62PdMAWkfifxHpR5h3fcsV71oNnXz7HPRt4LNwB8xWCGMmqei3
 TYIhbUpdsA5VSlttC+6CuB5FRDQH7y2ajjBOPqbiSzuddOmiwKmdaBzrd74Ym/VvXb8QlkM2omZ
 UVXWtyyZAcK2XwxCJOmod13PHidAk7KXYrhnr2Wn0gTGeTH+Jt5All2qatKrYcqJ9443IGklpW5
 VPXc7kjT9Ks+sfVJuUKn5Zox/RaBtQotEFJEpUlycyqdIsEO+p4eoXQ0AUMMKwnoFP6kvAXh
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=688241bd cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ShgW1BdH4RjToGz97RkA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: t5bAHmaJtOyakPdQhTqHOPz__qSEOj5A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=777 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240109

On Thu, Jul 24, 2025 at 02:42:28PM +0100, srinivas.kandagatla@oss.qualcomm.com wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> 
> qcom,sm8250-lpass-aoncc.h is really not used in the bindings, this patch
> removes it, this also enables us to cleanup some of the dead code in
> kernel.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml          | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

