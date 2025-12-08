Return-Path: <devicetree+bounces-245288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B76BCAE5BE
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 23:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F0903099609
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 22:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AAE629B79B;
	Mon,  8 Dec 2025 22:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HQXK94Rz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N9aSk2Cs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7FD1F5435
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 22:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765234143; cv=none; b=PaIh4XkiJ6/+OaYblclA5SGeJVewv7GSUlOcmPf2oINqA5rMBMHvuZ0syJTNdNRPKxirAmDEc4HlRRIKVmWUDMZ9VCJDtAONpGCC06a3UiU6FMrHCDMM4u+W68wrHpcYERVDY56RZ0G08Uoc6jE2HfIojp1+9+nZ1Jiz7HZtheY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765234143; c=relaxed/simple;
	bh=rE+k/ohXzCO4XjNBDkfOdHWkWESNi5mtHWAtrCguaKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fPF6D0YFh+/2Y6pLq5i5QSumo0CIPb5Fuf0+CIZLtgfMVcsU/j/1BgdlYHWsVuWgFqmj52qWZo3hn2y5GGiaDfoPWxiruiLTOUSq99t6jDoRvBXpO7iidVQ8zCKGffcdUEk7rLUQX77QuVQwmD/TsrboaE1tmTe+3E5Ozn5azr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HQXK94Rz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N9aSk2Cs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8MWe3Q850701
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 22:48:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1g9jwcmodcP81FH8//i4RIKb
	Nb7l9koEu3bPM/xcURE=; b=HQXK94RzA/xD4QwqIZEWU9i0En+rja/84qgXHRjc
	urBEoaCuNa3FL/83xeo16d+meIREy++3eviezr9T5ClsbD2Lo7Bq3BCsixMiNjkH
	lYPFPMCTAFl9nPxWEM8yPQLyQiulLnF/GWNv4WUvrjlZCgQ33kPMr7Rw34haghEt
	OjPOStL5PiEGA9KXa0tqFHpB7YJgIA2wDWvzxqJ3PNo7uU4A6gsF+1LBDZILQziO
	z5t2BPM9lMzLhILSYjumwP/R7BbdKlmQ6Xhq47sGaTNHh5x4u7qiQNm/AU7rWu4D
	1twZfqexBeENkbkFMtPe7qYSTHmJW/pezihkVpAjPtrG1A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awxxc1my8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 22:48:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee0995fa85so159597991cf.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 14:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765234138; x=1765838938; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1g9jwcmodcP81FH8//i4RIKbNb7l9koEu3bPM/xcURE=;
        b=N9aSk2CspXgXIHiSDzA0VI9tQIPefAbVwqxdwWq/Xj5pMf/uMlEb2MfArLAQyXfK4o
         poWEQ7v3/VAq3kvokdhlyqcwxOIYoZwQXs9DgBpDgizRza9g/W0Y4w4uUAokWo746P8S
         opqPD3K4epcnCxvZfIfsWEdVoxZh2TbFAxgQ46K41yxQSmyNVxt8+5f6I3VDaDzq/ZR2
         Q6CjWjLehOC2Ku2mTVwu1Tz5U1u+GxbvyPw9bhGYUWNABuXbwI0pYHsP87rnXld2Y4r5
         j//Qt5EE+txC02HpSeOT3VNb67ONKyqKk4IFW590X1hQBw7/o1+qvedLvYPZAkv2LdnG
         9ZiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765234138; x=1765838938;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1g9jwcmodcP81FH8//i4RIKbNb7l9koEu3bPM/xcURE=;
        b=N1RedAXT1nvk3yUbX34rx5dlecBR4Z3RTVgMyFe8lH5+a8k75z/YuUhItYn9vu5Jy5
         OpTrq1QEULQPt3sdU8JzArfiFrkIRPVV/1p8kwItcr1SWHMW7roGw/JxuXOrb8ywx4A3
         JNjV9OQVONcH238hPPU2yulzcSkRzN/jO/CoiCPCRuBD+5l+EzHnguD33GU+JDD46nJe
         QzhEXbiubwhGKeEAbxddOXZ4iOroHVX9zvahJgMW0V/ZD4q+k1mcPbvBdQGVE+7EPJYi
         oqPoyHeDIhlfejNkz8wbymVqTiU7k402WdsZHiO8eVUHPbhfyq1o7AVjhUHGNh7n6ZYg
         l/5w==
