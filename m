Return-Path: <devicetree+bounces-206571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6F7B2CC3B
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 20:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE2915A40E4
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 18:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A6130F54F;
	Tue, 19 Aug 2025 18:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nkOEH+DI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B59130DD37
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755628771; cv=none; b=fQYTNN11i8gzg0GEPKY98EB2oHNcsfV4L5DEDZvSe74bYQQgFlqK0anr1TmDV/zO3ADhKjyCjNkfnsc6x5uBdH3qarnqUlClhUF2m9/8afeWlypMeII1YjqnbnBKc7neKGbUMKMBiOZtnTNAq8MzDYE8A5W/4UvY60cmAMkfGRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755628771; c=relaxed/simple;
	bh=DphpoI7NXovRpi/mf9M/ugrTSvVQEjkllTxUfrvVcAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tmVz+CC/Np7Nz4svKLNkKpzStZ1vkwzcYDCJPxJxN0xL8f08vvt+HoKkH/6Ot6MHCRHPNSUmNPKEQiXirnZhmkKZxQMXdtgo/zlU5Wvz2SkP4alH3KTXEJ53lOoNqhDaRNYrQixB30UiJ3vn+lvlqRzpInQxcfNvf4y/yMuqnd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nkOEH+DI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JGs6tm009279
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lfYBgc3axqIAGUVU7JZyFsZe
	IIPCOJtWH9T/sg37IAw=; b=nkOEH+DI+y1tFw78E+OAqO/2Y28QFKaD0Jaoxznd
	kKsEGK1YG53mSeZ6IiE3ARCozJh4JO8oqH9o/L7bFC02e/RqD4MuGtXeGTgwgM1C
	NQZ9ualhAJMbsAtUuxQ/q7Rhssd/FnN+zWklmFritO61Xyusd26YXzPRj88bzTxt
	hDTUFZ3rlj7I+vRULOZne4wH+7IrzwFB0iFi5dmhNFZPuJSdYX9GGaMqtakn96NB
	4gtvnYN/JxzpL0pHJy9hAGXd2FHhMAO4ohjtlI8JXd3mOCF5oDWn1PDwlV5N5txq
	OofrmDEZ4niezWQxxCryW3/bJfLiJFzPbVZjt+pwB8IoqQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk99skje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88d99c1cso124704926d6.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755628768; x=1756233568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lfYBgc3axqIAGUVU7JZyFsZeIIPCOJtWH9T/sg37IAw=;
        b=TC23tfVZQ1L5dgQ577fAs5aMZj44yEA/hB8PkXhwKogPvamlsZeewEk3X6JtsYgFXa
         mL06TO0XZOiKJSmG/ERqMI3Kll1cNtEi67L5cklEPsyUaS3O6xVPf9KS3EPcZ2aNrtNj
         koW3iXsvtVjmM3VB9MEeKB794BBM1MT6VUW0JGnSrzdDEAF0JBITXPmOBCspxsgO1Giy
         VvvYUBThYC5j2bAxme6pdIPFCPc8Yn7MNFimlVeg+Lqf0Q7/CEy7mfOQOQkb47EnY1II
         qogmnb3rd318HNihm5m4i7W89zy1fnUY6Uoq4BKOSQ3bY4Tb6nYijZbBN61P1IsGFedF
         PP2g==
X-Forwarded-Encrypted: i=1; AJvYcCVRvzQcJo+Z1nqgnGmmLYEWbWDKlvd6tTKElSv55Bhp2hTlFY0QPssat5DdOugpDDpNThSDVY7l3yR5@vger.kernel.org
X-Gm-Message-State: AOJu0YyGlnKxmg572U3eYHxF0McSImE6WKeX+eQ/XPt3s/WyxHbD40q7
	fNbDHnQi3SttZIpRDoOFr7nKFCNQkLk9/CSgQRZlD8a0u9zAOdDoh1tRPVQ8PIN7ZpXR5wjfOxT
	a+3Qx3ctEIT1HSm/fpf9xbCaJ47bJTVHJs66A6tLYMQ+bLCXFB463h1u3PR6/fc1O
