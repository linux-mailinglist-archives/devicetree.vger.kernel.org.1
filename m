Return-Path: <devicetree+bounces-249327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11328CDAF1F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 01:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF220301F3E2
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 00:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D2C218AAD;
	Wed, 24 Dec 2025 00:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NpN6maSq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fsoHcs3f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9151C3314
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766536664; cv=none; b=lVIstK1Je3MZP8iypUvcJUtQSTMAX4YbhCYoklo20pkPYBLnuLYtUmh4ToMJFtZApYuBUWDLJY+2RV5reZls0ZKS+2ciUB06ze1qRC1vnLYuriattmdEETaqry2mXzDCJiXwRGS3+jRWF18EUqkKK/wXo/RS6EI/oqO1OMUzyA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766536664; c=relaxed/simple;
	bh=LFem9DMzUIajGKseYlsydaAet96n7f7S2wMBV4XMd1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L9dGGErtHeXINYOY75NOmP3885sgPgK97Tlq3NHmwdourZ7XqTYU4ZPMRu8TF4YIAAcYQf1QUsSmx3B0Fw/LHnDaZT5tiw89P/W2fRSZDp3y/+Qzmf7bzdevrIlWxyH9G/5YO2rsPXIM+guxRhgo1YTwASVoQd0PfxRqTENKOMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NpN6maSq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fsoHcs3f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNJreeP721901
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/YAOKhWKH3N+K9qVaMcFeCT/
	m/bw8c2nGx7bTrdKtjQ=; b=NpN6maSqHBF7RVEmVtfCqYcla8mfWT8tuuhwSGex
	5xH78XHdLEQclnttiOQMthgjVM2u23agcnF7foPWo+YGF8Oi8j0nAH2vQSO53+lv
	5Ma/MndSB8xU9Fg/xKM5T8QIIUdU+kEIAXzVJvqTghra6zePSNUlNUbrBhsxTTyZ
	z59Y9ZO8Jn8taN3CV7yQtilK53YEN1s/yUD4BJ0D27HxY/AnSfoq0M1ccHGuLT3J
	LGKJqfOU2vdH0fUJCXeJF2q85TZ+9LRnHUhtBAN/aw5rMu2grSZPJ9SbnSqHMQl8
	tV9sVvKyELEQnpVoLOBblPsI8Qz9NkNc9s5ZZu2nYIhtaw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b81mt8ky6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:37:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee21a0d326so30678711cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766536660; x=1767141460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/YAOKhWKH3N+K9qVaMcFeCT/m/bw8c2nGx7bTrdKtjQ=;
        b=fsoHcs3fn2nUaLkZeE4m03CHyjwUhVVYD9isyldjaNCb5k7h0uhypmWGlf2QlrxOhs
         VtdsZRwVWZDfvFXOxsnvx5PT4gAheCoDtMazH5cLNS/v5Ren/OKjjjMPkPcVO/BkbPlj
         iKFTXRcGSooX2WuXnzlNaB+Wr/vOw2kCxsHOKvZTDp00o/OQpCZ7Q/Oty6/Svau7CkUI
         psXsLwViVKTpnSXfmcMFiicqltxArYajUakwF++1mctl+Jt2DV+8aDUx3nzDW3xqA3ph
         qyhaK4JUMFrGlVZz79eJzu0q8+OpVuaoR8Q8AF4ELLPBDolcyHKi8T9YybdTOC9A3Mu5
         SOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766536660; x=1767141460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YAOKhWKH3N+K9qVaMcFeCT/m/bw8c2nGx7bTrdKtjQ=;
        b=L4JI71Mz1d1cAoZDqKdmhOToj7N9s2byyoqhgamr/eJzgAGhTAleqXQ1FMm2bLSzmX
         bxPrzL32b4wwCz80/JGn0/SDM8lswbtzCMLONpcHPoqBZG+Z8teye+Og+D2NNddrK2Nx
         VsYZGBfz9DWSvDIQEjqOmb2Q1t2vBkZpzbbOYJswSiaR3HWoMtuFFCd1kyMZ31NDdtWe
         PbCvmLcdhsmTxXtLZEAvExT5n5+b5iPSIvlzUiuEVO3Zd8Fq1YKeBlyTzL3tnJMv7AUK
         Noc74Ol2XQyoNFFWsmQdtmRn3jB14AGjbunYyMnjxVDerDsD/PiN4xE0hxY0my7QXSMR
         CW5g==
