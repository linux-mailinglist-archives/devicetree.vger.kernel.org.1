Return-Path: <devicetree+bounces-201536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC7DB19AE3
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 06:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E8FC1896AD0
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 04:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2353621C9E3;
	Mon,  4 Aug 2025 04:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g7eiM1y5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE532AD00
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 04:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754282988; cv=none; b=NUKlRhWwMI5JU1nuQcEua8zlaAaD0jjTGK4SSnSl+BYBHBycViSgq6E761q1TEV8NP6CRfJoxheVsdOtPF/q53WgBL9RUJCJQVcpOmWHiE4DFixyNlJzCi8TQkTQ1Tb5oKRUrcGXZrmogzPNppbTMTomyWB7FHQNgrQorTHr7+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754282988; c=relaxed/simple;
	bh=0ltsV4mWvJmUpf/h8E1XC7/gt4iYXwt23Cs/5n8Rjdw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bhe5gdSrYpfHkBcD0GPAVaLy0HlTpq+UNEudYuCiPfmnF9v+08fSl+6wFgxMI73rVV+ZrfENAOmlJejTzRVW0cbIXP1GMTpR/7p2iJIYCTYz3TqgRfJ/50dVbQuMtexxpC1BvOlmJRFcXFVXlnc227ojQ15Vwo4q9iLt9UEwdNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g7eiM1y5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573NPAbG016351
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 04:49:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7Yglzp+yr4eKtq6gEDEP5fa6
	YZypOJLaqkMYl6UIZkg=; b=g7eiM1y5O/gIMYLOM748dtFF6sgsQD7aG486JCJa
	uBkwY8WfteAbZIH95pEwiQQd1PtY1yEb3zBkLdNfbRmd1+OlQl813xqdyVbSVgHZ
	2Y0xPIxXj+ALbWW8I2h1xR0IhI+gSptZp/NU168tZkrvEIRs4n6oyeYK9LFwvcSe
	8fH0G+9Fj1+NycxDvQ7stY5p5IKDFe5jLYxTtji+ioQ6wOZn0ednUHoeeMrz1Z4y
	/WJZNsOXeDtK9XNFxJZVDGSoX3EaQgwzOXcFEsaeVq2G/TPYE5YAjdcOc0e9K/I2
	5pWFdV4+Rg+oP76TWRJ7ylTk1CGComuikXj8XR7hpjR/Rw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489a0m3hjk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 04:49:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e6c4ae500bso85964985a.2
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 21:49:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754282983; x=1754887783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Yglzp+yr4eKtq6gEDEP5fa6YZypOJLaqkMYl6UIZkg=;
        b=TyjMrmQmIoIqWPUZFginPvcQyE403oiTZ5yipZPDK85lf76d8QTNgM165HpCv3fibQ
         qKRDfLR5gsG8CI08MI+s7V+HuI+0n2DCkHKI7UIKe4xnZsKF70kX5pQynSX4uthxpBf7
         3hPRaBw237gJDYDx02swBqtQKJz/Ka2B4+7NVYNzGg2l/suq6nUMxc39dgPxf4MC0UWJ
         vbNNiSfmF+PF27UsZfl7UWFEBFuaCoApEhoUAcr8CcepvVEoO7+e4zox1513my5S/4Zw
         YKFoXdlhvvz8vwb1lvNP6sMBPG+h9z3Dq76We3fxXF3VgpRe1yDhv+kTR8ZPoJ8cIiaZ
         3ixA==
X-Forwarded-Encrypted: i=1; AJvYcCW2j7BW2iJkkzdFkeVJ9n/WlCLPAe/2P0GjR4Af8JZ7asl7RqLmEBLjJw5ZoMYT6pjcX2MpH2AWzqXY@vger.kernel.org
X-Gm-Message-State: AOJu0YzDZhPduoGtx99oP8esVW7QGqTaIsvTYjDanUUMxEa6HiKITRZE
	PDHeRShT6/iuDlZR0Qf9Gh/zGwZu42cMQXZCfGTBQ47c6+9uGgRwRQjcsQgJTNqe6QPgQksN4VI
	1YYOG0okLRXu4x/sfC36fGOK6JTnk27gIGbTO7skFSEA6QJU6LJhz92A2P6LVyTdw
X-Gm-Gg: ASbGncuFDiShZgSWDAMR1V9o+au1H/dT55i+aQK39WbjgeixXKtQ3KRYjiZ97sDrOAH
	sftIARoDM0v99PuMNtAT96A8yI4BLrD8gZMHdgDUDQDWhpmTzpgW5dYtxryPP1y06TxJ4PNAslq
	SsZ1/8Nvk9H1lHt5sKOOh9DFZjY4p4ocfAiQPdnKbB+9iY3wWgsRDYiwSaL33NMtgfgHYBVW1xG
	ZI6zjO8Wxrtlvr3E/ZhWjzx5DR/rnZ65N+LTG66MoXW++2tMuL5WbDcwuXhe2dG63f/E86ktf2m
	LuEpIwLWdHvwoMvFt+j+QWiwn3rFAo6lbWuYfr4z3Dbr18df89LgswWmaKU9cX00LRJPlmpebmT
	H8g1WnNHrCYDjkzrTvji/wxjAVpvVW+UO+i/xjS/BmbPDvphntlgZ
