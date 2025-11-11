Return-Path: <devicetree+bounces-237119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D994C4D197
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 93B464F7880
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 10:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8BF2727EB;
	Tue, 11 Nov 2025 10:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DIvOqMg/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QpMLyZc7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8DC34CFD9
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762857304; cv=none; b=I93s3qG1sh8amvzhUQpZZhxOx6NPucI71Wyh0sByhFjwgnbrk06YBRsfrQPP3YIMx/l1Zxp2tJAc2z5qaJFmUDpFRvCXc6nwBvlnRJcQ3L7MWHhYXkvNinUBaAXCzXZnUPbh0S32u8roZ8xUIuS2q3LP/giiZJ4XPp9GNcYutTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762857304; c=relaxed/simple;
	bh=nt2OuBqZHp5hH7axLcuK0mwUdCxSdHbJZS+mIKAcLsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FC6bLOY1LtEHtdCKNRpx/MnPhM+rjWiJO5csb6k0mMMSpEI6dODwTlbbkjEuaP1pQeB3FQhACDSS3r3Os7gDaGx529r3+O6AiAI/UH+radQFur12i9Mxhg7kb9Fz8XckwSV4FuGBf2BnMyeZNI13nAPhl1pNCLHYywnWksbLlas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DIvOqMg/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QpMLyZc7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AB4sWWJ1326684
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:35:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XnsQW66caqXufoMpzSwV48sl
	9poFeXZWxE6EhNbsFGo=; b=DIvOqMg/j4o8p8Jh+0Ml0onPKA+ziJUpqm1vCl7S
	5RJ3Jgno0xpZC1U0O3hA+7rQlbjCw5WF8EFdVhkOb8XghrkgX4eGPrv8SnfzrE4A
	pzWWOA1HIstFREM5w2N7wQtIL9KhkkZp+i8QZFaGznT61FmxGQaxSDgbZg7qOjvc
	3i05V9bTxS7o8vWESorApfmHYq5XV5eemwEA2ghCq5rh/YQ5FRQhx2VckdaR9TQT
	IHvAjJrSb8QW1k6RPXNCRjDn3MkbwwCmbj0JT4KHPKsaR4FYjFZKJkkbSmm0PflH
	JgZ8v7kkJl7mY631iytf2BMr4NOxL5m+tkjNmyCMLA3r+Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxhhgykc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 10:35:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed6855557aso16112901cf.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 02:35:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762857302; x=1763462102; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XnsQW66caqXufoMpzSwV48sl9poFeXZWxE6EhNbsFGo=;
        b=QpMLyZc7jn4DB8k6U6wum9Kd0AlWnoDly1lsLdtdgS+HjC6yM2mu1E08DvVOhRRqRU
         BN9JSt/Gr4ORImcXYxN9ZkdgwkmkYJB8O7Zj/9R6AJlVNoFGunhAq4jboByMqVVkrwf7
         K05+3sgYtEX6r72Fx0484KRgMpI7BaxcWGN2fq5Sfc+IC/lXuZHLctEz52U9wAKo/d5m
         66fAC3dDVZplh1DIwCR3PjjaLi+Vya+IkSBRub+IwFGCjpTRMDWGmJ7WdcZMr7G3916v
         bPpkCW+hQ6z+SaUAa5VLEorMJmVaeTWvWjuI7UOe8gZ3gx9vuOIcqmAn2J27hpGi+HNH
         P3JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762857302; x=1763462102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XnsQW66caqXufoMpzSwV48sl9poFeXZWxE6EhNbsFGo=;
        b=aQBthttzK4Cpup0VUWHEZ2jVGiTC8qpre7XS5C7piD15qHmqP6+QZGeqz300YNjewn
         flpQh/PYwW4nIUl/nUYXy0b49Dwga4xtoIfAVVzjgE3dlyRj+F+OOpCiiebqkBIp49xE
         Ls0nIPL9Te/YTw13zGvEQrF7y19m01kmEr0a9m9Wf8K9JUdxAOuW65P2DzERQ2dhcZYZ
         ZXseeNMDEd1ofOojwjcH2XKHo6D4AL6Uh1O+lTtQ92a7URlJymQagH0WFPeeq68e6YWa
         FRRbFN3yrRxrrU63NDG+5keKBArYI9eA/PgNj19NrZT52Gk2svr/6rZRTy44Evjxra6X
         8CHA==
