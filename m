Return-Path: <devicetree+bounces-223258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4B4BB2786
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 06:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BEFF19C6D53
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 04:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 965932DC77F;
	Thu,  2 Oct 2025 04:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmS+2Auk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11B12DC353
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 04:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759377834; cv=none; b=EtX/+dOIseVwpMCeiIOTzUYaDqK9ntUz2vmXfCFqIE6jfkwWEK/FqLvxMCHaFljK5qv4DAyVmCvPo9F1fYKln0q+7LRQKoWH9txkbE6vLq1hDrUKsnqk2gOczW3OgaoxnhT0SRdLEU7AMI5aGEJc4mnSsiQrZR0qPEiHWm5mTIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759377834; c=relaxed/simple;
	bh=+kpouLBH3+i3L9bCw5lRcIZ8dux1NxH241oSpMjEftw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BoFidATPsWEL+mds//YZNzqIZBMrXFjNz+IYop2GyJI/vSIixZoBz15XvaamJJm48oW+XFjLAp57QAUrYqROO66djmfyRTAY+s4rqa0cT/x/FcMpGl7XyDjS/ZuLF/F6R7ULePX0osK8t2hg5YkqEZHRkq5M0bN87kaxf1Sz1ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmS+2Auk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcAvZ023589
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 04:03:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vDEXMrZyI5DjkHRHF3nr0kxs
	P51hoP/2gaSxVHUCc9Q=; b=nmS+2AukrkY+m+RurA3EtNGV2FGFou88PLYeG8bd
	AfyL6ZpDTBu/diSPVJvZE1BEXGNnGJLOvtpsZv8GZ8pTFDnpUINPxRmOwfFyJrXn
	3Ek6K7RqFgWZNLxs/DHyicv0O2B3IuTMkBxc06bHGKgLFwCnXv2d/8J4lkvSbFW3
	IrqpgfXHmYvAX0s6i1a9jnWHDR2EwTL8q3mEzsm02SM2l0NIapiXMOsW00tUusmm
	QfljbzctBgRPieRVRT1+p35OaphTZD95sfOvkyWzk6KuicYA6LYNi1/XiF9Qn+KT
	mA76i/QDwh2Pv588pcYn58+SyMTz38C+51aOBgGG8eVcHw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a66n2k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 04:03:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de36c623f6so14679251cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 21:03:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759377830; x=1759982630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vDEXMrZyI5DjkHRHF3nr0kxsP51hoP/2gaSxVHUCc9Q=;
        b=VB2aYEiAMGlmdAy43dSg627Khccm4Teb2JaXVnkSnJcrfRVwHLNvUucPy4JybiwqsT
         K3QkCbTbo9VeIxyxoTMHM2tOMB7W7ECbPbUrF/zh/C+PaOlZY3AlKlEmZvatsli0HsBU
         IvbLYoNQT1yBlWJJjPImTDXKewXX7YdP+RlODoX7/hzIdlWeQTNI7YZiOrCGB3tnD7D+
         cZTpqiqLwFeMQ10a7ciDnppjmi/EakkgsaE/9u38rzNQLpcZ6UrLMcn2vBR68whhAaBW
         W0W8KEcEx+BvLR84a4c+UWCjOJTA+QiDFEX5dtiSB1QLMGbOi0IFk/lO1PeZ2zoUspeh
         JdiA==
X-Forwarded-Encrypted: i=1; AJvYcCXEjWEFDDykwRFEFsJK9Ksxk7vWjZ967a7cZXNaTwxNBBTgtvKqLDEqE3F7vHiEv2XPeQtqvNLUFT0n@vger.kernel.org
X-Gm-Message-State: AOJu0YyIF7MLTMz70K2tXP41OZdDIk0eERoMeBaHIfFAm/iVeTAZsWvW
	LWIAlf0lkiPh3soco6ZX6XZPmWEwd4I8NPQ8HuNDxzl3K0wniI22LjQT7avddjyWY/f4MuewGqs
	k1XyMmy9sSOZoILis9usf8JIWmwbXvn7OrpzV7WwlmEDwMZ21Jidsi3RrPJJaIaqXQ5zYiHytCp
	8=
