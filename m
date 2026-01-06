Return-Path: <devicetree+bounces-251761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6C2CF69A9
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 04:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91B37304C6EC
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 03:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6C2224B0D;
	Tue,  6 Jan 2026 03:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nBBqWVaH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MhgVvRQB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7692192F9
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 03:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767670016; cv=none; b=hcIf3yDaA4vSidhugOesjhauZeksV0gmuePjl00HvG9f+yKaz1cf+ZTljDLbtATAqmM9C4fsIQ4GTlI8gWwKAg0tzGG2Sf4BlBEpp/0ejE+Wpz3gDLVvgqZ1/wVz9zCH0UOHXeK0n70e1YxRPoibIVzTpF6UzfJ2NTHzG3+xQo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767670016; c=relaxed/simple;
	bh=8gCA1bbzPrER5KMQLMs78Or2cF9nZk+FIQvgi+KSW3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rLJnR0m4+/b8CNhAahSSFIffYbAz87GQQl9AnupfgsGG9ZVHv3bfA91F48Z+0R5eFu1MfOQ9lN+4vYs6EqglYVG30c88p612PGnP9Z85M/z7QK9Zma3w0bVmXMzsCcJa68XU51t81k6dET4EJG+U7zPFpsh9FV2mfSrM6uMsWmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nBBqWVaH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MhgVvRQB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6063QGGW2616389
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 03:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=f3ep6rz2UXim6CNpaXyKk9f+
	J9alU7zHgd9/x7dkBbI=; b=nBBqWVaHha8B8ZZp69J6tG+9qKjGoDTzIcsxPZqr
	1VTVxOmR/ncGFPF2uTuUZlowINY3+5vny1ASQy+ko4BA+MMIVZZ3MdlqkBCZ/RcI
	F2QFlbweyDm2hIa618mU/rq+7PFWs+tfzhg1Flk0tb7M3vy0SS7x658R5aaOwakf
	OEEisGKSBv0HZ37H5A7Si/ijROCFz0d8lYp+WCviMiY+a2DOpmN+VvWguMHVp/WI
	nWBInjknUyV/Ir0ujNYq8s9Tx0ZLT2JokqI4Zp3dkWIZ5kKTbJor42UKbjWVH3+e
	jPZZN5XJ9jQArHaLcoPzLxlnXSxtUuS7xiRW+nHqNXOaCg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bg79nkcuf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 03:26:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1d2aa793fso17431461cf.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 19:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767670012; x=1768274812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f3ep6rz2UXim6CNpaXyKk9f+J9alU7zHgd9/x7dkBbI=;
        b=MhgVvRQBpHGXC7LCuFo8IQknFVaGR5Tk2tbyEGulEi1s6USkqILAYSUmpsDvHGPsLy
         DjDC29RYPjqQ5QJ9qcXMW7a2rPkbHXtmQPSQLnCTruYgBws6ZJf6YV66v6BlFfdpvbdl
         oq06/2q/mu2b8l/prCLg4TmjoVv9KqN1NcilKZOkAZC3jklOUk8xIAhPtMo9KLr77Ehp
         eldiwD2AWJiHX50R5DTf4GzQfm7EdWAigK94q3AT9gpyI88WubX1iLp3jLurA/tDqtH0
         poz++kueQfpOk46BeKZhXJ2vCTcgIV6QTGhm0FEaK2lRyy48vvJBmTe8xF8vU0F/xi1r
         K02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767670012; x=1768274812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f3ep6rz2UXim6CNpaXyKk9f+J9alU7zHgd9/x7dkBbI=;
        b=Wjf7bzsigZLVPJEYdkt4xgKt9DDRWJR5cRLUI9Li0TqM+AwADFVrk1AhCRY5K2gbXP
         /RZUd4P1m36T+mieVxle6z15MrCRwAFqEAsOGn1t8cROlpRBKUvgCJZFS2Qf7615RVcG
         mDaeGfyWoUXk2W0pGmlkfgZScLjjB3BoYrFEt9KgIAdsxTCwI+wTnEIEO/M/m6z/2Fcd
         sSApO9FpyraU4HdSLRAcviVkJE2Q+EQz7GsUj9w64YuQo3oHETSmGSaowAYtqWltBeGj
         DvwWI7fUFmg67s20mrda1B4+GAVZE6g5HFR2W+bFMM0LIB9XSU9ArLqE+OzEzr42+NeD
         5nAg==