X-Forwarded-Encrypted: i=1; AJvYcCVhnNNL1ehYVXWI7BkBwaw/vXY7A8XP98BwmwIz0eS7Ax2N6tXXhUdowcOVoPTFmw6CcWq2soQaM5fz@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc43ANBe8iAJ/fur6kInBDS/76e+sgl3JSYJzn81VZuTA09t0h
	QcMgjHRS/ZM7gudfRvVJgcGTVUiK97ssdRGYquTiH2H8a79ftT46dHAMTARfAfqTEV6xu4XZ8mB
	8iIFleQ2qwaaaUs5d9Lxm6IXBcT09YpBKaZ8cg/PwPcPXyV5Z5fuAl/TK+U7+mzGN
X-Gm-Gg: ASbGncvf6xFnR7Hii3JCCM2+i/0rHGZOiyKns5UEXhlRhUAXZd8Ad0y/tO4CcqhU9yZ
	dw+gDIhv+Lgch1WZRTd5mybwm8cO7b2WkM+QdAWitLhAVU0H37nXLJucWQW6+HunJFvLRDQTqpv
	QC93rFxdsT+jpLpDB4jM6tMu75JqpqOz/Ceco1fQEF08R6e7FT/Dpg8+iD1FBhmTcUfrlmQXkQy
	ffjGnFOX8nZ3AAc4EkNDKoofppwAt+VQA+NWnmpNCS7NBkAM3nCFV7CstQL8sjU0DYtxjRNlfhB
	lBJLEYf7uZbAQ1AYDsEjyrB9Q9Wnr82U1uIn9JQetLowjEgQQuyfdl3D9QasdhSGFFpGg2a2fzc
	b1d6PEz3tAocNJlUCw9YOWF8apkMc6iN6mmuEokdZP1F08ECNBrunfNYEDHN5bgkRUUnFEjojbq
	a63/iJi1vqm7gq
X-Received: by 2002:ac8:57d3:0:b0:4d3:7e:d6ca with SMTP id d75a77b69052e-4edcaae2a7dmr34490501cf.17.1762857301515;
        Tue, 11 Nov 2025 02:35:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFiGtMsuu9Xc/SbeRo73UYbs3e6EgEQ47a2+DT57DOTLHsjZhT0aojIkqiON+9jG7zGA4OGTQ==
X-Received: by 2002:ac8:57d3:0:b0:4d3:7e:d6ca with SMTP id d75a77b69052e-4edcaae2a7dmr34490351cf.17.1762857301054;
        Tue, 11 Nov 2025 02:35:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a5f0787c8sm44320541fa.16.2025.11.11.02.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 02:35:00 -0800 (PST)
Date: Tue, 11 Nov 2025 12:34:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Cc: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 1/2] firmware: qcom: scm: Register gunyah watchdog
 device
