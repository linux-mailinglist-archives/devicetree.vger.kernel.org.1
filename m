Return-Path: <devicetree+bounces-202352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFA5B1D29D
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 08:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33AAE175969
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 06:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04942201266;
	Thu,  7 Aug 2025 06:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RBpnyMs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9954A06
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 06:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754549337; cv=none; b=E+J4/JqB2WT0cNSelN1/YSr9J2ItHqiT4DHuAcnJSwS60Wf+JMAxS+I5hInB0bsIJv2AAAltNEU2f4B0j6Z4HoOZqc96f56VUh0NJW0+yriN7yRyMSn/u1Tj7Qvz0m6hJMPkg8hgg59CFm4Utf3MqvpgPrEF3FHvPallhj5Kyvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754549337; c=relaxed/simple;
	bh=aZrNzzQLDAEnGHKbIl3kMoz+DHiDzbdiBzd6iB8M95U=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AfeyDlo9GUiDfoxzANI1r7N1+wzUybSo0f57XaJF/p81j2h6eiwOL7tiF/OQ4yHZ+Dz3AGkIw4tX3OkPYo+TXlhXvtwyYuUCtTa1LduqcB8u3+6y2NHCjzHrLZ/jAF2p18wkHI+gw2vJ/L0/w9Thzrvil9R70EwMIVkIepWacbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RBpnyMs3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57723A9i027782
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 06:48:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IIrAD+p6ljX7tc226RXg54qe
	tKyZ/GO0KJyMxB2uPLQ=; b=RBpnyMs3uocDtG0EGSOllwX924wT2wNgOSY2LFnp
	XL5CjlUjYJcgvMNKItuL3hT4uIKs7vmqk+mZA1rpBcft21tqn9Gf2jS3nTdOUpOp
	m5FagWttN1b01DX+icz5eNYX0+gB2KrmskU7J8DkoTkjiE7R60Xqry2ka25tMGuE
	BfMqxZxsCJQKUPpYCK2Ge1UozMv9IK91CUtblPsnp9mDefK19sMzeZ4kOFfP2O7V
	Buhg0Fa8GuD7dpdvvsQ17EzQ4DyI2L0l8DY6amevN7blPWNqx84EgP4pWoOSaGCI
	jTvO61xDswIE4iox/RYrAJOGm1XB2s2PKn8/LO3Q81XEUg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy6wash-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 06:48:55 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af14c04e5fso23525921cf.0
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 23:48:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754549334; x=1755154134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IIrAD+p6ljX7tc226RXg54qetKyZ/GO0KJyMxB2uPLQ=;
        b=GocDOiYkBnF2NOVVIGy1Bh1C5juQpdAtUc2NhVgf2nmOtfgYEgI0Wnx1D+Zzz6Z+iB
         OcCAcm1MLc2zCRU1opDgk14HSGMhkHQ2WvL/5bQqnVRw6wsBNzHqT4BuGY4RYkRA83OM
         KVnUgdLEPaA5J6n1xhvTg71mZG/QKrFsBBCE7x3Yd2j2ScDs53g9Yqd6AAw5Xy4xVS1Q
         HTXTpFirATbhdzpbw2/VRK6CDI5EG300xerndtJ+HHPF1eTGjW4dHhvz65I4hxlFFRTl
         OQfR7FrcZRV4m5y73VyapfGQip0Q6gHnQloJPgBpryDpEuuCcU0STac8+i7hkYhLYHGA
         L64w==
X-Forwarded-Encrypted: i=1; AJvYcCUz3ufhpfjmku7N5Q6uIhPBluSR7SwMqntBHDvh1haViG8M3Pg5WJKgrSwwqVZiwFA+BNgfx3BgSHan@vger.kernel.org
X-Gm-Message-State: AOJu0Ywns0eRq0vacXWdeJWjaJQ0HZ0lPqu14kHPdrsh9xz8cSpM8j14
	xiLH1fbvgxtbKN1bycdmLyZjtvrI5BY/PluWKak882cwOHPXHwwDn7CEk6rJ+ShTIXcgeeL4Oq/
	nCjdVNGsjFtlSn+yC0sqdwzRTiRSai80A9koW1KbkUeZ+o92J0AAzFG11ihRRUWRc
