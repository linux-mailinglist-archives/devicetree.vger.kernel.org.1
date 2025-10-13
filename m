Return-Path: <devicetree+bounces-226028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E41BD3058
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDA754F0EB4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0460823F431;
	Mon, 13 Oct 2025 12:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ibG1wdZh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E01B259CA9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760359239; cv=none; b=XRY35ddMbC+TrVfDLIMaMflOyhQkXkuv071lxgbVTriCKwF+JcLtpaOn55LdY95hdDki8MYCjN4SstPkWH9UIemyoeDcOt2I/Zm/tYhiEQgA6P/wxMgA4Dd7AKkM2qRnkPjdxc5TDsErBE93wYeGvhUmsuysmf/Qg2YSu/DIzio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760359239; c=relaxed/simple;
	bh=dZx1FG/WcIlbQOgcXxuWDW5+YDqYBZQhGx5Hx6dPiIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K7MSK/VAjILgkl6fotHWO0FrDbJ6mA5r5Eb1ltLfrK77top/ClL20GEq7xKDkDWQw49hemp+TeXGqCSS/RszU9Sa34QKu9U3fhhCJ2GAgJBmBcEdddbnmDoya3gPpKrP0CePRFdb415dsUzCo9j00YwTdtJa5ETm7fiDakxdVLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ibG1wdZh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DA5dIW016551
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:40:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f6scyOM+ahva9+uwhw48pxSb
	yDQ+LPEwq5/UOfcG8bo=; b=ibG1wdZh8jBFjAAr/HF2MKezLDCDoQs9U+AgU1E+
	gsv1WjshXlYEN9CVA1E5jrdrhhJ6K7/zPyVZqvMENNAU/tCyIKuRxCus6Jc5tetA
	a6rPPK+TO2BnfR38pazxRS7lrCik4W5lChA57gij0xGAxeev/Yl1GjWFyr9HS0nR
	l2fHx/xpO+WjXOHdNhSY1nFy8+H6qGYESv19zRsJl63y/BExMozlu7ORp7RC9c4l
	siWH/7eZgiUEdQnb/G4twJJ4YbPKpXQ0MOFG0iJRvYn+xVIVfDBB/ZAX74srez0Z
	OSrcURx02nSd3it8vowRjjgF1swAg2wZTvtQ1POWLIVZdw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfbhvjuy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:40:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-87561645c1cso2408255485a.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760359235; x=1760964035;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6scyOM+ahva9+uwhw48pxSbyDQ+LPEwq5/UOfcG8bo=;
        b=mNCVU7WpSEf2wC5y65oMPvlGGgqEcCT75kOFKcEErY7mc6GZOKHP754erIrqyMkzaW
         19HayZyfBixTep4oCEt05nfofBxdkOp0euHrkfozOu7U4YkjHejp1C5KJWWsz+Fs47Fq
         w6DKg3XNO42XY/vo8JhY/68VPyRJ6RLC7ADsAtWDyekUNR86hXUA7sokPYrqSz3byPx3
         XScmzTaCexyxln2j6SOnIKMVdB41xWtb4q72/ETkuEFBYnDthM5/i1n4BQpRQIw4ErQI
         2rRgIWTIFnKh2DodpxpDfF/QFI/wgji03Zba2okIYQkA3sLkpgF3qZwM0gdFixN/2h4J
         03uA==
X-Forwarded-Encrypted: i=1; AJvYcCWI2Txb1Q1w2/82ux+lOWbvUfed1X0hAJrYtH2ugMZx8hqSu9kBgicRBGd3X1XiEWNgRiwAh1l1mtZB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7eCR92g5HbtBSJTXgNxKkGe7KpDIGQIhhtcTLMPFTes4Pvpw0
	/EcnCPnr79VzEH69ffJ8mF3KqryWYRilYC7JADk02YB/HMvobiTwhI2yHvce0X/qYZEIKC141YW
	U9QZ6SUcbMflY985d8dIr5R1kdKhhmSVMILgB/zcUD+YivM/DlSvuUcUtyzBw+G2I
