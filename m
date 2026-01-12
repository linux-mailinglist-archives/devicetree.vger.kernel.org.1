Return-Path: <devicetree+bounces-254201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A4ED1589D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 23:12:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68E6F301E194
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 22:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E210834AB12;
	Mon, 12 Jan 2026 22:12:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UXjoBguP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BVzlPP4x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7619934A3BC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768255960; cv=none; b=rhZtB971RdMM6RQtn2IHzo/Rfkkcz77th6X/0M+hvUUT8oOVAcKAjkoQ6Ad3uTA05fSFmJF/t9m7RqvH0f34wY+P5ik27XGEjT5MxD1HkZTULSdhRHrqBr0DJ437KCjicfU/CRzL3qUPTmYoqspvNVyn/z9E71RVnmQQsx6n380=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768255960; c=relaxed/simple;
	bh=7mAdSEHLYXU3Z13MUQMgyUsl6jtAA3o3vfnyTnKLfYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QYPvZgu/9SQUEw/h+wPN09OoLOqGX3iagla67X9MLunKftn5hgGJLmDNirPQzKz6fkktQxC3a5h9+GeD2UUwUlbj25/ST6wsOGmZeLtrb62BTVM0Aggj8Pa6lJzci41ZQ8iTAECavx5zbA394cYJ7kPqb3KA+XI8IzXztcdHYHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UXjoBguP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BVzlPP4x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CHvawn2224647
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:12:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aoe23L4OFK89AKOHuwNRlqeZ/C+XhTJjPPU/IbqAxr0=; b=UXjoBguPUfkG/l/s
	WWNhwYhzNc9PRkwoZIHPxrt8sIX7Xav971IOjT1ruT+4V63uR4ZIU7j0o/AQnfvi
	j6Wrv5RtNKt2fidosE+LbRRHEfGv3Hw0ml2tElb+nQtZR7avVRpdHvl20LfJUz3x
	n1zT94jo1y/rR8tI5pRnzNKOSS6RLcGI4hxu9mrXGFRpIPnoPu6yqc91IK0lkWC9
	r2qRoFQwBDGCpkiIeJVPoXWC9N6q9HYxvnagrYWEPRUr3aQoP6MeBti0vfbCGL4e
	dZzEt5fwE8BDBNjDqkTlAiz6EQ7vucRgbj5QbQEzb0Xie8IumMxAOfBxBc6hMqSI
	BK+Fqw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn5tjrq3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 22:12:38 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b24383b680so2771849085a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768255958; x=1768860758; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aoe23L4OFK89AKOHuwNRlqeZ/C+XhTJjPPU/IbqAxr0=;
        b=BVzlPP4xKcA5MDmK5su35xc41Pyrh9Ko6WWpDWB2ADZjscyBPuYUUwJF+JwQqjN18E
         6lHbECG/eVMbosYw639GbSwcv00yZS42emN/t5J68kR2EPHhd5BRBwGChQSphygxKbk+
         7UP2TB/2+SV5I/L6p7XfJOngKlF/aLGnh32FnxAzG3XISYakQA2ooZOwJV8P/qE5BEVn
         TsBLVajHHn+7htGwuc0LC8SPtxX/FqfCiJL3aAZRcSKRxd8ch1ssmesKQG4ZUNvbTL7v
         Wnd/ASQgrN1elx3GC4umrMEY6o41FdRblU/Tzfz6TxWSXYJNRFLms2y1aZosNYvhGfHE
         uQmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768255958; x=1768860758;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aoe23L4OFK89AKOHuwNRlqeZ/C+XhTJjPPU/IbqAxr0=;
        b=HWlc/parJXiGEJr3IZQkjTNmFyiWPMV5NdipRxqSQ9xhAxgRL/IHhFtEmlzrQIvfAq
         2mTMrQ11SIeHPilKXWsVlb2V8Bj6o6Up/st2VEqIcWjY6tKPERgfOuqRkeAZeQ5cz0le
         reA2/29/sMLLn2lA1y9QyZ1asonork5MdMmAmM20ehy6TE39Zfd1Dp9Cly4pkc/4oaXb
         44qkz3HER+OKTjQOrK3KyiU8bDNFOYe7PT7CPMhyqD+/l9mkleHGA2DttAZFIcB93mRq
         vtTdFJfS+m2gC+m2LNIa0pKKn2Li2ZgD78Uv+F1/sFhN/Qm26dgo+CHIGCntQe0Rc7XU
         tV2A==
