Return-Path: <devicetree+bounces-192344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 086F9AF64DF
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 00:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39252521D9C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 22:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 906E9246BB6;
	Wed,  2 Jul 2025 22:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gVVUUWaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208ED242930
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 22:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751494438; cv=none; b=jyj4LFk051mtFmkfhNeLtzxEaRTdRTk/RwH1W1wIe38wYZAPBa7gwngMaJUPvafgVPGOnJTTrH48qsuVOsmCOtC5Vjfznm/1J+Ls4nG2sQkm/rdhE/dr3RyRqf5ow0UAV0lnBhvqq3YSApz0WSYAn8vyXNdqRkJ1v2uteF4woOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751494438; c=relaxed/simple;
	bh=w2iNETnJpePOtVNbqgnmbME7XZUPu2RHo4XGVEMyLws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iKQ4VaeowFsoU1YlPtEFjjmvd2Hhn11ojcOch/LfhVSeJMhrfWyi+2UNuDF+vxNQzcuW43YJo/0ro6m7HjO5YF4HJSVvQZZhTXMvsBf63VubwQs8UAayyMUDcAcXrlJh3oLdad8K5AWUQhCZPXJQyKUAT0oBcsYoDuBau+fk2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gVVUUWaO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 562J6gSl012006
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 22:13:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8zGB24ppNOh14GIw42mY96El
	8aCCqFFdLCZMBbv4qrQ=; b=gVVUUWaON/JE2/pzwHpQUCEFKTqQ1fOb3CQWOHTR
	8t3trxBxu52ht7z38KiLCs7377cQJ8+2GnnxKIFpgpywemfOAwG/WAjyYqaGkxC/
	i3eQgqxNVsP5yRP3dUGS/nXEoBy7rxeUUYinV+eUVQUC4wKpp18xGOGiqTTHY8qt
	dNttTN6MTx7lVSKEtkOF1WgG0uOY6bIBvOLx5GORFJz4qTe5qJHFXJRgXgjVAI25
	XBkiYpK0PpByI3aQBpOsy2btq7gq8bI2cGw48DFPwNqyr0ahCka3sbujZNNzzSHk
	QRGA1H3+lXAZKxAzAZl4JORzANie3sqYIeGVRqaO19YQJA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47mw30b8m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 22:13:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d44ff55c98so988637785a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 15:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751494433; x=1752099233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8zGB24ppNOh14GIw42mY96El8aCCqFFdLCZMBbv4qrQ=;
        b=sq8HbfWAPJCH3dlwy9y4vOKOHUyNh9NrZ2bw/oTceTaIgOk29rCiMyMIFQgaImIh4V
         itH6f70CT5VAEoF9Amuo0e8coKbycOnFNVfcPivdAwgPeToB2mR6Do1KMyylclSN21tU
         6XwuUMGPdGKsfLZiwrQxgusJisjcdJoKmBfp0SxlPd9+5cWDd4jwEo2aSL3xAaONd/Wn
         MBT/ENug+Dpz680rdtzYEk7EJKw2fFjF/A1CQLjqGftKxxDhM2QV9G42wNfwQ8/M6zyx
         sx8YfszlsQAVjctK0dCbxYI/mpIaKBbbbZMnmXK3qOSiI6gNGeFhev00W2AoGsjgrlpF
         SGyA==
X-Forwarded-Encrypted: i=1; AJvYcCVzKGeDEf819BK+BM11lDFtqOkWw1Zm6v4AgaXjOZRhRq2S5ZwJsW+1/utYc19shcjsIzWbb3DJbcnJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/efpZL58pi8o3F0yi37FsBRVwlCmgHpvF8naKVXQdayzF4sEL
	uIKgAgLqdEHVAJ1iJex/KhuixTt63cgxwM+K9vDe+KGreurGPOCpmwpnp+GdSbMNyAAYb00x7U5
	fjPy2mk9ibvXBIlJw/5GlZgKdz54QhF+enNYXqd0mxXIIP87aY+zq1UGVBzDzEVtbtWBJ4NxA7T
	4CJA==
X-Gm-Gg: ASbGnct3UvJ+B5Alv4uDD99O33YtgDG8rSXBvp3njjeYsXxZVBuM7CGCXUOeHJwX4uu
	i49B+4IxptTDdt2NeQVZWHFO7wALYKWrBRtlt1wCBBUhJgOx1AACDnb/aDewlWduk/bO+Aw2GOa
	b6nCCi/pv86Wnodgkl20XEuiWM+96xhwrmNCp9U3971mLoOyoqaXwV/IjOtEEtwnqGkM6IiZdZV
	XNkdJ0njo8VXpVbcEm481Ajm9QdVyGP+KvhDFZhoeCDm81lrt1Gcsva652zb0gU7QOR6fY7G7oP
	pHqvhd8zBScyRJTymN/rBrNcGuIn9flAH3WHacVNaKMDz2Zca76LxZh+GwSiyt2T0AnuQt/4GHL
	c/zxCHPib5rVFPp7A+R0JC+sLZeitvw30Rug=
