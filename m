Return-Path: <devicetree+bounces-223716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAA1BBCD05
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 00:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66A991892992
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 22:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3BB130A73;
	Sun,  5 Oct 2025 22:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QE980k69"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C36E4A00
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 22:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759702550; cv=none; b=j/LJa4CiXgCHVQeAQqIhFSazZLZHqNJSip4cdV5rJ+ev4469Tb3Wy25v1UynpUmKbMe4ylIY8sitzyhVGGgfgL77+CFxS72U4ThzKqkiGXbpHzrIal4uxeK5n0UYeM9u7AXOboobqHrmxTBPm8Dh2VarEXUWkXQFlqz3FsOWlUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759702550; c=relaxed/simple;
	bh=xEWS61a2W99U0FR8E3x3kodksyeF0rh0cZZdFbXsHY8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=plrUzafJUB1/6nFx4Js1sJD2Y2u5DIUrz/l7HoWwb8bMtDQy/kFgEYamO02JW170pZkgT2eQbSWpb/H71OMFoMqEbBTOWu7+T6eiklcxX3PLDG7reZ4JkWOKaqQqy0IXoIANv5niNy9gXSoaUgkaO2lG5kF+mHhDtW3PCQjw2wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QE980k69; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Lu6ps009583
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 22:15:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VJUbsyaaIROflytwFFiVYJmL
	inzHbu2KHVVpREbT6A0=; b=QE980k69CKbI9niutUlMnXSl0A+Rir0+uv82IJpf
	5mebkPijbqTt7R965NZHpSGy622iUh5L8jik2KRntY5PDRg1jl+0rHK8GAlzmo5M
	2+SwWB3U2utDOlvt3jRjtYFE/aAtZB0rw+M98vvwZyHevyi7lHeDZrclBlN3Kg+r
	l/tKFkMW8tEOk+lO1bKQTw0F2bqru7xVifLVMg/068lO1QA08nIHG+mnGThyaJEe
	TepOvDYbZeqlPopM3CjQZYpUlqzy+zvrip8l+EeYYxkfmw5pZYxY90XQdHm8w77V
	ePooF8pLRXg3DrsLFUNmlkrQKfCBF0/0YLGIjuk+OaexGw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgjmg8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 22:15:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e574e01ed8so95443051cf.0
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 15:15:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759702546; x=1760307346;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VJUbsyaaIROflytwFFiVYJmLinzHbu2KHVVpREbT6A0=;
        b=oy3DrPKp2d8Or5pOu0ivOeRqyRYFtS3WvgAngreVNFp7N8FSSkekpojsWg7kZG00dL
         iCFdbOSmUXEekXvKatJjIae6RpzoBaA0fSacHR2dX8v2T+5yj+oppBc/1zCloHQhnCvz
         1P4ctmD6DtSeNxX1F7MxGytuC/98KKn/KiSR/VN0htyZFARoxS9PgHQByp+as9GAHapY
         mjtboPHmH7yRNqGzMH9NAEdUlL9x/HFoiSDkiTD+5r4uKnMM/wbmJwqlHPMgpTta1XCM
         4ErKWnIqpaYu8K6FV5QPX8I/1mFhg+xQUEFSaQzUXjGp+D4chv+U1a6SjM1Z147XOA/o
         ScOA==
X-Forwarded-Encrypted: i=1; AJvYcCVOz3/sdcIdvAD7UCfKnZ0jbqiyAeJEzmU5kwHhiJq90Dv72xEMmRfC2Q1DNOGGuA5119yWLqukNlAI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+OqtS/zwH/OhuPC0JvUnGFsMTVrulti11tvDtoCMBVDWTo7Jx
	LoaAdR5GeXelcSgFcpm+YY+McvpWNeLNpoaozCh/WD4Oqj9fdDv2mwKAbUZPhrGiQj8FFqEV66f
	EkRg9DCw0O2iKvgOC251JJxz8JzycZ8OQSS/U78XS2+zbHNDlDbP18FsmAMxQ7i7U
X-Gm-Gg: ASbGncsFxOISGGsPwsqKDgrg10dIcVXnBTha7gmVOeMH+ga2z+3Rs6GLr76PIyvXotU
	yJ+9WUIsqdtg9o+fU8lDB4naR5IYegL4CMcvgO2Km9KcIDYCWfesqazd3FCPxzuXOjbaoxggQp+
	JPhLN+n/FsKLaOG7dH0XuZ/gFC2dtw0WVT6X+FqEKBy9HHaQcYZG9YdFgPEMNjcSD29+avul/1q
	qGKC9dDyhLQkD6nA8BJqU5XOK7kKsKgcPK552gRq6G6nvfJ2YOjjSTbCwYioYyHrFecvmOlvU5K
	YqwSu8VZW/0CjbVOgVhcfLp/Hm9qHql+UuH3UBDV3657vNN976miunEd5Ts9yfG6ytw/OvzIBPL
	ZpfSQGPziCCOcrsNnxKeoHEMLwE1slyTlsS2A004lnLeghpC2hhOkA+JmOw==
