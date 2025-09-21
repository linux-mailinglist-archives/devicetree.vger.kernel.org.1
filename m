Return-Path: <devicetree+bounces-219709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92251B8DC8C
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 15:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4703F3AD2DD
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 13:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA4452D73B5;
	Sun, 21 Sep 2025 13:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jiGuu+k+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2B3248F47
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758462150; cv=none; b=pTuULtPRl5TD4c5Frrt5LWC6mMhP8qH9uPGbliJyn4NxsUt1o2yY2keIOBaURQ2X106E8FtJ9u6QRNDLHyjMKN0yp9kcZCzf9enqYmGrxnzfyUxlo9fK23z6nfsl6eEgHt25OzxT2kIH8gICAYsQieQp90R8/61hpZ05n/pAAM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758462150; c=relaxed/simple;
	bh=P1m9m6X7raH53exBEgl1dSftxYvXtfQPuUKA+FGcWJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ctj0O4BjJXgU3TElpghihUqijOajNIYjPisxyFQ+N3iMc/1TCqhV91U6woonttozCdK4NRjhz9aRdi2Inx/pHvO++/WO31jj3q9AgPO4A3GdhR/0Tt0QnXDLdKTFfE+1BbMRpoyOBR5O1gWhk0ciS/zt5wj/uVAHZCd6k79FilI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jiGuu+k+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58LARR7g008196
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8fbZ8AUpdSZTGf7eQiIgMqXI
	ZYleKr5ODhbUFzT6EXc=; b=jiGuu+k+texJvrRXTRJ6E/bblgHDWUjW1QVgjrwg
	SfmDYMW44LEQO7SZwZm8yQVoI13ioB/phuMiUXK4AUQdpTFy3QB4D9JEvTbEyMBH
	Gn1nQRCHxXGtBPrKhnvDwfey4kXdgK+fsn2RzeSNbGhshZt4qJ92kYulprxmn61m
	Knv5vqLft+d2pTeSIEyAlXk/B09HaGyz+Gm35cjXusKX2oJZGr2MoZby0dOgWiVQ
	AN2qE6aavGBLvOtfCee9hogEUbPem1as14gl4MMhEA0ICTi8NmqmFJ63k1uO+t4E
	P5PmVCRoRRJccKaJYMGTlEK2oRpXR8Y9fm399BhfykkX8w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnjgnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 13:42:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b793b04fe0so68872861cf.3
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 06:42:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758462147; x=1759066947;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8fbZ8AUpdSZTGf7eQiIgMqXIZYleKr5ODhbUFzT6EXc=;
        b=Q62zv70wVZDrCU/PKg5l7sBzved5196oBMIGgkK1Mqbv5xs63mwg/kHzOtlsKa3nrU
         uYYbCtji36asxAajlZ8o9RzlppnClxI8i8WH6UfM30pMSWtN87Gk0CfKAbs96Ff7clzs
         yrjsqZ77A9yAjkfDgCXaB3KPk3hRzkTOou0XUl/dmj7BiN8Q6LBsvlj0P/C06vMGMfv/
         5UKPxjEQThRrcAXJuQLqnmu4x2CSYKSyURdQIfVFhSS/2UXrnNzjgbLF7jxPpyyTvI5B
         Ghyms2z7Da2Ym7ClSBVbyJQ2G3qfIat8mFBOFgFOE4yDlv5uTy5+90FemZlM9bNM7d1p
         1sfw==
X-Forwarded-Encrypted: i=1; AJvYcCVi2dLgLkA8I52aafte+4VjqZg8gWUeQseP5d74snH4JrB7YypDViUgxfOVl2fgzzx83+KAbkap5XJu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+lL0GGqetiOn6onlOrxg1nmBayB72rNHpR4c9nQE+vBzVSkZ+
	TedjFN/kTUtHEREpLeRhGtBK4qXSnXV3LGZggVhcNpYLOI8v/eZOMB+PpeC258V5b1lKLxBBoIq
	2KyN9urv11CFZmiYMpVj0/gLSkJRYnssahxGhO3cI+yIvgUkmj1Clmr000kFn1rHL
