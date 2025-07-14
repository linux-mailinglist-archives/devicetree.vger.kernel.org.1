Return-Path: <devicetree+bounces-196020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27043B03EB9
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B368B7A8F43
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FE14248873;
	Mon, 14 Jul 2025 12:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ROHfuF0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0130721B91F
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752496343; cv=none; b=hF9iErAX4xHSuPdsI1DZwzKRYm9NElfKMr9kZSOyWR/zNBRaZ4p/jchwzJjk30zjU0vin6zP6dEpdTaqE1PY8FeSEtc9trweZd2zkQV+k+xFNRU8SQ19MgKyNJF5vh2QyuqyGO6zj8w/VEFQsaUeBicsX5lkp/SBiCXceIHdWrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752496343; c=relaxed/simple;
	bh=flFLNAWDk2urtyAkbTkLSFABCC4IEkAZoRUS6V2MQF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=abSDUg6edujWP7avq84KaKTT+k0JhYipTR3iNgfS4xbaad7y5ybpHjCRnAagP95BWNRi19QIjwQdfRP6zRC4VEdVrQ3Hb5MikIP0tbaBGL7XfEberYj/PLwK/iFMMgYrfMgvaehV2aF0KZ5tPWAapjj+nTpshQZeC0N5Ej6rXcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ROHfuF0L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9iIAm005981
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:32:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7q2lysz52slfDvlR51XkXLPg
	9u1Mj3w8tjVs3VUtBXw=; b=ROHfuF0L2sw8STjmfZBWWQ047vDeEh3kZEyfIFJg
	JRluHY0SK41fUp23rFr6f8PrZ0MdFCyPVTSHaApr9ERSUQund++5gYloO8SVbOGI
	9dbAbWfwoVqhPJdJX6akFeMMir2dRIHIBVThzBR4yMgCLRJvkTOb4v6WGOXO/wcP
	7oEdMLlXwVqx2znScwvLXrULZPzIHF0Ka0qDjulLIMPyqOZA9q6ts2pfFWOzUIKD
	RQERtPerbQh2bA/Nu4ZMaQ+QpY+qTm8EzXrTK8p5Z7IMjUqiFoN6Ocryqf3Wm2vy
	HYQ671/j9a9ZLhzrUXmaZcaSVHiqeyNFkXgGeKrwl3Nm2g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxavpjx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 12:32:19 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c7c30d8986so1255712785a.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 05:32:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752496339; x=1753101139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7q2lysz52slfDvlR51XkXLPg9u1Mj3w8tjVs3VUtBXw=;
        b=sA+AGnYnxf0LwYck0gDqQu6q0ObXYlVmXoR1X0acOvIEHsTdBjObeZwt0Ym9+esOd5
         juHVeNMuJwxfRQqcJJY/XCPXiG+lQ7agnbkMNKT6wXICoqqYaCfmHueAKRgCMV8twC1O
         8i7nU7TGNlEf8VCy3GJ7e/+vWY2H/NFABz7VsYWNPHMmbWeAp3y/Auw30KCKynVnYAJg
         UvQSh3FXdhagECceXld8Up9GMAcxhxArY3/hFjJpUeje04gBwq+mR7kvsS8uq0z2ASRA
         ZL4TcYc+H4BcwUfsFHVMrvX9W/CLJ/UMcZ7OW+1ILJW44Q2yytCUpyCiPYkr65O1XoI0
         SUqw==
X-Forwarded-Encrypted: i=1; AJvYcCVnOt3udMZDx9P92HMjV+FzkgLKk+3WE7J5J3i2Gg83U3IzhJLviUx1JEqZMR5OZrYz4vzX+JQfB//I@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZ/TKbFVPDS/BC3d2G+uvymee/1Io1sJIlE/mpcWrLulQiRlw
	dSeTIs6lVKujSODYAXLqX/sGScOLseGLUcetZjZzu2GkmsL/0nX0LbGh9iVkmT26UCkHnXEl4zc
	uLcOediwmrGMySUtw6savE0cROEDZIt0usVBLXM+zX9eGOlJk6Q7eM2J7lJBlqkL3
X-Gm-Gg: ASbGnctUoJzD8Lp59uOElOvjxz8pC/IIRq4pfg73tSpot5iMo6z6mo4uPGCyx6a2BfH
	IUNiXankiTpScnF4KkfNbuz5UUaMqsRnBx1GfSKcLB0VgwSiQG+45DqY8I8W1ERv8HCkaZIlwls
	pfVQjid52DZxe58uiVuZzPbI5k8I9hIoaoyw0yzTFe7+QOZ+Rgg36PwghUD0V4frUaA2NOOnDzB
	tpxhIAPEcddV6bLY/2q0y1OvxbwkImf6/FV9CwlqUR5fewQYvsV7eUZ4ISDDCL+dIW37qfNwQNU
	IYlNh1COX9SJAxn1RB0CmK5e4VK4o+THHguePPFZcMCXn80xirYGBm0tZL6/K/UqOtp070PUOfK
	CWH/6CFQ/Sz0p2XsZM2ZZdZr5z3Si8Ksb8ZDBgsswAxMspmc/hbmA