X-Received: by 2002:a05:622a:54d:b0:4cf:a3fa:47a0 with SMTP id d75a77b69052e-4e576a2b02amr122037211cf.15.1759702546253;
        Sun, 05 Oct 2025 15:15:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/hjIRCKpgA5/wC3I2UjF4e5C3tbZcHLIczKTDjDnqATpz07KN9JMZb0PamftkW+1bmXunkw==
X-Received: by 2002:a05:622a:54d:b0:4cf:a3fa:47a0 with SMTP id d75a77b69052e-4e576a2b02amr122036891cf.15.1759702545763;
        Sun, 05 Oct 2025 15:15:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba2739ccsm38465521fa.10.2025.10.05.15.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 15:15:44 -0700 (PDT)
Date: Mon, 6 Oct 2025 01:15:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 0/2] Add support for Pixel 3 and Pixel 3 XL
Message-ID: <gqjkvczi6fpmjpqvdv4hrndr5ie4le3dvlxjjd7q2okcfau4s2@iz43eczdagc6>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX8yaJhVy57yOL
 X8PyrgJDboHoO4HWLe7Rx9Z58dayfXxHRImlMzLLkzZwc0nonfFTAtdXgsv4HrMPl+QlNhgZB8y
 UxfRuFLO/TtOKZ9acMwVyNRbqRmdFSI5kb9R3dS8KWioJRfflp4FHCtM2EK8pm6kYWixGLPuEhg
 8O4eQZHaB4tJajUtcDRLs/GE53GbbkBqCftt8hT+JkXCGlwU71N7JTXI4jin3LqQai7rCQAoAlN
 2ZSuEektg1IcO4TpSgoKpkpOawdo4j5HEOCm1+j690gdZG6yjww0KYIuyenyRJD3pZVi9Fy3CRG
 VhkpUbn+oI4wKsZFj2RBwdYlArKTXjsvAdYiNih6tUZQBghU4RddRcoq8Uj1dZVnpib5CAey8/q
 yr7ZG+KQd9QyzdxzGAndlQjdN7enOg==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e2ee13 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=FwhAVFQIucHvz-KIkSoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: nH0fFMtyqcMa7VpehHhNrisoQW3kCc9y
X-Proofpoint-ORIG-GUID: nH0fFMtyqcMa7VpehHhNrisoQW3kCc9y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On Sun, Oct 05, 2025 at 03:16:27PM +0200, David Heidelberg via B4 Relay wrote:
> This adds initial device tree support for the following phones:
> 
>  - Google Pixel 3 (blueline)
>  - Google Pixel 3 XL (crosshatch)
> 
> Both phone boards use the same identifiers and differ only slightly
> in their connected peripherals.
> 
> Supported functionality includes:
>  - Debug UART
>  - UFS
>  - Charger
>  - USB-C (peripheral mode)
>  - Display (Pixel 3 only)
> 
> This is mainly focused to get the base functionality of the board and
> being able to use the upstream DTS within Linux and u-boot.
> 
> Booting
> -------
> For older Pixel 3 bootloaders, bootloader-compatible board and MSM IDs are
> required for the kernel to boot, so these have been added.
> 
> For recent Pixel 3 bootloaders,
> a) you want chainloaded proper bootloader (f.e. u-boot),
> b) you can also boot kernel when adding back TEXT_OFFSET
>    (partial revert of 120dc60d).

Maybe I should send a patch fixing the TEXT_OFFSET. Let's see what kind
of reaction will it get.

> 
> This series is a beggining of cleaning up and transitioning support from
> sdm845 close to mainline tree to the mainline.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
> David Heidelberg (2):
>       Documentation: dt-bindings: arm: qcom: Add Pixel 3 and 3 XL
>       arm64: dts: qcom: Add support for Pixel 3 and Pixel 3 XL
> 
>  Documentation/devicetree/bindings/arm/qcom.yaml    |   5 +-
>  arch/arm64/boot/dts/qcom/Makefile                  |   2 +
>  .../arm64/boot/dts/qcom/sdm845-google-blueline.dts | 128 ++++++
>  arch/arm64/boot/dts/qcom/sdm845-google-common.dtsi | 467 +++++++++++++++++++++
>  .../boot/dts/qcom/sdm845-google-crosshatch.dts     | 137 ++++++
>  5 files changed, 736 insertions(+), 3 deletions(-)
> ---
> base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
> change-id: 20250419-pixel-3-511edc2a4607
> 
> Best regards,
> -- 
> David Heidelberg <david@ixit.cz>
> 
> 

-- 
With best wishes
Dmitry

