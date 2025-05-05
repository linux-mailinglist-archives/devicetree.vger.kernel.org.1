Return-Path: <devicetree+bounces-173612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A138AA905E
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 11:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05B601898400
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 09:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365DD1FECB0;
	Mon,  5 May 2025 09:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gEBvWWkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA9A1FECAB
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 09:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746438949; cv=none; b=Q6ZYk0wIafkTQL0vCShYbq7getRhAkFbFD/daPSUUTNcO4CEVBXvbXxtYOQ5DK1tHjek9+RngempLMtl/vYpd3V0PEwgPDY2RlJepndaaRwnrtKBE51fP/D12DuBc/wB4kMVUnLoJ/oDsu7NTA9qtjYO4RXl0e7DLTzgbI+IHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746438949; c=relaxed/simple;
	bh=4fXXGQzfUtKtkKuKQhES1f00tVzlysT3cxFwz6vRIHo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DFTcBJf3uGoq81T2FZyy9EKWNwGzyZA3Bv4R6UNiKfPyZve0KNUUYQo/aJxZeYExCsmvrdSAI5e0nCNR2JnJ/lvE/e022AmyVhfwpgfqKAKNBCHnjCe20qCE0KOnjY/topZ4s2G4wZChox6tZ3UCH60qeTHO/0Mmz3T8D+0ap5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gEBvWWkD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544LvKOP016159
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 09:55:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2/mHzBkdkIdu/XMlXL1MKLhp
	gnZzaTuY/YtYOHlKf3k=; b=gEBvWWkDAkH2mH/o/AVZkrUpWTD4uiNsgHtK99c8
	AvUfzmTcVjreuEAaeGXJ/02eEIQVkGXFDalkYM/5GLCSAn99rML7YNX/pC50nIsS
	ARbmezpJL6NLNvoI3xhEWcqOXRB44X8Q8sidxWpM8ISrkmYsS9k+rRN9UuHyU3jP
	A0G+3psf8E207D7s+ToOAFiLPZ63rTuWfnr6jTdTV37lmBzKyhOSU+mogdFjQU0r
	JWA8PEzy62ISv8yXGXeBuGteAJsCyKuFcoMvKC9GMlth9GJOmbaJ86zYnIXXRJdB
	ZlY3rRmqSodzYAYI6sr0mGzsxaT7lWLHiiD3/YwD8mPf2g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dafg3qty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 09:55:46 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f2c7056506so76249556d6.1
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 02:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746438945; x=1747043745;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/mHzBkdkIdu/XMlXL1MKLhpgnZzaTuY/YtYOHlKf3k=;
        b=GBBXCs54iyDMpNqSwyhF3gW5bwPQ7d+rd8H3Uju0mTNzB8gjbYZrzkW+pvK9xlJuKJ
         c5ozVuoJ67cHfY5upVrq4fw+31fE5AWhjP9w+lFnlYY2YRQPE5qXmA7Q/wUGrepFMCp1
         4J5sN6xqjzz+K5umsrL3trOKSIHRmWk/pCBF2E7j03Avc8wbKLE4piv7qyMfWvTIgE6F
         kkLLiIrhNpQ+2+QBrU4R/+13yShedKmvOj3/1Dnvh/x8V5Ao+wjP4X1DKkXvqsBvW7qI
         IzA4YH8fwGoyCDeUQiw84tbrgw9Kyfc7qrzn9NGfsSnULKEO8H1+ocjKlOBXLhGSoGY9
         1ykA==
X-Forwarded-Encrypted: i=1; AJvYcCXtbxiu919AlDVBh3s8nAmO2hyKjKKfUpuo6vH3lYBngrNJCfbCxMHvYLS7Rpz9MoTYs/0ZLOmcRpBq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy2aunfDxTSlWzrHbwrFYmYwu5cQD2ixRkRnfn/mMX6F2iP+5n
	/X3zG8scK+zN7hvs/o6XRJ+H664CFeca/4+BvRMJy2sSu/qm4dU/Gmvq1OQF0VfZlpklxy7fWWE
	If/Pa/ZhqsYAOWcMMZRh0C3s3TbN7BbP4jNT+iTouE4XomKgqTk9QG5kjw6nb