X-Forwarded-Encrypted: i=1; AJvYcCWC6HMhM+hA0rHmSzhIJVmJWWAQ68ur0oITpKYvbUC9jgzt42jtlq53LWRQ0XGgMnFf3w4uazgnBabu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+zf5l8YjiiswSkGVx9C9HvlSB89UcuUkM9D2jUA4Uc9NgO9EG
	ophPAdYETk3AwLv0XH2SyzrDOM0y/zpFe+QSRk3uwPMruGFz3t45qBFwXqYUi1BK0oZ/Xecl41U
	HoaqzJWXSczQqFCDV8+5HjWYcx4i3Aeu0DnikLK1nqiPI9/Gii2dRcgI84as46P3N
X-Gm-Gg: AY/fxX43tXyKnp2Cmdf+5CiVclvoZTpp1HIpjAbq5QqcBfEdg7zavSnUt+nNcxS8E4g
	OOUxWnTEY0RKmJFm1JpGOerffSlGgRf6qG+H7tcsdWCjPPtBtRaLnrdeXe73MC6mw91RKO3Xm+2
	s5TV/+px3IeoedXAbVDO6t2BJn/5c2nR5NgI2qTBtXY61inB6VFYaWyF9/ruxGv/TRd3YG8aP53
	rxW1BvQZPxWYqXcoyFWYlpC6PoJNA/SgnJoMECXGuXLqnZ20ticzkXmaTvq4/ZCI9uY9/Eg/D2L
	fe4lJnCDvSc7JTnAt2uwx5FK8PLmPn8JFJ0SlREGJAah+xAFPtioWpRHewcq6MDhIDO/Bt6JAmW
	XHtSfDd/nphTOVkFfnc4iDXoEs+7MtevRgyMMIX80w/xzf43dtaqTpJ5U/x3JqSCZ9NcarNfWbi
	FenmNSvh5o5Ss/2xbno1X9/Po=
X-Received: by 2002:a05:622a:418d:b0:4ee:275c:28d7 with SMTP id d75a77b69052e-4f4abdd6345mr233834441cf.75.1766536660496;
        Tue, 23 Dec 2025 16:37:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQYqcQ8RAiUkM6fn5wm/C8SIkuv5CfLdFvlE6k7nnbLNWz1dAHdDImDOJx97hVRvZEtVA3Qw==
X-Received: by 2002:a05:622a:418d:b0:4ee:275c:28d7 with SMTP id d75a77b69052e-4f4abdd6345mr233834171cf.75.1766536660002;
        Tue, 23 Dec 2025 16:37:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861fcccsm4441056e87.85.2025.12.23.16.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 16:37:37 -0800 (PST)
