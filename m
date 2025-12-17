Return-Path: <devicetree+bounces-247523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5FCCC8505
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:59:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E07A3058331
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA53E35CB6A;
	Wed, 17 Dec 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="edqmPMzA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OYW7vBnn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378932DC34B
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765982973; cv=none; b=EBWSWt+64qKehcFNRBAaZx8RMV024yAxEwExM4AJkmy7PeLjm21Ma4HVLgai4GGFaAn8S2A43xH0c75a69gcpFedQL74T3R2Av4Mr0gY9auL+C4FabbI31ZBgIJThbVxn4NX2JZEwuJfjZzgaBJsThWrWYSeBgA+xXEawEhtunM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765982973; c=relaxed/simple;
	bh=ErVoJNCbnQY3nVxZRlyoQmnDgnlE+T605uayOZ84szo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fedLLHATMHZ5dr+qRARPGwROuUEZW1NHgAnQWSnMMdlRTHXgdd0u4JLcltfiw2S+OtQ8AiItcu+M4AEI0ildV7rC6AKO350RK72VLrZegYYIu2YX/xMmnNCGko62KWI/gMr89/iNBbZsMLch0qXdZibzf7B+cQPKfKkXvgAjrMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=edqmPMzA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OYW7vBnn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL6Qm2042892
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hsRWhAC/dFLJbXHdBrmbP/ko
	fllr0J3s1ZonK0eFjOE=; b=edqmPMzAwXkcyqcho20mgjBcZWQN7LbawWCL7XdK
	d1YkveTf9GFhvWxddW/PCyC6XPrfcVyeSgx+d2Ockrtrels3cghtpekmEBVAySPu
	4Wu+mf7qopaMQxvPpkW/gJSR6venMLGvCLk60vW4cEfXhAEaGgtoj3dhE1NN/Xqe
	9QFrnDhyM+bnzwAaVfgkEnW6ZknIe9Xvs+S86NWww5VmcFl5JEbPpULvMxbr3F46
	wzgAiy7pnamyxprMIbMIyI4+sNH+HHO7Ru4xhh9FysvqMdGgAgOIXd9OdTxw+IbV
	LQe2gDD4ACiiyAGjw2gNWY2CSgHT28a4vlSQVX65OTbgDg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1tt62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:49:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee0c1c57bcso202432981cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 06:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765982970; x=1766587770; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hsRWhAC/dFLJbXHdBrmbP/kofllr0J3s1ZonK0eFjOE=;
        b=OYW7vBnnNb2TQVr2qfNvsz7hq99KKeDMAD6WkyMDaoQvXdbT6IeyMq8V4Vg5e+dxxq
         VRHwnq6Dah/hnL95KlJcpHDQrsDCezDri4p92CZhldubxhAqBUJAUycx6bt47LZ/X9ho
         Eh0kFx9fJj4lbcseYpisnr1BU57slLXvV59GSgYdU98ZfF9catit0YY9bLfQF7Zlk6Pi
         8Ypdpb4UaX/iXg8bphWGzp7oJJ6UdFPrtZWFX69okqh+OkHD8LGIlOnldv16nJhNzYFr
         /Qha06xPBerYzFygLK4gTL+RPMG7AOL9cpJbR2JnSipIKFP/2bSPGpZTafrcdocZ1AS4
         c/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765982970; x=1766587770;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hsRWhAC/dFLJbXHdBrmbP/kofllr0J3s1ZonK0eFjOE=;
        b=hfruOEzg7Xahvuwg+VKcsLlPrUAqrGhpBIfso2SJwPCVvgbDXYNmT8vZt4YXefv6po
         XBc23VlQGUaK3xfcWs4LGfYFDw+b/1pgGQqL5+pAB2LWTTDRbVVEvtX06Znqqbme6V9s
         iwqjr/AD04JTLBbfiSzu0urulUK1UdOX/8gMKC6qGp3y9wHSZP0Mt6OKUg/cajw9vXdR
         79XOtI4pJtEzqh4qjbLGxlUziOi2RVe3Lhpglnk/WnhA+GICxWFLwkKw8QSgF81KPqV1
         Vs0KgCRn5X2EdukLewU9g3yW0Z6j74hHBSO73oQm83oEhHabHqQP3txyMJbGECcuxKYu
         +trQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhakhgs+DROhA/S+c38XtW3q5rmE+CbqSTwrL/sf4RWGcyXUJU9Qi1lv1ukfQfm/1puep774zWs42e@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6dXSlAOLjZ/9CaVaa4sZ97RKIX8oMmwa9o+zgPjMWozw54zc7
	BDw92Y0QzJrkZqxptmysOHrOWcktt8RyCBb1p8AWQyxvZ6YMbr1ZL8Fz8cYaSd/jIH7EUClGCb+
	IqJfMJQYwgVfDX/0xLmoN8yf+JZ+pntt60x/VsrgEPNty0OtdE06SKbiciDVZWHIy
