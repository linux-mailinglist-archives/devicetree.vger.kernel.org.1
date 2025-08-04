Return-Path: <devicetree+bounces-201537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1211B19AE9
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 06:52:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D73BA3B49A8
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 04:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89481FECB1;
	Mon,  4 Aug 2025 04:52:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dyIkqGCf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8E2AD00
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 04:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754283157; cv=none; b=C3A3rJ/fuNErjJMvZsHDvRhdL0zOpAzqvlBj3EynhSXwG9iaIMNr82gFlYmLzk8krwSBchGhy9qfEhekRqzS/QHYJXImogLf1C4fKykTggXMOtlgJ+yz7bjB5E4oQdA5jHruvj6a6Tt4mu29C4QOt6o3HHIJ6b92g9C9FdIl1wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754283157; c=relaxed/simple;
	bh=oGcikZ2tsdRcRFlePTbF8Tgaj9GtqgJormDqIrjkTkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sL5wwqYOkr4/Ki9SrpipJsci8FCaDzbjnt9FhJPTA+1w7ZHyuFSTMCN74ZwCTVv+KeZvUtggSMnMWzeIjeXWI6llpWfI6F83wnut5dwfNSe1iBl4WOgMwkfXvlABS/ZeCIxp0NE4ah3KHT/PsJGTnpbi/LoKmZHm5EeFNbohUS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dyIkqGCf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573Nnel4025572
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 04:52:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/cFrwLq3HQhmTSQxSXVw+WLa
	sVwzOCkOdDsAcXyYKYs=; b=dyIkqGCfdNKl6Us3ZqdLv900sBhQcbcZuKh3IpRB
	rp+GprCgw/PDncnzSI5o5u36Bd6Z4QlQlQDzaJlpXOInn1//ZY8MbDwuILRqGP7p
	xoUNT0po7g//5y7GL4+9vAD24pGMLBjeLq7RZVzbTaVaB2IithipY5ytodYPClC4
	dNUA7PkVaqoCvIW0ONhx9pL+00tl3h6v7izoJNKJpbJUKvcsDqBYp/ipOeViRqZN
	es5qUBMkj/VNPb/iOZd+sj0zhbDAeC168B35co6yR3Zi183lHCoAFSPvVHT8NcF6
	pdpCNo+qn5vdQC7vhjhsyaCOAP9EdM7ekV/EwiIrfWHlaQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489a0m3hst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 04:52:34 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e651d8b5e0so404001185a.0
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 21:52:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754283154; x=1754887954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cFrwLq3HQhmTSQxSXVw+WLasVwzOCkOdDsAcXyYKYs=;
        b=nNQiDycwOlcryEUVvAHsimMFb4ce2o3Y2/c7QiJ7fV0aNaDbzzpukDVkf5asQj7J8s
         fAKyGfGdQABjjU2i1VdbtkDP+gnM/Ud4xvAAP8L+ogAZg4Ue3NPQrlwP86MjX57Xeg1l
         Na8YlCECNAhFeASjpIg+Tkq5rqYH5z6mu9h/XS3idl+HcZj2QobjVFRirdEYCZiT9kg8
         uvIqHh3pc3CRS+wP105uXRnyeghfqZdbKN2LzqW6lHgInng22P0ryacTC5kjGnKFygSi
         oddlCbhz+lYkJboScfl4ilEw93Yk3RSsbDS99eE/JUOf3XOFSjnrtguMdmqL8zkkCLrJ
         ESxg==
X-Forwarded-Encrypted: i=1; AJvYcCUGow6A0IHHUKd1RFqmJbdRbDEFlVBrQxKD8gUQp78MdJqEcbcge3/0HicJr2lwGzMRFSP0y4vvOtKK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/gVESv0CWD6DXxHsqL1Xc1wMG3kMrtc+FugFY2Zos/9LA6yyH
	lflxoa2iDZTFd4/fpFL6K5mILaZQ7xiLmHOkbN+7MZBDG4TCXfLVMZ/K/d62H5EeKKq+3E4hbfY
	eygPVFCvscuGjPQ4yht41hpmzCZs3kBvGkaX3WdSpCJee8iHNiKZa2RXWkPh2HB3X
X-Gm-Gg: ASbGncv1b8p2EaG49Oghbv+UGDPrwNCxMoPTO2UdRlE9fuaBJ2xy6zA3hEWUAXL/M0U
	gfu2X0Fn0J8yl/yTsAJt1X1X3phbraoPj52V3slDXBUoB+tKPvos/1T3no79K4ZG7Dut1yUSZDS
	QIacGapcsU3UaoWkAx3hqc14h9fQsjptWEDimsZHig5gP0hM/Hyx0fgu2IaklcAAcPEqIFCG6/3
	YdvIEtkyftrdQKXRAcntBl3k+jH1gbOIspbXwuKRxVlgaK2xVfv3jbvDCIW+Bf0nWM3LUhW71eM
	dqWNJo/OR29hFX6LQOY3SIP6FK2u6dxRWXBoE3GFjtbHINh8Yfv2EItl8oOnnjPLoNuc6Vc4UG3
	/VZi2go5fScEzx+ukVeeDHbuB9hfRBzRcVBADPy1KAHIv08yCeRih
