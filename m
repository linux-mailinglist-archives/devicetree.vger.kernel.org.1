Return-Path: <devicetree+bounces-171060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AA4A9D20B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:43:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C01A9E2929
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C153D21C184;
	Fri, 25 Apr 2025 19:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="igVIqDtl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150EC21ADC7
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610091; cv=none; b=aTMGfFuFHpub/VhVzwUJyHIqJ4XPOS1ikFyqq5ytYb5XVF0fCysT2YOatNUlG0zlLRodAOY3nbTLIqUmNDva8FwfonQRPRci7CEhL1x20yb9upv9v/9rx3/uQmaMR2Znrbz4/bqk+D3xoiZr+j+MaUKmb3Qcz8YcCdmg+IPwAWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610091; c=relaxed/simple;
	bh=GFu+i1orFNKNYqHrn4ARi1x5CfHjfv9YX4NAVMnrsN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jDcUGyohXv7uu1yJFMP2CMqxvtXVjX9PvQH2CTlITn/6DymdIXeA3dBpkPyqRiKD9PZWMN0Hd5AGDlRcszS0qJb/zX7+jU230Tkxbz9hGaTYEfC6lEU4+/2qGTBPuM6U/z8FHkFk7yqNa4H2p30Lk9uoGU7ul+4dRrMpbkY/2iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=igVIqDtl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJwsG032093
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GL3IxQbhqkxUKygiLbe+Fwsj
	kd3BgGNhLCaIxaMVpwQ=; b=igVIqDtlqvStpH+Ee+it7NLTTTa0+IeKzLD1wLbx
	MHwWda4yv4boL6lAWbdBSxyO414TigFiJ8XmHYSQv6ot55IcQr7t5biJ8ulue4ZR
	WwudKym85y7tLLx653GOgodNqZq6308tcQRnjjgCF04jG/+rSKSQ+oTXelNocw7u
	8Kmdmr7yHVvdCvAxvMrb0tKYzYTCUS4wXQ1azwTh/pg/5pTv0oCi3TweVEOE1XhD
	ugeZRUaa1QvOrChMc4iN6YK3hAfnGtRM39pDZMyS0fwzclCYmIBzcDGG4QKs8qFB
	O10b/WjPZ+VQuJ6AaRM6oevvsAsuToQ1WpMiAQXY9A6O0g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1a0cv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:41:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5c82c6d72so440034585a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:41:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610088; x=1746214888;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GL3IxQbhqkxUKygiLbe+Fwsjkd3BgGNhLCaIxaMVpwQ=;
        b=geTlLDplQERioAFUq3SGVV79gO3DcG+luk4mLQ+fMeNiUP5578fW/JuEUCWB1RBDEi
         e1x3I73nthioOvxqkJBADDwcxe0hXZwtIkhKhdSvwCh3nfsKrFM2URlKHzh830k+XvYH
         7VSqp63d3uKWb5anqOzCX8b3WlyziW6woQkiA8cPcDx3R+vM3n0UsvJayMMw/5IiVMbF
         bj7L7fOKaS5rVFcZOFiU9qxs8wi7VFhPKnoXu0pq9VzWgHxpkLEtDwA+DK2u8ev3aO1M
         C+R9CiERJOOOd0Y4BZO7mimDnSAdPgb+3SQzEXxT7s0MCpyBBdK+j9Xiywb9TsJqEE5I
         sReA==
X-Forwarded-Encrypted: i=1; AJvYcCU61HPR8z5U+KRgw3F9ilO+uenaBMSTqE/hb2Tp9/8ninVpZR5stSmg2TX1rQD8G5yBcUdn0/JJ1EFV@vger.kernel.org
X-Gm-Message-State: AOJu0YxmlKkD5rTN8MZzppIZnL0nOcqgQ7xGisq98MDDKbvNrNwNP2N4
	jSnZEow7s5r2F3a60Xje3kGlHHvsxHzfKQWlWygjx6e/n38h1ZxYjXMHIUHuia4VdhAVAfLg0Y5
	9GE6xxE1StDKvdEzq4Ss2Js5mfQgbGPeCH9mwBj8g3r5niakZuXlUUU3O+5/1