X-Gm-Gg: AY/fxX4WXpOOhUDpcPvfXqVjSk2deiuIVEOu8K2qrujvFS8eNvIQaZQhxQV22MqJkJr
	ze6gedICKIjYqP0Ub8pgicDtGHPy5c6Buln+D0hPb9SBF9LXYZiifQZjw0Whj6cSszAoD8VuFGi
	dA2AeFSkYmg/9oGNM7P8YziAc7DypDnKjRK/B86Dps+0wL7zdrSj+daUcdkPj/aBlt5Peyos482
	zDpnJtdBpNrNvbwJs9FslsCiEbfephd6PwsKlEOgJwJUImSIYR8eh88CZFnN7xgfx5g5+Hnm0WD
	0Fi9TbV+G3TC0wqgHVFr1gOFBvoHC1kCm9rDlBTxvompqGI8xxE17Fpd2Q2Smjk3JsXx9V8VUjL
	ASioyC4y/lMm9gln8mkmgm2QMKECzOZMrxMnMqq6xn0U3sDpAnk8CeNs143+vbs/HfSX/tNCEHl
	q3B1FHkBT+gOBzhYFpLTDd3hw=
X-Received: by 2002:a05:622a:8c8:b0:4ee:19f2:9f1b with SMTP id d75a77b69052e-4f1d04fe751mr239770431cf.37.1765982970275;
        Wed, 17 Dec 2025 06:49:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/Y6bLOtLm+DXZJeGXhNOVcMF7QE9a9MK8BkAB+GSbTifY8ATrdfLgUoAru84o522iEz09ng==
X-Received: by 2002:a05:622a:8c8:b0:4ee:19f2:9f1b with SMTP id d75a77b69052e-4f1d04fe751mr239770201cf.37.1765982969874;
        Wed, 17 Dec 2025 06:49:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a10268453sm951896e87.50.2025.12.17.06.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 06:49:29 -0800 (PST)
Date: Wed, 17 Dec 2025 16:49:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: hamoa: Add sound DAI prefixes
 for DP
Message-ID: <cu42ceqfbu52i474svaohlzjh5e7hz32fs7otzx2ded7xrjhzt@q6yas75xb5ji>
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDExMyBTYWx0ZWRfX+yPRiGstLvEn
 4DRylNlzakSbfbMmh6qhjfcN2poegrFvkgnpYTstTCCiYRUl1X5sXk4rwPQNSByZGhyo8EPtklM
 kvBCxpNOGGoaGZTmFZkR+gtn0y43otNljnOVSoRGztdQiLE3DDocKb54/sYpD4h8/OeAFJLhdsU
 sRr90kR1TanlKm1GL01wmqK57SnI1qlXeMlfCM7Ydz1dHcpyNF09OtWy7tD/wWgxBPTLe9IOJpX
 kOV3qxeUz6TEXujAQhC8MZ2UDQAyXTlrIBmP4u7j6C5Sk2yO0QQ2/mkBRQgp7EqRnytou7LixX9
 VCdDJkG+DZxrlNfl7q1RV4PhBcTd3mqeLuLMMZKnkPxMFRakI2Hy24rTYeX8WhEZ0ygZWn3Qyzy
 hZkVlVtEXmQozdMuf1TRg1y/brtUEQ==
X-Proofpoint-ORIG-GUID: IGlmKvuBL7JXfel987ev_2kMSt1Eiual
X-Proofpoint-GUID: IGlmKvuBL7JXfel987ev_2kMSt1Eiual
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=6942c2fb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=UpTyAFhicMDBmGaZp7IA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170113

On Wed, Dec 17, 2025 at 01:00:52PM +0100, Krzysztof Kozlowski wrote:
> Sound DAI devices exposing same set of mixers, e.g. each DisplayPort
> controller, need to add dedicated prefix for these mixers to avoid
> conflicts and to allow ALSA to properly configure given instance.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Changes in v2:
> 1. New patch
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