X-Gm-Gg: ASbGncvbmRi7yPKja2teuAzPT4Nk+EraW4T+8TiVaY+Eiebv1u0kJDzgtRLZn+Y3l77
	o6GgtDG/lbKw17H51t1nwVMe6j2vzpN3U05wABdOPUevE3saewAqhc6BtWTxx2tdHqC+5gD6V3h
	5AHnSojBsUlCjNOf1Oovb3nUWmTbULdv0nvsDRvPpBZKaBVGaFc6iDOVnoDoVnkn09jv2lJswx6
	/ya0LNCB5IU3MvB2aKahf3nzxLFUErumcedbmo+JGVHo9JLlzqy4WnXG1czlkGegfbaUJQay1gZ
	oAXtBSBjAsDsWwE3diYh7SEyy9VzLNP1nroyHReEqUg9ICxbzXf6moaCnKsJYJky5EOpINdCRcV
	KRiw/UXAjKBAxw0cnjhbtBUsZd6NMGxH/PXKSJnzaPOV1XAzRqQvbq+wHKQ==
X-Received: by 2002:ac8:5fd1:0:b0:4bd:3e4b:ba5e with SMTP id d75a77b69052e-4e41dc7e96cmr73704401cf.48.1759377829763;
        Wed, 01 Oct 2025 21:03:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdRnA3NDBk05T82OdZV3hs33TJ4DX6PASBWRlUSILv290R6xNtY8dpoH23pG+GAI9V2WH+nw==
X-Received: by 2002:ac8:5fd1:0:b0:4bd:3e4b:ba5e with SMTP id d75a77b69052e-4e41dc7e96cmr73704141cf.48.1759377829292;
        Wed, 01 Oct 2025 21:03:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d3dbsm441304e87.65.2025.10.01.21.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 21:03:48 -0700 (PDT)
Date: Thu, 2 Oct 2025 07:03:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Use correct
 compatible for audiocc
Message-ID: <r2spjuu6yaz25ujrr6q5xli6dwjh4fh7vhx52ldsprbibxgcji@rhbhwupqhciw>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-3-5a45923ef705@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-sc7280-dts-misc-v1-3-5a45923ef705@fairphone.com>
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68ddf9a7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=ZWl6vx9Q9smWLlo6MzwA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 2mXcRaSoTb6GPCn79K1Jn_8KLHWgETIK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX2SzHgK59F6G/
 iMpi+TT9xp49WiG3jcjakrsqFGFI/xcvPrelw8nQpBQ+l7QiCTIaIedWdR+76IdqWwFLr3is25z
 ZrvjHYU2wS61s4mKhqNKGouG5CuIHd0PKqL7yHcjTQaa2ylzQeYlPScGLxlKS6K9kc8SWtiPS/l
 rJejKTy5baZs6El9K0LOgMDNAm/N3o+yVhIlTc7sEb/z+xvjpYw4CN6402dBmChQPVwIum6jg1k
 IzZch5bJGnBcAmyLHKAizIO0Dlnj1VHJPhCko7PBpHdZtk/QH3HFZVV/fhhHC1HfPtSdbOSX97k
 vUiLif+wEjVd9XMSbqr0U+lAFVnmnVEDM2clUEGtojutvJgtjltBUZ1rFy7oZtHkNpYLKCHFEKc
 U+z4rWgjOC2BQJ2Zez4BQc6xgbOGeg==
X-Proofpoint-ORIG-GUID: 2mXcRaSoTb6GPCn79K1Jn_8KLHWgETIK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

On Tue, Sep 30, 2025 at 03:57:03PM +0200, Luca Weiss wrote:
> Use the correct compatible for this phone with standard Qualcomm
> firmware and remove references to power-domains from a 'reserved' node.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