X-Received: by 2002:a05:620a:414f:b0:7e3:2f19:deb1 with SMTP id af79cd13be357-7e32f19e3c9mr222595285a.33.1752496338617;
        Mon, 14 Jul 2025 05:32:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJHWSGVbWAfapT1Efo8CREUZ3rbnR+lvZ30NNYQVSM3Nje58DWmrPudsFI7Ni6msJCAqNm6w==
X-Received: by 2002:a05:620a:414f:b0:7e3:2f19:deb1 with SMTP id af79cd13be357-7e32f19e3c9mr222590185a.33.1752496338111;
        Mon, 14 Jul 2025 05:32:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab916bebsm15512601fa.105.2025.07.14.05.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 05:32:17 -0700 (PDT)
Date: Mon, 14 Jul 2025 15:32:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>
Subject: Re: [PATCH v2 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
Message-ID: <ovquneide5g4tpaqr5ptw7b3yr77u4hgzei6z6u7tieysbi62p@6vjbgzhjxd6u>
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-1-9e47a7c0d47f@fairphone.com>
 <64e27035-d124-470a-bc5b-66d254b6ff4f@quicinc.com>
 <DB7I1Q9TD02L.2A18QMRU7VXHD@fairphone.com>
 <b60d3297-8267-460f-9c4c-1519c511ac36@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b60d3297-8267-460f-9c4c-1519c511ac36@quicinc.com>
X-Proofpoint-GUID: Qbr-Y7pDQCjyCSecp3QynBX5g7HZD0ST
X-Proofpoint-ORIG-GUID: Qbr-Y7pDQCjyCSecp3QynBX5g7HZD0ST
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA3MyBTYWx0ZWRfX2L+icyHgQv+2
 iqpK0u4UUM+xkidZc3kMzQ6L3TlCEnDOyNVOf7wB/GDouOCjcsNOW6h2gWMwyrJYx/0fXpIAeQE
 DM808Cb02OLWN4Nf3yubWJMzdi9HplZoMXLsYR108rjtUmAweassdQBQtRGhiN4V6jNQ9bAgl5W
 srbLzxrYf35t2miSKEvhbtEu7DnInKaBBNaL+05EXbn3NxQQ3O+It0Uhhuuu5VAsoP+hYYZbLOA
 hsXtmV9nsjJndcyF2/0OhIbkAktB1ibEqGb5FjwHkEF9nllN6m/j1D1hpguYSjilkyKkjiY8CoC
 Ipd2M14yP9mq1suJNAu/+SPDCLlb7RP6AGGwu/JkhTe9zeON+anIlQX2HfjiDNHK/T13okAoLTg
 ThYDx5svYrZasUWkBQGpKCsyjAPz+bHFmsk5wc3I5+qgenaCGmUn/t1ajpJydzaXkezqUWH8
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6874f8d3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8 a=tQVf4dIAefa0khsDELoA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140073

On Mon, Jul 14, 2025 at 04:34:39PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 7/9/2025 5:18 PM, Luca Weiss wrote:
> > Hi Jagadeesh,
> > 
> > On Tue Jul 8, 2025 at 7:34 AM CEST, Jagadeesh Kona wrote:
> >>
> >>
> >> On 7/4/2025 12:46 PM, Luca Weiss wrote:
> >>> Add support to register the rcg dfs in qcom_cc_really_probe(). This
> >>> allows users to move the call from the probe function to static
> >>> properties.
> >>>
> >>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>> ---
> >>>  drivers/clk/qcom/common.c | 8 ++++++++
> >>>  drivers/clk/qcom/common.h | 2 ++
> >>>  2 files changed, 10 insertions(+)

> >>> diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
> >>> index 0f4b2d40c65cf94de694226f63ca30f4181d0ce5..dbe7ebe5b8710fb03c1671ac9022e608a6aad35f 100644
> >>> --- a/drivers/clk/qcom/common.h
> >>> +++ b/drivers/clk/qcom/common.h
> >>> @@ -43,6 +43,8 @@ struct qcom_cc_desc {
> >>>  	size_t num_gdscs;
> >>>  	struct clk_hw **clk_hws;
> >>>  	size_t num_clk_hws;
> >>> +	const struct clk_rcg_dfs_data *dfs_rcgs;
> >>> +	size_t num_dfs_rcgs;
> >>
> >> Since all other probe configurations are added in qcom_cc_driver_data struct, it is better to
> >> add rcg dfs data also to qcom_cc_driver_data struct instead of qcom_cc_desc.
> > 
> > Dmitry suggested to use struct qcom_cc_desc:
> > https://lore.kernel.org/linux-arm-msm/w4eujq72uqflqpsqshc7zhu6lkc7owufep2g2rjacvzgj44vmf@auonp4ugbgow/
> > 
> > I personally don't have a preference.
> > 
> 
> Hi Luca, 
> 
> As other probe configurations like critical clock cbcrs & pll configurations are part of driver_data, it is better
> to include this DFS data also in driver_data.
> 
> Dmitry, I hope it is fine to move the above DFS data to qcom_cc_driver_data struct instead of qcom_cc_desc.

Yes, of course.


-- 
With best wishes
Dmitry

