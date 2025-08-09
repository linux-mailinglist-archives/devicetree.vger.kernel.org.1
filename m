Return-Path: <devicetree+bounces-202894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13697B1F2E3
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF6241C221CF
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 07:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CE7B26CE02;
	Sat,  9 Aug 2025 07:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fq17dNGB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB94520126A
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 07:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754724999; cv=none; b=ezTjIXTaP3pr8h62TItyYSZwfp4zVMgsvAaET2v+EvctAmk8rSbfbNmcuh2KbBVREf4YNHxfjVYwE78Gw3GfGKu0T0vWIYrU8V4NMA47SqITNb0zwxbHKsT4KbHA38q8s0zhhhFavtdSvBgLUlYtMllqoSR7Inf37VsEg3wC5Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754724999; c=relaxed/simple;
	bh=KV+nbotmPaioDUnvPXisviPPbgOFzIExIt4xbAI+QB8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCdDSM9C3oFJxtmbQyACc7U2J+dr+ZAhqFQfA1roytT+C846L1xY5ADHR5cJF8Q61cxrBK3lcggkJKesMwIpnuUWAO0TY8RG8cars/oy5DQiw0t/NzSUAh+dAWVTs2a+rP0jie1yCguVJUDNwYvFLdsMfTq1FMN/M7wH4SQJNqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fq17dNGB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5794UK9v028980
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 07:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aFTb545D0EnqrmPmVub6t9kx
	Cv83ILSV+GDMnaszhak=; b=Fq17dNGBacqviGWaJFSjXGQRQfwJ/Q/jYxDp3HLs
	nyTcCfLkOck38U9EreOOEv/8r0yXm2yQ+b2H2VS3nnm2h0p/JFJxbkqdnGXirhc5
	eoG3zV4VBm5Bo6c7HbcJkx/PUZSveIRy8rvwqwO0OfwFzCwe0wcayohuBQwzlfwC
	FU+D8P9RjW2qJcvHQQCxtLyjihevvDUV5RaSmor5u09jyxLcEFB9AzxmFS2xSwZ2
	R+gA/u3xKW0EbcIMReykp+O7DfaCNALn/OF6sOcuHjTqxD5UFgmd1tpaV61/PwfT
	J2VLv5JUukQ/7A//Ig6QJ4K/szHuwf5V3WsPsr0WciMD6g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g07g1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 07:36:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4af117ffc70so72001961cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 00:36:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754724996; x=1755329796;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFTb545D0EnqrmPmVub6t9kxCv83ILSV+GDMnaszhak=;
        b=Ueo0uFmqkQIg0g3B1IiPKdPlyJSSv+A7lPmLmURr7JGbVVn5HBWp2wZPwuuN8WCDS3
         gxJLbrQI8tiSfpk6YzI9PqJmCet8mpYYX2nUuyYjxuC1cjtrR/VhgIdaDnvvmGB+H5nG
         cc3bsaq/7YKv3X588zDbx2fXqZO5ycQd6N8MnofBl/fhCD1pb0w2kvswH3E00IfzOCtm
         SWVr3sD5y2ujkkIXo7Hg32o5MAWzY771/OTetPBgDieJqqKzs7AKd/708BSuZE0YwIDO
         1Y8ERuxy+3XzqYJj61Y1x2Lh2oAekpOJWjCa+bZz1W7tcfjXZz5eHlY9SP3E7F+5CmIc
         8JZA==
X-Forwarded-Encrypted: i=1; AJvYcCVhUzlvv8eChq8BdE1pDl1sVv3WNXVSiwclQSQVXn8BWrtwqsYZ0HjN8WEXiYYnLpCTKiumoC5FfqII@vger.kernel.org
X-Gm-Message-State: AOJu0YyLM90q/gaenbYq1a5oz6gz1fxnSTR8SkhwtZEcG+wUzusJCu/m
	Myl8CvQRjd5HPiAzq5FGnqnnwh0QSrAWgwaCDkE8gNPwBRCMXXbiG4a9DUgJ1H8LBgjbtz+2c/G
	F7ilkI5t5RWLXkN/4NI+5YxC7CNxrwYNTPShug0CrGEczpWIrvMEVvGOlTW8AqeXi
