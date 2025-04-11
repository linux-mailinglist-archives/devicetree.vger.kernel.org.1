Return-Path: <devicetree+bounces-165787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBF8A85707
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:52:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3D1F8C2EBC
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70151296169;
	Fri, 11 Apr 2025 08:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UdEwQc6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CF82980A4
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744361540; cv=none; b=nq15GH4iN4XyI/MV4/AxyyBUlYQy8lBtsgybaNQmBA9hD8Txx7b2SS6TMn/ESqhI4lMwP2ywpJB8IryuCocXLDtfn8x23/jBZOxoUvU6QPKI7QG8TV5G02V9rxKdR5R0ZwID2i1i8XlvqxmWFy3huwCFosk4oHLTGRQ/uXOMnQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744361540; c=relaxed/simple;
	bh=V7KSZFBtA2pNy/GOdjVOUR3ghYSmXe5GfmpGe4w2sfI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bEtesOCTO4DgUA1WLXOjHwAbihG4rQbcHqeDPyxVRPQp/q8f/EiuPbDPWT4AI4fHEBzUVbmHHqXAvtUR9Au6+5zSG05WE1fs938dAfgTFhCNTtrENPj3hshOhWo/KaQJck/vXkdtVitupSOVhxbJaEkAEFH8weytt3ZStNF89O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UdEwQc6B; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B0T2MD028318
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:52:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=z6jrc2XmgogjjH6Q652wRy6a
	jx90JWJC0BHTJQ8w2o4=; b=UdEwQc6BK1DiLKtmUKzQsg/8WOk/LXPUCVjADXvq
	nzBawJ1+6OGtpWGZjt8OcG/eaz7JA+svQ61ncI3oHzt88mGt6Dgnn3sGt1FBYfxU
	SBpVNsQXOjnw5O70FMauBR1CQs1k3T5aJNGpRD6CDagdA1GTQ8y9jSi6ElGvjtdk
	Kxzt2OeQhx2PWc8qUEoVVViDJ+cuG2gHdLDloFOFOukUGkhEimDnusA24sqEC70Z
	mukjsjMPsBHWpExbZ6cWt4EkUpg17xfzM4pN3u8RntTAlZ15FttDF6nblnV7D0aX
	/si9wTK87DX2Qf23zYjUcS9mjVDbQGcBeuog3enmAQXpbQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twc1smqn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:52:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3054210ce06so2349672a91.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744361531; x=1744966331;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z6jrc2XmgogjjH6Q652wRy6ajx90JWJC0BHTJQ8w2o4=;
        b=Nm/272fhiJvac+44FiNnlNftOFvUbXQgpHBQeMSITLGO21Q9qKlILLx1RzUtHKpw1r
         Ok0taGaVfw5CEQ26rpTfbVWzvKeuDjvXfRChe/gzuNHln5At97A8wYyWfysxC/D5mt6w
         +VUrtkfSNlDbGrP2gD5I1/gaVQXmA7p755IGHU48SCNeLVDliI7OxULHEPExLHIvORoP
         sYcJsmUDOglsmJORSdMrd2wMry1sWhVcshYCBrlVvyx+8YYs3qJRdCVH2reDJH5OzTaK
         AHGuz2HDTe5abqlX9IGifE3NnvDSwI3+smJv2/7TeWHb8D0MPeUmqYAx0cj6JWrrAb8O
         IYVA==
X-Forwarded-Encrypted: i=1; AJvYcCXSeX6QBYSiJ1XUys6q0YNTJdGoJqHgPQiS2QkMhDhewL30Yua2jHylp2LittAQMEbjErJ8IRm94D9t@vger.kernel.org
X-Gm-Message-State: AOJu0YyXPgZnJ0vXpz2B5SDrm9JySqukXvQlXFaTVz7WDbAOAqN69l39
	LsX7EguYZHZgIBL0aZMYGwEBlD/2JpWs8/H/kYBdQx7bZHaPSamH+s+k8l+kPW5QnmXo3JXQz3c
	MxYFbvVQM/tUGChcgc3fumv++8uPvE2K36KoKZK7vE23cYh4L38J8gGiQAHZpIBGyb+ukOuuav7
	gW7dFkVpKx4RKuKym2xMu6CKOLsytjdOvMPdE=
