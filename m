Return-Path: <devicetree+bounces-165118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F100A83736
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 05:24:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EA283BEE29
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE44A1F09A3;
	Thu, 10 Apr 2025 03:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jK34rGyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC261F03EB
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744255486; cv=none; b=JT4JsJcF1GbnkVV5JMBZrg5lYQ0gFcJe06e/o9HQ+NEmxk6v9RnzeHT7wLZ7iybAMZ+Ft3+l2IcKSuuUzt/ClmC+8RpFWhl98PeFdF/h6bgu/2WTWALqhtoq9VCHTHUsb4Gf79RyOEcCU9YM4NyLNCjZfkAP9124A5vASwYmw2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744255486; c=relaxed/simple;
	bh=Gx9WFrUrUoZRLHEwwMdCx9g+x1arq+e2dFMezx9kXks=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B73OUuuc00VTfptHL0Sjqia/3EpEXVPXll1PmkzrEYheWR9pf+vrVVHAMNIHm+wrbJgOU7GA59JA7uWkgL+QBG8yFQznuftWJpbv9hw2AD44DAkIc9oEwYecYo3P4G8wHB6szKu/WZOv/EbEEqpP327IcZqdGiiisldfBx6WUbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jK34rGyg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HvW5Q032302
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:24:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gWsEAg4HSwu4GGjiQmNBc1wl
	iCEzGfllW8dB+2zMyBo=; b=jK34rGygpV1o07wXXl6YeF0vzGw4keYdNUvuz0l8
	W5NeniwiH8v6kreY8SDngQ4qrFdk3bb7jpdknXBLs5WeFJ5qYvFPVCaSLtl0gQfL
	lRu6HAuGHp+1h2B+HvISGD36MpywEsT/c5VaZS3hA1olsGQQfnxHeA+0C03xmUc1
	sGl4HOEbloZSWXVf9h6JpO4p2MFV5q3y2bAsQ3iE9mPoomsVokgQc/7h+r/vXeqo
	LFTFQROtoAr5TU+s9TM16hWBRPmW7aCH9PZEdGBksrItLcoCF6C5tOjW6sXB/3Oz
	blagRcwYHbCnMB818sY4NZNMiBJKDlCAuKWHSaV4JEKumA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbedhjq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 03:24:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e2872e57so71603385a.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 20:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744255482; x=1744860282;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWsEAg4HSwu4GGjiQmNBc1wliCEzGfllW8dB+2zMyBo=;
        b=G3jnEkLxtUgqkwuF61wESWNFZRusCq/IWdmPXHVYicq3b/C6zKnsdB2Sa4gow83z5u
         +GnPZSzpv1ry9azWMCECOF6cbbFAdx+x8PEdWUdM036vySXAtsOY6u3nmTPaS1wpdFDy
         59VZrAVwNl5nYpsL71GLZveAJaMrhJYTT04zIMOSa7IN/S9bqy1O0PVtGBR8AxVJzE4+
         gIB2RzOHdSAV8nzCRI7AM2gQwUTyxEuOPf7lUmTuIzJXUu7e9QW7fXECJPKBfIKFrLIV
         e14MQV3+SoTuPgYp7F02TLjeMFPJHDGNyD8sill6wdVKR2aAp7mywv/frmeibZaHjlkx
         RhRw==
X-Forwarded-Encrypted: i=1; AJvYcCUYiFhPzsHsBPYHGNkD3hoJM+k52oRPPEhPqcyQN8Vnwkzu15EnlK8inpNV1j2l0slO4rcwJ4owiA6K@vger.kernel.org
X-Gm-Message-State: AOJu0YwkW9/I1tjGxr5EY9s4yHA4wfgLHerfgAz7pegbCVIjUhTy4qBD
	E1esq8Cz2GaNQ34xo/eF1CIDVXztXeXu/luzOvfBqIIQzi+3AwenEm7k0T5D81C4jySZ9d6dac5
	TGVyWlXjHY6FlFBL+WUZPe5CUgzhXsiTtNAbOOYZiTjri64B2LXscApgnAtyF
X-Gm-Gg: ASbGnctJme444MUe7bh94ey6ozVnhtRfH/9CPSiVSCFa2dOYcXrjE7+WH5NCziAGXUH
	h7Sw26AthqMUR5AH89nQ6lZGmaPhZgJYFc1C9c3KrIUn0cgHRpaQJAbPDstT0hw9iKHteEZ9CfV
	jNr5jLhgZjmWd5yTdsLYA/+4fZAMXbrpt0BHgUihmEBMpFw+Y8Qv8NlMeXK2Cd06V8DGePO+bK8
	JM1FParKcj9+VO1FLxbubX30JKbWLvP8DHWXGLgNBHyHlQzR01KYERwzEe4SL0KRs4YaBGcuAVv
	z/dQ4zzL8Izij5bzuRqV+YEkZhP8Jw8GS0EMu7XLBITOKT29gD5phgcYUuCS9VsS3JcFV8//2Xc
	=
X-Received: by 2002:a05:620a:2596:b0:7c5:55be:7bff with SMTP id af79cd13be357-7c7a81b1440mr115715385a.43.1744255482319;
        Wed, 09 Apr 2025 20:24:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGlA5AopMzhf0UWMU4MO9jamnTQQKqm2/O52vXr0UH5bQxSqNZx1x6dmOamtRNS+T7GE2a5A==
X-Received: by 2002:a05:620a:2596:b0:7c5:55be:7bff with SMTP id af79cd13be357-7c7a81b1440mr115714385a.43.1744255482061;
        Wed, 09 Apr 2025 20:24:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d239708sm27155e87.85.2025.04.09.20.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 20:24:41 -0700 (PDT)
Date: Thu, 10 Apr 2025 06:24:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: Drop undocumented "clock-names" for
 parade,ps8830
Message-ID: <clljtvvelqdmmz65r4eq77atejxbh2r36xvaugdxdq3lz5y7ci@gxnqrrdc5xob>
References: <20250409204950.1521733-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409204950.1521733-1-robh@kernel.org>
X-Proofpoint-GUID: lEj3CCyfff1D---Ke2OxjXf4lxHNiB1-
X-Authority-Analysis: v=2.4 cv=T7OMT+KQ c=1 sm=1 tr=0 ts=67f739fb cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=y5MgIiWDlmAYqCSZY10A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: lEj3CCyfff1D---Ke2OxjXf4lxHNiB1-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=622 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100023

On Wed, Apr 09, 2025 at 03:49:49PM -0500, Rob Herring (Arm) wrote:
> Remove "clock-names" as it is not defined for the parade,ps8830 binding.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts             | 3 ---
>  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts    | 2 --
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi | 1 -
>  3 files changed, 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

