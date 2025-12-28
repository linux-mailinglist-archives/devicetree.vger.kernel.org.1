Return-Path: <devicetree+bounces-249951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEB7CE5199
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 15:59:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A497300CB99
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C6E02C3272;
	Sun, 28 Dec 2025 14:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WS4Y8wXn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ayvY2b7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F3A2C11D7
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766933965; cv=none; b=cxa793/HeRYS2ZDGs/jpA1quhC9JdFdac0DQz4dp6m9MTisvVvXGBrn/St/8qwxashHFc9kB7Vqk3NUVpl74U+DLbudeIb4IvwDGSIrLqlYFuA6MSYL5+K+kA8iXMaNZQF+8sbPqBxcbyFUyAFNi/s88csz9BN4z+Abo9tTM/jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766933965; c=relaxed/simple;
	bh=d/XKUo4lZK8CUW+Xb6LEak5c93MI3IwSlSzwXmJXEd8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mez4bFTmH4fTIjr98r74bL7Yrg1904WCd/Wu+iYSapEcifRI73q3MZGzjPeXRlWexwIbNe86u0+EyTSz2XxvkES0goOlb6aIxnFBknv2XQFtj9oVcR32kxdZA6McHAp1t/QdmofQHWnVwzEKNjzgOi3x0xjN2N93MYBp27iCX+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WS4Y8wXn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ayvY2b7X; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSDVj072951612
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:59:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=ckxl8AmlS8qqEoOlTPxy53fO7iguWQqxjRQ0V+pR5ko=; b=WS
	4Y8wXnFQjcrsG6h1hNWhN7x9D/HFQXjgxW9sS0VHQOZdZBf8YmEVt/ZSeH8J1jXm
	lkCDTbCvL8G7XosiCr73qeFXehsNK4qLlEEgvhyjBw6icsITpkPgZiaa/gwAJuG7
	CmSiuShCsuwcodHrjSSx/ONUOPwHysMwIpbNHG4ArjF2hGv2zZjkdXNr5vd2W9CQ
	CDrvjjJW6Cx1ihfj1ZFEAs1qAz/DpnhPd+p4tV+5oXKZZhD2CX9jBQ9xkghw6Bmm
	jWf38G17eXOEV9Rtf6T/tKsfju/rtUa2PM7DoS/oZwXrD1esCu8zXugz+TVBBThl
	cjwGqOHa5Z1m4s8vJhNw==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bta0y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 14:59:23 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-4501fcc3affso5980877b6e.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 06:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766933962; x=1767538762; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ckxl8AmlS8qqEoOlTPxy53fO7iguWQqxjRQ0V+pR5ko=;
        b=ayvY2b7X/LXUP/r+0yCi1ebRW9+mWgkCx7e5A57msSuBM5q8476gxI9JojnWbp4Xq1
         fZmvWMH6F+zT2+Zaq1MEuMGgg+oMNchZb5C0I8ZYnib/tTjpCifr8ODLCX00VAT3nsAd
         trvQqhohL/VIpUpzBEe1SeRYXxOCsL6NXEKiDJ1/j8TH/j8/xLiCqymu42guEEUTx4dv
         SXjx4QfTZAH4k389K5lY29KRoWMqLE/TYBUQCSduFe307VUAfR5E5osTBmtC1Zs0l6xJ
         KlvB+xeDx/sZ7OX4fNtQp5PoFCAtfLmOVFaoYJfhWyCS9x8lA4jizRB4ReWIy8VtxyDG
         vrpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766933962; x=1767538762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ckxl8AmlS8qqEoOlTPxy53fO7iguWQqxjRQ0V+pR5ko=;
        b=BU6BoHa5BvGN4P+HmKbEME1Hva7bWQCs+riyDyOluIFe9FQ3qyGBeTQLVKhMldAECN
         Ofpy+FuUrlfGzAcxQMYjgq2quDdbs5XZQK9vIX9vWQtAoD3a2WuJESRkWWhggEfCWSzS
         +JoepEx0LGWbIKx1lNAv2wq06Duq5b0s26doekI5DORBtJxssBfuc+wQ/KNulC/ACWB7
         x4J3OcRWk64qA4hKAaf65DmoG+jB4/6dIcq21+9ItLqN/DBcQG/S8pePdNSA4CEvq8WC
         nDgH88jeJDVLyQGGMkG6MeeaqEqBOU/G35I896V9OvO/I4YRvpjXnYy4frPNdiAxljtS
         QN9g==
X-Forwarded-Encrypted: i=1; AJvYcCW5eb3WL5GkM43JyPUjoyWtEmokTiKxzBXOHOkOKi/joprFtvwU1d8xfAbk/BSVJYFqX9BFVOXlczcW@vger.kernel.org
X-Gm-Message-State: AOJu0YzAwCwfYMgau7Rb/xUmKJreTzw8J6GnB/idrX3iut+cwIPQzJ9r
	95Qdk9nR71hWtQJWEdaL1ONfQGw1ciARXu/Z/oFXEg/gF71vKY9U6QNedLn/hl579GjWKiWql3i
	JhyQp9hdqqasDlqbFTEBk6YMdhB0IIZdAQvUqhFNQrmxH22yFlK5IGjF0BrIVx93WaPlvm/s+nh
	4rXPo/5cLlj+6sW5v8brMEk9F5Zi/C9EJWUaAvSPk=