X-Forwarded-Encrypted: i=1; AJvYcCWuVAIM6Nc4Oh1PMKLjK2/NEAR2WtqzqRLS7Px5KATrn0tVK3kmJEe8ShpKg8RqAv+2GjTdaXCLOtFL@vger.kernel.org
X-Gm-Message-State: AOJu0YzU/Oodn8hnu4KYxw4A/FZq+TDhafxXWmf7166DPe8aCbV0xrex
	DxFX41XaUOojqVEY3RoMf6eVI4LaQKcVbMgGtVZAx+ELGEEbXyq/SqY9HeEp2szm4hhm7uAJFuJ
	Ap0mzCMZ6Si9TjjIv7Zlgr8u6hlqywa0FrR+D0hvRksYQoIW/XRao4cBKN+rAYA/X
X-Gm-Gg: ASbGncs9piHRVYweGUMooSWqEPlv6QRldYwhIr2BYXJUfve2ebU/3UKlyMm2I56Xe5Z
	XeCF0QVLkv7+PyeaEjWp7FuzvKX/aPrRBdXZViIg8BPV3Q1DLWMUgLuTcl6DLEuIiI2wBquz0DT
	nfwxLfZPu4EZ+YAmI7uDuWkqadXZeljJoov3ZAQ+gcmQcVklCSfsIt8dEvcTP6F7XIHQjl+Q86x
	v2sXHE46GjAwF/TSwLSNniNgubmviV+I9iMi68g1aJo/BMJ/GUO5/9KxhNu8aRl02hYui/oOHVc
	AhR9UJHvb3Nnu1jZCjrGQ8bZ+M/VBR+E90Hbs+V5aSqrfLYMIeXgvA96D5ypX//EqCKOMrqLyHu
	jq2p+LOqKC2t0nSNWF7kA5Y+ks8i06jmE5SOnARbTIYhN1+VrLNZJEYKW6OXDcreJDFLGml6ETO
	KcHq6yg6fRG/JaODeXP0QWUB8=
X-Received: by 2002:ac8:5c96:0:b0:4ee:2845:40f8 with SMTP id d75a77b69052e-4f03fd72cb2mr152095581cf.12.1765234138212;
        Mon, 08 Dec 2025 14:48:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF23wv38f30pZk8g9ARoQZnzyYNzhgoOtnkSb7aCARTdHUXi+lnpe6QmtZe12VFDgvtykkGXw==
X-Received: by 2002:ac8:5c96:0:b0:4ee:2845:40f8 with SMTP id d75a77b69052e-4f03fd72cb2mr152095261cf.12.1765234137711;
        Mon, 08 Dec 2025 14:48:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2726csm4560055e87.67.2025.12.08.14.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 14:48:56 -0800 (PST)
Date: Tue, 9 Dec 2025 00:48:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v9 1/5] media: dt-bindings: Add CAMSS device for Kaanapali
Message-ID: <puv24qramoiq4qq3i4bibatg5ihnrv6hdloul5ajbblvasvwk3@nbse2m6aftkh>
References: <20251208-add-support-for-camss-on-kaanapali-v9-0-3fcd31258415@oss.qualcomm.com>
 <20251208-add-support-for-camss-on-kaanapali-v9-1-3fcd31258415@oss.qualcomm.com>
 <scnexmcrpemu6vcms3dmq7qjvx54h5pyumjvgqduospao4x2kt@hoi7zfygjq4f>
 <458a7841-e422-4cad-83de-f5b5c1b683a6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <458a7841-e422-4cad-83de-f5b5c1b683a6@oss.qualcomm.com>
