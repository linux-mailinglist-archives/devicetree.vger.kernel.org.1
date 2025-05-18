Return-Path: <devicetree+bounces-178197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B369ABAFA0
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 12:58:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D83E7179E9B
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 10:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54B92185A6;
	Sun, 18 May 2025 10:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S/Ci+QC1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79466218589
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747565889; cv=none; b=jKYde4JcCbXeU3Mac7waRqp1euwbIRahSLtwEQRRtHw78PCWoswlAsSNk6MMz4S/8hLr9v0YIFvTgY5LCSnXVwEw6SQ7HlEkLMM6Y0m7tjx50LT5V0UilqlBKpJ6Y8XwLHmt7VXl3JgUchcvgTB52HUz1L3hOvJMyMQnvkpnZnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747565889; c=relaxed/simple;
	bh=wbhMWuxG5fh3NDb+f07MwU3tcgUMddB1rGVGfxSrYiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LXQLy9qLVomRtG6AF9Te/O2N8jleFNsvCD7Ec6gu5l2XFhz5SxiaWbsg641tPiMboXnnNrhVcHyICgKxYZKS09CreEfhD2d9iW+iNWZutAS18cywlr+qXagBqWlzw3K0DwoNPVByXLosrwmpdqZEfUyEShtsOTBDVLJiILeXO0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S/Ci+QC1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54I8rvfJ007415
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iLdOutGzmsrt/UF3NVdrXkuj
	TR2biMWYZW1VWeAAWwE=; b=S/Ci+QC1+0iBsLFf7DzO2GXQETx5bSH6UgZDXNEy
	KVA8IstrarqucPPxBX6C1NdamZBL/r/ryuz7B7PlYtMmBcC60p0I0SwT6pp3jCyW
	+/HQi3YaPXPizOpra2fJWbXaX4MtjOVIPXB4Lj3Tz9xvaBYpM3O7Ad8KprxSokkL
	BqrQr1sOjfdx/JC9leYr1sIKLxcIxo5vKYAprR/V4jG1ikugff6WeaL+ZVhOBlA1
	RsA+lbFMFaPFJmShRI4uWMJVAc6Q01HY4GIN75fAsdU7+QXW8Q1A4ctDEo1JZUjr
	6t62U0cwHiFqBR7ymM/rVnvKjfRZo1+0ET7N1FRK6NMC3Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjp31vm8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 10:58:07 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeb5e86c5fso37051576d6.1
        for <devicetree@vger.kernel.org>; Sun, 18 May 2025 03:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747565886; x=1748170686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iLdOutGzmsrt/UF3NVdrXkujTR2biMWYZW1VWeAAWwE=;
        b=LaRJOqNxWJPBTIpRsgXp5Yh5yW/aUQg400/D/Nbn/owPipRp8jRHcZX4aEjdFQRZW6
         XCRSyD8/780/6onxof6HQtoUX9hhIvn6JzZOqq7rlBLOqykVR/5xegf/ezDzUoetoQLC
         yGfeAOFd70JGOGyIkIXAJvoxZaGbA9NnZl87YoOmEFxSjkep4DNN2BbJAbfaAD22lnGV
         9p73cY66bFBsTcOa4dZqBQjjiNqoTFdVFe1+J3oawZKPa9IEzlVZMZ3j0a7q060Ruu2s
         pCycjxUtvWoMJKZx68H/y8H0kiwhWvKP7F51Hg6gKqJmIn/YYeCtMrPYqAiUc3Uq1Nk2
         rg3w==
X-Forwarded-Encrypted: i=1; AJvYcCVPnbjBkQWKJ0k42k7utzb/YBg6G9vCHCfDq1xsrV/vCuBlNcJj24Z5Nqu85NZv+RvQtbHvmbV9EdPg@vger.kernel.org
X-Gm-Message-State: AOJu0YxXl0+9TCUa4RgOTRP2DAIEZI1g1GwuzVheL4cKQX7tGho3S9E6
	vNWiwzHzws+oS/3O5Mm1aReeikrfnwixTIU2sPQp+vAok8XfrJWT87Clz9ZyX5uZY9ccI6bcOpF
	oKonozSFbTGcbyoOozw+JT6HGTXoT1MpLfIBKUQQJZcSts6zAEeYvp0VEhWCjXXFQeuqtPm4q