X-Forwarded-Encrypted: i=1; AJvYcCWr5ISR3d5Zz0tywlW/iBX9RxCtyPxHnOKmMAVFEn/RwlivjVQQovnTaNo6JGLkCoOzVrnNhwiPIMXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YynyEDpOAUz/umR/TbdJXMrMxsCp1nUS4MSnzuwzmVx2h0pxvrf
	iDl5QnP++OUlFKSICYfXzGLe5TisIqUmXElWMVg95uKXTmXPYBOyVOvB7ndGJPY7lY89P7d8YfV
	yOGOqYz/TjMo8NDh89SeSh9B/1PAtTTJlkQCbEkyYKJkpqnCHyWLBCgI9S6pGw9rhGXoGLLYs
X-Gm-Gg: AY/fxX5pA4OJemy0+GrpjL2Nul1I7tJpO+7FdGZg7OTQo1sSTDcSS4n+KifeDMC/uax
	BiLQlxltOF3w2CeFRhbuqWDAQdKwPbkyDFLRhrZjmxaXsyDE7EmzOSQ6PpVqVgRuOlAGTJUEA2d
	fJ1evO6DqrK0orzWbOOC/vOH68iB2oRHefK9G1nTsX8pqGv5TOQVegLMNxa2DmR7zbQkOZEahte
	i8/ykLzpbXiM5zYORIDg6UZ5G3jsnZOxTDh1DNI92ai6NOUesqRa20eGQZkOLBuGeVuQlMAjmIt
	YZVY1nQCz+qYl2BVw4uZB3sE0mKpNTgjN8g39e/cdEul29eXbt0x2Ok77f8au+8BAwkamk8lhra
	6f8Rdj6fnG9qxKr0+jQfyedjixSsEEc8HyUIOfb88qRX8SENnGRXuWMXsZ80gUG3cpPRQBCFWEd
	KWoZ6W15cwN33Kl72I5hhZQ30=
X-Received: by 2002:ac8:5cd1:0:b0:4ed:b82b:19a3 with SMTP id d75a77b69052e-4ffa76e877fmr25528361cf.32.1767670012471;
        Mon, 05 Jan 2026 19:26:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFajXpGsU76LYsNJJBT6h3WvxIgbU16/3bpqTwuiOU91qZ1+eKYyPAPUpQNjN5c4jOjWGy6mw==
X-Received: by 2002:ac8:5cd1:0:b0:4ed:b82b:19a3 with SMTP id d75a77b69052e-4ffa76e877fmr25528171cf.32.1767670012067;
        Mon, 05 Jan 2026 19:26:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d0d1f1sm245791e87.24.2026.01.05.19.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 19:26:50 -0800 (PST)
Date: Tue, 6 Jan 2026 05:26:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
Message-ID: <gizxtjc2hia76qs37vl7atg5ixyk4fpr6qnwqlsajkddhxwb46@nyngnrdo5r57>
References: <448f2efa-5b1e-4855-a62d-2e375938b36f@kernel.org>
 <c7983b8c-5085-43a0-bd5e-1194df2f0ee5@oss.qualcomm.com>
 <a2b62af6-fe17-4c4b-9dea-4ba9cf312765@kernel.org>
 <j7i2oryel7d5u6gsbb54iaer7amqre2vzwkb6fieybascvonwi@bmt7zmcvg7yi>
 <36cb7d6e-ece4-42c7-bc11-b66837df5fc4@kernel.org>
 <469d89c9-8f6c-4abe-9d9f-b6a47f8cefd8@oss.qualcomm.com>
 <f54dc011-1796-4088-8bfe-be19e8bd9157@kernel.org>
 <bab3794d-d7f8-492a-82a2-6a8a6f80a708@oss.qualcomm.com>
 <6qvzhyjrxctrrdvhktxkusyhdcohr43muung5paan2i35suxwg@kfl5kkmpv4fw>
 <3f3dfd39-2cd1-4b03-8632-2c9d15b0bc2e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f3dfd39-2cd1-4b03-8632-2c9d15b0bc2e@oss.qualcomm.com>