X-Proofpoint-GUID: 9HLCzVJqFPxtYpQN4HrKlcNRN2U1dG-D
X-Proofpoint-ORIG-GUID: 9HLCzVJqFPxtYpQN4HrKlcNRN2U1dG-D
X-Authority-Analysis: v=2.4 cv=AKf9OaRj c=1 sm=1 tr=0 ts=693755da cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=m4P3dgLYvQVqBC5gywwA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDE5MyBTYWx0ZWRfXxQ8VWc9kmuTw
 43eT7v+woKZbfTHuCNluTTNu5SriPQGu7/0XJ0WuArPl2DdW/71gsI3RUsvVxHI9A5oL8eKiPGd
 R/YmIxAoRWCxLEUrnfc4nYs8+lu9A787BOjd5grH2PRszgkHNeqPWVTZydfROkeQnxgBtpgvZOM
 o5+kmZuGp4sh++Wwqta1eaDOJBh0PRTHCj4J26lkWjK2by/2uu0H8ZlQhlLoA+/6XgtZoHOFFIj
 oLq78ym/ts0EV9qKYgYIcQyRlcm1r1Uw4horAXOXWjEyot9y0uIpmYnfHNFVFFWEVKJXJhEUWpe
 tCCU359tRFqUy8uck6g6ea7n0lxQIewgPJ2iyi+ToUclwPu7GwWbXmJD74VV70w3uprElxytfKJ
 z9h9NuSvDU69DjwkLp2c1hiaogccPQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 phishscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080193