X-Gm-Gg: ASbGnctyRG+LYL83Qmn2OhnFB+LTXZB18AllakyAWrTpy3HFhWTGo6ILTUrrhGcBPaz
	3QADpqrcxmfRHM1zrGYEpqmwkjc0z+1Jrc1XV+0NHKqzujCilTpxEBSpL60oaFpljqU5JJ0rcKe
	jaJji6FruAT73XjLbOqU/8+Zh3lf+b22YdjgRf/6gcbK+vA6rXS2EPzEUotM2Deu9LnaNtzjX9p
	7vMna15K0pw7gTz+xeOsSMVD10+n9iEY2ZYRIln4qA8SOdZdMxouGggrIvFVr0e2U/zZfvzhRfY
	OUtuPWLzi0h+W+3H/yO4LWVv8unStbilvPvPdY+tx1e5D607TpbPum5LgkUADDmuP5S54Wto1mM
	=
X-Received: by 2002:a05:6214:e6f:b0:6f2:b0a7:397e with SMTP id 6a1803df08f44-6f8b096648fmr123290866d6.43.1747565885952;
        Sun, 18 May 2025 03:58:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSwDJ6+OnE6K6EThjS3fvyH6EvLrfeYN3boNr9X1QbYgVvhY5K0EHdCIh4iay1IE035asl0g==
X-Received: by 2002:a05:6214:e6f:b0:6f2:b0a7:397e with SMTP id 6a1803df08f44-6f8b096648fmr123290606d6.43.1747565885510;
        Sun, 18 May 2025 03:58:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084c8d24sm13764321fa.26.2025.05.18.03.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 May 2025 03:58:04 -0700 (PDT)
Date: Sun, 18 May 2025 13:58:03 +0300
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
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sc8280xp: Fix node order
Message-ID: <bj57ytifzaj42n2jvjedaaptweospj73wd2ezyzn5zp7jkbrz4@rdidejwcrwrc>
References: <20250517-topic-8280_slpi-v2-0-1f96f86ac3ae@oss.qualcomm.com>
 <20250517-topic-8280_slpi-v2-2-1f96f86ac3ae@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250517-topic-8280_slpi-v2-2-1f96f86ac3ae@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=B8u50PtM c=1 sm=1 tr=0 ts=6829bd3f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=Zg2izb72UxZypc-W5EYA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: DIN3rxpvhYxVHvOEs-rZHyjTFpC8ewV8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE4MDEwNCBTYWx0ZWRfX3wx6VeH0AnWP
 Q9oc901uQCZHhDfwhwZ7wXxICQlpueW3NFJZVBaEolCmIqo/7zDm78T3uyiQJ2NtFJ1zLIhho+S
 7YGLpZhBV9pvuGHoRiImJb/yEdpS0S2LP39zMKyCOhtAbbVm98FXfm8tREhVlLPNI8jiL0NJXGg
 lSshT2m4lGmkHUlMfVIRjOfP174rSQUfIzCvMPKLwJweMIxnw5TO2UWA1gembvEHSA2sg2AqQjW
 F15O0egvN70awqVLiytzVHRL8H/NdgaJLuRcIul3Qs9QRPKzeSGojTu/9F10dpsrt/pX3zXDdJE
 P0BuwBOPGgOvdQb6N0/3SYeZNoJPU0UPc0pQ/7ePz9jIIU94zCFYH3SkCEHbcLCOpihTb+ho7LC
 jO76FvRNlt2tKwRzreyA3F7Qy86Vxbi7EaKeNxa+EEkp3fvIfHx+LT5wE7doNcXWOkbo3wuN
X-Proofpoint-GUID: DIN3rxpvhYxVHvOEs-rZHyjTFpC8ewV8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-18_05,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 mlxlogscore=770 lowpriorityscore=0
 mlxscore=0 suspectscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505180104

On Sat, May 17, 2025 at 07:27:51PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Certain /soc@0 subnodes are very out of order. Reshuffle them.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 574 ++++++++++++++++-----------------
>  1 file changed, 287 insertions(+), 287 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

