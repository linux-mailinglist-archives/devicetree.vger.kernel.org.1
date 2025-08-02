Return-Path: <devicetree+bounces-201450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E55B18DDA
	for <lists+devicetree@lfdr.de>; Sat,  2 Aug 2025 11:56:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 461DE188AA29
	for <lists+devicetree@lfdr.de>; Sat,  2 Aug 2025 09:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F21D41F78E6;
	Sat,  2 Aug 2025 09:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eOMTQSLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E6C1D6DA9
	for <devicetree@vger.kernel.org>; Sat,  2 Aug 2025 09:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754128591; cv=none; b=X6A0IJO/hJoigRCrImHhj4pppL13zwFL7natn+zjp5Ro2jOjSmwdpUgS+Y/I62ar9LmDcrPPTr6F1LmzbtQoX7jBbcljd1WtQVhfNEU7b7im+I4hkDLwmgwotBmC8efVOoHj2b2IgccgnkMakGMlEF8rOewvGBfc8O0rDPFcePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754128591; c=relaxed/simple;
	bh=dbfKLcbC8BEtdi4oWfWEgX+I8SPqVMEqxYDY0MC41HY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ARdNon/DKADYK47qkQABDjW4gNPuF73uG5zq0ZgURJz5n6QcRUB+gz1NdFZ8MICzDGV0WaFiNvkbGeIR3f4Dq1yznN3+qVEFhgx8uXzKd816r6+Jb632Cxsi75TAz2oi4VnD/93c97ZbE1TwuHVTDznp6d1IOv6fN2JOV1YUuHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eOMTQSLa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5725exVQ009192
	for <devicetree@vger.kernel.org>; Sat, 2 Aug 2025 09:56:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tgapHTEIyirK94bcuh79Jkb2
	NHYVIyca+jtZheFWZ+c=; b=eOMTQSLaaM+CPoqDc2v/btTMTF1q7UxFxQ959aCg
	IqSx3thWCL0zZ6fNRr9MUFDd1ykMheaBZd0IkF+rgaMjUPeWsYb0OxQtqPX33UBY
	tshAm3VwA8ldYiXAkkfB0ydBgxnpciOwqiLGSsN/wdDWkSHcEcKY39zjUE1BxJTf
	MBuftNk2bjbjyw9LKC6R3YbxUF/mVOP6K5tqY8SfReM24BTNx7cesNrFDjjYBDQd
	qD8EPrhwCpV29BZO6Qp394fdKPI/6EmG6oU009mRqptUAoEvyKlnFnrxLsle+kvo
	/H9HzMdErvwxNxudQi7/D95NKVPml/8r4OfZJUHfOQ0LCw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489a91rnak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 09:56:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e32df3ace0so168018985a.0
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 02:56:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754128588; x=1754733388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tgapHTEIyirK94bcuh79Jkb2NHYVIyca+jtZheFWZ+c=;
        b=M2jTAVKl6ePKj5KauKoF1juLFJbFfm0yZKKDZ2ddkTuWYi3HpllxQKvt5VBtk0pzd0
         zReL0LQIU/T4cd/QkUKVyxUXt5eNeD1PT5VzGBwP4oWC0O+7E1/e5HmKoDZU08vXYLXy
         r8IuOgpjzBML1k5ot094lx5LNAwY1zaIWZh2l/UyOksUUECUdlMS4KpfsCf7bu/6K/C6
         xleucWQn7Ju6tUEvkTktHC2OghBNzgEEkn3WBK/dlNewF2NSBGEY4I/YTzmDka49MWdg
         QeBgum5N0Dngx2zg/OClHbwE96rE3R1qvulPLTxY9uHb2/XCVkMAMoG0CzJCYqbjh2oh
         Zx3A==
X-Forwarded-Encrypted: i=1; AJvYcCW96okRPZqWmyJPm+rAyNTNHtyP5o+x717ui9LZ0e98P8Nbp2QCMHfPDbfvu8Usl71EAezvDxkCtPBf@vger.kernel.org
X-Gm-Message-State: AOJu0YzdWgM2CHskmT/ZslABCca07EbfUQyVKbaM3LEBoroKj2DReA37
	XGRlsBENQAtrxZOFJs77OUmoGdB/ydNW8gA4gxFnmrrcbhxZDjo9GfA+UNLjcDIHzI8/P0+MOQ1
	i3Ol7Nj4HqX/sz7hrv449o00sfVAL/0fXdEnw0mI2hY+mC4xOrUDhprLPr2Lf5vQQ
