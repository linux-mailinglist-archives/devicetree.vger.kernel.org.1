Return-Path: <devicetree+bounces-245736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C03CB4C3E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:31:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 522AC300DCBC
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 05:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AAF21E091;
	Thu, 11 Dec 2025 05:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iyXqBZtJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jx9CAcdw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A841E89C
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765431079; cv=none; b=n8zmx5us9yNo0S3WEZgGHcRF5c4O0soSFkIXLApDkX//TbYqwbcpU4nimlicv387Pwr6GzcOM5J8oTuZ6X8JZyU2zhbKDR5lWrw91Sbbikddz44SiZxDDSrustWr+lYRch+dTOP9zzqzOr5UsVUOUVMv1tmAINATR/IP0qqNlds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765431079; c=relaxed/simple;
	bh=HfRbMIsYqDEISoqUdpkrzjmpPkk7sGGNN4E4Vz/I5no=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hDoc6qkYh9QN1aFQb7iw1OMMxLqmWaawjT4ocMJJ7ny5CzwxvL98s/HroqgiBvNI3YadZY/COqxd48pQJr6/0HybU68Z55+pPx11bVCUY07kVCGxzylv1Ma06pkbG0n/5VofW5Ff74mb0kNKzBfggKC9fIkebLOpFKYuOrbYQWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iyXqBZtJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jx9CAcdw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALROuw3701203
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:31:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=21dUakS0W6yQcyfVKAjQGITz
	TtwkdZ1MX0yeuMPTQVU=; b=iyXqBZtJdMp9dPCSDDm94OskWlBMLTHsuZwmyPZm
	h7/mmhzQq0fqCbT51XZsrLKwAtgk7OYyssTN7W9Kmpevr1SPIQKDQ9oltlkfO9BO
	dLzisN5lijEofXys2gD9Zss1thaXHYwtNqOJcV3p6d3iV/ND6Eybq9ydP0kXlPnX
	PS/ou9AVFxORQiL8rLOkfOfpw6ta2TdwMjrnIJIxmyECfF578pLd14C10IbX+whQ
	h2zgU5/Sl9hMAVqzjijLWq6TipPuEVxNu+dGzcLkL8c3xAkowt17kgADI6ZKADCC
	WvJzDNw4ytrsAUk86j/eFvZp3b2n7riq0hVDaSVbdXSJkg==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx145f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:31:17 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-559836d04dfso1089061e0c.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 21:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765431076; x=1766035876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=21dUakS0W6yQcyfVKAjQGITzTtwkdZ1MX0yeuMPTQVU=;
        b=jx9CAcdwTe60AtAwoiBySy16P6mUIF83mnz+U25IGKrOZH7xchGL4y/KxVe/8sDnVY
         +/uhPC3V9Q01EwOt/Eg9ZL4wWX4joWvu/tc/w18fHp59rrDKgfsmE/kqiwAfFra0PWmE
         J2XpFsFWGM25qXZMD2vMgLLxMlYyOgFNSzsxNj2CBPLrP2uOjhApFfD2ZksTTdN3Xwrg
         81IX1Blh1KJRKqXsa3C+VE6/Qq72solj9oE0qS4vodVG22bW6uKAT9fSoDCcZRD57w5L
         tvH5ep1Cz/202bUHu1rT5KoARWIiIRnk+C7wa4OHuhVy28DM/8uLWS+qZgKP6LorVkad
         mw3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765431076; x=1766035876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21dUakS0W6yQcyfVKAjQGITzTtwkdZ1MX0yeuMPTQVU=;
        b=XIqS9Hmaex3fUTVh1OFelG4V82qv+29RLgW4Sj09o0m0WnnYvJK7FJCZHSHtdRUkXc
         5yhKBWHEteTGwIMbDR0QhcbAwzPGsJEFW0W0ZJUsWmFKq9QyCBnGcTXWFonqPZ0aSaCn
         rHF4x3WRAhjuGXpBkr32fHXX44SAgaFoDNY/ig2r3QhKdl7RHUhrSUESv5kn4QdA2n10
         nbpV98f1Gs1XjZQHB/vr2pWfo3r89yuOZFd5o551Kq+pAXA1UtHkJiIFw32R/v6qRn3q
         Z5sMWUGmDxS5xTpCsuaFwc9oCYs+4taaPVGJQMwR/HbKLinwOuP40rJEZWiTXhz5WY9f
         vKrw==