Date: Wed, 24 Dec 2025 02:37:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Message-ID: <vv7o5wuxqcg6jbj3jnzrsk6fmsdmshvq63syutxd3jfxgdkjsv@tunwxas2ebc5>
References: <57706b2e-becf-47ac-a874-79ce17d12b74@oss.qualcomm.com>
 <812cfa55-269d-4b19-8e18-4815608b6bbb@oss.qualcomm.com>
 <6agidc2r2d2jevtiizj77mtlytoo3raxaoe6b53rvk3obmmiha@x7pqjco4ulhg>
 <030a8eb3-c79e-4be0-8305-7c9bb2005785@oss.qualcomm.com>
 <wwrc637p5nkz6ptuef2hrhyjgqnyifcztlkjrqyw4764vg6jpf@wso4tp6onb5l>
 <1afebfb7-00aa-4f19-b6c7-dd6fadb83664@oss.qualcomm.com>
 <CAO9ioeXqP5i9hEa-DfrEvK3U-3py9KjdMmWnjzZ9kGd4BPqdYw@mail.gmail.com>
 <9fd21cf7-6576-4091-81ab-a09be6b7579b@oss.qualcomm.com>
 <CAO9ioeXKBD0ab2+FmNnFQozKq_cp+hFwc5B6LtgfEC2FLULUYQ@mail.gmail.com>
 <b01eedc2-24b6-43fd-b729-85eded2d6b34@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b01eedc2-24b6-43fd-b729-85eded2d6b34@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e/ILiKp/ c=1 sm=1 tr=0 ts=694b35d5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=uDjLizC7a5IkTmk2YkYA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ZBIqRw0qAvpPpTvM1r1UiKWVbAnSA8VS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAwMyBTYWx0ZWRfX4bMyibMA0rCW
 hPS1W8JZFxCQ5d2O8t9uf4c9oLTfBxRCnROUudomB1HeG8W8AC8/vQItx5UK/8zTL7ssW0o8qSp
 754/q4FRge2UR6G0gyRqtaMEyZU+EePX7FMQXCKT9sit7uSnbzoyU7q5+4yG8Cx8MbjWqVNffWt
 JfOORRCOJ4sj2FlHxDNCfuBqr9ECZSigNQjEN/yyiz1okMV4+3IgZ5MJfQFDrTUFHWHeMf19vhj
 rhx22uYZ2dJr/LnSJQ77cua8q9EqdevQRtMGw+219UYQdLqGe5KHHFNPX3UEpArF8vOLQDJOFXs
 qAVNTTEw4AkmHJnJu+SqXsk8rbooJ+i2Fdpdbjt467DIA3IUvl81lcZa9dyRkvALTblWAdReVG8
 YMIhihh05t2XNvWQ1Yq6NHNmg+hQwCJa0kGfBrN/B73vRLW8qF+5cCH87Y6Ws8pRu31AL6IsfAt
 vxZ7SJDegJ4nHFa8nPQ==
X-Proofpoint-ORIG-GUID: ZBIqRw0qAvpPpTvM1r1UiKWVbAnSA8VS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240003