On Mon, Dec 08, 2025 at 01:03:06PM -0800, Vijay Kumar Tumati wrote:
> 
> On 12/8/2025 11:53 AM, Dmitry Baryshkov wrote:
> > On Mon, Dec 08, 2025 at 04:39:47AM -0800, Hangxiang Ma wrote:
> > > Add bindings for qcom,kaanapali-camss to support the Camera Subsystem
> > > (CAMSS) on the Qualcomm Kaanapali platform.
> > > 
> > > The Kaanapali platform provides:
> > > 
> > > - 3 x VFE, 5 RDI per VFE
> > > - 2 x VFE Lite, 4 RDI per VFE Lite
> > > - 3 x CSID
> > > - 2 x CSID Lite
> > > - 6 x CSIPHY
> > > - 2 x ICP
> > > - 1 x IPE
> > > - 2 x JPEG DMA & Downscaler
> > > - 2 x JPEG Encoder
> > > - 1 x OFE
> > > - 5 x RT CDM
> > > - 3 x TPG
> > Please describe the acronyms.
> Ack.
> > > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> > > ---
> > >   .../bindings/media/qcom,kaanapali-camss.yaml       | 646 +++++++++++++++++++++
> > >   1 file changed, 646 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> > > new file mode 100644
> > > index 000000000000..3b54620e14c6
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/qcom,kaanapali-camss.yaml
> > > @@ -0,0 +1,646 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/qcom,kaanapali-camss.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Kaanapali Camera Subsystem (CAMSS)
> > > +
> > > +maintainers:
> > > +  - Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> > > +
> > > +description:
> > > +  Kaanapali camera subsystem includes submodules such as CSIPHY (CSI Physical layer)
> > > +  and CSID (CSI Decoder), which comply with the MIPI CSI2 protocol.
> > > +
> > > +  The subsystem also integrates a set of real-time image processing engines and their
> > > +  associated configuration modules, as well as non-real-time engines.
> > > +
> > > +  Additionally, it encompasses a test pattern generator (TPG) submodule.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: qcom,kaanapali-camss
> > > +
> > > +  reg:
> > > +    items:
> > > +      - description: Registers for CSID 0
> > > +      - description: Registers for CSID 1
> > > +      - description: Registers for CSID 2
> > > +      - description: Registers for CSID Lite 0
> > > +      - description: Registers for CSID Lite 1
> > > +      - description: Registers for CSIPHY 0
> > > +      - description: Registers for CSIPHY 1
> > > +      - description: Registers for CSIPHY 2
> > > +      - description: Registers for CSIPHY 3
> > > +      - description: Registers for CSIPHY 4
> > > +      - description: Registers for CSIPHY 5
> > > +      - description: Registers for VFE (Video Front End) 0
> > > +      - description: Registers for VFE 1
> > > +      - description: Registers for VFE 2
> > > +      - description: Registers for VFE Lite 0
> > > +      - description: Registers for VFE Lite 1
> > > +      - description: Registers for ICP (Imaging Control Processor) 0
> > > +      - description: Registers for ICP 0 SYS
> > > +      - description: Registers for ICP 1
> > > +      - description: Registers for ICP 1 SYS
> > > +      - description: Registers for IPE (Image Processing Engine)
> > > +      - description: Registers for JPEG DMA & Downscaler
> > > +      - description: Registers for JPEG Encoder
> > > +      - description: Registers for OFE (Offline Front End)
> > > +      - description: Registers for RT CDM (Camera Data Mover) 0
> > > +      - description: Registers for RT CDM 1
> > > +      - description: Registers for RT CDM 2
> > > +      - description: Registers for RT CDM 3
> > > +      - description: Registers for RT CDM 4
> > > +      - description: Registers for TPG 0
> > > +      - description: Registers for TPG 1
> > > +      - description: Registers for TPG 2
> > > +
> > > +  reg-names:
> > > +    items:
> > > +      - const: csid0
> > > +      - const: csid1
> > > +      - const: csid2
> > > +      - const: csid_lite0
> > > +      - const: csid_lite1
> > > +      - const: csiphy0
> > > +      - const: csiphy1
> > > +      - const: csiphy2
> > > +      - const: csiphy3
> > > +      - const: csiphy4
> > > +      - const: csiphy5
> > > +      - const: vfe0
> > > +      - const: vfe1
> > > +      - const: vfe2
> > > +      - const: vfe_lite0
> > > +      - const: vfe_lite1
> > > +      - const: icp0
> > > +      - const: icp0_sys
> > > +      - const: icp1
> > > +      - const: icp1_sys
> > > +      - const: ipe
> > > +      - const: jpeg_dma
> > > +      - const: jpeg_enc
> > > +      - const: ofe
> > > +      - const: rt_cdm0
> > > +      - const: rt_cdm1
> > > +      - const: rt_cdm2
> > > +      - const: rt_cdm3
> > > +      - const: rt_cdm4
> > > +      - const: tpg0
> > > +      - const: tpg1
> > > +      - const: tpg2
> > > +
> > > +  clocks:
> > > +    maxItems: 60
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: camnoc_nrt_axi
> > > +      - const: camnoc_rt_axi
> > > +      - const: camnoc_rt_vfe0
> > > +      - const: camnoc_rt_vfe1
> > > +      - const: camnoc_rt_vfe2
> > > +      - const: camnoc_rt_vfe_lite
> > > +      - const: cpas_ahb
> > > +      - const: cpas_fast_ahb
> > > +      - const: csid
> > > +      - const: csid_csiphy_rx
> > > +      - const: csiphy0
> > > +      - const: csiphy0_timer
> > > +      - const: csiphy1
> > > +      - const: csiphy1_timer
> > > +      - const: csiphy2
> > > +      - const: csiphy2_timer
> > > +      - const: csiphy3
> > > +      - const: csiphy3_timer
> > > +      - const: csiphy4
> > > +      - const: csiphy4_timer
> > > +      - const: csiphy5
> > > +      - const: csiphy5_timer
> > > +      - const: gcc_axi_hf
> > This clock (and gcc_axi_sf below) still have the gcc_ prefix and GCC name. Why?
> > It was pointed out in the previous review: clock names should be
> > describing their purpose, not their source.
> Hi Dmitry, let me add a bit more detail on this clock. As confirmed by the
> HW team, the logic that runs based on this clock is still inside the
> CAMNOC_PDX, just that it is on the CX / MMNOC domain side. Do you think
> "axi_hf_cx" and "axi_sf_cx" makes sense?

Why? You are again describing the source. What is the function of?
bus_hf / bus_sf?

