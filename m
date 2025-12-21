Return-Path: <devicetree+bounces-248585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B3ACD421B
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 16:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 278A63000B63
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 15:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58A81E9B37;
	Sun, 21 Dec 2025 15:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FmACywAm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XifIwAHD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1B778F3A
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766330613; cv=none; b=VypGMYKXHQyLSXgw/hBzmV6JMlk4gabCWkax8VFmPy5PuV+qvQcuSSI0yT5vm3SV0cz7EQbQYQFGX4Vw/ejT0srxAw1spIKlDnVNsXk4oytfKNcOq8RC5uNhj8N3TwhGP0poBqx0u7cI9yxgaR+ROTo8xZhwKNGh00CycH9IQbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766330613; c=relaxed/simple;
	bh=i4AFtSEKJdbLslP3ulPTUgfsayjRk83qr1qXeSZU7H8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SMqPDQkXjYkp1MwElRwq8xxsA79xfM/FPODfJoKyRZlydIK70pUtuDQdeOhW/T6DpWiJNIBF20facLm/2wrIFtHwpHgEbsRHTaz8vdjfHNqooXO0BtTWgxhaITbZvyq2qWwHqf2sx51n8kYeU5Msm958xw9HJEF1mtnEEYYsSZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FmACywAm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XifIwAHD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLBTf3Q2288399
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:23:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nJZSmR38Ha0urscJo8AEYRGi
	/caa+ENiAzm3qVa6500=; b=FmACywAm5gW4GURU9u5Jg/+0pgD+DnUjoaI+U6Ml
	OUh6V2BPRolMVoC4v1+I5SCx2rpoWvOHgQnCuh0qbCCfMdjiGt9IbkVIDJ/jXlqm
	HudnGlCvK2gnqFqGZ3qEAyOGdtwWOpkd1jEVoAO2NKXwxhZ8LivoqhcC/oqcSk0C
	EqrIBx0NEiTmD8TmVaMKGuTTbVSinPcC1CFSCk7wEnBvsog+vXj3HhjgywIMQ2XU
	2XEn9yBp4j/J0npPKjKw1Ytkw9wfPKbYgRhaz6Y63DKQFWQyySlyuqUOAH74qvSD
	HF1e5+i+FCBkAk+r+EGD2FrgwO+84vER0fKYdpUv5KbB/A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrwthjy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 15:23:31 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a43d4cd2bso40724276d6.1
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 07:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766330610; x=1766935410; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nJZSmR38Ha0urscJo8AEYRGi/caa+ENiAzm3qVa6500=;
        b=XifIwAHDqdj7w+6Tn0aGeg3lbboZ990SU7XYguAXovCJFv9U+1Asw07VR+OO3FWxjI
         AMcs+k4BMGTOba+5TS6ROmB7Gb988nVIJJECUKiXNNdarlmI/lLYNCdBTfXZmg+UNgGT
         nrFW6o7OTdvjvUWCQYF71NqnLn7NEwE0Zx/fQFTXGHFZNi60cd20AwCqCNL7JPpw3Mzm
         n/8u2fB4Uxgd1KqJZEr/zRxJNMZvoS/eDOKnc/lnLTkq2LL0uam6UTw/QUOHR7WIBvnX
         9fIsoPIm+zOi6AscOYFEN2Ee++JfrFrfdGLa5m4y+Wfq76t6zd34w/LKwYPRxev9uP06
         ss2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766330610; x=1766935410;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nJZSmR38Ha0urscJo8AEYRGi/caa+ENiAzm3qVa6500=;
        b=pf5NTaQgbf3xCR/mPbgamX2wbmQ1zTc2/vXkeC/c+E/S++XFfNQEQ+58yenn2yrVzT
         8PuM7QxY62ZpPdECSWodeX3Xefoz/FKP+pHuuZ+cWcuXsdHlzak6bAU7W3/ML+Hq+uD0
         dADYBNpy87XPcQQtLaD7Pug4u8Y4tKCnZexkVXocsiBD/dMAi5pgculUXDCe8KfLWiJj
         yRI7BOSynobtB1MLhyKfXgmN0ND0x4fix4DfnV92wYJmSPJ1JZejS7CUr4x9Hqi0DbnF
         ahCCluzglK5js20cV+kOf7/m27T87hPH81MJkMjCgth3SWaCiA0PRMm9wn02IqYO43Co
         jtmg==
X-Forwarded-Encrypted: i=1; AJvYcCWF+PABxt7sfURFaOXzOv8lmE2NN5n8tdPRGtojhH8YrHm33SDxgp5QWfiAqnI3aMXq4ucbk+o8tTlr@vger.kernel.org
X-Gm-Message-State: AOJu0YzxdY+Ujl2Lv33kNgTlsQW5oT59nenHQivWp5sQcZPE7FkWjnis
	Y74kQqkJHCvR0KrLI3KRhv0hwE+dVLfVk/RIaY8/9Q9ozEaK4B5sf5fwO37uSux+Oao9YJQyPNb
	g5lrxXCeNy21TZFtlKqOILeqh0pYqmgTGN33lu9iSN6QYkIzJ97D6Bsfgb6E+Vi9B