X-Gm-Gg: ASbGncstMFR+B5GnLLZHo01ycjuSM6ODIwlhblv2m+ipmH0oWiKoIRNs+qM+IFScJR7
	nUwS0qUIVIm1XoaIoqS57DyIVpLBFUg44ha2clCrEOyj88/LHYvOM7Gbuy9ZM3LH9fvD4
X-Received: by 2002:a17:90b:2dd2:b0:2ff:72f8:3708 with SMTP id 98e67ed59e1d1-3082365241fmr3842165a91.17.1744361531313;
        Fri, 11 Apr 2025 01:52:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHq8e1j3n7EBmrTV8VSjFwgnkjvrARK7lF9jn+i49uAmC3+EVD4SCW2qUF3b8oCeS9DmSewZ4/hidioLZDDQ8U=
X-Received: by 2002:a17:90b:2dd2:b0:2ff:72f8:3708 with SMTP id
 98e67ed59e1d1-3082365241fmr3842135a91.17.1744361530985; Fri, 11 Apr 2025
 01:52:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250327-videocc-pll-multi-pd-voting-v3-0-895fafd62627@quicinc.com>
 <20250327-videocc-pll-multi-pd-voting-v3-6-895fafd62627@quicinc.com>
 <aidlp3iq6pxym52tp63w35tpcctw4443yihvcwsdszk62xbwfp@esqpmsc4e6qd> <f1125370-c16a-4c20-a01d-2221fb12fdcb@quicinc.com>
In-Reply-To: <f1125370-c16a-4c20-a01d-2221fb12fdcb@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 11:51:58 +0300
X-Gm-Features: ATxdqUFFFFcxLSxiqq4sEuhC8sxM4iqavJQpwJHVW040G1Di18g2WtFDFqnCkys
Message-ID: <CAO9ioeWmuPhBPivthidXTFfnXRBx9rd=iX5aqjB4bMcCKueXeg@mail.gmail.com>
Subject: Re: [PATCH v3 06/18] clk: qcom: common: Add support to configure clk
 regs in qcom_cc_really_probe
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: KQoc-UeYu-VahibLlEJE6EicrhZzAR5Q
X-Authority-Analysis: v=2.4 cv=KtdN2XWN c=1 sm=1 tr=0 ts=67f8d841 cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=eAQpRAmnPJoi4zBeIeUA:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KQoc-UeYu-VahibLlEJE6EicrhZzAR5Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 spamscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110049