Message-ID: <56aqammkwte3tcdzni2unufjp4t4yaqazzdkigrwqsxp3ghcqe@ppe2pjwg3hrl>
References: <20251107-gunyah_watchdog-v5-0-4c6e3fb6eb17@oss.qualcomm.com>
 <20251107-gunyah_watchdog-v5-1-4c6e3fb6eb17@oss.qualcomm.com>
 <hbxtbaoavlsw7pbmg3cfkbyx4nacjfiikckhqgpvlggbh6hu5b@jyporqecfzni>
 <263d1390-eff5-4846-b2c2-31f96fc3248e@quicinc.com>
 <3794bb0e-5e2c-4d5e-8d81-d302fa36677c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3794bb0e-5e2c-4d5e-8d81-d302fa36677c@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Pc3yRyhd c=1 sm=1 tr=0 ts=69131156 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=uckhTH-Ed0y2VRs-pC8A:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: sZc2k5okO_eElZaj2sifrrwDXgiPJU_Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA4MiBTYWx0ZWRfX4Rr5itp09Bnz
 2z2CbvJI7cAl0NvDk3jd8pQErNL8no7/gMagVVBawLN6wx7BVTCSwtZ2oQ1/psDUI7FxIj9Nf/6
 p5s+mOOGjWOdInoafTSi3m9b+Nt0jQ9IABhoqXvd++thJU11UoFv0FSTdgrgUmv435GpJJL0d2O
 XbPzVr+oCfDLHC6b+yP3yfpTMBooKFXhMpQlx7fvoOk+5PYtdRRCmOYS6E/5RRINt2OvQqDJSer
 myFXRAKoI9C7dsLjR5I0srBoy7ZClvk60EwAYgcsij+mAjry4DRoVd1EoHwZamC2aBvc1tk2xcj
 zeIq3G0gOMtExESEpjeir2Kzg2VbMBqAi6Evkc8PhtjzDP85Fe1fBX1t5PwmrE1OACguytRC7Ej
 GNmXBvcDLUkGQgTNf4V27vaW6aV2Kw==
X-Proofpoint-GUID: sZc2k5okO_eElZaj2sifrrwDXgiPJU_Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_01,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110082

On Tue, Nov 11, 2025 at 10:51:43AM +0530, Pavan Kondeti wrote:
> On Mon, Nov 10, 2025 at 09:43:53AM +0530, Pavan Kondeti wrote:
> > On Sat, Nov 08, 2025 at 07:26:46PM +0200, Dmitry Baryshkov wrote:
> > > > +static void qcom_scm_gunyah_wdt_free(void *data)
> > > > +{
> > > > +	struct platform_device *gunyah_wdt_dev = data;
> > > > +
> > > > +	platform_device_unregister(gunyah_wdt_dev);
> > > > +}
> > > > +
> > > > +static void qcom_scm_gunyah_wdt_init(struct qcom_scm *scm)
> > > > +{
> > > > +	struct platform_device *gunyah_wdt_dev;
> > > > +	struct device_node *np;
> > > > +	bool of_wdt_available;
> > > > +	int i;
> > > > +	uuid_t gunyah_uuid = UUID_INIT(0xc1d58fcd, 0xa453, 0x5fdb, 0x92, 0x65,
> > > 
> > > static const?
> > > 
> > > > +				       0xce, 0x36, 0x67, 0x3d, 0x5f, 0x14);
> > > > +	static const char * const of_wdt_compatible[] = {
> > > > +		"qcom,kpss-wdt",
> > > > +		"arm,sbsa-gwdt",
> > > > +	};
> > > > +
> > > > +	/* Bail out if we are not running under Gunyah */
> > > > +	if (!arm_smccc_hypervisor_has_uuid(&gunyah_uuid))
> > > > +		return;
> > > 
> > > This rquires 'select HAVE_ARM_SMCCC_DISCOVERY'
> > > 
> > 
> > Probably `depends on HAVE_ARM_SMCCC_DISCOVERY` is correct here.
> > 
> 
> Dmitry / Bjorn,
> 
> We are debating on this internally on how to resolve this dependency
> 
> - QCOM_SCM depends on HAVE_ARM_SMCCC_DISCOVERY which means restricting
>   QCOM_SCM compilation than what it is today.
> 
> - Adding #ifdefry around arm_smccc_hypervisor_has_uuid usage in qcom scm driver 
> 
> - Adding stub for `arm_smccc_hypervisor_has_uuid()` which is not done
>   for any of the functions defined in drivers/firmware/smccc/smccc.c
> 
> We are trending towards the first option above. Please let us know if
> you think otherwise.

The same as before: 'select HAVE_ARM_SMCCC_DISCOVERY'.

-- 
With best wishes
Dmitry

