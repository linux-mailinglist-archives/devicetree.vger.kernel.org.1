Return-Path: <devicetree+bounces-196912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E07B078D5
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:59:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08C7FA426DB
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB5E262FC2;
	Wed, 16 Jul 2025 14:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCe9vYPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BD8199939
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752677941; cv=none; b=KaNj4vMmV3dcT467/ShGQ+Qe4UHxgzhE+rgX5IkqP7kQEiY1sptG0oA0rJTIaYTMVT6vwufrq4zr3sZz0ocemt5bG1W67KRXnAP2Ay11kV1L0i1ynZ/CHmjWEp/KbVLmu+0P3/Pwri7lRXwU+Bw6cBjXC5zQ+pIYIb1OKko9dak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752677941; c=relaxed/simple;
	bh=yNH+wmDjufWxRYFOsvT0yTAPl1lHuqLKNpXrvQyJDlg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ucEiXulZAOLwBWAmW7BSb7XVc3KtWnAgsQuSUg8K7ojddq8m3wbJQV58bIMjtkTdthZpGVLg04IG8/iVQa/7SfW7SI37XxJX97LmjtgQLs8OY0CZOMkqqyY68qdree23Y5LA/+HaRiIZNiz+CE/zNUfkhsYbdMmlhgIYz4DNLpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCe9vYPX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GD1F1A024479
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YN6JbYLnBlvgbw9acA6SW1dp
	43m1oM7N/fUaL2L/QaY=; b=ZCe9vYPX3wMiniUiVRvSasJw0Xurgz+nYMUOf326
	Qb3ermMtD5xMtP63pstw9penUD+BW3G7Uml2WJgXF+Yv49DrX/HtuHvYcyK4tDPB
	6REAJyggQRAO+IcHqBqQzQe9mTN//6AggugM5xDC05/B9xr+Z0jvgeCNPAJjnoGn
	ULdmHQCW19H1+2/4pRkbUD4JMPRRnplE33h3qbsCQogFHtC0/SuhBRxzWb84tsMm
	PTDw7iNB14xfpO+bOxTUb0+xj9AmRUahDHuOOedOhlBiB4GEgKIoRaS45xdQRFWS
	On7YlefKfmB4qxu6Nnw6kx6A9xiiT6k14swT1Ttoj6mJwQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpfb0y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:58:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e095227f5dso713828685a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752677938; x=1753282738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YN6JbYLnBlvgbw9acA6SW1dp43m1oM7N/fUaL2L/QaY=;
        b=VDOtH+ltUf8hLMhKnsoJt1jICRYVSq5m7CUVFzJoW5miY8WvLkyPFn4jzJVxDZn8pt
         /8FDBh8yXNLcTPlbxNc+XyHwa+kcVf6BHZW3xZb0Zfc70Oiozg6EQrcEnfA19a0o0Zgx
         4z1R38+xLE3jtNoLKeW8cDntJNypTEBGRmmVWcvkD03Otz0BUodCtp81tAGiB7PjD/os
         DEZu2vDMctfsWRq0ZX08Uv4AaO2kO4r6CbzgLwghuY15dI2YxanVxQfWzqyOsKOl1594
         pEfblBj9cXDCdYwMvtKsmJ+sRK2fRUHAKWJV3CrIJ7hkeXh8xk+2n9W1tfAYnpbrRVcc
         ZDcw==
X-Forwarded-Encrypted: i=1; AJvYcCVIGZi/4d01oE9EnJqajtezfmHoxISnQ1UsoBzGA2Eygjj6knLD7W4ORQQMQvdN8NG7NdzCg7RIMy6P@vger.kernel.org
X-Gm-Message-State: AOJu0YwtAhSrWNuMFMfgIq48ZT3G7y8gjqBUyMFYhtZt1Iy5jWiHm/WV
	ekBOY0ciCssrefpDKxbJxXIMB1t+fLR8JENXNTf7KPRbs75qb2fBI+Xb3WYsLaRlw5cWX/mcJ1R
	vyXoj8PVRDkWAN9Vy9JjLOUdVMn51BdbDTJPim0VpZSrtJsQzMw+LPH+FOx3fvlwL