X-Gm-Gg: ASbGnctWHnyGJvVqPjroM3BF1Pv0NKORIdD9v5OfIEO6HIxVm2p6xgwbdVoiclB+YII
	AhovZ2kN6+8ThxlKRPG0hN2szcEDVnjL5i8SXWqBHMoNgeGFOVajy5tPVMdFiLEp8w4lbDOmlwS
	4j2wDfW8JrBUprjHMQhaiYJHoMgB1FvQudhsBtLfG+In+8R2yvdonyaUPH055lTbSWqkRHoEdWa
	P3Sb2KPoHITZhRhnI5+1AoUbWxl3yanp0KkhvdBLf5Qa+Hp7zoUqmP8cY3AvuKHR0MHHh+vbv/z
	axM9hSBpFWnHByUhn0u7Kr2oDDhjQAFGYLSZ/1Um8VBJpC8GNFZD0meSiJ+vRR6eCda1Af2meGc
	=
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id af79cd13be357-7c960793e41mr547096685a.42.1745610088092;
        Fri, 25 Apr 2025 12:41:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9sXFC5qtgaAH+0BpznCYCLWqca8xyr5lGiw9XprZM90nD/EbobhyTqGKDtHjNqLHN2anmIQ==
X-Received: by 2002:a05:620a:24ca:b0:7c5:dfe6:222a with SMTP id af79cd13be357-7c960793e41mr547092485a.42.1745610087717;
        Fri, 25 Apr 2025 12:41:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8a03sm704272e87.259.2025.04.25.12.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:41:27 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:41:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework
 reg override handler
Message-ID: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
References: <20250416120201.244133-1-mitltlatltl@gmail.com>
 <20250416120201.244133-3-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416120201.244133-3-mitltlatltl@gmail.com>
X-Proofpoint-GUID: CyLVQl1lCOKCAb4xuLsWEPqFZmuSg3ZV
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680be568 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=dnmzA44czj2E3hsaG-QA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: CyLVQl1lCOKCAb4xuLsWEPqFZmuSg3ZV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MSBTYWx0ZWRfXy8z4/fwT6BWO npnv0q3rmX1FTYwDEUo86ewTmpBLNnWdNgM3EP88mFJDDAijhvAz1JTeJjFHUCAYf57TZdY8zo1 2UrGe/QkKsqlZFBmTniRs1vQ4TUY9N9dmCGmx+vC151ABfJmOUdr/IDlatINZHMaw5XyhednoU5
 BiEb9wBixdrmoXZId90xL8pZf2++e3+IU2Qfz+RXUV66tPfIg/hlgK87hsjueR6pXSFWvCsrmTC zUzr/3nLCb3dx/d4BOn+tXsO9yadLeeNJjH3XbMGASCrBUqPbttFX9urBgsNbh0hOJITEQAQrZa ku6RdxeA761pFQAEY83B4fb5RtXVS0K/dSuwAoV40L9izaJ4p5mGAkp0yrvPjker5/VqWvH0moR
 /FgrZxH3u8x1vr7+5McNDJT5pEJxCqNrncqm17G7a3jG9yk+NjpKI3KT9Q02Asc/sCMa0Y2M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=808 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250141

On Wed, Apr 16, 2025 at 08:02:01PM +0800, Pengyu Luo wrote:
> In downstream tree, many registers need to be overridden, it varies
> from devices and platforms, with these registers getting more, adding
> a handler for this is helpful.

It should be noted that previously all values were applied during _init
phase, before checking the status etc. Now the overrides are programmed
from the set_mode. Should you still program sane defaults at the init
stage too?

BTW, is there a real need to override those for the platform you are
working on? Could you please provide some details, maybe in the cover
letter.

> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
>  .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 105 +++++++++++++++---
>  1 file changed, 92 insertions(+), 13 deletions(-)

-- 
With best wishes
Dmitry

