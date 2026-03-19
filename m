Return-Path: <devicetree+bounces-277690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cICSBBHOu2mXogIAu9opvQ
	(envelope-from <devicetree+bounces-277690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:21:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D9B2C962D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4518F3004930
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4B763C454A;
	Thu, 19 Mar 2026 10:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pL/WoztI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ewpiowIk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9CB3C279C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773915638; cv=none; b=gdIJvtDKsU4krkrfbXVdljDRTGcDrtMiI0zLB1KW1FIaf1XT6kAEEsYxDLNuy23IRyW4GHFtji7xmtHx9kw/Hst1necQv1EtDHYARpaj0mjdDXjTNSYFPHnqRx9D+AhiHurUHbEiUxwBOtD2v8cAK7yEYkhdhn64f/AVSpw96gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773915638; c=relaxed/simple;
	bh=wXrgYmmBOOLY+uN7MnvVeB22AOEm7KnmaCtsSI6mCu4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=quWYxucqE4eMTq53h5e4sPgrpP/+hv4U4DKAiUpnewPTjIBbYCMAwtxMmZtRvehv/8Wa/uhZ9lUMTcu+JGn2AgM/djnRt6N1tgBca3QCpi0OkFymwn8pvxmB0VyFZthRDYeeb0Fhs3nlrOYezt1WLPiYe8ZyoL8lFUWWjjRI+/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pL/WoztI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ewpiowIk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73wPi2544614
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=F14dYmtwhWNDhnCsov2s0WNK
	ZiUjjbCXBkIPyd2HLL0=; b=pL/WoztIQJeL374qJ9fx4yztaFXlaCFYhg2PxPtu
	8DJx3CcSuIGnpjmHNmTEaqmZhG9f/pWo4XZOPofPguiO5ztlrjaDECP0qOJHvNEy
	YtyGV8Ayk8xgVadB4RCPe2tYkbBz6ta7w7PPtRsXFo2u4LYtu3ph4BI4ouU/fVGV
	QbKP8rPfgJWwJTg1Lwr3DL2dx6hWMeeXKblryHAObEWHrSaMZ7DjqnYNmlCzGyYF
	coJoGhLf3WukWOCBI94Jg/F1UTjMLOqhw45WHkEURZ+Sd9LzvZ7BUlyk19KOnood
	MIbK+jxBAlJqiGfFA4dS2l5q9lfKpNs0ouNuR6beLz2VUQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0957s6ju-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 10:20:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5093787e2fdso113085441cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773915631; x=1774520431; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F14dYmtwhWNDhnCsov2s0WNKZiUjjbCXBkIPyd2HLL0=;
        b=ewpiowIk5h798emm/szxjIta96YKrzCVjlMtdQBL23I2OoUheUayYc6TrfGOK6P9ot
         LTDmZQNHIeU4/SvBcHr9nNxwNnCTXwDElKhQ+doIsDNL16sZnd4Qr5VcWPm0QKCEYl/i
         l78CnrgbhH4T+gobvQ4fJXHLz1tnXnczT3L/VL2mK4/zwyvqP6xa03Ud5j/ulO05vbWt
         m9rHEa3oiEwmNeizy/LYxbGWag/bxWXltCU4k2ZjWnywyOK8vFI8L4gaWxc1Pv6i2T/V
         ptnB7K/YbMU7xJpkqWNFEvuxruMaIy6YJ2TBVQ5wgK3B61FxZV+0xkIECzwHx6/EqkeM
         VVFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773915631; x=1774520431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F14dYmtwhWNDhnCsov2s0WNKZiUjjbCXBkIPyd2HLL0=;
        b=ndaa6HkrTRD1RyKKh569zz5vUQ3t1bFn2HfUXeJpYanGsaK/O5fwsYbhINwP37mhZ9
         gCLRk3THcLCynVWW1m480tufPhcySZISVHqumn/Yd/kNvIZHzmaPqwS1TXd8lPZavqLZ
         qg86dzCI1AJM5mTaNjpUqnwXFCLmZJvrfVh7B/VC3bpOIM4vTHL4LaMWsLfGSVQCRw6W
         GBqmxPnpvehxtQkl8HCUgHfYPv5CUi9RQHft92cc0Fr4ajLnD4axi6UJ5DJj61fET247
         /cb//FsioNrlLUc3HMznlP5BbO34T8IYFAi8pEjqo1rQ03GkjCDHAtd60TY5lQe8wEKX
         pcLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMOy8ChVviq9bhxauMw4PES16Nt6CZfon9pQjHm8FVZabm9oxBfSMi7RGD4jR6ZXJDkxrc1XbDR3w3@vger.kernel.org
X-Gm-Message-State: AOJu0YyGzwak8y8RAFKrSe/pZLLelQfH9ZVIma/S+46FXpfGK0p1iuj/
	njpyROFJVay+XnMNOk0qdNu8kH52nnih8sZiF2+eNsCP5PSK3Shnvho/F6Uh/o62e72M8A+L07U
	8BLW55ALsXblKMbr796sIAl2zxPTOmpMrVjQF4BtPrRznuoA4wbN/1V4WMiMEmG3K
X-Gm-Gg: ATEYQzxpsqdPrkgy9LmcXKb3PBpXTlvZdJ+Jkf+Jabl8rsCQj/C/PHQOIqyvaKFI3nK
	HQkH0djEauLmtdAebQL++AbV8ARGDLyIxCfvBi17s8DJ7Zc7XZHfkqqqKMB45TyfuYBYj/nirB2
	UhXyvl3kmUPeg3CooZ4vM5XXF+IXta1r0kRI4P2WmI7N39oi2CnHrxltX1xyJfpnUeNWf5oJ+wO
	bhQ3uRjbd5A7OP0YoM++jyOdcS2yiEJ+rwNkD20Vrgi8UeFC65YU/7uCG0jL+seQLF8x2soiz6f
	O3d96HG4CiSgiDGsHQyLTMmg9NLcFeVpcaKiErjQ/LewGFjvpxMZeDnQdnG3C0pWWswaw8BUoBV
	LMVdovaFPsK7L2mRHEjeWjr89LQUPDdTFB0u8iTxtGG7I67d+ACRKmrR3uyfl/ORDtWhbNlb12Z
	Yerb7daIIgBPT1gg6drNBUT1+dPdGwWWZHEZg=
X-Received: by 2002:a05:622a:154:b0:509:37b0:7b06 with SMTP id d75a77b69052e-50b14745065mr87142001cf.11.1773915631491;
        Thu, 19 Mar 2026 03:20:31 -0700 (PDT)
X-Received: by 2002:a05:622a:154:b0:509:37b0:7b06 with SMTP id d75a77b69052e-50b14745065mr87141621cf.11.1773915631057;
        Thu, 19 Mar 2026 03:20:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c6e4c0sm1118102e87.39.2026.03.19.03.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:20:29 -0700 (PDT)
Date: Thu, 19 Mar 2026 12:20:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wangao Wang <wangao.wang@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: purwa-iot-som: enable video
Message-ID: <cp4ge2f3cocjkk4dj473jggs3wto6gjuxgeorthup3kse26eaf@y66beakv36qe>
References: <20260319-enable_iris_on_purwa-v3-0-bf8f3e9a8c9c@oss.qualcomm.com>
 <20260319-enable_iris_on_purwa-v3-5-bf8f3e9a8c9c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260319-enable_iris_on_purwa-v3-5-bf8f3e9a8c9c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 1sprRvKRXl7aDaEOneiWTc99HnMK4lch
X-Proofpoint-GUID: 1sprRvKRXl7aDaEOneiWTc99HnMK4lch
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA4MiBTYWx0ZWRfX94oqJJ6pajD4
 IhoIQX+rGu5g94JtJffl9lR17OGmPtmIYkTQiHsrhvgiRRXl0fAOYqyKuOh/UI/TddTD4zSqqBU
 ZtNlwmj4fq66rfaa711u5Q2Okv87QrZNflnebsFUzgRG9DxMNEyxv9HvxqA3WD66pS5HX+rtyKZ
 bID21kFhO0Oj5KXBl3eMHedScvmzB3hd7/Gp5Bk9bCP4rp+5RsZjrV7H/4ozUUthaDYz9RAssxn
 s2GbG0W06BlhntUiQWsVu95ZC+yeChd+GCQ464pbrel2z/HVjwXtg2FbbIDfXfb2uGodE1HrbAX
 8yTNbisatC6zPaKxNqcO1UQOKsLiDkiELwLB1FScKTCuESePPCMKva9xAdM/bOjLEMLjqPmCQCV
 mz6c8LxmpzbJTayddBi00HsEDssYPLnGyRFrrndDJ/izP3kBGK59xt7GA1MyxPNlbCgOjoCtkX6
 ruKPRHTijRUbkZl0VZw==
X-Authority-Analysis: v=2.4 cv=RZedyltv c=1 sm=1 tr=0 ts=69bbcdf0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=SiDv6NLMiRjB6r0vW5IA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190082
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277690-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2D9B2C962D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 05:23:57PM +0800, Wangao Wang wrote:
> Enable video nodes on the purwa-iot-som board.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

