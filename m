Return-Path: <devicetree+bounces-249386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8E6CDB78B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0E6E3031359
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23708304BBC;
	Wed, 24 Dec 2025 06:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gB/GA5cI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F1+N2cIO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933F72D97BB
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557263; cv=none; b=lAxqoO5lgwcxLTGFmmpHm7cgLyQHsp+pgi0tlmyv3mFA/5A7knJckbUabkLuoRhoSSZAa6JSY5qpQSxf0CiY5sAQQsw9x0ULRFY7GVh95ZnUTSx625aQ6bdyMx+0SO3/hizMTsyGpkk8+gOlBOZCUjHca7IlCkA/4ZyJ9ZilMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557263; c=relaxed/simple;
	bh=gJJ1kvU+Ag736zxy0pTT9OPXSX7Y2NMjaxKLE13fGwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dbj5pmniJDIARz+zSCOpHiQQ9a1rElytGPT+bZwSb+qozgx4a8JjUVbN5USuZe03dawgLH0F67WKI1LCqSqWFDmGpGCsFJdaSG28hX1Z+gByiwXe265rk2h2/PboNpENd77D0h5eEft4ER0DQ6BrM6QkWQa6x15Hpy8h1YXBWlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gB/GA5cI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F1+N2cIO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKhoYn700441
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:21:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CNyHb/uhvAq97FCxonH79Fpg
	Lj45t9ymNsm7CFcbVLM=; b=gB/GA5cIPAydYKo+bgVfkX78+90AZEyM9z3WNTG5
	mEYPrpN3mjr73HLKKSiPdMXpKMgJtW15rwHQZ0H6OMBByeioeydra9hN++YK12+N
	OCUYKThFvHi4UjH8+4kaJpcCOOqEb1SBbALSgAlTtXGeTTfdVFz7jMp7B1AAuEaj
	pP0vt5zAgzAyGTDfEaL4GJDwOXE7wcdh9VKSjl8fxNtTYSRbusOaezmREawfgLiz
	jRbAd9n+dFulXnbZxSGQ2VX8KofHYVlHLpvyFyMK07pkSceRMVUf34eg6HjOseIJ
	OOkPYAZIa0EucuM46LKIQUdYEkvCvknI4PkbpArz8y2MWg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jtty1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:21:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1f42515ffso136008281cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766557259; x=1767162059; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CNyHb/uhvAq97FCxonH79FpgLj45t9ymNsm7CFcbVLM=;
        b=F1+N2cIOB8laBYutpwiWN3ziJI+lNOQyr2r3LbRBsfuSnkaDDs6QU6eIKrydGB41IM
         pDWIJWFiOKq2c1+v7znkLfep/G1LJG4PP4Kr2EDMqhNIYT9G+lyabsMcHBosu19YwLg1
         0Vdq8k1vf8TplQXJcHKIqKSbZlYRYB7DCbDD+0WQEQEGXwETBKaZ4RMYTEolswEK0h4x
         ycP3Ux0yDCxTV3UBdeUkC2+yViughF1bGObItQWBrwgRAHNeBKn+Mj7ti+7ZdXs4nWoV
         so+g1AE4zabGAKZizgpAs/zBrvDi8uqQLTvfMvArb3wpmLRdIDAyg6OHtsaedRq58B6e
         C2xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557259; x=1767162059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CNyHb/uhvAq97FCxonH79FpgLj45t9ymNsm7CFcbVLM=;
        b=a8czr9WRCnWkHOvYi659pTx462gIlbuRNf2MjwZKkY+5uWK5UD/jYbSFSBTenbTkos
         eBKKCWYDmt8pE9aKZ90ZIq2wrG+U7YXxcwunWB6ruz4yqnGLO/y9YHvWq++gDFaRi7QK
         ucedDoLE5jnbsCdQIPXvlHeDcZdYALXSfLMibx2glYDkjFlEQG0t7He7TrPsRQuBaj/I
         nTskJOjtftM+i/h+AUj+XDQlfwJhpFdPmIe9GNWB7kbz+aqbSFsXcCAuqdJMP0Bw4YEX
         umBlBq1VJJPoyCgjuRe0RDpFPRvO8MDvEh3JQXPZjwyBiCDxHSZWG6tQTkf+nf5gsanc
         4dKg==