X-Received: by 2002:a05:620a:11a6:b0:7e6:2882:f25a with SMTP id af79cd13be357-7e6963a7457mr933658485a.50.1754283153642;
        Sun, 03 Aug 2025 21:52:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMfTWsXHPhBqobpYEbz/9bATgsYAMJPvLrtT34rSptfkECCIJS6a5FJfM+Zfa+aRLsRdRtKw==
X-Received: by 2002:a05:620a:11a6:b0:7e6:2882:f25a with SMTP id af79cd13be357-7e6963a7457mr933655785a.50.1754283153198;
        Sun, 03 Aug 2025 21:52:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898c164sm1468453e87.23.2025.08.03.21.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 21:52:31 -0700 (PDT)
Date: Mon, 4 Aug 2025 07:52:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/5] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <gkcy5rmtodvkgcyzv5mylq4fnlampwichvywcej7ncrbn35jni@ewvcda4o2s2l>
References: <20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com>
 <20250730-mdssdt_qcs8300-v5-3-bc8ea35bbed6@quicinc.com>
 <deefg7w3ot6cd3woexfwagetmkg4nvu37f66h4ulbdqegdgi3u@plj6puxcsil4>
 <477bebcc-2d1a-4183-8e3d-d792e876c63a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <477bebcc-2d1a-4183-8e3d-d792e876c63a@quicinc.com>
X-Authority-Analysis: v=2.4 cv=JOM7s9Kb c=1 sm=1 tr=0 ts=68903c92 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=Ynuxa8Nitr_4Jzo9iNAA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: OCfnJdewi71DvOiSZKpG3wVKVyupMQ1z
X-Proofpoint-ORIG-GUID: OCfnJdewi71DvOiSZKpG3wVKVyupMQ1z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyMiBTYWx0ZWRfX2Z+cvYctDxqN
 PMcOYw3c7/JYVnU1W+xw/IlxsN8/hi+xIO5m7BQKzenkXpjWhNsmSym5Q/mFYwZ+EIGpcMBqzVc
 hiPygEjQhArl2ZLAXXQUjrQxrFfzLMSAFR1iYKwwvlLr51BVJdB81uxhjAT+OKrxO9mWPCMQpJE
 QnEdWQ00+Oo3fExehOEZsRWCBB/GQ0FHf3SCwsiUmMYMSI4CcUg9vXjQItgI5dWO8YP2K36hJrb
 n8VYvkLpMzibrPKfiaFO+6u6im5BodAcYR3pvhluuWdrkC/+1Q5bmxkMxXs/hdLkY3ZdMh1fDPO
 6J9QAPlfn2FefOLlBWBMDMFcJ52amIpcHAkAJ3Gzop9D279dEXVB9MLjFd7ZJrYvf+vdhLQI8+p
 jwUF0bgWa+GT2AMMk9UGelGjAmAFhuFmSOTtlbNOEI1vIuagQdDIlm89l3L7QrAgdUPkbC0q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040022

On Mon, Aug 04, 2025 at 12:31:31PM +0800, Yongxing Mou wrote:
> 
> 
> On 2025/8/2 17:56, Dmitry Baryshkov wrote:
> > On Wed, Jul 30, 2025 at 05:42:28PM +0800, Yongxing Mou wrote:
> > > Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> > > 
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > ---
> > >   .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 284 +++++++++++++++++++++
> > >   1 file changed, 284 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..ae4bc16395326bffd6c9eff92778d9f207209526
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> > > @@ -0,0 +1,284 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/msm/qcom,qcs8300-mdss.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Qualcomm Technologies, Inc. QCS8300 Display MDSS
> > > +
> > > +maintainers:
> > > +  - Yongxing Mou <quic_yongmou@quicinc.com>
> > > +
> > > +description:
> > > +  QCS8300 MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks like
> > > +  DPU display controller, DP interfaces and EDP etc.
> > > +
> > > +$ref: /schemas/display/msm/mdss-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: qcom,qcs8300-mdss
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: Display AHB
> > > +      - description: Display hf AXI
> > > +      - description: Display core
> > > +
> > > +  iommus:
> > > +    maxItems: 1
> > > +
> > > +  interconnects:
> > > +    maxItems: 3
> > > +
> > > +  interconnect-names:
> > > +    maxItems: 3
> > > +
> > > +patternProperties:
> > > +  "^display-controller@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        items:
> > > +          - const: qcom,qcs8300-dpu
> > > +          - const: qcom,sa8775p-dpu
> > 
> > Use contains: instead of listing both of them
> > 
> Got it, thanks~ here we want to fallback qcs8300 to sa8775p.
> Should we update it to :
> +        contains:
> +          enum:
> +            - qcom,qcs8300-dpu
> +            - qcom,sa8775p-dpu
> 
>  above method can be validated using dt_binding_check.


_instead_ of listing both of them

So:

  contains:
    const: qcom,qcs8300-dpu

> > > +
> > > +  "^displayport-controller@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        items:
> > > +          - const: qcom,qcs8300-dp
> > > +
> > > +  "^phy@[0-9a-f]+$":
> > > +    type: object
> > > +    additionalProperties: true
> > > +    properties:
> > > +      compatible:
> > > +        items:
> > > +          - const: qcom,qcs8300-edp-phy
> > > +          - const: qcom,sa8775p-edp-phy
> > 
> > Use contains: instead of listing both of them
> > 
> Same as above
> > > +
> > > +required:
> > > +  - compatible
> > > +
> > > +unevaluatedProperties: false
> > > +
> > 
> 

-- 
With best wishes
Dmitry