X-Gm-Gg: ASbGncuPE/i5NT/vWLtcSTLI3tRWNxiweLhWlMqNtvAWEDudtoMG6mpCVognBrvidlw
	8ln8ahRAXYQE6nNYf/xqj5m9DACQf4iJqxmISr6hFPbzbKxoMBmAug8ioGuP/kF3PsmjrIghn5p
	f+TApZESo8foG0l18lfKqTO9/hRSVVRa0jq/LZZojhAfCokHJOurvpe1hgD+5x28tze9OfrtGu6
	La2S5cVemMncQ/zyNCzMRNBbHHaxIpkNi8on6OOKcUS8Y9MxqcdECIPJI0TXNbcwh8HqLmoFyFc
	T0KVeG1ConwU/hyyYw/yeezswWQeNh/2GHx+n+MBY05Dlnn2NrW7mRjpMs0W0CbtBkcA0g==
X-Received: by 2002:a05:622a:848a:b0:4b0:9814:e225 with SMTP id d75a77b69052e-4b09814e67bmr45500401cf.0.1754549334359;
        Wed, 06 Aug 2025 23:48:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEP0oJoncPJHaap5fxItHw99SW/LCLWUFYaaiyhrRJkYhI9cF/QkF/Nfho8pad+5TlCldgaog==
X-Received: by 2002:a05:622a:848a:b0:4b0:9814:e225 with SMTP id d75a77b69052e-4b09814e67bmr45500251cf.0.1754549333839;
        Wed, 06 Aug 2025 23:48:53 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5c40eb1sm36362705e9.6.2025.08.06.23.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 23:48:53 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 7 Aug 2025 08:48:51 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aJRMUzF0GN2LFIZd@trex>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ce9cf017-5447-457c-9579-700782f9f0c2@linaro.org>
X-Proofpoint-ORIG-GUID: o2jBJ-ihgJ-g8ONED84-CYCJ87eI3deZ
X-Proofpoint-GUID: o2jBJ-ihgJ-g8ONED84-CYCJ87eI3deZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXx6+9i3cx8h4h
 R6a+gA2Zc3NOdjPZgeUlL3eAdHZC4qAouzMDa7nSU1NmLXbFxNejbsi5W/feKiLTgKANQU389Ov
 D0t+FlDXjavl5oVL04Dztrv3Xx+3Phr6ZAD2fz1xoF9YzwAQy3PU/oAcmIHWsSh9nVHQRt5tkoK
 4INjy8N6IprTI3bjeaavdhn3iJfGfWq1M3gywdxNcdMDB9dXCbdKEZaAehe1kc/v1jEA5pmvchn
 5Ppa76exwTJi5zUKDfYrbcAhxYhQ/4RYKr+0bB5S2IKra427tNpO+acTWQzPPf6OeGMNilEP2aE
 Mbycvd8pZcaM8C6IQCSoW7uruXJbIxSEQPmJsIe9SA3m2VpI0ucInaUz4UeYmeh4dh7cvowGYST
 6Tsc4vgO
X-Authority-Analysis: v=2.4 cv=LNVmQIW9 c=1 sm=1 tr=0 ts=68944c57 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=p0WdMEafAAAA:8 a=z1Oz6Vkx26DYFd3kf8sA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_05,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060009

On 07/08/25 07:35:35, Bryan O'Donoghue wrote:
> On 05/08/2025 11:44, Jorge Ramirez wrote:
> > yes, in V7 I did implement this functionality plus a fix for EOS
> > handling (broken in pre 6.0.55 firmwares).
> > 
> > This added some complexity to the driver. And so in internal discussions
> > it was agreed that it was not worth to carry it and that it should be dropped.
> > 
> > I'll let Vikash and Bryan comment on the decision.
> 
> TBH I think there's not alot of value in supporting a broken firmware which
> only does decode.
> 
> There's not alot of value to the user in that configuration.

I dont know the user base but when I originally did the code (v7) I was
thinking about security conscious users (signed firmwares) who might not
be able to switch to the new fw release so easily (unnaccessible key
management and updates).

But I dont have those numbers so it might be none.

> 
> Provided you have done the work to get the fixed firmware into
> linux-firmware just cut at that point and have the driver reject lesser
> versions.

yep, that went smoothly:

https://gitlab.com/kernel-firmware/linux-firmware/-/commit/8ecf764788f8dbf33fc1c483ddf91f882ad792b6

> 
> I as a user have no use-case or value in a broken old firmware which
> supports decode only, I'd much rather have the full transcoder.
> 
> Its Vikash/Dikshita's call though.

I'll keep on holding v9 until then.