X-Received: by 2002:a05:620a:2949:b0:7d3:96ba:8561 with SMTP id af79cd13be357-7d5c47114cdmr644304285a.8.1751494433398;
        Wed, 02 Jul 2025 15:13:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVbGXWOKneAYyPAiO/Xt98EGwYCVb2c82MzH5+P7h62peKAYnJLAm7bYbTUXbKvi81RuMVIg==
X-Received: by 2002:a05:620a:2949:b0:7d3:96ba:8561 with SMTP id af79cd13be357-7d5c47114cdmr644300685a.8.1751494432975;
        Wed, 02 Jul 2025 15:13:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2e31712sm19445901fa.50.2025.07.02.15.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 15:13:50 -0700 (PDT)
Date: Thu, 3 Jul 2025 01:13:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: qcom: Split HP Omnibook X14 AI
 in SoC variants
Message-ID: <xydjgjcqthxnj7yfx65mv55d3zkjlwwdsd57pg6esuia6vjrxm@qywzftfjjwzg>
References: <20250702-hp-x14-x1p-v2-0-af5b588d1979@oldschoolsolutions.biz>
 <20250702-hp-x14-x1p-v2-1-af5b588d1979@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250702-hp-x14-x1p-v2-1-af5b588d1979@oldschoolsolutions.biz>
X-Authority-Analysis: v=2.4 cv=CY4I5Krl c=1 sm=1 tr=0 ts=6865af23 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=gxl3bz0cAAAA:8 a=JcoKuXreAkErhi1c250A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: dNxJh2XsBsw_jtuP9s5doNqkkU_-cB5O
X-Proofpoint-GUID: dNxJh2XsBsw_jtuP9s5doNqkkU_-cB5O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDE4NCBTYWx0ZWRfXxLNry2vmvCzF
 tXaFhS/rKds1ubgoDSXMHJxDWETioBNor5TFz5nLdJgXy3xrGYiV93x6wD4NHw3dmK6v7+cDC4R
 MTi4qt7zVoVQB81a5zqE2FYZCGKOsHzw3TKxpIE0bQASqnRIqpxLAbQwW0/nWyDa2ZPLOxuS4UT
 SsAH0Tyejng+5b0tab0F124/sKZ8JEzOq9rUdMSojZWNOY6HyWKRAI67+pHrAX+/7m9sQDqlOio
 FNV464wIlGJ6XXpIuQg3DtfOPb8F5zqXXvv01GHU2mA1+olIzPQ5LRdg8mBvWPk8Z5ld4uL/Bak
 qmrdZINZ0EI/S33EUDIN/qC4k+CQzBPg1fvtRVCHwFw3zjLsfeXEOC6X57s8La1CcbOvpfqPVRT
 tZFgjLkdAgzCBQKF47uhWMnjBETUEvsswpYBc3aadf8w7l4VQFUzcvymAIw01UsZnEmAc+0S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=998 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 mlxscore=0 phishscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507020184

On Wed, Jul 02, 2025 at 11:22:33PM +0200, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The HP Omnibook X14 AI PC is available in fe0 (Hamoa, x1e80100) and
> fe1 (Purwa, x1p42100) SKUs. Since they are not completely dtb-compatible,
> split the model strings in 2 variants:
> 
> hp,omnibook-x14-fe0 compatible to qcom, x1e80100
> hp,omnibook-x14-fe1 compatible to cqom, x1p42100

Nit: remove whitespaces after comma, cqom -> qcom.

> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index ae43b35565808ed27cd8354b9a342545c4a98ed6..d114b7ae4fa7b162a83a152d9bf8d3fc2d74750a 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1148,7 +1148,7 @@ properties:
>                - asus,zenbook-a14-ux3407ra
>                - dell,xps13-9345
>                - hp,elitebook-ultra-g1q
> -              - hp,omnibook-x14
> +              - hp,omnibook-x14-fe0
>                - lenovo,yoga-slim7x
>                - microsoft,romulus13
>                - microsoft,romulus15
> @@ -1159,6 +1159,7 @@ properties:
>        - items:
>            - enum:
>                - asus,zenbook-a14-ux3407qa
> +              - hp,omnibook-x14-fe1
>                - qcom,x1p42100-crd
>            - const: qcom,x1p42100
>  
> 
> -- 
> 2.48.1
> 
> 

-- 
With best wishes
Dmitry

