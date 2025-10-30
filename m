Return-Path: <devicetree+bounces-233397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8B8C21C2B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 19:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6BE034EAE42
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 18:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E1A33B979;
	Thu, 30 Oct 2025 18:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X+q//aIJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L4iAQRN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E547627B335
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848676; cv=none; b=sdMUGzLiWfsbr2WAI5G27K60r5vpJEhDZKcI8y5dWBC2PztPAPH1EGQnulqMlJceIilk/eiwK4/e2a5ivmiF/XpuY3XfrAlng7cqb+jvjsCy4E0lP8+pOpivaGIPiyTBzaaqu618LpkiriTgkwJoEtgu9OzNIKTiudy9Fhe/VAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848676; c=relaxed/simple;
	bh=n5LDDnU31B/FU4hkVylg5WKwzdJmETUQKTTzRhOKfsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d0jXYFbxdxYWtTsvPVoCy4o2JVCzsmgTVI9LKPmJC/jn2XBLSj1gklaqItoOyLtKUb9XmO6Bdzd6AoXICmnHfBCYSHQ19Hn3duKsy+ni0n3VzCeyLpESEfqEgsVG/9qGhrFsQVe5JD1ukXFlgR6+zEwrwp3OVwpbMVtsPv9YHP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X+q//aIJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L4iAQRN9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9WS8L3117245
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=syXUOD6JoN9BeOT8Ps+v7SB2
	QPgUbs++JkB3a+FX+aI=; b=X+q//aIJYPavTm/MJPOaMRJnxV388UO7RYFQCWvK
	JjVcniBUwCX1CaGgS8IBovEx11gbOmz+apnTAa5WXHAQAwSWCXlAzcbme/YjQAW6
	ldmw5uxe0LF92pmZmqW4HH+tHa5Ukec5c/eKlquYkm0lEhCAv+Imdg9NeDcUhXjC
	8+AgnFGp1JiUyzEbLgO3Z+BPz0OxBWQKXDHeF4pOUmV2a5m4nPrArDUivC0378+y
	sMji2N2LnUx0aSS7Uv+5VZIRyt2bX70YWQgWl0WDnMQU69HuAon/igIMoHj3pKVa
	8xCzUEcnkL2q+5ohUXhM2N42XFD35qE0ms3YGsdRlCi5Tg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frhgwk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 18:24:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e8b33c1d8eso29527051cf.2
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761848673; x=1762453473; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=syXUOD6JoN9BeOT8Ps+v7SB2QPgUbs++JkB3a+FX+aI=;
        b=L4iAQRN9DXO1eznCaNfMRvre8dvaRlLK3GJ4JyZUqDqGpSJppHYbmSFXSFME3TgLQ3
         o3C1NO/25Wn/YyV5aJA3YSu6H9S39wsDyJ/EFqMfufCrEGL7O+o68wihPJxOr7pLY5Ue
         9BnPpBM4zJ50ngNNk6QVL8dhcFgY8Q9CJ5KKCCRXqQ8sfWFwFxGHsfzsgzWbcfaJHXiz
         u4wBXDKp71mrGr17r5NrxZ8ATjlLOfpd+AGMIHvo0+ZhaNVDFcyu/PtdyJn9c99JoGF/
         0hoLOdiSyIdnODgihyK2PKNXOm/54/s1+OyS9/aGc4e7SFkwDP+2uKvHBM8O4VvxZOSM
         INqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761848673; x=1762453473;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=syXUOD6JoN9BeOT8Ps+v7SB2QPgUbs++JkB3a+FX+aI=;
        b=VyxCTo8NC1CYJHNBKdCH3z55B7C6fm4clLwk0meMwbDcr9a4CINDMtcKpWulyqVe1e
         HsV//0gZS/ri5PlWhqG+QIYBrQJt43D5fXHVqvd64e77V483ofxCzj58ih1mO6KqNp/M
         pDszHFQEokZTcmdR1+HOPHcAThPj3a6HTx7VUXGsdfQQ5GHMkwMx5eKj6yWhn5BPcGBy
         znHMyOhQjiBVW67VFLui8eFMeCgY7dg/a76T3+b4MJNUVNSxMuz7UqpqI2m5mYJk4pRj
         7S98RqdJM/Ie6GybH5U+Kc90zi4cCsjLzGxyr8KTvM44RdTzkyoTPiP+/vX9arVGzZT/
         SGLA==
X-Forwarded-Encrypted: i=1; AJvYcCVj/a8vp7Bbl5bvvXEBrptdGuyUMfKmlK9UdPhB2LmepaXzwx81VEVNSDhJHofZLtEqgDhshKSSdXjP@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1tYMLXM42jEag9vibZcOVCibsc9eIPjN5/UGpgRF7UZpLRqNe
	hRn49v5I+z/is1y8FmdIpWhA5p0cdBvyAJC4BXVyEAZ49FjvQVG0Q5RQqN/eFwh5L99Y0Q3zr6C
	WVv9wXZoSQlt/Ao79nLdrFCd5s1rIHZ1KIiVlQxSf5825WG9c42Swk2V4Z1KQPL50
