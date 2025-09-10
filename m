Return-Path: <devicetree+bounces-215144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F15EB5098B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 02:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C0AB1440C8E
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 00:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB100442C;
	Wed, 10 Sep 2025 00:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VKwuHsJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4752131D397
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 00:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757462956; cv=none; b=c6YvIgmMgdG+c6jk6+BZhpbVROJa/QFthOWG1KXC47EchW2vQiwfsoJKDKa1MRGJ109WG7LmRgfFs96P0KG8xUgoLU4BvWrZPRJQmDudZycxg469gSzwhKeREMVgz1jjkK1XpEheebK/P12amMt30kflur2IhvjCX3V+5z4enPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757462956; c=relaxed/simple;
	bh=yk5ImnQB+z/3kfgA+C3ZVSqiY7128gf6LJmCiI7OlfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ggsz4Z8Bd1mAJhkBHMs6rLhJQZEoTvmYXYahPngd4FJV148xe2RPInd7R5/Yyl+yBfh00SX/nQlamtUzKxZOm6edWRBY5kRnerA0cQxgzZ02i+nkZuQbTBJhSD+wZBSjxienvOQJXrhYPmcpWF8x+OgCWgtZ4tVEfYBp8ecHb78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VKwuHsJQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 589HePib020418
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 00:09:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8F10QCpUiLVzJPw+UL06BFtU
	zGaST0MXFm7x6XtuE+g=; b=VKwuHsJQhKm3S2BfssmOObPxWFqnlaU0/LA81vn7
	j1qNZIMaUcEf6AkmmSWEvlBzuzjjqNFGY9ZPS6IqLmIRBosjEidIhhihpUAo9L48
	DRTFTZDntUAUynxcbgVmHDlZD6yADV0HCVMOAWASbFvNbkkapmbNH4SgsKiaCOyt
	0zjwIDMLtcdY4ucU252ogdgl+JA0nAy1gMTaTi8hc1wyVdMRPKpn8nOdIjig9Iif
	2NHvRGsSVqJHVhqavKRK/Vc3yGhg0m8cz01cm4Rr0t4yRn9QXydj4yj3W3oBwpaN
	SHuAG7mJd9MKJaF0czQqLBDbdwVEP4cRXMKZjqz7e0DySw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a9x11-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 00:09:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3aac677e1so57090211cf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 17:09:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757462953; x=1758067753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8F10QCpUiLVzJPw+UL06BFtUzGaST0MXFm7x6XtuE+g=;
        b=KVxlh5AcQ/20JHq/+VH0U9922css6/ChGdQuVvaZ3FhNH/34SspwQXNdx5x0Ysc3qJ
         IShrmApQFvYZv4tUlbqLLtFqYA7orLvMffA7i2lnMs8BcedkEqlNZfhH4Gzwv8/vu0Ww
         OeTYkNhT2NNNzRUdfrXRzoMilST3W7JgBgjzuAcCid+ZdDZzzRTLCNVB3e8mTLugN7+S
         L3Tb6ISBHGUWEPf5ielUvN7owYZkaTMN6tEYOckd1FCz/LBP0W0oWZ1nZEP7NwZM6yXD
         +kFKq4aA04TtPWusUBuTpj9hvSYYrkMIhtbl6UR/AolnwjZil96/Or4lv2LIHJI9u6ot
         HRHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLJwUFtXCKmbKE/q+HAFJygm5H+0BGpjEKCNAXTA/raH+q9c0qBM2z7cPujk6cz85fpVLVEFoAS61W@vger.kernel.org
X-Gm-Message-State: AOJu0Yyqy0GjtHF8EM54U5jdAGfZsv9d8UckQl0WzEXmDSpPdVy+Px1Y
	SO3o02Bas69iYuJSJwfO95WrSxP85XNOj4DDR6Wb+JVdUAAABOCQI3kcCNbj09bNFHJZUi/f51E
	FLo8LiapmAaFKAVQmwmnh2kUJzxxa+/s/cptBPkXCDONnB6b0ru/nDzfEF2muYhU1