X-Forwarded-Encrypted: i=1; AJvYcCUBsYul5w0zkJ1PAHBTHngeUUMU4T24Rzql3LzTqUK+5qYGxrKDx32pBT1RyuTnsdmjIQO+Ss0KseH9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp/7AWke7Qwzgt8XYdXccAzkU17gnn2k4LnKW7zZAnde7tQEgd
	uTgJpYsLcd4J55kcdiLZJ9iUtb4YUu+j77+uTENpFYlOTocdu1c073FSJ1WIRSOSVifs1VDs7py
	PyCJINua+oF3Sv8sTbM6EJbcvAQecEKolP8IM00VBOfiqQtpwktCo8+j2qfboE5SyKUMkPOZ/
X-Gm-Gg: AY/fxX7v8gpEKdTjHPsz5fgWjlPQRcQ6tJdpXDusgtwWTkJftIqYuM+GtmeKMzO2i7P
	UWA6Ber9NHsoqAcj8/ji4XHilvgMExKEKcAmkuheL+rw7k26aRfcko1fbcrDCagKlNtqZrwG0q/
	OIIXX0nAKF7fbVjdzUUwAT0CeO9dRM6fyr1/SPORWfFp6T8FYjj5GMJFbppT25cCmuptmLZS3Yr
	mZfZBNYat3rYoALkeaNkYfT9Ep8/c6/2EzxjToBO9m01t1TUvZcW+9RRKyE+tGs2dxirM3YgQAZ
	IHqJDjmC7spxeivEkRKUvhzmHgOjHIX7nF1oDC/q7sH2PXpz/r6O4qNRkBsaJOwekufp4rduaRf
	kJ3C2g/W2k28w0MAyt16ypuckzQUgI8h+006bu5s3fZ03vjRnDnHy/0n3/JQrOVMPp8kPELTPGc
	CehSeiZKLyvbNSJblgDhi2C0s=
X-Received: by 2002:ac8:6f0f:0:b0:4f0:2d78:b955 with SMTP id d75a77b69052e-4f4abd797f1mr270151141cf.53.1766557259258;
        Tue, 23 Dec 2025 22:20:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0kGhMlHXVnXGkdL05gKTriqCE4qBVkM+xHhh8HZ+QYsxME2XLVJrUDQwJ+aPkC14lIEmkeQ==
X-Received: by 2002:ac8:6f0f:0:b0:4f0:2d78:b955 with SMTP id d75a77b69052e-4f4abd797f1mr270151001cf.53.1766557258843;
        Tue, 23 Dec 2025 22:20:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d9bsm4731013e87.60.2025.12.23.22.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:20:58 -0800 (PST)
Date: Wed, 24 Dec 2025 08:20:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] media: dt-bindings: Add qcom,sm6150-camss
Message-ID: <p4g64egjg4y5wh6rqf4vnsq3a45xnowqmztoqli7eq43fby4cg@e4riq7xmhyi2>
References: <20251222-sm6150-camss-v2-0-df8469a8343a@oss.qualcomm.com>
 <20251222-sm6150-camss-v2-1-df8469a8343a@oss.qualcomm.com>
 <20251223-pompous-inescapable-sponge-3fc9f0@quoll>
 <c6174a0a-9a76-4284-8675-bb5ca78a7b35@oss.qualcomm.com>
 <eklzmnlnkanrper7lt46vap54u5giprsmwhwpr4am5ytwyohov@kjqvls5vjani>
 <6b52d19e-8ff1-4bd6-b854-bcabccc7cd74@oss.qualcomm.com>
 <3342fv43qdkmm66jgc63hho2kd3xn65p2fv3tyk3573izlxf7i@hgjsp2kwqyuh>
 <26536725-19fe-4aa6-8a33-8e2e39261cd4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <26536725-19fe-4aa6-8a33-8e2e39261cd4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA1MiBTYWx0ZWRfX8aBnyRIjR/pp
 UwZIaOzzLsXWBatq4aEYO8kv8XeZw4Uy2bNxOMD3ehMpy3NlsSyLPhWhHnXPFrO9vwkcKDllSUQ
 WPMO8NNSyuQq43ICNCAzLzi+fBVyIayvQZec1tcnAAb+Oh47fIc0mex3F4//4A4s/82tNQsmutf
 rdJN/d5HCoM7x8I6W59k69UFJ1K81OZUrKj/nTyaI/BmfNC3nQawtkaFphG90wyYUXQHt0tyqVz
 nIApNuBZerIhu72eaYvqyF4HSCB8yKMmsW5PeFpikDGQjlzQGex/QI0KwgQbiUI/NQ3P+94O0Vs
 ETEpn6He3ehDhpegewcvl9HQHva3k9aoIkJKhxIJYb4MO3WoZpu+QC2zjD+eG1/5q/Abn0pPkpV
 Ye6U04XnYF3vkFdZ6gPAEqJGMRI8/0/mGsbaMEOPtaBPcME6DFPSBZ4EK6d2dS/DnjsMAlgihVr
 4/hXiWfRDrvBnv5C+WQ==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694b864c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=2KQYOw9F4hLhu_qjNtUA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: JjO-Q2rEjH_8ElExm7r7mXescjst4Mcp