X-Gm-Gg: ASbGncvXRszG7pOkI9sESUOU8O6H5mjFRvALrG+gCzPeexvTq3Ix9RQ5Yzlu1bDal5A
	Tp8RAS2Kf6OJCxYCK+harC/CpDuhbep2jlcd9caZQ+WlRL8rqoLldaXLDI7caQlfJl/B+N+AmX4
	eHIql0dHXawDZSu/3caslrGH1HQqCXy5NUm9x89/w5HansULKmP712Vkk3woJiKr1SpmNW5wO8+
	5G72KI69KH7WsFkUD2cpy2aQ9AaOla2U8mieK3keSXjlfYjsbUWhoQVj+WDNFIHGk1p5WwmDKEy
	7f6T0sXD89B1mtElDKEQqpgchAGHvrf1tKxPyoTew7HD40JaQK31lDeHi0P4muu4ooelowXtaTc
	Ccb9yoOGEcP3HWs9djuodKhFiv9ARzBzeKTPAi/iFGKhaFuz64n17
X-Received: by 2002:ac8:5d0b:0:b0:4b7:a71f:5819 with SMTP id d75a77b69052e-4c074075e01mr132048701cf.38.1758462147391;
        Sun, 21 Sep 2025 06:42:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJ7Q9Xe0lR9Xj9tnIcryF9l+1mpr8zgHCX8Mvs3/dsJgHI/XKaercYfK+VaNnsZz4Oy15W+Q==
X-Received: by 2002:ac8:5d0b:0:b0:4b7:a71f:5819 with SMTP id d75a77b69052e-4c074075e01mr132048351cf.38.1758462146925;
        Sun, 21 Sep 2025 06:42:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a8f56471sm23012031fa.42.2025.09.21.06.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 06:42:24 -0700 (PDT)
Date: Sun, 21 Sep 2025 16:42:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Antony Kurniawan Soemardi <linux@smankusors.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Heidelberg <david@ixit.cz>, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>, Shinjo Park <peremen@gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: dts: qcom: msm8960: add I2C nodes for gsbi1
 and gsbi8
Message-ID: <vanz6ktal4lx2v7d74u4ac7jzxjahnxy2l45yg36il7evgaw3q@hbszkjgfrkct>
References: <20250921-msm8960-reorder-v2-0-26c478366d21@smankusors.com>
 <20250921-msm8960-reorder-v2-4-26c478366d21@smankusors.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250921-msm8960-reorder-v2-4-26c478366d21@smankusors.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d000c4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8 a=EUspDBNiAAAA:8
 a=t1JXzLs-izEPKbqAoeQA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-ORIG-GUID: GCjc97pCcOsE_a9T0pijs_JlB3zw_mVU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfX/bnsJKMtBvH+
 6GIbar4dS2zmhEXQx4aZcMLQmxZW+NWyhsUWIqJ5R+Cu9ncb+T6EXS4BlzEtkbsY9RUKQYzUQTZ
 iKfoQVNXmzCxbUKjarYvFAwQydwgebtm5iDeok8OGsOueEq9zIRs6DVlKCsydOyt+1sMlyK4rc/
 cM5IjcGvLALegZ9WaBgFXD8olrgSNmYjzZ/8wOSYWiFFRaCn5UveD4/F/BjJnguezcILJiK6h1n
 d/hHfRMQFLi9XCsEWUGCexc8H/iJ7enmTv6zXjWvFC7Efu8DiZ/VBYLJCgamzyXhw2ESbBUHHjv
 7l67m4ukKgrAJ4ZC7yyHkzRT1ilmOXyImCu1mXrSjVGKWxuY01xWw/3Yit3rvgWa+6erfta3MP+
 ifFjQl8V
X-Proofpoint-GUID: GCjc97pCcOsE_a9T0pijs_JlB3zw_mVU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_04,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

On Sun, Sep 21, 2025 at 03:08:12AM +0000, Antony Kurniawan Soemardi wrote:
> These are present on msm8960 and are required for devices such as the
> Casio G'zOne, which has NFC wired to gsbi1 and audio amplifier wired to
> gsbi8.
> 
> The nodes are added disabled by default.
> 
> Co-developed-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Shinjo Park <peremen@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 70 ++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