X-Gm-Gg: ASbGnctO7cD9OreXhtYtuDEbbuHqCcakRf0vkxUbvN4bBdb4T9cSW1Zsr0YpR1ngiZ5
	J2O9SEk+tQ48GgDVoJovOMPYALov5uWAt21OTL+c2kM4WYQo1eFP/Ic+MWFgQv2ERVZyQkszXfm
	nS7mzgU/ELpNOwNFVDxJIct1ZIOJCg0j0KxxXkzHqMpPsRuv8eVFcco2xzOKGN5KEhw6mvraCSg
	2dLc6sY1xtDEyE/kspBjkiRiMVXRwClFRcaTPi20BfgqVJVqsoAOCo+zu/i8JXMasroITacG6au
	03AEiprCsFaZcHTucD2KMJbkTIBm6ua3aq9sAKjEdLzgfEZawf/Wbyi3jGtyFvW/fa79kTnqh0v
	etGACYEXOxGlQYGbP2Qm1Q4fldNP1wmPasv8Gf6VU4ZZkViOVq5oD
X-Received: by 2002:a05:622a:cd:b0:4b6:23ce:cf20 with SMTP id d75a77b69052e-4b623ced62dmr19655361cf.17.1757462953187;
        Tue, 09 Sep 2025 17:09:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJos9tcQgpDw4j08EtBm9ODFbRFcMGqjf57yOG/Oy0HUY+141A/XYaXvZR3DqcnI6SyZbBlw==
X-Received: by 2002:a05:622a:cd:b0:4b6:23ce:cf20 with SMTP id d75a77b69052e-4b623ced62dmr19655071cf.17.1757462952706;
        Tue, 09 Sep 2025 17:09:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3380653144asm36061271fa.27.2025.09.09.17.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 17:09:11 -0700 (PDT)
Date: Wed, 10 Sep 2025 03:09:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8450: enable camera clock controller
 by default
Message-ID: <mrc4k6gcf2sudvm6cghnnpgz57hw5jv6a2xt4bacu6b22sibcv@2i4i52vi7jci>
References: <20250909235547.787396-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909235547.787396-1-vladimir.zapolskiy@linaro.org>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c0c1aa cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=oxRLwV8hnwBTO02F5ccA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: W8jhAC90mxt-juNOmM5thAAIYSQvPP-8
X-Proofpoint-ORIG-GUID: W8jhAC90mxt-juNOmM5thAAIYSQvPP-8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX9iC+ZK9ei+Ot
 +akhsFDEc4gNBPZ+ZB8pk9ulc1lFMudOOYgIpYl9c9hlbjD431D2V2KreFjCRYAJe9TdOpfApIP
 r9ZHZNJkA4GrExfcKMs80DI7W6pny9Y4kAKPRKD6A07+3Kds63T1CB4ERF3+fjvjJvBOVwuvDUF
 nu//7OI7VgY2jakxxg56M5G6S/S1IGICnwIbprc/Wkf8O0wT4g0/1qo0vi8pWtZ6YgvSixCd18z
 PdoPiQmt239dN5JJrXEAneWFeBgHaO7I8P7lC5mx2ea//sbLWZikdOawEi8Sc8NUQ+pjQDejuYC
 nMWB9WFXVaCTUNQwaJ22PNLVh7X4dpJqw1ImmwzSKDrN6o2yh70k+lN86P6BClVWUbdzWYCXvDZ
 YJIwqjJf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_03,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

On Wed, Sep 10, 2025 at 02:55:47AM +0300, Vladimir Zapolskiy wrote:
> Enable camera clock controller on Qualcomm SM8450 boards by default
> due to a reasonable agreement of having all clock controllers enabled.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
> The change is based on Bjorn's qcom/arm64-for-6.18 branch.
> 
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