> > > +      - const: vfe0
> > > +      - const: vfe0_fast_ahb
> > > +      - const: vfe1
> > > +      - const: vfe1_fast_ahb
> > > +      - const: vfe2
> > > +      - const: vfe2_fast_ahb
> > > +      - const: vfe_lite
> > > +      - const: vfe_lite_ahb
> > > +      - const: vfe_lite_cphy_rx
> > > +      - const: vfe_lite_csid
> > > +      - const: qdss_debug_xo
> > > +      - const: camnoc_ipe_nps
> > > +      - const: camnoc_ofe
> > > +      - const: gcc_axi_sf
> > > +      - const: icp0
> > > +      - const: icp0_ahb
> > > +      - const: icp1
> > > +      - const: icp1_ahb
> > > +      - const: ipe_nps
> > > +      - const: ipe_nps_ahb
> > > +      - const: ipe_nps_fast_ahb
> > > +      - const: ipe_pps
> > > +      - const: ipe_pps_fast_ahb
> > > +      - const: jpeg
> > > +      - const: ofe_ahb
> > > +      - const: ofe_anchor
> > > +      - const: ofe_anchor_fast_ahb
> > > +      - const: ofe_hdr
> > > +      - const: ofe_hdr_fast_ahb
> > > +      - const: ofe_main
> > > +      - const: ofe_main_fast_ahb
> > > +      - const: vfe0_bayer
> > > +      - const: vfe0_bayer_fast_ahb
> > > +      - const: vfe1_bayer
> > > +      - const: vfe1_bayer_fast_ahb
> > > +      - const: vfe2_bayer
> > > +      - const: vfe2_bayer_fast_ahb
> > > +
> > > +  interrupts:
> > > +    maxItems: 30
> > > +
> > > +  interrupt-names:
> > > +    items:
> > > +      - const: csid0
> > > +      - const: csid1
> > > +      - const: csid2
> > > +      - const: csid_lite0
> > > +      - const: csid_lite1
> > > +      - const: csiphy0
> > > +      - const: csiphy1
> > > +      - const: csiphy2
> > > +      - const: csiphy3
> > > +      - const: csiphy4
> > > +      - const: csiphy5
> > > +      - const: vfe0
> > > +      - const: vfe1
> > > +      - const: vfe2
> > > +      - const: vfe_lite0
> > > +      - const: vfe_lite1
> > > +      - const: camnoc_nrt
> > > +      - const: camnoc_rt
> > > +      - const: icp0
> > > +      - const: icp1
> > > +      - const: jpeg_dma
> > > +      - const: jpeg_enc
> > > +      - const: rt_cdm0
> > > +      - const: rt_cdm1
> > > +      - const: rt_cdm2
> > > +      - const: rt_cdm3
> > > +      - const: rt_cdm4
> > > +      - const: tpg0
> > > +      - const: tpg1
> > > +      - const: tpg2
> > > +
> > > +  interconnects:
> > > +    maxItems: 4
> > > +
> > > +  interconnect-names:
> > > +    items:
> > > +      - const: ahb
> > > +      - const: hf_mnoc
> > > +      - const: sf_icp_mnoc
> > > +      - const: sf_mnoc
> > You know... Failure to look around is a sin. What are the names of
> > interconnects used by other devices? What do they actually describe?
> > 
> > This is an absolute NAK.
> 
> Please feel free to correct me here but, a couple things.
> 
> 1. This is consistent with
> Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml. no?

I see that nobody noticed an issue with Agatti, Lemans and Monaco
bindings (Krzysztof?)

Usually interconnect names describe the blocks that are connected. Here
are the top results of a quick git grep of interconnect names through
arch/arm64/dts/qcom:

    729 "qup-core",
    717 "qup-config",
    457 "qup-memory",
     41 "usb-ddr",
     41 "apps-usb",
     39 "pcie-mem",
     39 "cpu-pcie",
     28 "sdhc-ddr",
     28 "cpu-sdhc",
     28 "cpu-cfg",
     24 "mdp0-mem",
     17 "memory",
     14 "ufs-ddr",
     14 "mdp1-mem",
     14 "cpu-ufs",
     13 "video-mem",
     13 "gfx-mem",

I hope this gives you a pointer on how to name the interconnects.

> 
> 2. If you are referring to some other targets that use, "cam_" prefix, we
> may not need that , isn't it? If we look at these interconnects from camera
> side, as you advised for other things like this?

See above.

> 
> > 
> > > +
> > > +  iommus:
> > > +    items:
> > > +      - description: VFE non-protected stream
> > > +      - description: ICP0 shared stream
> > > +      - description: ICP1 shared stream
> > > +      - description: IPE CDM non-protected stream
> > > +      - description: IPE non-protected stream
> > > +      - description: JPEG non-protected stream
> > > +      - description: OFE CDM non-protected stream
> > > +      - description: OFE non-protected stream
> > > +      - description: VFE / VFE Lite CDM non-protected stream
> > This will map all IOMMUs to the same domain. Are you sure that this is
> > what we want? Or do we wait for iommu-maps to be fixed?

-- 
With best wishes
Dmitry

