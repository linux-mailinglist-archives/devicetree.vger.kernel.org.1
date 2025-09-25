Return-Path: <devicetree+bounces-221110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E547B9D432
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D85A43B962A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206552E6CA6;
	Thu, 25 Sep 2025 02:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ecY1Uw/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88AFC27732
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758769146; cv=none; b=e8OJ4TSxvdvBPZP9Pps1P533OmLALrTbkfC2D1ro5M0KdO3/CUePCKdlJ611XIiFTr4z4ERJLpL0vPzIoYN+u8t8aIa0YPWJLEbDUz0AsPgL2IOw7g4ODAPyfO6cyGPnhAEOqx85V76QnAclB6TqKIRw2KCWHrEkdA32vWeCYyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758769146; c=relaxed/simple;
	bh=rMdx9u4+CPZdlaDXxIrAkulEp2MNorpZN4qQed5m6F8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mep+5SF1rVNeHOAXTw0CIw0PyA9GEZcjA1BrhlPDNWGpPCNy0HGFIAziYsboWONjLevktc/SdNAGIeLaIf1FNYrd2B8xcAQGDJ+/zqNZFmum8YFoHQnwXfRp0/UVTeTWBSup4KGtLhaa2FPkuleAXRYaSXX67h5UcY5aZgPfkSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ecY1Uw/t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1J99F029706
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YVhIbwN6AspjG/ncbcs2oWej
	SClutNyLdf6oqsabWes=; b=ecY1Uw/tmpiKZ43veGA4miv+hG7rVv5z2SRAJt/F
	EQqTuFKj/yjj2QfelvNwiNA6Xks+kSz4+BaNM+VoqZ3EkPbiUXhkFIo0gdlIR1J6
	hu1rOiFbl1DjPTxo7FLgTdVOlR1WUuk0e1Osl9XL7qwjXSavTlTCYSWn6Dm+UpKY
	vAoAxheZQ7swzYArZYtpvs/bv2ZahmV25s+sMY5SAgbRQU/JvG8RRXmdOn1MD/aW
	nSj70Vg0RRX5k1zQefbDqTigNuTmbqAXJcKetlf6yHxal43YCDyZJIEITb6nJ1PG
	HW13iuaKoCsstPGToliG9G4BikT+U22WU/tLP9BuYK/Xyw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fpdb8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:59:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ca8c6ec82eso11235891cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758769142; x=1759373942;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YVhIbwN6AspjG/ncbcs2oWejSClutNyLdf6oqsabWes=;
        b=aXJvjH8DJ2kdrTr6vA7G+dixFFIQ5LFR4ft8Ve4CPSySsCfEh7/Azxb/Xq7Tg9y7d9
         lpUubZuEGH/bFO8+b1T5CFsqBPhThZrnub0R6x4ONMtJlixsJilMTzmevG8uftKIQqvi
         tmug9X+se4tmA3iNFhi9eyuMJDALoNpZqXbcCfMBbQMn0KteD5tuz0eh8lSy7Vf0tBCo
         s9JvvSVLai36Vq9BIClxDxS2r6PWtDx2bKUx3eEme9/SNdiJl6Umjerr2qjb9blDjUc0
         UakWcMFPYKOsyvIVq5X9l+rHb3Gy0bij73XdIG17xmimou+BaWfn6seld3JehI23aoPO
         tG/w==
X-Forwarded-Encrypted: i=1; AJvYcCUhY64cQENUf9uTxvYCqq+6kvWMJzbBL0dj7lBTZCEgjOtBD0hu4O3bVxzoDj4C8APqG//RN18h5Pmo@vger.kernel.org
X-Gm-Message-State: AOJu0YwMt6fUAZ/dxIiO2Mp5k9nw7aUliiM7m6OYWFv/A119EybX3iao
	eHO4JvhdDU1d4qJZ+/FlTxKj4rKvMKh9B6xzV68cNdyTNjMcummneWNUgg1EFP45+pSNO0Avvq7
	CvGJiFfeneO2XniQhswtw3Yc/fnsy1MxwM1a2kU8WJJCjEuQhnov0Gbei49QWJaD/
