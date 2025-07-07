Return-Path: <devicetree+bounces-193575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A45AFAF3E
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:09:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74C3E7AD840
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6088F28C5D2;
	Mon,  7 Jul 2025 09:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KjulOvaN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C32A1D5150
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751879380; cv=none; b=JawP2Q97Y1mAiCGkqx/24+TqcRPb3RwGrbmBLpagbxPXiAA7PMKdP+8GjTH67NfUSou6K1q+Dbad3M3g6ovvCOq4z7Cj+X9AnfEzm1VXG+QLHszxhbJLaefXyoAu3KBYhyAhqeQaDxLSmxQb7HfLMGWHzBTS11FcTigXsVfFOKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751879380; c=relaxed/simple;
	bh=peFKZhFwedKK68dIFIi4REQ/qFa/6M/SrX4nzwboeGs=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBY6SfR1GHo4xWhmnMSNCZNiSrhKx5cxUH2gyK6rSYQQNh8oHvIZfCSB9hTQoVxaWeYilrKp+U3/zlEt3K0yItuniP6inxjR6r5wQb6Py5HkhbxeXdgL1bvxqi8+O/7eg2WYzVptJ9uIx3eKsVCiYMz1qWkEPD3UfTEq563eBH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KjulOvaN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5670LZIM019352
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 09:09:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VeHPkLQlAJtFoDvPLLCaGfKY
	61RilrGEq+YmYIpz8WQ=; b=KjulOvaNTNDb76cComAJ5M8Hwz+y49/Vt/Y+5bGE
	uW9kg+NHEzRYFUhg2cBUpwCMjzrN9nLcMQnxVuvki9fgncllv3TNufZsxOoL1V0M
	GivYPOK8qQ3L41JPSVj+9BEQJd9kvA+LtodIVkbo5MX938g40+HTJ15QPwic8ONJ
	nJcAlERhsIReY8sYI3XFQAh2IEL6ANPkMRJjZ65bfUP2wT5/0q3+W2JkO4hbPXNH
	WWPHF4aeirQ2H6EFO3dFohpte6nolFy2QeGbktq7sHAA0M/TOxI4XsYb2BVpzczH
	C7j0icpUUdAOV3bzfNpyXq1ByAALs8EjXjClIJQ8yh3R2Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47psdqm0xb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 09:09:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d40d2308a4so395516185a.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:09:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751879376; x=1752484176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VeHPkLQlAJtFoDvPLLCaGfKY61RilrGEq+YmYIpz8WQ=;
        b=xVomz2lga7tf3AROUT5tOsshIa0MFuE18So+CL0c7Upzpqhado5dALDDFFJyffQ12C
         mZXLcnD1PpwoX80PwPNQK+PdWxXNYo+zCDEKM4oJVMzLS076VNGtuAhrKlRS76vfwT10
         +lEvFyoKt3vtazyFXS2WtPMjE5eoNkL4aBNk6+6eyHH4U3HbPdhe3tOmLN1cTXmqy6DX
         oEtpUlFmuC5Ur3eic2c1sq8xvc4F3SsoSnEoPRwZoJHUCbmrQWc9XoFgKbSgzqAleQ0j
         7CcEBGnUikxIQMbLuNrOa9WVt3jqOGY3hNluhhL62rmiEDSY7P9OJlM17j6Fc0FF5kZz
         asnA==
X-Forwarded-Encrypted: i=1; AJvYcCXg40EafJAWj0zvD5fTT2Y5JjWyPeZsOgFvJ+AQEi6QCePgM1jK5y9zqMCro33GKP46NHTZ+npUoZR9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwk9vwz6OgsAbAGLHKhVYwmVaFXijqgxMNDOP9jbe4aLceFUQ+
	PMVPIlRhn9VGN6hY4sM+5pgFWQfTLNVqp6dmZcWUkK+HqpSCoFUikv9rKI1BQRKKG/ZXK9lcQiM
	EiYYQzumbVnD0Tgrdwuh3pHP0pz8LE9WnymaPpzMd205lwSfkw/7IkzFyA6+ZGlG8
X-Gm-Gg: ASbGnctnyGpfkg2paRw+XMkQqk1+a9UHQExt512K7KCSgWjrybHsV169VAd0BcV88Hn
	6E2SKluEsgvRm22MahgecpHE2o3+YSjIOVQbpL7Lcnl89AC/YHAxoG2y4BQLS220U7vKr+i1MFe
	4P45ze3AZrOr0vRzhUGiOv+nw6qIcXr3wFCAI/ThNR9AvM4YPBh3JWjZK1zM3pl0nwtZ+t/Mypw
	AlRW5bK0PCvB4JOMx8Ox5zHL6JXsusAUykWBRP9/RciYJS4+aY6of6brm8vhAzeB94gkZZPqwaC
	G/Xwv/V3zC4sApJrne4gHO4Yy0TEC+DWq6EsLcGZBdV7Q20zT44MTag=
X-Received: by 2002:a05:620a:199f:b0:7c7:a602:66ee with SMTP id af79cd13be357-7d5ef0fe66dmr992951585a.10.1751879375865;
        Mon, 07 Jul 2025 02:09:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkFAscEaQYMChKaP818khtKeWZorHRhJFez5DUN7e7xcaSYzI61t7Vo/NC+j8GjNSpIQbQbA==
X-Received: by 2002:a05:620a:199f:b0:7c7:a602:66ee with SMTP id af79cd13be357-7d5ef0fe66dmr992948085a.10.1751879375228;
        Mon, 07 Jul 2025 02:09:35 -0700 (PDT)