X-Gm-Gg: AY/fxX5x72q7otQ7trh4g/I+wSuAJiChjZgjJk4J1+0QCthxdUr058JUlIT0IUr4H8o
	/Ajhe7LM3nCivFjPsnd9MX3u4JDvMYdaVRRWfMe77XIoY+cINgMfUcknFohhq0IN4oigwZUswYj
	eadXOyvKX1of1kIR2Wy3wsWUi+do3Nmndc1eBbSn+IDF77zYTHYIWmeK91f1OzdivSfNFUCR7qX
	IZAEkbM58NJTbTK0B+Zw4baayJIBsA+EUeX/+XGnk4cNokYlQjvDI22Z/u9q8a3H25bjKrTk83I
	dyTBRoZ7rezZrCP0Ya1oDNakjQoSV6eQWTv7D/eOXnEEuC3s10q6n0G6rZLF72emSE1gOayzhZo
	Q1fjmwvcV/B1rL2ZF6o6jKgb4tqQE4+5lAfFD20XtOyeo19Wh7JDGYcoeAH75uKaaGHEE1HOYLO
	DBNXF9L0FD4z1jzRY4NT5ddHU=
X-Received: by 2002:a05:6214:414:b0:888:4930:ff23 with SMTP id 6a1803df08f44-88d8491cfdemr154171896d6.70.1766330610330;
        Sun, 21 Dec 2025 07:23:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHy+QndMsd2wX0l1sKVhANBd/gOpXvm3BKHOYnHh7lCl+fKs15EAhDRfK54u2r0iy9t24xhPA==
X-Received: by 2002:a05:6214:414:b0:888:4930:ff23 with SMTP id 6a1803df08f44-88d8491cfdemr154171536d6.70.1766330609878;
        Sun, 21 Dec 2025 07:23:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618b7dsm2426258e87.53.2025.12.21.07.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 07:23:29 -0800 (PST)
Date: Sun, 21 Dec 2025 17:23:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1p42100-lenovo-thinkbook-16: add
 hdmi bridge with enable pin
Message-ID: <yfddvt44btci7hxv35hskoxliahml24mmcc4qre7s6ypc6bg5m@7v3pc5wmn7zw>
References: <20251220-tb16-hdmi-v1-0-18b1e20b396e@oldschoolsolutions.biz>
 <20251220-tb16-hdmi-v1-2-18b1e20b396e@oldschoolsolutions.biz>
 <72bq7sblm7iprtxg6oo65mit7vsheux2xatqlk3csf6sp7ersg@77p5hloqf555>
 <8b562354-1c6f-4b13-be55-b23a6a93d9be@oldschoolsolutions.biz>
 <x2zwsjk4vv73a4i4pj2aphvajtjgkw6mkzs5brg6adlm4gnxpu@r7pbypzvcsi6>
 <124d3c41-1826-4927-b4de-1d2d1ccaf5d4@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <124d3c41-1826-4927-b4de-1d2d1ccaf5d4@oldschoolsolutions.biz>
X-Proofpoint-GUID: _LIqzf5ev4JuPCqyQq_30tpU7adK6rH4
X-Authority-Analysis: v=2.4 cv=R+UO2NRX c=1 sm=1 tr=0 ts=694810f3 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=5QRXN2AvfunpynGSHSQA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIxMDE0NCBTYWx0ZWRfX17EU5yUJWBdO
 npX3waX1Igk88u8SBNC4zBf01vDzCpc66NPcfoWYlLiNemMWxoNXBNUgXHvqBlvrtyG/QCKOjgZ
 UNBKsqtmw8VHu+4zhbB6vpt5yNK2tK25N8to9BpxdLRBpNtopJU8toSIfZrQ4ehofiBwKMuMvGm
 hHuOQVbt4U8n1qWP2M4dysqiscuxRtxb6xMXFVyErxH5MojBJ4gLMihLHUJqjZu1o4lE1GiyoRd
 1q1kjavQYV5grFZy942/11in9Z5+rgwfYKjBNXy75FnhbMPk58xt2FKvueN+h87XDknoXFk/GjX
 8VwNQGFoHCzykWKPlrlMOOLbsSA7edbH4S0CD6qdZAJFXyDKXJVJtrF5BOiZFZR+fq87tGQCkm+
 ebJhRUofl39e2uJB/IEYKiQrRw2AiBpAMxKpHb+UXP2xSGVTtXZyfrZAQjYx9YHbcvR20kTDAGa
 F/8EI8wwYP/00mn3RqQ==
X-Proofpoint-ORIG-GUID: _LIqzf5ev4JuPCqyQq_30tpU7adK6rH4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512210144

On Sun, Dec 21, 2025 at 09:03:30AM +0100, Jens Glathe wrote:
> On 21.12.25 03:49, Dmitry Baryshkov wrote:
> > Photos / scans of the mainboard?
> Haven't found good ones where you could even see a chip (let alone markings)
> in the vicinity of the hdmi connector.
> > Okay, I might be misunderstanding something. What do you mean here by
> > "gpio119 being used twice"?
> 
> /me trying to explain something and confusing people :) Sorry for that. The
> whole dts has actually one place where the TLMM 119 is explicitly specified,
> on the hdmi-bridge. It is defined again on the tlmm node for pinctrl as
> hdmi_bridge_en (function gpio), so far so normal. gpio 119 (on the TLMM) is
> also defined and used as edp_hpd_default on the mdss_dp3 node, there with
> function edp0_hot.
> 
> You need the hdmi_bridge_en and the edp_hpd definition in the dts for both
> to work. And both use gpio 119, on the TLMM, which might be a bit confusing.

This can't work, the pin can only be used for a single function.

> 
> with best regards
> 
> Jens
> 

-- 
With best wishes
Dmitry