On Mon, Dec 22, 2025 at 11:59:34PM +0530, Akhil P Oommen wrote:
> On 12/22/2025 4:54 PM, Dmitry Baryshkov wrote:
> > On Mon, 22 Dec 2025 at 12:54, Akhil P Oommen <akhilpo@oss.qualcomm.com> wrote:
> >>
> >> On 12/22/2025 2:45 PM, Dmitry Baryshkov wrote:
> >>> On Mon, 22 Dec 2025 at 09:19, Akhil P Oommen <akhilpo@oss.qualcomm.com> wrote:
> >>>>
> >>>> On 12/13/2025 12:58 AM, Dmitry Baryshkov wrote:
> >>>>> On Fri, Dec 12, 2025 at 01:01:44AM +0530, Akhil P Oommen wrote:
> >>>>>> On 12/11/2025 6:56 PM, Dmitry Baryshkov wrote:
> >>>>>>> On Thu, Dec 11, 2025 at 05:22:40PM +0530, Akhil P Oommen wrote:
> >>>>>>>> On 12/11/2025 4:42 PM, Akhil P Oommen wrote:
> >>>>>>>>> On 12/11/2025 6:06 AM, Dmitry Baryshkov wrote:
> >>>>>>>>>> On Thu, Dec 11, 2025 at 02:40:52AM +0530, Akhil P Oommen wrote:
> >>>>>>>>>>> On 12/6/2025 2:04 AM, Dmitry Baryshkov wrote:
> >>>>>>>>>>>> On Fri, Dec 05, 2025 at 03:59:09PM +0530, Akhil P Oommen wrote:
> >>>>>>>>>>>>> On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
> >>>>>>>>>>>>>> On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
> >>>>>>>>>>>>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
> >>>>>>>>>>>>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> >>>>>>>>>>>>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>>>>>>>>>>>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
> >>>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>>>>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>>>>>>>>>>>>>>>> ---
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>> [...]
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>>> +                        gpu_opp_table: opp-table {
> >>>>>>>>>>>>>>>>>> +                                compatible = "operating-points-v2";
> >>>>>>>>>>>>>>>>>> +
> >>>>>>>>>>>>>>>>>> +                                opp-845000000 {
> >>>>>>>>>>>>>>>>>> +                                        opp-hz = /bits/ 64 <845000000>;
> >>>>>>>>>>>>>>>>>> +                                        required-opps = <&rpmhpd_opp_turbo>;
> >>>>>>>>>>>>>>>>>> +                                        opp-peak-kBps = <7050000>;
> >>>>>>>>>>>>>>>>>> +                                };
> >>>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> >>>>>>>>>>>>>>>>> or mobile parts specifically?
> >>>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
> >>>>>>>>>>>>>>>> here.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> The IoT/Auto variants have a different frequency plan compared to the
> >>>>>>>>>>>>>>> mobile variant. I reviewed the downstream code and this aligns with that
> >>>>>>>>>>>>>>> except the 290Mhz corner. We can remove that one.
> >>>>>>>>>>>>>>>
> >>>>>>>>>>>>>>> Here we are describing the IoT variant of Talos. So we can ignore the
> >>>>>>>>>>>>>>> speedbins from the mobile variant until that is supported.
> >>>>>>>>>>>>>>
> >>>>>>>>>>>>>> No, we are describing just Talos, which hopefully covers both mobile and
> >>>>>>>>>>>>>> non-mobile platforms.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> We cannot assume that.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Even if we assume that there is no variation in silicon, the firmware
> >>>>>>>>>>>>> (AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
> >>>>>>>>>>>>> wise to use the configuration that is commercialized, especially when it
> >>>>>>>>>>>>> is power related.
> >>>>>>>>>>>>
> >>>>>>>>>>>> How does it affect the speed bins? I'd really prefer if we:
> >>>>>>>>>>>> - describe OPP tables and speed bins here
> >>>>>>>>>>>> - remove speed bins cell for the Auto / IoT boards
> >>>>>>>>>>>> - make sure that the driver uses the IoT bin if there is no speed bin
> >>>>>>>>>>>>   declared in the GPU.
> >>>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> The frequency plan is different between mobile and IoT. Are you
> >>>>>>>>>>> proposing to describe a union of OPP table from both mobile and IoT?
> >>>>>>>>>>
> >>>>>>>>>> Okay, this prompted me to check the sa6155p.dtsi from msm-4.14... And it
> >>>>>>>>>> has speed bins. How comes we don't have bins for the IoT variant?
> >>>>>>>>>>
> >>>>>>>>>> Mobile bins: 0, 177, 187, 156, 136, 105, 73
> >>>>>>>>>> Auto bins:   0, 177,      156, 136, 105, 73
> >>>>>>>>>>
> >>>>>>>>>> Both Mobile and Auto chips used the same NVMEM cell (0x6004, 8 bits
> >>>>>>>>>> starting from bit 21).
> >>>>>>>>>>
> >>>>>>>>>> Mobile freqs:
> >>>>>>>>>> 0:         845M, 745M, 700M,       550M,       435M,       290M
> >>>>>>>>>> 177:       845M, 745M, 700M,       550M,       435M,       290M
> >>>>>>>>>> 187: 895M, 845M, 745M, 700M,       550M,       435M,       290M
> >>>>>>>>>> 156:             745M, 700M,       550M,       435M,       290M
> >>>>>>>>>> 136:                         650M, 550M,       435M,       290M
> >>>>>>>>>> 105:                                     500M, 435M,       290M
> >>>>>>>>>> 73:                                                  350M, 290M
> >>>>>>>>>>
> >>>>>>>>>> Auto freqs:
> >>>>>>>>>> 0:         845M, 745M, 650M, 500M, 435M
> >>>>>>>>>> 177:       845M, 745M, 650M, 500M, 435M
> >>>>>>>>>> 156:             745M, 650M, 500M, 435M
> >>>>>>>>>> 136:                   650M, 500M, 435M
> >>>>>>>>>> 105:                         500M, 435M
> >>>>>>>>>> 73:                                      350M
> >>>>>>>>>>
> >>>>>>>>>> 290M was a part of the freq table, but later it was removed as "not
> >>>>>>>>>> required", so probably it can be brought back, but I'm not sure how to
> >>>>>>>>>> handle 650 MHz vs 700 MHz and 500 MHz vs 550 MHz differences.
> >>>>>>>>>>
> >>>>>>>>>> I'm a bit persistent here because I really want to avoid the situation
> >>>>>>>>>> where we define a bin-less OPP table and later we face binned QCS615
> >>>>>>>>>> chips (which is possible since both SM and SA were binned).
> >>>>>>>>>
> >>>>>>>>> Why is that a problem as long as KMD can handle it without breaking
> >>>>>>>>> backward compatibility?
> >>>>>>>>
> >>>>>>>> I replied too soon. I see your point. Can't we keep separate OPP tables
> >>>>>>>> when that happen? That is neat-er than complicating the driver, isn't it?
> >>>>>>>
> >>>>>>> I have different story in mind. We ship DTB for IQ-615 listing 845 MHz
> >>>>>>> as a max freq without speed bins. Later some of the chips shipped in
> >>>>>>> IQ-615 are characterized as not belonging to bin 0 / not supporting 845
> >>>>>>> MHz. The users end up overclocking those chips, because the DTB doesn't
> >>>>>>> make any difference.
> >>>>>>
> >>>>>> That is unlikely, because the characterization and other similiar
> >>>>>> activities are completed and finalized before ramp up at foundries.
> >>>>>> Nobody likes to RMA tons of chipsets.
> >>>>>>
> >>>>>> Anyway, this hypothetical scenarios is a problem even when we use the
> >>>>>> hard fuse.
> >>>>>
> >>>>> So, are you promising that while there were several characterization
> >>>>> bins for SM6150 and SA6155P, there is only one bin for QCS615, going up
> >>>>> to the max freq?
> >>>>
> >>>> I have cross checked with our Product team. I can confirm that for both
> >>>> internal and external SKUs of Talos IoT currently, there is only a
> >>>> single bin for GPU with Fmax 845Mhz.
> >>>
> >>> Okay. Thanks for the confirmation.
> >>>
> >>> What happens when somebody starts working on a phone using SM6150 SoC
> >>> (e.g. Xiaomi Redmi Note 7 Pro)?
> >>
> >> Update it in a way without disturbing the qcs615-ride.dtb? It is safe if
> >> we add speedbin for Mobile in future, because KMD can correctly handle both.
> > 
> > Corresponding entry in a6xx_catalog.c will receive speed bin
> > information. Will that break compatibility with the existing
> > qcs615-ride.dtb?
> > 
> 
> It won't. KMD will select a bin in OPP table only when a speedbin nvmem
> cell is present. If the nvmem cell is not present, it will ignore the
> speedbin table in the catalog.

I'm not extremely happy (and I'd prefer if we have added GPU bins in
this patchset), but  technically you are correct and it can be done
separately, when somebody will work on those phones.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
> -Akhil
> 
> >>
> >>> Likewise, If I understand correctly, QCS615 RIDE aka ADP Air uses an
> >>> auto SKU rather than the IoT one (please correct me if I'm wrong
> >>> here).
> >>>
> >>
> >> AFAIK, IoT variant is QCS615 and Auto variants uses SA6155P chipset.
> >> Both chipsets are functionally same except some fuses.
> > 
> > Ah, ok. I wasn't sure if we are using QCS615 or SA6155P in the Ride devices.
> > 
> 

-- 
With best wishes
Dmitry