X-Gm-Gg: ASbGncusJZ2sGwlUJvx+iZrv+uUS1esa46M2SrxD9SzwXTZjA6zo8llJpYJEi4FcuDa
	GhaxCU5s14rOxHh+DNmzITY7vN9xT5u3wXSYsUiMk0v5CtHN2dBdhHJGC/alSPgRs+zco43PIcI
	qgEntgnHTQrS/bg2aLfiM4f06tSdzueN7OumkH90grUlaRCDg/Rvj/RfloFfUahJZYOshO7ggaa
	J/FysX3wXg1ky4IDLt+3uYKHvIqq55c3J9856qxbjIFk4iLcB7TnzUm5h1u70H61+Vs3AO6I3CZ
	2/oJDicAPd1SvRtI6G0gcJ9DW7Y1cmuzFHWrc8ZMY6ho6JdnLZ7E/w9ioMDMF89rdkLNV4GjfJx
	z9e+PcLaKHKUXz5hmSR6uDIE+KJUxDaHmyAeBivR2eBeHepOpnMSF
X-Received: by 2002:a05:6214:124c:b0:707:452e:1e9b with SMTP id 6a1803df08f44-709363276c0mr30228526d6.44.1754128588142;
        Sat, 02 Aug 2025 02:56:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWmPmGi7bSzZLL/ufth6B1UYrxlQ6n2myVT51dGj1PWD8ll7fyJ3i928JLrowb7W4FELQxbw==
X-Received: by 2002:a05:6214:124c:b0:707:452e:1e9b with SMTP id 6a1803df08f44-709363276c0mr30228296d6.44.1754128587672;
        Sat, 02 Aug 2025 02:56:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332388fb356sm9193871fa.61.2025.08.02.02.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 02:56:25 -0700 (PDT)
Date: Sat, 2 Aug 2025 12:56:24 +0300
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
Message-ID: <deefg7w3ot6cd3woexfwagetmkg4nvu37f66h4ulbdqegdgi3u@plj6puxcsil4>
References: <20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com>
 <20250730-mdssdt_qcs8300-v5-3-bc8ea35bbed6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250730-mdssdt_qcs8300-v5-3-bc8ea35bbed6@quicinc.com>
X-Proofpoint-ORIG-GUID: 5e2w_aC00_UHaPDVb8haDFQdNn6aWpr5
X-Proofpoint-GUID: 5e2w_aC00_UHaPDVb8haDFQdNn6aWpr5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAyMDA4MyBTYWx0ZWRfX8QrQzSswJr8Q
 H5YwIXmD89bfBJ3Juri/MAwUElb6Rgu1kjxZIv+9UQm+7Gi4m0yjfPjSLAfFlwmZ93LgfXaMoyr
 T1hmqP2aG36HOg3TjZDinQ1q+/qxlv+5p1dtbDvdLvWYh9jPNR4+kbumZOYg2RNrouIArUsra1w
 sEJYbkj/YpbM6HrIFnWgdo7Lk/aYPY0RdiXFcnG8HCNrX7Zf+vgcqbjd9UFwFOE2UDTBXPXuXiv
 btZ12QuszMJa6ZO/f6QQ0RKHy0LULA/nB6pO6TWggKUaFEWYQohKJ/nXLqjv9em7+96qPPdE7nP
 1aFNbYfl0Fz0sVwUTIRx0YdNJTy09P0/yh6fxtHh5sSWgSLqXy6mtQHfjN/CfZwknsIrhdsFBVr
 fnB/Ovmome4bYsHFxwVUZr0iiUvBY1R4OWHD3KvOCuAFvnc7BiwlOVt9nBnvAowOhVfVii5J
X-Authority-Analysis: v=2.4 cv=UdpRSLSN c=1 sm=1 tr=0 ts=688de0cd cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=COk6AnOGAAAA:8 a=BQMJ-ZqQIgEHPhERFsAA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_08,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508020083

On Wed, Jul 30, 2025 at 05:42:28PM +0800, Yongxing Mou wrote:
> Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 284 +++++++++++++++++++++
>  1 file changed, 284 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..ae4bc16395326bffd6c9eff92778d9f207209526
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> @@ -0,0 +1,284 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,qcs8300-mdss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Technologies, Inc. QCS8300 Display MDSS
> +
> +maintainers:
> +  - Yongxing Mou <quic_yongmou@quicinc.com>
> +
> +description:
> +  QCS8300 MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks like
> +  DPU display controller, DP interfaces and EDP etc.
> +
> +$ref: /schemas/display/msm/mdss-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,qcs8300-mdss
> +
> +  clocks:
> +    items:
> +      - description: Display AHB
> +      - description: Display hf AXI
> +      - description: Display core
> +
> +  iommus:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 3
> +
> +  interconnect-names:
> +    maxItems: 3
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,qcs8300-dpu
> +          - const: qcom,sa8775p-dpu

Use contains: instead of listing both of them

> +
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,qcs8300-dp
> +
> +  "^phy@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,qcs8300-edp-phy
> +          - const: qcom,sa8775p-edp-phy

Use contains: instead of listing both of them

> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +

-- 
With best wishes
Dmitry