X-Gm-Gg: ASbGncu7e6UuP3vuqKgLUmAN3OYrLAtcYEFBM7tHWbj4LOKFGPSdwQ7L9yQX/c/yeFv
	9XQcjvdmrfFFmCLhOnK0s7MkuBrkVf6MLJA2BNxYOxkXrHYoA2xyru8TZjA2SFedMDf1Pkgy2Ru
	mYq3Y5KXyPG0jli9KZ2BnnBrSIR51ecTvTYn11NNr7PEw68E/IjJQkPBVH4dfStBO/vkqsWCQuR
	phQdcQA7aRBFynwa0UUoJ9bGdx4DEQVOCTmcwtotobZglkBcd9/mt8p6Aaty4HPx5V8R8kpRovx
	njxdVsGh4RdelyN3LfRSvi5D8Of23ItRNXJ3BZgte+OfbxdwEnrtGQie53FtsVYXo0SeBmjbPfX
	2AaZNVyxExicExCLC62alkqd1AXxigH1s/20Vp4CGZrdPxfSXbs5L
X-Received: by 2002:a05:620a:458c:b0:868:54ba:7c42 with SMTP id af79cd13be357-88352f83d61mr2871641685a.25.1760359235458;
        Mon, 13 Oct 2025 05:40:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkvZQ+8ZJnIwC2hIgs/DILNFhHouXWRCw0k5tWWtya0oIkN3txK/mV8/TSZwSq7k0H8FX0lg==
X-Received: by 2002:a05:620a:458c:b0:868:54ba:7c42 with SMTP id af79cd13be357-88352f83d61mr2871637585a.25.1760359234973;
        Mon, 13 Oct 2025 05:40:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908857792dsm4081471e87.105.2025.10.13.05.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:40:34 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:40:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
 <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
 <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXzEefbiwrvBbz
 xiSurfIBV5Tatltw7/7R/88lfJrRdMjqwuDc7lt4Z873USxZYOammtNAp+VYhtRzAAJAWmTj81Y
 LAk4W+mIqZiutzDM8CCzufixPAoDLKvXF+mLAAWkkB8wXEpR1s8F9u535JluDZEVGP1Ofr5pdty
 A/nOONLXTiqN0QBBCsi9lTKQVpPu2EglBynN6wmWAqLpM/zzUTqRDBO8aV3oGuzg2kES1hR4NID
 epfFkreBtDiUACcajMp1S4v5ai+BuMbI8LeO2WdiSrG6zya2KwL4Z4hF7ZNlNR/kkiHr7IYKwUw
 ZZysoqJVm2f9invpMmPoE/SC9CgxfyLBP8b9oD2DdqbfoAeuznk2+yGz3xCBaFJNIavJ5LIbmxn
 bkQ8o6EemUSr6m4t3oNXu14EgWjdHA==
X-Proofpoint-ORIG-GUID: ctoCheAY30m6gE_NESUwNvZzmTNowSvJ
X-Authority-Analysis: v=2.4 cv=bodBxUai c=1 sm=1 tr=0 ts=68ecf344 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=SRHymB3k53h_HzVQ3XsA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ctoCheAY30m6gE_NESUwNvZzmTNowSvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110018

On Mon, Oct 13, 2025 at 03:21:19AM -0700, Qiang Yu wrote:
> On Thu, Sep 25, 2025 at 05:28:15AM +0300, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> > > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > 
> > > Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> > > qserdes-txrx register offsets differ from the existing v8 offsets. To
> > > accommodate these differences, add the qserdes-txrx specific offsets in
> > > a dedicated header file.
> > 
> > With this approach it's not obvious, which register names are shared
> > with the existing header and which fields are unique. Please provide a
> > full set of defines in this header.
> 
> Sorry, I didn't get you. Do you mean we need to add defines for all PCIe
> qserdes-txrx registers? I don't understand how this makes which register
> names are shared and which fields are unique more obvious.

From your commit message it feels like
phy-qcom-qmp-qserdes-txrx-pcie-v8.h is an extension over some other
"base" header file (likely phy-qcom-qmp-qserdes-txrx-v8.h. It makes it
harder to follow the logic and harder to compare the values. Please
define all used register names inside the new header.


-- 
With best wishes
Dmitry