X-Gm-Gg: ASbGncsbM8L3UAJDzYqVqPJWdOFec7/flSY6aWizoGG/fnzrXcsexEyl8ROQkImYk7s
	OQvKgYSMcXeHJlOPxDApW0AoKIvG/4bAe/X+PRCBCOlIsIDJ3pS8+Bg0du0JNZVA3YZcqGNKJdK
	kuAEj7vNK4XBO7a2qMeVuKE+2nmPS9jKskbK1ps0ONW6TlQ7zoUKOI4aTtqXuXmJSf8ukResxuX
	jihJqJnht2fSnTeppGsGgEGUh7nluvpqJLnBk36tyTXXoX3HaEhj286SNaHT/h/8UcKAU8bo9pG
	ONQ7UbAIQf3lIKFsF1pfFQaQxwvbocKkIt/+4DlXTTULG8cjmE9lWnbZkE5poYFLTov/qJIzCTk
	=
X-Received: by 2002:a05:6214:1c0e:b0:6f5:117c:76cf with SMTP id 6a1803df08f44-6f51580c00fmr168424596d6.40.1746438945414;
        Mon, 05 May 2025 02:55:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGknyWbznndebKntrV92c9APdUuAC3oqeLq7ISMW2xppAZupC/c68JL1jEz5Pc9uS8Y/NJ8Dg==
X-Received: by 2002:a05:6214:1c0e:b0:6f5:117c:76cf with SMTP id 6a1803df08f44-6f51580c00fmr168424416d6.40.1746438945126;
        Mon, 05 May 2025 02:55:45 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f6a9fsm1658248e87.234.2025.05.05.02.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 02:55:44 -0700 (PDT)
Date: Mon, 5 May 2025 12:55:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 0/3] SC8280XP SLPI
Message-ID: <xwuxekxqqt76xi5vitfwp4juwm7vowkdn7zjniymup6pmcwwef@rkr366xgetxz>
References: <20250503-topic-8280_slpi-v1-0-9400a35574f7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250503-topic-8280_slpi-v1-0-9400a35574f7@oss.qualcomm.com>
X-Proofpoint-GUID: 26v5wNlXf_H4-q6nStSL2pXrtWHf2ssS
X-Proofpoint-ORIG-GUID: 26v5wNlXf_H4-q6nStSL2pXrtWHf2ssS
X-Authority-Analysis: v=2.4 cv=atqyCTZV c=1 sm=1 tr=0 ts=68188b22 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=x_-MvMI86miFrt3VAdAA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDA5NCBTYWx0ZWRfXznC2oDH91Lzy
 qLDD8TJHdf3OAkPe6zR2dMIBcZbfSLzAWpWcHN0Ajac3WLEJFRFuyioMhOBGb2cDslZabTcb01c
 oerS0qLoBBWP4+EvxnQFJYW8a+tLeGH2LcfHB3VYn8kSG+4CmS7W+Z8vHcArSggCe+fy2NIp45h
 90OqWoJzCkiyItAnE6vGUGrBFDSfUr54jAsXhzZhSoTnemexKXEmiIIBX+f+DczXUGgRbrxJTwU
 dDAa6oiXBCvK3JBn6l7TPytxNAyOGnUXG7A4AatMg1ufzYpMzD1d5qZTY91imomH96am75ZOO/y
 dmnKoZk6kF64yzW9CWaZT5y1Mopm7KznuA2nFj5JTthptPcfEF+hO/yZlylOgihsBprmlU9o5+Q
 BFisuasjFlf5alXsb2H7ZhXlBNbw3af47no1hwRf/4wV6gLd6SkA+WvkG9xct4LaTTioWJhQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_04,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 mlxlogscore=585 mlxscore=0 impostorscore=0 adultscore=0
 clxscore=1015 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050094

On Sat, May 03, 2025 at 12:37:58AM +0200, Konrad Dybcio wrote:
> SC8280XP features a SLPI, much like its distant relative, SM8350.
> 
> This series adds the bindings and dt node for it (also cleaning up the
> DTSI in meantime)
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (3):
>       dt-bindings: remoteproc: qcom,sm8350-pas: Add SC8280XP
>       arm64: dts: qcom: sc8280xp: Fix node order
>       arm64: dts: qcom: sc8280xp: Add SLPI
> 

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # Lenovo X13s

-- 
With best wishes
Dmitry

