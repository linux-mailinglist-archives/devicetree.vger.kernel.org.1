Return-Path: <devicetree+bounces-268519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gKklJJpQn2k7aAQAu9opvQ
	(envelope-from <devicetree+bounces-268519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 20:42:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB5719CD61
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 20:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 802B5300DEFF
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 19:42:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D5C33EF0BC;
	Wed, 25 Feb 2026 19:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DP9qH0mn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PfF+DFOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540EF3EF0B1
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772048534; cv=none; b=d+yAscEI5N8qQ1nfTok/LTU4H0DtrPhi463GFSFk3R8NWCd4wJ/ZzLUPQf+ucT5Rb82eAgNzxq2/BJvn9v4CtbMUhY+E38Dpmn6dslWxBLH3z93y+QRwmIuTBI+F1cqs6BOLWvifj1tIXOc4DJ3B8cgWFsq/Ve/q+d+bbPLvreE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772048534; c=relaxed/simple;
	bh=saDe/AiAE0eebtuVVnq9JKqnzRsprP+VkkCfltzqYlE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FHanbvJNsnkbapgWL4zE7X7auJUrgEWAykmjQEh3zx1gd8Eh9fFlqJPoIv7H0VhMhd9LiuvX7WZ5znwcBy0wlRDegCsXnTeGJm8yekcEgbzQAHDIvhmCHtS/CmyImsynrx6PfNcG8Cdg9VPX3e16BIWt8nRtKYUtIdN/FbH/XBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DP9qH0mn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PfF+DFOx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61PB33G3788486
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:42:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uKiJRMm8nRVVx0UgrjMgw0Zj
	aPILLGggnDG0A0EXFAI=; b=DP9qH0mntEKSt685xTJTXokXhhzNWeycFfuhPcnC
	iK+oOKfa13lHhpIVTVwt5nYiv38hlqN5GpRbvMF9aY0PsvYvTwIK9ZSfhAjU612k
	OiHuV6RW5B6UlaMPCSmARAy4POmW67fqioptjedstJjhyhFecL5alwkOQEGj3g+N
	FNqqdowJSv0SoGL2NQBZNWR16fD8wGWLAOWmTzYIC2UQZ16kHBbRuEWIDPwNDXkR
	HQj9dT7omotUpTab8+WWH6RRfKgfixcMkoS6Q2B8BzIG/8GAkbsRITSUDF8iLzmT
	6tF1RnqjjwA5eUubQgCroChaJ7B22eCK+qV90/FVeF+CPg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyv9hksm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 19:42:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb413d0002so79934985a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 11:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772048531; x=1772653331; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uKiJRMm8nRVVx0UgrjMgw0ZjaPILLGggnDG0A0EXFAI=;
        b=PfF+DFOxuI1IsSFArDItE+c8FFTZkMzdzrfd+bUK3DUWtMn49FlqKmVKnN/4YtAAuD
         nFDmenC2nIYeCw/ba+ZIkx8WacdYfFunNOjJbyM4Zewy/T+QhLPhI88043H2GkZemFC4
         +0MUAJYCZskZ97u3th9IaLnxyFT3EjKIFOocQftZ/4cdYp2DGoABcyyWq4P06h2Hm58R
         z/wWu/cPKQPHmJzR5s+3CARTw/A5oratRFAR6czmbdxAXuXSZeTgu2jIWXFCvKRrznqq
         MO2SbcsYeD8S15+b0tFafDbDTDm42NeSWmhfK3YbsF8cDK+Fpx5hnbsmH5ahrVeHRkEp
         njFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772048531; x=1772653331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKiJRMm8nRVVx0UgrjMgw0ZjaPILLGggnDG0A0EXFAI=;
        b=sJ4u01F/e2fb3SWVWGZltL0900Rt3t3qC71/Nu83NbwwjoEJSMAFmdkKs0Y20jNj0M
         3hcEd2Ue3BI+sj0zTj4JUVSB6yKCIJoiVXcwDaEbNfoqoO8nB4Kyv7z//Spyj3jKQzfh
         1t8ZbuNaF0Lj4m8/+W0HmpBfcxVdeT9ip43YwK1SlJXdvg8ESLA+iLT3mnYUy7GtSsAq
         QDD65dGGx85dLFD6RNQPvZXe7JiOl4EEgLTMsZ9dYu2K2FUKs3hZwvR+48ovuxsS6qOJ
         H3Lc5Gj085/KLlf0pP60i8eRc74pNEtTJFCwSIvOBKh6n47d39cfLHJEcVqZ7xyubn1A
         06mA==
X-Forwarded-Encrypted: i=1; AJvYcCW7ok4du306ZI0kgNfTUnlI6ekG7MlOcY63tzSBolTkRx6kj6r005yV2+tC+vE5LB6O4veSuG84RtCi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5J7rvJ/zjTLThZ3wlg0H5cq2t2f34gBOKIPhgOqlgNYWegkUX
	roB3jniwIIUxv29rzBibTHgK7m/f4edgaeM4rRH2Hgt6X/HbSMQguXoC9x79BnwflsQnw3EvhDr
	DBzfFxNijiSDh9OlUpBm+qsWrZtk0ZP6N39dwY9vPRW4M81247O+FZyaO55AvUS/2
X-Gm-Gg: ATEYQzyNEc8rJinnL4XlDB202Wd5hRbvzV6Og/TVOLSai9ltKpHG4AX0z6Ax+/gvm3c
	LVDZR++dHYA1+0cfiQ2NeDCJFjIjeMElUBGj8SnKOjjRK4+Wi4fVxAYLlwurruk7sG885UuoZDK
	tvKpjN1QMNYne78hqHUnS3ts1UtodsQjtJu+pWbsaJ3b735hPR4aDF4H3cNg/Az4c3/34rvSrUS
	oZep+h3nkz/YwhSdAYJ6IvzjK7h72UnAXltuwZZpSxOJw02OmiJDKH+2ltW4qxDpy2sLPlOuzmP
	477A/RtZzECXbvK5r5QI0vA/TyUDbQA3E85RZ7NOehQ/lEr/DMUrN+rP/XQ+KkavMtVVC5B+bvQ
	XHz+ewENKF06U68+hDdGEYGtXM5d+BXdu2DanrRo1nc944EOu5LPog8AL6uM5ndbPxQi5Tc8Ba3
	t+LeNhfTMHL5MQxUNL7ytBP3rMxfZesvE5Tp4=
X-Received: by 2002:a05:620a:2988:b0:891:7008:f2e0 with SMTP id af79cd13be357-8cbbf352669mr37081485a.8.1772048531308;
        Wed, 25 Feb 2026 11:42:11 -0800 (PST)
X-Received: by 2002:a05:620a:2988:b0:891:7008:f2e0 with SMTP id af79cd13be357-8cbbf352669mr37078485a.8.1772048530853;
        Wed, 25 Feb 2026 11:42:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a10933ea99sm3616e87.16.2026.02.25.11.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 11:42:08 -0800 (PST)
Date: Wed, 25 Feb 2026 21:42:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display/msm: qcom,sm8750-mdss: Fix model
 typo
Message-ID: <nivmy3yrxapwwba3lmmfay5ikg7tuyjelxvhhswgsavyfydabm@wkcqc2u2q44c>
References: <20260225173419.125565-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260225173419.125565-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: uCHNi7eS6b5CX6DVfRv5LB0L0Ga7sbAB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDE4OCBTYWx0ZWRfXwaNhnmUdvO2X
 293xDLKVnip2smXUqW7xwTZKWfW9K/mLZT9AhDWvB7SkW48vhtSA2c1MAdaRrgDh3a9q5JYlSo2
 v1R/kLjqrNPrRwOA4Sb89rUF0hV9EE9eSPEFcTb81bcCEGz5H169K+gLskZI/lMf21V/PyLYdFR
 8Aszev6hvtJWD26MYfdMh4/qbhE0A/qv3cbLgq0SmHa5lfhceX57tGIVfqR8s9U0hEzLDbXB3Em
 qJ9+WlNOvt9F4TkRmgaYw2+yqKVcYri5uFd+Jn9dk9sdmTuWUx6C11Nkzu0sGnqjBINfnlQk7jV
 J8t9PvY6a0lzr4gJYSnZRuj2zD7UiEpqWoRHhoNzMFPBd7bWuC8gcANJ7ysu548s/BcuXXqYYHE
 fhau9DgPOTM8N87uduukuhz1mZfNNKJ1HHWMUceHDEN7EPDLVE5n0cjHKh+aiKhPIeN6AwiLxzi
 10xRwLhE8a2GKIXaINQ==
X-Authority-Analysis: v=2.4 cv=GZwaXAXL c=1 sm=1 tr=0 ts=699f5094 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=WlJJIdEJN-TvAJyvr94A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: uCHNi7eS6b5CX6DVfRv5LB0L0Ga7sbAB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250188
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-268519-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FB5719CD61
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 06:34:20PM +0100, Krzysztof Kozlowski wrote:
> Fix obvious model typo (SM8650->SM8750) in the description.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
> index d55fda9a523e..a38c2261ef1a 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
> @@ -10,7 +10,7 @@ maintainers:
>    - Krzysztof Kozlowski <krzk@kernel.org>
>  
>  description:
> -  SM8650 MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks like
> +  SM8750 MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks like
>    DPU display controller, DSI and DP interfaces etc.
>  
>  $ref: /schemas/display/msm/mdss-common.yaml#
> -- 

Fixes: 6b93840116df ("dt-bindings: display/msm: qcom,sm8750-mdss: Add SM8750")


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