Received: from trex (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b47225a755sm9625686f8f.78.2025.07.07.02.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:09:34 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 7 Jul 2025 11:09:33 +0200
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 4/5] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aGuOzdCu5UmKDF94@trex>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-5-jorge.ramirez@oss.qualcomm.com>
 <ded874b1-715d-a7a7-fd0d-3b98fd5fd029@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ded874b1-715d-a7a7-fd0d-3b98fd5fd029@quicinc.com>
X-Authority-Analysis: v=2.4 cv=ffSty1QF c=1 sm=1 tr=0 ts=686b8ed0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=JosbUmaTz5S-ISoLy78A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: cd1d9K4YgS7XHnnLGN4WNW8R5vPEji3p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDA1MiBTYWx0ZWRfX/Bafj8fIo0S9
 QDEHU17qb+6sx/pFRzv7IOYckWaGGrdb5XbfHwrMYsacNvBXrb3l9drbyXAqHfde5hae9nh4X2z
 qMkmLfox+qR/rH0q+BJ/hwL2uiHamXydVncOkpa+GeCfBsjj5KXqk6nUwaPlXN8XjC3YN+xlV9D
 KJprWhPACCy6MqSfofWwsOJ7HoHXfUlT1bhhzJSNYfD1AzuvgySDETU6Qsf0c170An7jrq7FmBO
 oc4ysVauvueSgrLJruWPqUSRbLvrV+W1n/l6C5USM8GmqBv55uaSLB1VSZVUZp0Rxsqz14pBDqy
 xIfdCvONKqWS49qBox84dCUfHbpqjX9j2Cox6sHq0yLgvQ/O2sjm2A4LZGK9XqmGSkfXnQTzfzx
 wQsI1sIQt5/fx9CTtWqOm7HSRo0Jvmeeg1OdpPdAhL5e5SWPV6hNAG6dqTXh2P6F34V37fIZ
X-Proofpoint-GUID: cd1d9K4YgS7XHnnLGN4WNW8R5vPEji3p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-07_01,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070052

On 27/06/25 18:46:10, Dikshita Agarwal wrote:
> 
> 
> On 6/26/2025 7:29 PM, Jorge Ramirez-Ortiz wrote:
> > Add a qcm2290 compatible binding to the venus core.
> > 
> > Video encoding support is not exposed until the relevant hardware
> > capabilities are enabled.
> > 
> > Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> >  drivers/media/platform/qcom/venus/core.c | 39 ++++++++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> > 
> > diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> > index 736ef53d988d..f1f211ca1ce2 100644
> > --- a/drivers/media/platform/qcom/venus/core.c
> > +++ b/drivers/media/platform/qcom/venus/core.c
> > @@ -1062,6 +1062,44 @@ static const struct venus_resources sc7280_res = {
> >  	.enc_nodename = "video-encoder",
> >  };
> >  
> > +static const struct freq_tbl qcm2290_freq_table[] = {
> > +	{ 352800, 240000000 },	/* 1920x1088 @ 30 + 1280x720 @ 30 */
> > +	{ 244800, 133000000 },	/* 1920x1088 @ 30 */
> > +};
> > +
> fix this corner.

ok, will wait for Vikash to confirm the other ones.

> > +static const struct bw_tbl qcm2290_bw_table_dec[] = {
> > +	{ 244800, 2128000, 0, 2128000, 0}, /* 1920x1088 @ 30 */
> > +};
> > +
> what is the reference for this?
> > +static const struct venus_resources qcm2290_res = {
> > +	.freq_tbl = qcm2290_freq_table,
> > +	.freq_tbl_size = ARRAY_SIZE(qcm2290_freq_table),
> > +	.bw_tbl_dec = qcm2290_bw_table_dec,
> > +	.bw_tbl_dec_size = ARRAY_SIZE(qcm2290_bw_table_dec),
> > +	.clks = { "core", "iface", "bus", "throttle" },
> > +	.clks_num = 4,
> > +	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
> > +	.vcodec_clks_num = 2,
> > +	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
> > +	.vcodec_pmdomains_num = 2,
> > +	.opp_pmdomain = (const char *[]) { "cx" },
> > +	.vcodec_num = 1,
> > +	.hfi_version = HFI_VERSION_6XX_LITE,
> s/HFI_VERSION_6XX_LITE/HFI_VERSION_4XX_LITE

um right, going to rewrite this whole bit and get rid of
6XX_LITE/4XX_LITE (will post 4XX with a lite option instead, which is
closer to the intended abstraction - even though the 6XX/4XX
abstractions are kind of dubious...)

> 
> Thanks,
> Dikshita
> > +	.vpu_version = VPU_VERSION_AR50_LITE,
> > +	.max_load = 352800,
> > +	.num_vpp_pipes = 1,
> > +	.vmem_id = VIDC_RESOURCE_NONE,
> > +	.vmem_size = 0,
> > +	.vmem_addr = 0,
> > +	.cp_start = 0,
> > +	.cp_size = 0x70800000,
> > +	.cp_nonpixel_start = 0x1000000,
> > +	.cp_nonpixel_size = 0x24800000,
> > +	.dma_mask = 0xe0000000 - 1,
> > +	.fwname = "qcom/venus-6.0/venus.mbn",
> > +	.dec_nodename = "video-decoder",
> > +};
> > +
> >  static const struct of_device_id venus_dt_match[] = {
> >  	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
> >  	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
> > @@ -1072,6 +1110,7 @@ static const struct of_device_id venus_dt_match[] = {
> >  	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
> >  	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
> >  	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
> > +	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
> >  	{ }
> >  };
> >  MODULE_DEVICE_TABLE(of, venus_dt_match);