X-Gm-Gg: ASbGnctRzTK0uEzEBMS103ZNMO8wa2jlrVBPE++ff9kBANfWwGKxFYJ6DXalE33Vztg
	mvHuOC3ndWREMEZpuGmUl9ub99JNO3xUSmiRrWAny53l+ffEobFQhz1Q6EhUDOVlk5ZN/r3CO3y
	0IugCT9TnhtqMW+Fetqj8jKJbMVsUWFbvDmQttubk6DITomjJFhA9MCeXCO0WFDA/Gag9ZoJ9Il
	w/vmIbpWuYL9RUIVl0pBag+n/UByNC+AP5krMKm7KTwwY5zUB1ezXzrh+kVLuyY1b0KSQlTWxRi
	szAGHSaBW6g2cyyIXEGYS+2PthO6q6rVe/bikFERhYkz9DnckzDsMGidxDHFmBjnHa+79hFL9QD
	TF3wOrwM2qcQqHY/BmjBLwZlEg+QtL2zH2DCtjtzlS8eW/Eq7CZLI
X-Received: by 2002:a05:6214:1cce:b0:70d:6de2:1b35 with SMTP id 6a1803df08f44-70d771c9465mr190356d6.65.1755628768214;
        Tue, 19 Aug 2025 11:39:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNb7O7hD+Z7kJbkAR9HXYyXCiP/vd3BX+PGDI99g9aEsnVyz9Xn+VwVrQ4K1qsah2RnqEAKw==
X-Received: by 2002:a05:6214:1cce:b0:70d:6de2:1b35 with SMTP id 6a1803df08f44-70d771c9465mr190086d6.65.1755628767607;
        Tue, 19 Aug 2025 11:39:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a4758bfsm25175301fa.32.2025.08.19.11.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:39:25 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:39:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: qcom: apq8064-mako: Minor whitespace
 cleanup
Message-ID: <tkbyz4pyvcahoudw3xwnmate5hcba4jqrak5nz5a23kmkhv4yv@y35jv4bzmnce>
References: <20250819131717.86713-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819131717.86713-3-krzysztof.kozlowski@linaro.org>
X-Proofpoint-ORIG-GUID: oD952SS7X65e4dqdVvrCpQEuQCpZU7yl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0NSBTYWx0ZWRfX39USZZZj+yWF
 2abA2223W/rJhYc7S3JOX+DceKBvS34095y6rGliyxy6jXS0aY7uJBsHqJK+L57bOWbdPwG7pf0
 6rz0LJ0w7PiSHvDz8dp1zRcZ5pIQS8a8A9z0YADpr9kt1xlBJQzGfh+8rFwkcixYNE7Kvky5uIW
 yJdvq0lblcGW8na/1xcZNbjsoctwUXyXG8JYRkSwSNSAGJ4wtb1oQeAir05DRdblo41xQwzbf/G
 bcYYllAGQS6O0aJpvk/bw7ttYrXBWlvut7EtRnYpgTuOLs6dgZMhzndTsQRnmqv+tpBw+ys5tMK
 7qWRbgJ4n2qwbZMTBvPN+T9ngZVaJYwURri+qTDoE7RkducPeFdOO3tGDQDmn99l8dBGXXjeBZz
 RZdwqDEQ
X-Authority-Analysis: v=2.4 cv=IIMCChvG c=1 sm=1 tr=0 ts=68a4c4e1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=EEIZnOjFFfZb4VbM-nYA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: oD952SS7X65e4dqdVvrCpQEuQCpZU7yl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160045

On Tue, Aug 19, 2025 at 03:17:18PM +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '=' or '{'
> characters.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064-lg-nexus4-mako.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