X-Gm-Gg: ASbGncvxGibyVNtyHQHlzPe6rn1XP2QKQzUJONfN3cGBALFntsWirjjoRc+400fTNoB
	ehAUJfYw7iSUctSj5yyBb06a4VwujBnHErw4ROZtQ6BvevGErMK6vgxiOPdxaU5JaLOGtn2JNvE
	BsKWcYAe8KzQRu3DkMvuAYWU4QMWQIcnG65muVFMFDS0Yp/eBcqgjIk33y88VZT/ymcl6/EQIBr
	OkSFDXOiuHnqiDpXoT/O6g32YbODg1uX9suGeO+LNc22txiCmy5xP37SiwHfXkzy800kMM65WLh
	cjKwtBehPguZwatS/XrGyl6x8KG7qjI0ym327+Y1rQiU+FBxr7KAgmGWJPxNeYBVC3JjhoWWEjd
	iqWYJgqlQUtbe/CVbMDUKB7idQqA64/fdQm1bfCXsLaGc4kcE/DaM
X-Received: by 2002:a05:622a:5590:b0:48d:8053:d8ee with SMTP id d75a77b69052e-4b0aedd7cd9mr80306401cf.36.1754724995863;
        Sat, 09 Aug 2025 00:36:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXEneZ+bObkvykBsZKTcd6gDIK9QejwdLRYsOVtihnF52Hii0pS/IlNMrVnQLjwaC1m/b2yA==
X-Received: by 2002:a05:622a:5590:b0:48d:8053:d8ee with SMTP id d75a77b69052e-4b0aedd7cd9mr80306271cf.36.1754724995440;
        Sat, 09 Aug 2025 00:36:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b889a03acsm3288206e87.51.2025.08.09.00.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 00:36:34 -0700 (PDT)
Date: Sat, 9 Aug 2025 10:36:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sa8775p: Add clocks for QoS
 configuration
Message-ID: <m7pqgeqzpqdal5yyukszzbkniyijiji3khzanwjfqxah3prgij@ucgndrn5smwq>
References: <20250808140300.14784-1-odelu.kukatla@oss.qualcomm.com>
 <20250808140300.14784-4-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250808140300.14784-4-odelu.kukatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=6896fa85 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=M9tGKf1UEhd6l-wMVe4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX8G+kIy99palo
 EbSIqVhGUhMbHUea/JYf0d2I4QTgch7rH/ApL+vizxAvuvuI+tYn7glQo23/UKcQlIa8m4wZng3
 thF82/4/sB0fSUvCHwGFQgAZjL+MWH+fIHvMW8MQsjhvIWOxZj5XAP+b0nsdldTeuFUeLEk9dgu
 sAj3IogX+Ic/j8E9Mh4HXu5ZSgYOIKzZ+NtKpZKzubj1/PwEaJ3Vs0baYMU5WF2GEGnS0MvLU01
 BY86OvBniaWN0m7RGyP6RxTvA0LX6kYsB5WWl0oxjqitW1Pz/TuupZeSgSQa0HTXqXO5LJr0Lp+
 ssnX2OHmc/Iyi4VgVyEPFzXQ8raNr2rgIb/g+V7aucEMd3Hfw4sMgxwhCuRsq+CKzMatXrzHtL+
 45qACAvm
X-Proofpoint-GUID: LQwmPzAeS8juw-7eDcXGgS-RrxISRmlp
X-Proofpoint-ORIG-GUID: LQwmPzAeS8juw-7eDcXGgS-RrxISRmlp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

On Fri, Aug 08, 2025 at 07:33:00PM +0530, Odelu Kukatla wrote:
> Add register addresses and clocks which need to be enabled for
> configuring QoS on sa8775p SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 163 ++++++++++++++------------
>  1 file changed, 91 insertions(+), 72 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