X-Gm-Gg: ASbGncs8CWCP5fociPu6o0BFj02A03nGTG8ZitnnKwwygn1QAi6U/3SmD5RSPguu4tu
	99gtWaiia3g5+1BALUpqCsfw7vlyAc2Am8/ALN4M6XxMQuWEaHCoDdbGoYyn82DJmsp2CN5Wo5w
	/TQ2PkLgVr2LLYhY1ngMp4/7jCLobEKjsT2EHDBem1/xWq7U3+uVIhM4sq4ue2ZFo4/Vh6B+Vgl
	KM+OSHj6HilptbPoPV5oqbNpQxDYVAG5RF/TQbwQ8vMGJIAOexJMAJ5WjqqAlNXavhz1ibm1kqX
	WkOusB/N1AMPuAZQ8bOzSRPaoNq2TzEXG+o3ksx1SMO61CUfCvJgtgKqEKdKj4ExqzHd3uhTQJ/
	QhbdfpEWmE4/ZBba2PS5yPqqQ8NfJ3I3LfetCkZ0dWAReWUdiWNTi
X-Received: by 2002:a05:620a:2619:b0:7d5:2332:2830 with SMTP id af79cd13be357-7e342b36709mr421117885a.33.1752677937925;
        Wed, 16 Jul 2025 07:58:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKICHX7roJSrN0WrDZrAy3xxA9a6ZQocb3aEr2yhOtprSQ+ritUHpZcVpGq1dw5wx6d2JVQg==
X-Received: by 2002:a05:620a:2619:b0:7d5:2332:2830 with SMTP id af79cd13be357-7e342b36709mr421113985a.33.1752677937396;
        Wed, 16 Jul 2025 07:58:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b6ba2esm2665790e87.185.2025.07.16.07.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 07:58:56 -0700 (PDT)
Date: Wed, 16 Jul 2025 17:58:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop
 nonexistent pm8009 pmic
Message-ID: <rfhwcpyl656hiebwradmniwtnkw3odffa4vbx3q6cxlhjjpae5@tnmo5666dv3e>
References: <20250716141041.24507-1-me@adomerle.pw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716141041.24507-1-me@adomerle.pw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNSBTYWx0ZWRfX+uva+cAVaT6Z
 Zu9Nj+UTfmkuOyYu4vPolUhXgZdWM4HeBMnE6O5gnp82jFz9l/7a6vSAMNQZs8BTxUzim8UbHnW
 2VCJ/Pa2S3pX5bb3jbGtvrZsxwk065LtOr4Y2TFlGuWwkcMsBodEedfk7ps4VEslUEjZpRZ496e
 X/WJ9wy57o1GayrTUsKu391Hjk6qebcVuE0IPehnoUhjh5N9ZeCjn9WsMh38R+9r8cPdYF4Nkty
 Kwnmgd9bbM8oIuODcksXagLToa9EaNEAH4wwEaOgq8oKUgKPW/S4c3Uyqearb3mdjrr/nQAD/vj
 rt/pUUpmd7Ph5xySIkGp+PuNz4E51aJbAq64YS/XrQcjX3RMlilKqAwMKt7MUXeBS4dnBFSiHG/
 HcuS1n+mrC1Dc3F09ty3SK28za8L61aaieYh+3QLgxbPznsXHxHK4IxLv5EWeAF3C+rKXw5N
X-Proofpoint-GUID: DpZM1_SN176RL1bY0jdVcwE_CT6yPoNh
X-Proofpoint-ORIG-GUID: DpZM1_SN176RL1bY0jdVcwE_CT6yPoNh
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=6877be33 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=9pW74NbYAAAA:8 a=EUspDBNiAAAA:8
 a=C8rwROSvG5smQ7Soo1EA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=67o8LzlnqLyy2xoPAWJp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=626 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160135

On Wed, Jul 16, 2025 at 06:10:39PM +0400, Arseniy Velikanov wrote:
> PM8009 was erroneously added since this device doesn't actually have it.
> It triggers a big critical error at boot, so we're drop it.
> 
> Fixes: 264beb3cbd0d ("arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial device tree")
> Reviewed-by: Luka Panio <lukapanio@gmail.com>
> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>
> ---
>  .../boot/dts/qcom/sm8250-xiaomi-pipa.dts      | 58 -------------------
>  1 file changed, 58 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