On Fri, 11 Apr 2025 at 10:14, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
>
>
> On 3/27/2025 6:20 PM, Dmitry Baryshkov wrote:
> > On Thu, Mar 27, 2025 at 03:22:26PM +0530, Jagadeesh Kona wrote:
> >> Add support to configure PLLS and clk registers in qcom_cc_really_probe().
> >> This ensures all required power domains are enabled and kept ON by runtime
> >> PM code in qcom_cc_really_probe() before configuring the PLLS or clock
> >> registers.
> >>
> >> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >> ---
> >>  drivers/clk/qcom/common.c | 28 ++++++++++++++++++++++++++++
> >>  drivers/clk/qcom/common.h | 19 +++++++++++++++++++
> >>  2 files changed, 47 insertions(+)
> >>
> >> diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
> >> index 9cbf1c5296dad3ee5477a2f5a445488707663b9d..c4d980c6145834969fada14863360ee81c9aa251 100644
> >> --- a/drivers/clk/qcom/common.c
> >> +++ b/drivers/clk/qcom/common.c
> >> @@ -14,6 +14,8 @@
> >>  #include <linux/of.h>
> >>
> >>  #include "common.h"
> >> +#include "clk-alpha-pll.h"
> >> +#include "clk-branch.h"
> >>  #include "clk-rcg.h"
> >>  #include "clk-regmap.h"
> >>  #include "reset.h"
> >> @@ -285,6 +287,29 @@ static int qcom_cc_icc_register(struct device *dev,
> >>                                                   desc->num_icc_hws, icd);
> >>  }
> >>
> >> +static void qcom_cc_clk_pll_configure(const struct qcom_cc_desc *desc,
> >> +                                  struct regmap *regmap)
> >> +{
> >> +    int i;
> >> +
> >> +    for (i = 0; i < desc->num_alpha_plls; i++)
> >> +            qcom_clk_alpha_pll_configure(desc->alpha_plls[i], regmap);
> >> +}
> >> +
> >> +static void qcom_cc_clk_regs_configure(const struct qcom_cc_desc *desc,
> >> +                                   struct regmap *regmap)
> >> +{
> >> +    struct qcom_clk_reg_setting *clk_regs = desc->clk_regs;
> >> +    int i;
> >> +
> >> +    for (i = 0; i < desc->num_clk_cbcrs; i++)
> >> +            qcom_branch_set_clk_en(regmap, desc->clk_cbcrs[i]);
> >> +
> >> +    for (i = 0 ; i < desc->num_clk_regs; i++)
> >> +            regmap_update_bits(regmap, clk_regs[i].offset,
> >> +                               clk_regs[i].mask, clk_regs[i].val);
> >
> > I think there are other semantic functions which we don't want to
> > convert to offset-mask-val tuples. See drivers/clk/qcom/clk-branch.h.
> > I'd suggest to move setup steps to a driver callback. We can improve it
> > later on if it is found to make sense, but it won't block this series
> > from being merged.
> >
>
> Yes, there are other wrapper functions as well but they are unused in most
> clock controllers. We will check more on how we can improve this in a separate
> series.

Please do it the other way around. Implement a generic callback, then
we can check how to sort things out.

>
> Thanks,
> Jagadeesh
>
> >> +}
> >> +
> >>  int qcom_cc_really_probe(struct device *dev,
> >>                       const struct qcom_cc_desc *desc, struct regmap *regmap)
> >>  {
> >> @@ -315,6 +340,9 @@ int qcom_cc_really_probe(struct device *dev,
> >>                      return ret;
> >>      }
> >>
> >> +    qcom_cc_clk_pll_configure(desc, regmap);
> >> +    qcom_cc_clk_regs_configure(desc, regmap);
> >> +
> >>      reset = &cc->reset;
> >>      reset->rcdev.of_node = dev->of_node;
> >>      reset->rcdev.ops = &qcom_reset_ops;
> >> diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
> >> index 9c10bc8c197cd7dfa25ccd245763ad6acb081523..01b1ae52f2dc580350409d6244578944cce571f0 100644
> >> --- a/drivers/clk/qcom/common.h
> >> +++ b/drivers/clk/qcom/common.h
> >> @@ -25,6 +25,19 @@ struct qcom_icc_hws_data {
> >>      int clk_id;
> >>  };
> >>
> >> +/**
> >> + * struct qcom_clk_reg_setting - Represents miscellaneous clock register settings
> >> + * @offset: address offset for the clock register
> >> + * @mask: bit mask indicating the bits to be updated
> >> + * @val: Encoded value to be set within the specified bit mask
> >> + *       (e.g., if writing 7 to bits 4-7, mask = 0xF0 and val = 0x70)
> >> + */
> >> +struct qcom_clk_reg_setting {
> >> +    u32 offset;
> >> +    u32 mask;
> >> +    u32 val;
> >> +};
> >> +
> >>  struct qcom_cc_desc {
> >>      const struct regmap_config *config;
> >>      struct clk_regmap **clks;
> >> @@ -38,6 +51,12 @@ struct qcom_cc_desc {
> >>      const struct qcom_icc_hws_data *icc_hws;
> >>      size_t num_icc_hws;
> >>      unsigned int icc_first_node_id;
> >> +    u32 *clk_cbcrs;
> >> +    size_t num_clk_cbcrs;
> >> +    struct clk_alpha_pll **alpha_plls;
> >> +    size_t num_alpha_plls;
> >> +    struct qcom_clk_reg_setting *clk_regs;
> >> +    size_t num_clk_regs;
> >>      bool use_rpm;
> >>  };
> >>
> >>
> >> --
> >> 2.34.1
> >>
> >



-- 
With best wishes
Dmitry