X-Gm-Gg: AY/fxX76tpiS051qXFoGODNbDxWmlzvi/iDaw0YT2GzMI8Q0zccgnTFrCyIGiFnoPv1
	n7+uyDp/Q3WoGKzA6+LOsslunLQcvrBIpp+QVO5Jvgbh46ZZE5pRCxbAMUpqGd329YR6CSoTpzN
	siGx/rIS+rG8Bz9vAxWdemtVfHR1oWWOMO5XlSS/cBkRP6n28j9xDTn2WsF3hr4aRP
X-Received: by 2002:a05:6808:1242:b0:450:ca65:ef63 with SMTP id 5614622812f47-457b2149dbdmr12232117b6e.24.1766933962001;
        Sun, 28 Dec 2025 06:59:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKQ0W8E5GFXYVpsjWfkLEr/ZyGiqCM3SgXbbT2E0YVGU5DGNlnBmjzQkxsGSiAPl47E7aHxd/AkB230yEoieg=
X-Received: by 2002:a05:6808:1242:b0:450:ca65:ef63 with SMTP id
 5614622812f47-457b2149dbdmr12232107b6e.24.1766933961622; Sun, 28 Dec 2025
 06:59:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251227110504.36732-3-krzysztof.kozlowski@oss.qualcomm.com>
 <CACSVV03H_oii=fuhaeBhUZSJk-2mr08jGqAs30Z_h9tzeDgdtw@mail.gmail.com> <2a35d31a-1a3e-4cd4-ac3a-27104ff12801@kernel.org>
In-Reply-To: <2a35d31a-1a3e-4cd4-ac3a-27104ff12801@kernel.org>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Sun, 28 Dec 2025 06:59:10 -0800
X-Gm-Features: AQt7F2oqrrSbnybAXKgWfgrkTYQBre96aRd65B4VaeoTMNsFPnQpfNlykmlc09o
Message-ID: <CACSVV03FfvZVzuKGfaJrsXmE7VVxEF5zN4-R7h1PXA11jOO3gw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display/msm/gpu: Narrow reg and
 reg-names for Adreno 610.0 and alike
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: CwrrxZrPLfjgJFxbpf3pDS730ACVIT6g
X-Proofpoint-GUID: CwrrxZrPLfjgJFxbpf3pDS730ACVIT6g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEzNyBTYWx0ZWRfX/sMjHw0axa46
 j1TJZbQU/e9litfZLLQdQ/x2xkcd7Jf9SAZ9lWEq/EBnH+CIygBy2+YiMfLPxN73CeA4qS09D4U
 JwgQuE3GiSznU31+oTQXfh9TfI3Ug3TD/RS4dHXJMx4RSMSv9wmFMM6fhJCCuqs/CCzL24dUOQ+
 AIX5vFiuwgsjdrBYpPVuKddWyWq2eBpW195abCYe1F4Xgjm9503dizKjbYKy0dKnNz6g+byU/JL
 uSQEvE7Hd44fCWBgjrcIeXcP21XaDjTi4qVJazJuon62I10i4OrB1Liue1Swotx1KigoZ5u0heR
 WWCG05DC/ZyF/5PdpuJd7nh5tWdre20qKOOu+LcD16X3sPhu3FIZ5aDuv5tDOiKIIyHOh1bvLKo
 /caVCv/1UW+BglUjGdC09e8B2ptqMyxC/fm3nLGDkM0ESBIy9ZM8Z6v27nhh1U2lrNhofab74bn
 /TxE1TgFAWoP+H30r2w==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=695145cb cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Oa6cZlz9vDz7Y1gBjq8A:9 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280137

On Sat, Dec 27, 2025 at 11:56=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 27/12/2025 23:01, Rob Clark wrote:
> > On Sat, Dec 27, 2025 at 3:05=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@oss.qualcomm.com> wrote:
> >>
> >> DTS files for qcom,adreno-610.0 and qcom,adreno-07000200 contain only =
one
> >> "reg" entry, not two, and the binding defines the second entry in
> >> "reg-names" differently than top-level part, so just simplify it and
> >> narrow to only one entry.
> >
> > I'll defer to Akhil about whether this is actually needed (vs just
> > incomplete gpu devcoredump support for certain GPUs).  In general
> > cx_dbgc is needed to capture state for gpu devcoredump state
> > snapshots, but not directly used in normal operations.  It seems
> > similar to the situation with mapping gpucc as part of gmu, ie. not
> > something the CPU normally deals with directly, but necessary to
> > capture crash state.
>
> I don't get why binding was added with cx_dbgc, but DTS not. Neither
> binding nor DTS depends on actual usage, so I assume someone
> intentionally did not want DTS to contain cx_dbgc and binding should
> follow. Otherwise we should make the DTS complete and make the binding
> strict (leading to warnings if DTS is not updated).

I'm not sure about the history.. but I can say that cx_dbgc is only
used for gpu state snapshot / devcoredump.  So it would be easy to not
notice if it were missing.

We have a similar slightly ugly thing where gpucc is included in the
gmu map.. only for devcoredump.  Maybe we need a different way to
handle these things that are only mapped for state capture?

BR,
-R