X-Forwarded-Encrypted: i=1; AJvYcCWxhgQgmtXo1uVt7CfXy/BRlXMCAmRI+f8LFjMrICwdhtK22EErMqAKMpgAGRaUIXn2Sf8dooWMpOLk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8e/fggS12l8S1KyyQOoXYvUEk9tDR5Q+o12/KiVwi3J9DLCLN
	33ssOWMVSdxdUk76OLznHCXXNkRgg2aHkNnoQiBuTNKl/aiAdc0EzoIRZAnmQWhf8S2OpT0puyQ
	8ClejaPpeIOZmJzAHH1LLFOVJirnqqjg7UmlvZPL2v6NjAdTa6nXtXNdGozO5viQV
X-Gm-Gg: AY/fxX5+gHCiaegAP8RqujFZiC8tNUKUTm8w0Hdwrm3btD23r+lwBKO+4jyJR3I1hub
	atMKl0MCbvl5EhDli70rBXVrONMQSAV5qc63/azSRIdoCZb3Sx6Q7t7MTic9U4JxKKEEAswjY5h
	L8xjfOgySl9fFlu7LfeUGGZYw25uR5NUBKwXTB2hUh7tW31iz5zDjWFDCt6BiIZOU1U53mfwbp0
	4nVt5UsoiqVNPn/PXhtIQuw770seABxxyLsPaKtyEyoz9A5vhxY2eZc+pw+dkBDNWCyV5lxzZSj
	NfRJeg/IS+o0hD7fQqdmts7i/gsdmnxatWhI/WrsCT8uo6A7a7r1dFV60eeKQssXjHQ6r2d256R
	zJRj8ckrJ2dCDvHDloroeEYQqGGj185JxHwYTP8AObPdkeKPFXt3QPEb7L6x+tMxQ99m+W1yIij
	Z12RVNtnOO6wpOmKeegrfdHg4=
X-Received: by 2002:a05:620a:4145:b0:8b1:1585:2252 with SMTP id af79cd13be357-8c389379d10mr2764979285a.1.1768255957725;
        Mon, 12 Jan 2026 14:12:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpWfaC6zzmGNW08ncO6Yj4tWMEC+55OjIaJfdURxdPuZnVHLaVtN8kFv+kvi7VNbaF0Ca/cQ==
X-Received: by 2002:a05:620a:4145:b0:8b1:1585:2252 with SMTP id af79cd13be357-8c389379d10mr2764975485a.1.1768255957277;
        Mon, 12 Jan 2026 14:12:37 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8a9bd2sm42099131fa.29.2026.01.12.14.12.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 14:12:35 -0800 (PST)
Date: Tue, 13 Jan 2026 00:12:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Remove extcon
Message-ID: <ynsicrtn5r2ldpnyf6kigq76dpdvvh4zikdhl3sjbnqvgzb6wl@37yxpin322zi>
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-3-8e4476897638@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112-xiaomi-willow-v1-3-8e4476897638@mainlining.org>
X-Authority-Analysis: v=2.4 cv=CfcFJbrl c=1 sm=1 tr=0 ts=696571d6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=MdDK0SfbWQR3MZ74HusA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDE4MyBTYWx0ZWRfX2eB7XSmSssoQ
 PvVGTBdxR84pGQgQPjXrhIOfdOEay5ncnaPWCEgW8RsSsNNRt35e+kZ8Ti0yJ+pRzQ9WPlG2Uik
 l254Z/KNi9hG1d+v1izx6/6lrkBiGxXeM+cUpC9BTpP8KQUMeuwsIHrUkizfKl+mHXKjYo2XahS
 v87t6W3up+BqT2GiVSzR5Frp4CYnx3l6CWUVFcwCXcFExULlfdenDTpvYlK3JXmLOiwNwtOFJwa
 ZJVQmRhrZwQh3nM0daslkbcfy56TcnyGZZ8Hk/BW/E+2AfjPeujxpsapEwN3bJgjMlOzCHCOkyV
 oMqvavLCEo6dT9VBEJiM2cJbW9bSewpd+5XZ+A3ZhLP0HUzDrWyeLTIv7L4X95FFpl1hGawzmYf
 mTrwjr0AFsMDT0XWbLhNyasO1O0GH9fg5iDsZFyzHMFyWSPJJMI/ODydPVPDdCrZvXmwLiQewyR
 CxJv0eHgH11apF7zm9w==
X-Proofpoint-ORIG-GUID: 6FFADIuE58MCS8PhlwHsOH2vGtezJxii
X-Proofpoint-GUID: 6FFADIuE58MCS8PhlwHsOH2vGtezJxii
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120183

On Mon, Jan 12, 2026 at 09:13:26PM +0100, Barnabás Czémán wrote:
> GPIO pin 102 is related to DisplayPort what is not supported
> by this device and it is also disabled at downstream,
> remove the unnecessary extcon-usb node.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 9 ---------
>  1 file changed, 9 deletions(-)

Thanks!


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

