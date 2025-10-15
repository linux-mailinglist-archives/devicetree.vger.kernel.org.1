Return-Path: <devicetree+bounces-227334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC2BE0964
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E79F14E87E6
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E377D30C602;
	Wed, 15 Oct 2025 20:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oI0tZ5hX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5625D1F1537
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760559062; cv=none; b=u+s5PdfAwgr3YiZpDHm4l2DHkqo4ZSSUf/JHzHq8aTCEKOnnZ8KpJSIei6jGi9RmxYHSzG8usUxlJLoezz5044N0GjQ/7T1FjDb5FbuOgVzZz6JUHf9i/bh8j5IURclganQwzSu1XJW3N0t3YLwMuLnRuyMDD/QFzNCHAGyj60s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760559062; c=relaxed/simple;
	bh=sL8XlQVWDbCwMxkOGY+GElcggW9WEH/bRfpKika/kno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sWjp8NnPA4/7lLsXNQQLgnRnKctW4c0M47xP0u4BPJc+PnBHgrcIM6iUYGVYBxwnWShmLFvIJBu71BgVakOJavzkaOIpat0stujfVILR5SbKf+qt20Ks1RI+VrKixaj/WHqnWG7AG6bxd+pbEICOVFD496LGt6QumkG3GNZ2AqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oI0tZ5hX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAwUhE002564
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/t1dCpZdqV7X1GUFpSEVkBel
	pnG5Nvy1baTgwTwFhOQ=; b=oI0tZ5hXRsmVkvIp3yVduM/Fb5Ze08QMasknNW3G
	KR90J6rTB3TA6qEr5k4rZGFN8MkvuZhziUONN+OWllEQ0zTgpwrTJp7r7k0CyAkL
	uWGTVA1maNugwqGSW7Jb4iLoxQxC6csqeF95N/ZVsVfDo/YW4vs2Fbm2TRX6oYsJ
	OQxmQD0DKXRZIRZZaIBHwqIbLsBzUE17U25Br0SU8Zh7veibg4k0zodmDddYsDTI
	12V0P7vnQUydLZUs2QxsA6NaAGuNu4jTKSm8MDwCty3p6Mkml50Aowzwn3uU2Q0O
	dMPQ1qyqIccATaJ5Xy2lpdub07plqyxDGOhhjNM6XYV9GA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8dubj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88ef355f7a3so249849385a.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:11:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760559059; x=1761163859;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/t1dCpZdqV7X1GUFpSEVkBelpnG5Nvy1baTgwTwFhOQ=;
        b=TP53YH2iCkw3zwhz+dT1R4GSMJ9plS90XJHDVQ0ClvDZ8gOaqhIDHr9JlJLNUQKiYv
         tkcLvQg2y1KFHSQWFVBSih/p1j7lh6uLdzsYFEYw5nh9KPL4V/o5IH87rZMXG0akGUbp
         oohCb6d4fHHQbbwWuAcNJqDOowZ9EKCQAZhsxuxFegNrNE3RI3gokKmIsMbZKJlg2t62
         htKQLlIr9nyl8WxsY+EmhTdn5JQ1t3y+a4E4XHzknwsHcnRcfYudKORgkHt+DrIHlmnt
         nZvxavv0wnUSEwCDYlP4QMxhIkAL43Vr7a685W921/T6UGAKFUtMzVK8ORtW2Z8CZYC6
         Vcvg==
X-Forwarded-Encrypted: i=1; AJvYcCXh2FO9rJvLTZnldlizoj2AhrAPplylVlAzHf/esAwNhJ36yfxs0beb2fCg15HQEO48AeZ1ADIVFwgC@vger.kernel.org
X-Gm-Message-State: AOJu0YzoksD4N0lMh5u3FzfzMMXzPZEFyKjSGX0usZZJam6BG4e9CWb1
	U45sgsZXlLUZfgpcPqqiB/BAV8Nd5Zj5bTxrG+vRaQP9CsXR1qZ4PIpQhJRqAxh11ezBUNlbJin
	z0JclezD+AUhmdy429I6tprgpo45NOWKoWKjGfscXlEI90OPHUIsq0NUrBhI6XwGG+DVAZUDT