X-Proofpoint-ORIG-GUID: JjO-Q2rEjH_8ElExm7r7mXescjst4Mcp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240052

On Wed, Dec 24, 2025 at 01:36:26PM +0800, Wenmeng Liu wrote:
> 
> 
> On 12/24/2025 1:03 PM, Dmitry Baryshkov wrote:
> > On Wed, Dec 24, 2025 at 12:31:33PM +0800, Wenmeng Liu wrote:
> > > 
> > > 
> > > On 12/24/2025 12:21 PM, Dmitry Baryshkov wrote:
> > > > On Wed, Dec 24, 2025 at 11:18:02AM +0800, Wenmeng Liu wrote:
> > > > > 
> > > > > 
> > > > > On 12/23/2025 9:38 PM, Krzysztof Kozlowski wrote:
> > > > > > On Mon, Dec 22, 2025 at 04:28:39PM +0800, Wenmeng Liu wrote:
> > > > > > > +  interconnects:
> > > > > > > +    maxItems: 4
> > > > > > > +
> > > > > > > +  interconnect-names:
> > > > > > > +    items:
> > > > > > > +      - const: ahb
> > > > > > > +      - const: hf0_mnoc
> > > > > > > +      - const: hf1_mnoc
> > > > > > 
> > > > > > Same comments as before, do not invent names.
> > > > > 
> > > > > <&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
> > > > > &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > > > <&mmss_noc MASTER_CAMNOC_HF1 QCOM_ICC_TAG_ALWAYS
> > > > > &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > > > 
> > > > > This platform(qcs615) is different from others. It has two types of sf,
> > > > > namely sf0 and sf1.
> > > > > The same as it is:
> > > > > sc7180 sc8180x sdm670 sdm845 sm8150
> > > > > Do you have any suggestions about this?
> > > > 
> > > > Which _names_ are used on other platforms? This question is quite clear
> > > > from Krzysztof's comment.
> > > 
> > > The platform mentioned above either has no camss ICC node or no support for
> > > CAMSS on the upstream, so this is a new one.
> > 
> > I did a quick look for you.
> > 
> > kodiak, lemans, monaco: ahb, hf_0
> > 
> > x1e80100: ahb, hf_mnoc, sf_mnoc, sf_icp_mnoc
> > sm8650: ahb, hf_mnoc
> > agatti: ahb, hf_mnoc, sf_mnoc
> > sm8550: ahb, hf_0_mnoc
> > 
> > sc8280xp: cam_ahb, cam_hf_mnoc, cam_sf_mnoc, cam_sf_icp_mnoc
> > sm8250: cam_ahb, cam_hf_0_mnoc, cam_sf_0_mnoc, cam_sf_icp_mnoc
> > sdm660: vfe-mem
> > 
> > I'd obviously hope for some unification here. Other than that, we have
> > two clean winners: KLM and X Elite+SM8650+Agatti. Yours proposal is
> > different from either of the options. In fact, none of the platforms
> > have the same _approach_ as yours. Why?
> > 
> 
> Yes, you're right.
> But none of the above cases involved having two hf_mnoc simultaneously, so
> do you have any good suggestions for handling such a situation?

I'd suggest hf_0 / hf_1, or hf_0_mnoc / hf_1_mnoc. I'd ask Krzysztof
comment on which of those two options is a better one.

-- 
With best wishes
Dmitry