X-Proofpoint-GUID: xXSa0fTR6d3IT9uno2GAFM5sjkNg_Gix
X-Proofpoint-ORIG-GUID: xXSa0fTR6d3IT9uno2GAFM5sjkNg_Gix
X-Authority-Analysis: v=2.4 cv=Y8P1cxeN c=1 sm=1 tr=0 ts=695c80fd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EWh0Klxv9-rEfi-CBU8A:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAyOCBTYWx0ZWRfX4hiVpBNM/fFD
 2IgykMHUBdaXp77spQQ4BpU4/gDGakQ6GtJ7XS5fLSzm7UN1wxjAh9EjYT/THRAGraC2FeXgqXH
 sSX2EGRO0uDrt80M1M8B8WQelFlfp1AY+MI32IKQa1u22MU7a9DpnQdicl1CIK4VIkmc+typqcL
 fNZkNkE8iVijDm/SqQTB0B5fUsMqVR2wBMxVF/JarNDMBRaR3zVXHMr6n2ERE8YZDyLkjZhCqOR
 C/Ujtv9blZkLZzlEHwjUZxPLo4iz1GAbidJZtFWlTvAdvtc0gth21z2zyfrMD9zmcz6BiHH3PqF
 Tl8r38LH/fE9s1YQnqKqsItuOoar+4T/zocNxTg8289x06P2N5rSfQQrFyCKB2+zVpWSllN1M2+
 p7NErvbACj75IcU4nSW851BdzlVV5fAnyM1Gu5AIRbMaznNKx6wgfvsaESi8VcWEbUOf3PawXmE
 7eOPO+tK0GOAC2rLm4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601060028

On Tue, Jan 06, 2026 at 11:05:30AM +0800, Tingwei Zhang wrote:
> 
> 
> On 1/6/2026 9:47 AM, Dmitry Baryshkov wrote:
> > On Tue, Jan 06, 2026 at 09:24:38AM +0800, Tingwei Zhang wrote:
> >>
> >> On 1/5/2026 11:09 PM, Krzysztof Kozlowski wrote:
> >>> On 05/01/2026 06:36, Tingwei Zhang wrote:
> >>>> On 12/30/2025 3:21 PM, Krzysztof Kozlowski wrote:
> >>>>> On 29/12/2025 21:08, Dmitry Baryshkov wrote:
> >>>>>> On Mon, Dec 29, 2025 at 09:47:05AM +0100, Krzysztof Kozlowski wrote:
> >>>>>>> On 29/12/2025 08:38, Yijie Yang wrote:
> >>>>>>>> On 12/29/2025 3:21 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>> On 29/12/2025 02:23, Tingwei Zhang wrote:
> >>>>>>>>>> On 12/24/2025 8:12 AM, Tingwei Zhang wrote:
> >>>>>>>>>>> On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>>>>> On 23/12/2025 04:38, Tingwei Zhang wrote:
> >>>>>>>>>>>>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>>>>>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
> >>> If this was the same SoM, just with different SoC soldered, it would
> >>> have the same PMICs. Different PMICs means different SoM...
> >> I agree. It's not same SoM, but they are very similar with same circuit board.
> >>> Anyway, I shared my opinion and I am not going to spend more time on
> >>> this. It should not be my task to go through schematics and prove that
> >>> PMICs differ. Authors should.
> >> We will make it more clear in the description about PMIC difference.
> >> Since we have the agreement that Hamoa/Purwa modules are very similar,
> >> we will use common dtsi in next version. Please let me know if you think
> >> that's not correct thing to do.
> > I think, you have been clearly told _not_ _to_. You have agreed that
> > they are not the same module. So, please stop.
> >
> From hardware side, I think we are on same page. Hamoa and Purwa modules
> are not same SoM, but they are very similar. The only difference is different
> SoC, PCI, APC supply and one PMIC. The circuit boards are same.
> We have exactly same case on Hamoa/Purwa CRD which uses a common
> dtsi.
> Can we use common dtsi for the hardware boards which are very similar?
> Is that very strict that the hardware boards have to be exactly same?

I don't have a very strict opinion about the shared DTSIs. However, I
really want to point out: you got an review comment that it is
unacceptable, you never got a comment that it's fine, nevertheless you
want to ignore that review comment, coming from DT bindings maintainer.
In 99% of the cases _ignoring_ the comment is a very wrong idea.

From my PoV, asking to "Please let me know if you think that's not
correct thing to do." after you got all the previous emails is rude.

-- 
With best wishes
Dmitry