X-Received: by 2002:a05:620a:36c7:b0:7e6:5e9d:f8e6 with SMTP id af79cd13be357-7e69629dbcdmr1106346085a.22.1754282983184;
        Sun, 03 Aug 2025 21:49:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzOqo7RSMXHRYDfEyQ47x4B+Pz6jpUX0s23rEdmLa1EGEICWbN/mAirTNdrgCZnMomrjhq8g==
X-Received: by 2002:a05:620a:36c7:b0:7e6:5e9d:f8e6 with SMTP id af79cd13be357-7e69629dbcdmr1106343785a.22.1754282982745;
        Sun, 03 Aug 2025 21:49:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c98c15sm1529094e87.106.2025.08.03.21.49.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 21:49:41 -0700 (PDT)
Date: Mon, 4 Aug 2025 07:49:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        freedreno@lists.freedesktop.org,
        Abhinav Kumar <abhinav.kumar@linux.dev>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, Simona Vetter <simona@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        David Airlie <airlied@gmail.com>
Subject: Re: [PATCH v5 3/5] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <aiaonlbxwzbpuvnzijzp7btf2oxvtseq7zoylopllooeqshmux@unhoejkdyl6v>
References: <20250730-mdssdt_qcs8300-v5-0-bc8ea35bbed6@quicinc.com>
 <20250730-mdssdt_qcs8300-v5-3-bc8ea35bbed6@quicinc.com>
 <175390746243.1660386.11206814214268936734.robh@kernel.org>
 <cdbe1013-4f15-4638-870b-151292920ce7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cdbe1013-4f15-4638-870b-151292920ce7@quicinc.com>
X-Authority-Analysis: v=2.4 cv=JOM7s9Kb c=1 sm=1 tr=0 ts=68903be8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=voM4FWlXAAAA:8 a=COk6AnOGAAAA:8
 a=VwQbUJbxAAAA:8 a=Wy_ckEHB4fXvzh_zUiEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=sptkURWiP4Gy88Gu7hUp:22 a=IC2XNlieTeVoXbcui8wp:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: DirJODf0UPFreFBN2x21kUmU57zFdjqc
X-Proofpoint-ORIG-GUID: DirJODf0UPFreFBN2x21kUmU57zFdjqc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyMiBTYWx0ZWRfX4c8EC4dju7bX
 u3Dlc4FBBd6nC4cwRsJHQs9tw/J5XKDEMPEdfn01F1zHslecObKwetNfbGS+d2NS7P73hgP76Xf
 cIh8SZewvOB7dosnTS8uP7GQNMzDuDSZNZNfmoWH1EEZaoaJ1JQBxBIjNaE5WlVoYirHKdH2sWN
 mGfZhIjJzEMbk8t/Y+6gMdsCi1eCz2xWOvyBooSviI1kRqU1xXl0bVuQbB+lQmCETsFxCyunzum
 O854RusETj9GVSvetP5YEucoVC8Hk/iAJ/vglrsgrA+/ePCZpQtXi4969CbRqYwjfhaZpjBNqf5
 6HqCLEQl1y8pLA4baHvHJRXOKN5lSd+EiMUUgwEYM37sgCt1xXFY4huJ5b46R8nJqFSr/2E1z8j
 rzQFF4vBxfb2OOZFOoDjLGiRVQ39rJaZM9lv4BWBlMxXqRY9VIWXzng/r+kKuV5kYbiE5/lf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040022

On Mon, Aug 04, 2025 at 12:00:39PM +0800, Yongxing Mou wrote:
> 
> 
> On 2025/7/31 4:31, Rob Herring (Arm) wrote:
> > WARNING: This email originated from outside of Qualcomm. Please be wary of any links or attachments, and do not enable macros.
> > 
> > On Wed, 30 Jul 2025 17:42:28 +0800, Yongxing Mou wrote:
> > > Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> > > 
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > ---
> > >   .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 284 +++++++++++++++++++++
> > >   1 file changed, 284 insertions(+)
> > > 
> > 
> > My bot found errors running 'make dt_binding_check' on your patch:
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.example.dtb: phy@aec2a00 (qcom,qcs8300-edp-phy): compatible:0: 'qcom,qcs8300-edp-phy' is not one of ['qcom,sa8775p-edp-phy', 'qcom,sc7280-edp-phy', 'qcom,sc8180x-edp-phy', 'qcom,sc8280xp-dp-phy', 'qcom,sc8280xp-edp-phy', 'qcom,x1e80100-dp-phy']
> >          from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.example.dtb: phy@aec2a00 (qcom,qcs8300-edp-phy): compatible: ['qcom,qcs8300-edp-phy', 'qcom,sa8775p-edp-phy'] is too long
> >          from schema $id: http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#
> > 
> > doc reference errors (make refcheckdocs):
> > 
> > See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250730-mdssdt_qcs8300-v5-3-bc8ea35bbed6@quicinc.com
> > 
> > The base for the series is generally the latest rc1. A different dependency
> > should be noted in *this* patch.
> > 
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> > 
> > pip3 install dtschema --upgrade
> > 
> > Please check and re-submit after running the above command yourself. Note
> > that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> > your schema. However, it must be unset to test all examples with your schema.
> > 
> This warning need to apply this patch..
> https://lore.kernel.org/all/20250730072725.1433360-1-quic_yongmou@quicinc.com/
> thanks, link in the cover-letter seem wrong. and there is an unnecessary ~

It's not listed in b4 dependencies.

-- 
With best wishes
Dmitry