X-Forwarded-Encrypted: i=1; AJvYcCVxsQUn8XFtHcKZVK9IHtXNZiQzvBcCBFmBgeVM5uGhhRubBeuwe+Ubx3gp+XZ8iedOCPxppGigG9Df@vger.kernel.org
X-Gm-Message-State: AOJu0YyLP8dj4ddQRPsklaQhwlL/tlG1xbHbQZdSMmcIUEjQOaARISd9
	9Ck0uK92KCzNgx/cWp0sBAB0A8vIQirjsXas+VKfhk5mJ/6IxhDav8HBfyT14WnBIDt5bT6Jw97
	QbpY/EU4MXUAkyAEWwWmumXk924/k1vBrTBzYKfO566ZwTY+xYqAxwAWxGPk1VK5B
X-Gm-Gg: AY/fxX54AM5j3UQBRhP2U0g14HKFdKs4Rcc95l7tmVxZszSTQVha/Xgdk9Jv8Dpk+uz
	HDwvKNrklDdFvf5EgBNv9kDeaJ8hk4p3LEfxE2O3D2hyCEiTGtk4E941tQT070CZ8va+rDOaTfu
	AbZ0MCQAsJgpAOdzx4RwWj4Q2BwlgHD+HtFW+6DCRXuEVXtkxO/gLGHADlkrtsiJB8ygf0/lP32
	uGZyuTOy6YJqTjEEVD79pXmkHXWimqoOqFGDAsG5OLaXz+Wzt29sSzmuMZtjBqxK02BEnwN4vDI
	qVEfawStvsZ49/EhQJDk6nY/Vjo1o7vHVn6UrcfaKDhMaXVsEWWZ4ghkIHJOONwcNzIf8RmYM9m
	lupOQzhrwMLgesuuIHqQuNj3UAYxeV371ER2YAob1VLkQF+psSDIBD7jxxMzARN0etioWH+4LFg
	dB5iCEvLNGJAp7nCPNlPvdtE0=
X-Received: by 2002:a05:6122:3d43:b0:55a:be72:7588 with SMTP id 71dfb90a1353d-55fcfc17ecdmr1640884e0c.11.1765431076263;
        Wed, 10 Dec 2025 21:31:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHE/I4quVlGCuXeapXbriQ0cNjEbr8rlQA1sDsuFPSTVHKkYQ8zCBBqGBTynAEBMuKHY4IjpA==
X-Received: by 2002:a05:6122:3d43:b0:55a:be72:7588 with SMTP id 71dfb90a1353d-55fcfc17ecdmr1640882e0c.11.1765431075872;
        Wed, 10 Dec 2025 21:31:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fbc9d0ed5sm4213411fa.20.2025.12.10.21.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 21:31:15 -0800 (PST)
Date: Thu, 11 Dec 2025 07:31:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] arm64: defconfig: enable clocks, interconnect and
 pinctrl for Qualcomm Kaanapali
Message-ID: <jiq5movgpra4kfqvjccwaxpvwelxxx7edrg5atn37u5tfddxfd@az5ommuhf22z>
References: <20251210-knp-dts-v3-0-8dcd52f055c2@oss.qualcomm.com>
 <20251210-knp-dts-v3-2-8dcd52f055c2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-knp-dts-v3-2-8dcd52f055c2@oss.qualcomm.com>
X-Proofpoint-GUID: QF3riEvVzavnGZTgymIc-ZDyZwg511av
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693a5725 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5dBC6bot4-jekUxq3rMA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAzNyBTYWx0ZWRfX0qyAjgCPJtwy
 QsFFcV5IEIG0Q9ix5AS1cWTgEuKuewg1Cn05Hv7mgtCx67TVvJ33HfdvIxhpfd/Vg4SuiCWNJZ9
 Is2mSElAj7L2JMaCGmbGW9qFSoE2aHxtDBxZjeSueZwaXidns+rUjadql37Isj+L8A37GHdUGeS
 e0a3p8RtyVIn1aNjAu7ATX4sewgt/VCSHX3PyEfVi7UTMTVvhQ5B6DMma7dekycB/9KjCAgoxqN
 thZqhPB2z5xE76Wblj1Mwpa+cvhj0t8JYk84V8DYYWa1Bmh7EF85g4OMhVb0GRigH2TzidWgo7f
 0c0SHEsKP+GK9cHIAwF/3r2R7I8cCBy+m8DiNh+mnm9h9BwKaXrSO/vLqqGsrLvs/fsDID2lo6W
 Uds/FYFtFEJrzFZEnEyAb+hKYnrglA==
X-Proofpoint-ORIG-GUID: QF3riEvVzavnGZTgymIc-ZDyZwg511av
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110037

On Wed, Dec 10, 2025 at 07:05:03PM -0800, Jingyi Wang wrote:
> Enable necessary drivers for booting Qualcomm Kaanapali QRD and MTP
> boards. The serial engine must be properly setup before kernel reach
> "init", so UART driver and its dependencies needs to be built in, enable
> its dependency GCC, interconnect and pinctrl as built-in meanwhile enable
> TCSRCC as module.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