X-Gm-Gg: ASbGnctuX0XkCI4eVSWg2DBmPbQ34LOzaTvO0vrpUfQHMvR+gwZm9ldXOfQ57J360kv
	8CcxaEFBrH0clwbCMgcT19IsRnvAPVI+Qk2iTE0KVG7Mz0lBATslEDpxuPw5HTEkAN66hvLgz34
	Q87XLIJy9Mf8HSBE8RNlFtmprrB6ySJ4IQKrWowaVBwILsyYBrRi3psvqTDRnRd12vNm21KQ6df
	8GNx7oO/eO4fi54kMecHLkyph7Uuq65EQKj39B/iDc/c3GGXb8talvrBk9ahNW6tv9U0Rye2L+K
	1mAGBBooOL6mbwB6YukhXfTyoE94G+TxDnzkPCwwyTxirxlc+81bpQlNNYtSfYvlfw3dezK1Qzf
	IUNVuCHtQ+ZiGKDfG+wbMtEDewr7gAM4/HY2YBET+MhQ5IbzJZi6N
X-Received: by 2002:ac8:590b:0:b0:4b7:b2c5:c61a with SMTP id d75a77b69052e-4da4d21edc4mr25363991cf.83.1758769142382;
        Wed, 24 Sep 2025 19:59:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1XnTbfMNHcgRcbCrb+1DBR8eHmzim3EHHlWAZftE/lw4akJE2YkN9j6quohmLlN7TXR0gww==
X-Received: by 2002:ac8:590b:0:b0:4b7:b2c5:c61a with SMTP id d75a77b69052e-4da4d21edc4mr25363851cf.83.1758769141924;
        Wed, 24 Sep 2025 19:59:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316656989sm267325e87.90.2025.09.24.19.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:59:01 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:58:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
Message-ID: <p2deqsamovmrcijqhmcss2766owsxfyz7v2uk3mxd5du6e6tse@uo5q2iqwjxj2>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-3-wesley.cheng@oss.qualcomm.com>
 <5mwqf4djs2jee4x6edplwmd5ugucoi4wazrzjoiw2p5ndiv6h2@6xqnnavp2a4i>
 <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efa5ed28-674c-6a30-eff3-eadc650ed6ea@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 3bjXeLDJMPDNS3sw3vF2jYEV-l4NWN3L
X-Proofpoint-GUID: 3bjXeLDJMPDNS3sw3vF2jYEV-l4NWN3L
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4aff7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6Hf86mc1Aoj0dGmY1zEA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXzDrnBII+Q+Wd
 vta1NkPMJ/lgawghbrBrp+8q9FrxIOiJNJVcRgFYl+iYak8eKT0E/68Kr3FvRJUMidspjnIEdM1
 SUJyuWBr7yDX3CVWJ9wzRjsxAst/7yaHjhies+OPiWrRoA3iqtVyB4gfoRZbR3bk+Qt9PJ9Jcxc
 z8kQ3p2rrs0B2dcBMqCkGjRV+EGB0kGCBpVmTBkW84sf5UHgq/EAQTl4mz715Z3NvEH+ISul/xp
 /oQFfXTODiEnqKyo5UtrugsJx5hw7VkBopLrH/lMUnEHQ2OZi6PerZBtHeVRvYk2m1s2swD4SMZ
 6Ic/NryBti0Lp1+u/Oy3mu6ECjtblaXrgU6qFwJ+YbJm0QLlbYdnIcJEJ6PjcbWk3opg6hhP9NP
 yfzhtYS7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On Wed, Sep 24, 2025 at 07:12:36PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/24/2025 6:12 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 05:52:20PM -0700, Wesley Cheng wrote:
> > > The Glymur USB subsystem contains a multiport controller, which utilizes
> > > two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
> > >   1 file changed, 35 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > index a1b55168e050..b0ce803d2b49 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > > @@ -16,6 +16,7 @@ description:
> > >   properties:
> > >     compatible:
> > >       enum:
> > > +      - qcom,glymur-qmp-usb3-uni-phy
> > >         - qcom,ipq5424-qmp-usb3-phy
> > >         - qcom,ipq6018-qmp-usb3-phy
> > >         - qcom,ipq8074-qmp-usb3-phy
> > > @@ -62,6 +63,8 @@ properties:
> > >     vdda-pll-supply: true
> > > +  refgen-supply: true
> > 
> > Which device is going to provide this supply?
> > 
> 
> This is just a pmic regulator.

Ack, thanks.

> 
> Thanks
> Wesley Cheng
> 
> > > +
> > >     "#clock-cells":
> > >       const: 0
> > 

-- 
With best wishes
Dmitry