X-Gm-Gg: ASbGncsASBNNmRBBwZ7zfzaEiys4ElGFwHDpvEjVNR5WAs108J3DlX34F8aytN9BenX
	ailLlMEqJ9js4phGVL9kBxhYsP282taGdW1V6PpJWZP7fcn6A4w8nvxX9bD0bBKDZ1cn7xxB2hR
	vMbzLDBUMY1XEbWGE/fQiCVOg/HGXiKqUAiaTKH2VtL6dogkQ0sRZKlC9JHV6m/0pyuTb6/FyDm
	RloLpOiQXW4ekL/rVjVx5jz4oDZdM1kql073E3k0N/uAeO7bLJA4IJY96jFChf6WI2BF3zgQb6k
	oeCgZg4H0tDR818I5mN/rgnYeJn5+WTfyueJDbQXGaovlOjEivt+ENX5T3HJcN/d4RZRS281/J0
	sw6AS3CWfCvY2tac1spqJPbnFKYSW0lskCKoieLrZATRByj2WVfSn3weZOPv1DcCldeJsOlGwJU
	DiN/cFhRxyNmvG
X-Received: by 2002:a05:622a:44c:b0:4e8:a3aa:7a89 with SMTP id d75a77b69052e-4ed30f97698mr7501911cf.45.1761848673051;
        Thu, 30 Oct 2025 11:24:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmXHfCUfcD2P7/jhUfHS2Z3Z/sOp48KQ53I4Yb9fWNOd7sgUr+yJyHxsPDN81BBTCGrNVwpQ==
X-Received: by 2002:a05:622a:44c:b0:4e8:a3aa:7a89 with SMTP id d75a77b69052e-4ed30f97698mr7501491cf.45.1761848672452;
        Thu, 30 Oct 2025 11:24:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f87f14sm4837077e87.112.2025.10.30.11.24.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 11:24:31 -0700 (PDT)
Date: Thu, 30 Oct 2025 20:24:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8996: add interconnect paths to
 USB2 controller
Message-ID: <hlj6cyeybsct4flwvm22t4u5coeyrlwcwfol2cuzab2fjkluwi@frs6m2sjyksp>
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
 <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
 <7ef8ba74-4e9e-4b19-998e-40917d997ca8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7ef8ba74-4e9e-4b19-998e-40917d997ca8@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=6903ad61 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=nBxtwQxsS3NGOZXr17YA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: onK0bXeUqlQNCh8S4bE1PsPSWSJp-Mcm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE1MyBTYWx0ZWRfX7YbJIDqQzzPj
 Mc5PoTxtf6+hgdq+r/34DXvJ4giBugdYsN6C6bmzsB+5RnOfB1Ob4QTCy5y0hI5NT6llv9LtHjX
 fKqwwLAuu8aqdsS3yDECq/7M4UZH39Bwgme4+0l5IO1aT6+7qdTPtqO/7Ia80SW6rtAXM3VtG6D
 1RHe8FGmlkgFt9LqPXyeGzDefDpfhJYNUrgcULyRXzrELfEyt3NkRFhgCtVHQsO6MZsdk+lTeXD
 Qx0EC8f0DrC8CF0lT6v/19ru0FPcDSSstbPKO/O+UQLFhLo0OQsPP1/gCxVx/kqYByi+iR5mYPK
 EL8CKm0oiWTiLXByRlst9LgSSU5HlwyzUrkBn7nzf0Ugw1MgPJHKraSnRo2+VxSEcl0w1uMhreK
 VWpu3oHakTA7XwtneySxvFq2Hf3Ghg==
X-Proofpoint-GUID: onK0bXeUqlQNCh8S4bE1PsPSWSJp-Mcm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_06,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300153

On Mon, Oct 06, 2025 at 11:30:52AM +0200, Konrad Dybcio wrote:
> On 10/2/25 10:53 AM, Dmitry Baryshkov wrote:
> > Add the missing interconnects to the USB2 host. The Fixes tag points to
> > the commit which broke probing of the USB host on that platform.
> > 
> > Fixes: 130733a10079 ("interconnect: qcom: msm8996: Promote to core_initcall")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > 
> > ---
> > Note: without the previous patch applying this one can result in the
> > kernel stuck at booting because of the EPROBE_DEFER loop. I suggest
> > applying them through the same tree in order to make sure that the tree
> > is not broken (or using an immutable tag for the icc commit).
> > ---
> 
> There seems to be syntax for this, at least for stable patches
> (which we should probably either use or add +noautosel):
> 
> * Specify any additional patch prerequisites for cherry picking::
> 
>     xCxc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
>     xCxc: <stable@vger.kernel.org> # 3.3.x: 1b9508f: sched: Rate-limit newidle
>     xCxc: <stable@vger.kernel.org> # 3.3.x: fd21073: sched: Fix affinity logic
>     xCxc: <stable@vger.kernel.org> # 3.3.x
>     xSxixgxxnxexd-oxfxf-xbxy: Ingo Molnar <mingo@elte.hu>
> 
> (deliberatelly added a bunch of 'x'-es to not interrupt the maintainers'
> b4 workflow)

Bjorn, Georgi, Konrad, how should we proceed with this series?

-- 
With best wishes
Dmitry