X-Gm-Gg: ASbGnctIefyLYNxq2pDdCj4VIfzH1oqIuUtFWAAOIWITQZuMSaDPvM4MQTKCoY/DKNF
	ftKqCA1WTLFS/E1F7M0Lq4iRVkvcyeJMMMb7lFlhGHxb5ya79CyvUMF7LgK4JMJQoi14fx0Qgsk
	fGK8qQbXS6Y4iZy/nBtrmosDKoMWRQWCf/27ZGRrwq93+XzaJTlKRq7dqW8ee1oLrlBeXcpE89V
	CRP0SLgwisO+1vqVPCAOBz5lurwn+bDsjczxN6OY2DoBuCDj/Y4ZwT46ddlwL9nVn0kPox8Vo5i
	iMlRiO0Voo4gOHxlIC5etfW5MJQr2gpqNKyLuehXp0XjwaFUgL6bXAADDALxHh2OIIKUel7CvMi
	FyYZG/rFVJ5mQbAkLJa1BLbtPCcyJ66QepGe2Ge3MRhxBH5iRjte7
X-Received: by 2002:a05:622a:1894:b0:4e8:8590:f9ab with SMTP id d75a77b69052e-4e88590fa77mr43148881cf.60.1760559058859;
        Wed, 15 Oct 2025 13:10:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/vQDmK813/cqY6aMyybRLQ+i7/pAaAqNshFsyxlW1nEMLUL7OVwu9YAiN7ac2zmKIZfOPGg==
X-Received: by 2002:a05:622a:1894:b0:4e8:8590:f9ab with SMTP id d75a77b69052e-4e88590fa77mr43148541cf.60.1760559058211;
        Wed, 15 Oct 2025 13:10:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088577f2csm6516484e87.107.2025.10.15.13.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:10:57 -0700 (PDT)
Date: Wed, 15 Oct 2025 23:10:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: iommu: qcom_iommu: Allow 'tbu' clock
Message-ID: <56fcl2ip6ecu4inig7ecpjt7qrsdt6sehkrzrk6joysbp6tea7@4xdgxhhe3aso>
References: <20251015-topic-qciommu_bindings_fix-v2-1-a0f3c705d0f3@oss.qualcomm.com>
 <8e7a145e-6871-4974-ae19-40699747803b@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e7a145e-6871-4974-ae19-40699747803b@arm.com>
X-Proofpoint-GUID: KM6ClcTZ7Z52hGqYItFtzOzv6pbl5g2Z
X-Proofpoint-ORIG-GUID: KM6ClcTZ7Z52hGqYItFtzOzv6pbl5g2Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX+4/xpH+i2QLe
 hnFRaVgTTWboj/qq4Lzhc/Lc08M/usiHrdDP8+HhZfESL2XAOxyuIFUs+ArvLgyh3uAuyhhzrRt
 GMVir38vAj8iT6ZcReD8EiA2numyLYIYGdyOVNTq4VIQFjOHzy8SiaQtaxhkdpVhhojP+p/Gzog
 ExrnabmOfKN7de+MH+U4FJVGRtvuZ275Qe6r1IexcsWVCDD5ONlGjR0Hvo03iCGB+L+0nLJNNuE
 GBWGH+zwMc0o0LTP5OtZ6HQFV2BeMHGzhrjAVUWR/1RW4keMhMOuhZuzBc9CNYhVpFxmJwFYyGd
 /EldHMPAGdr/xv6zHSWXessEuWYPesoQfs0p/fJMWbCGXl6Hr+XSegCkgutsi4gLQyjdI1le39S
 lSu0W0tpjgy8ee7Q6EOYez9nqAYPwQ==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68efffd4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=0xTHEX-RkNz-9oJQ5AgA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On Wed, Oct 15, 2025 at 05:48:05PM +0100, Robin Murphy wrote:
> On 2025-10-15 5:41 pm, Konrad Dybcio wrote:
> > From: Konrad Dybcio <konrad.dybcio@linaro.org>
> > 
> > Some IOMMUs on some platforms (there doesn't seem to be a good denominator

It would be nice to provide some examples here.

> > for this) require the presence of a third clock, specifically for
> > accessing the IOMMU's Translation Buffer Unit (TBU). Allow it.
> 
> Hmmm, but isn't the only thing that accesses TBUs the consumer of the
> qcom,tbu binding, which already has its own clock?

qcom,tbu is only defined for normal arm,mmu-500 platforms. Here Konrad
is fixing the older and more obscure Qualcomm virtual MMU device.

> 
> Thanks,
> Robin.
> 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > ---
> > Resending from a 2023 megaseries, no changes
> > 
> > v1: https://lore.kernel.org/lkml/20230627-topic-more_bindings-v1-7-6b4b6cd081e5@linaro.org/
> > ---
> >   Documentation/devicetree/bindings/iommu/qcom,iommu.yaml | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
-- 
With best wishes
Dmitry

