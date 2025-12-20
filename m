Return-Path: <devicetree+bounces-248505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A345CCD3443
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78958301226A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 17:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C443D30E84E;
	Sat, 20 Dec 2025 17:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BRXw6uzL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h57BNvza"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EE830C379
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766250850; cv=none; b=MX8uAQmZWzo9unLEolQjDWmKGLItMs5Js/iHZH5SmN8UP4RnA2RSTVYa65pjekiK5FSn1Vo3WT4c9Wovl+I1npdGKiG7uS9/abexJqi5XS14Uy60TX8wu4z5Zwzjr7uAGqrpLoSF1QXF7R7z/sHrgEdgfpUpY+13RRjwtCYa97o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766250850; c=relaxed/simple;
	bh=2HP7cyfnaW6jIR1poNT4mAzbIUboZJHSQiyaw6iKHJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GHjHjDY7feG/Z6RCldGOGQpa9sGCzg3Y8tBDoQVU7oxTeH+nZfJMr2jJhr9eslBIJqbkkhdqutHKQ/C5MvurQjho39mb+S6ExXt8jEBPQsAtRyYzPuSs3rTOWHV7eRQHC7R8K7WiFj5eB7hshoxAKC0OFnB3Ll9UN1Cv+jl+X5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BRXw6uzL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h57BNvza; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKBP2xt3403072
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:14:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WSzOEHcq0zxLmpCA6MvjFUl2
	Z97V94MIOLL7JeO36gg=; b=BRXw6uzLGEFpJ1n16EyLxMmtypKebxecMYdDA/od
	iJ0Nf97F3oAzToCiFrURAqFYoETSvsy3ZWiTPFx4tB7jaMUIjy+B0bal/D8gC1pf
	BLliDBv9Y7oZ3krL7lugF90tdhEwnJ5lV8fBiWXCqdqAO7z3ZepiefzgfeiHCLS5
	yGivBHUtntg9Hxw9qyDI6pYepAe8vbOYkF5ShCJLv5+4prwwodgYGzoK4wmTRIGL
	wpTdYHcZjMynLBEzwME6xrhXxTLokhVYm/3KvFQIdfVJISjlS6D3ldW219iEsvMU
	Gxv9aSVJLPtvdp1omT/hScLhJwvuFU/B1BN4rf/lB22Dtw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mtqh16y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 17:14:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8804b991a54so90613216d6.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 09:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766250846; x=1766855646; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WSzOEHcq0zxLmpCA6MvjFUl2Z97V94MIOLL7JeO36gg=;
        b=h57BNvzancjQcVN64gdFGFAQeKRO3kcU5714CRs0AuT3mIKFPvk5Vx9hkocr0MoMpU
         3LSMbF9tUj3daVUeDou0UeqrEQqDABD2fgAOcb2XgJ+XrHEeEQ1NOLkqNB0Yj5uAtuwp
         jzLhOr8oHX2A/3plqytNH2StIGf9ijIIa1PJfqwdvqXBVeu84iS5ROSvv2ZBPHYhWdrQ
         qU1sfhcYLPnhKS/1iW5hNB8Hj6I2Insja9hPI32pbcmey69MncrdNLctdbsa10g4g0M2
         INWEEXnElqt1bVVGjI14f5yGr2zVzUNlvKWZBob+jvZJQ9PndeIYtaEmWwCmyLnua4G4
         I6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766250846; x=1766855646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WSzOEHcq0zxLmpCA6MvjFUl2Z97V94MIOLL7JeO36gg=;
        b=IPdbYasSdysKsEW1HtGVmCgCIu/bwZTl2A5v8mkqU9MTPrSAzVqZh8CjuAvY4bEaK/
         m2L3gY1auWowyoz8djbLtHhkEBuzAxY1YKyMHRHLaf70w1JZ3iEYgT1d+4R2I7C1l4V9
         Dipp3sYzBx/jS/uYBOUuYH26QgaWlXIsaYWY9SvNpfWspUg0C4+/viaj9VyzVbbH3du8
         RP0bDmhPgqFkdi2/6Z3H97bJejfEIjboD9QgwsRdk1sBIRhHSIi1d6qkOj1z/AXvgBTC
         XlCC8vfdaWmeC0otwkNu5UX5MKnJoeAS4L6JYuqRYfRfBcng/Ebrb/14w1Kbgq2MokgW
         r11w==
X-Forwarded-Encrypted: i=1; AJvYcCU+b9KiX6xWX1AGRa8F8MW6zhoP252iOSMYBJEJYPckXLnvv/4SsOIpdUSZ4JqbIQ0L/xkFNhK/lqsE@vger.kernel.org
X-Gm-Message-State: AOJu0YzeA1+N+2vlNJ5cJ4SNCwBbsvweg7JH24HV/EDA0jhTaMoiOPjf
	NXQlCtMcwx5jetKiI0/EMujHhx6lrm8TJY16ZoTGU8xMg65o+UzBVfZcWUbrv2Tm4o4ZiVtpGri
	ZWC2xb/mJSfqUkW0W+wssA+i0sLMbJPwm6FELNEL8mkrrS6F8epIrFY+qF2a/OFqr
X-Gm-Gg: AY/fxX6UpyGBF+4wtXtiALy9RHanbc231CVSHXVPlN2KaDe/hxorzquUBLJNK1wEV+D
	cJ1CrXN+b1N04uSaho6mUgCJ7BPAkKWbHlOLYzjfyYwgbNIDSqp6rAMTHbttYK+4/nl0thMp6at
	9CBDLFqHI6c5wikJpRGASVruMChMX6eKIlrFMoD+p8Ed1HQ/MK0RDF1dRrsdTJ6b29cD+FvkBe8
	eZdcQHuC3RssxkJp4GVf0rvSgzL7TCc8QQHr5H9gLA5puHSMb49Bvnb/iYgv2B1/HulsCfQ4tAz
	06Hp9EX4BJQkXI/va967MBZ99/HwNKixgwTInjKsfXw0Ib/7qYZCuMzikXTK3cFGBNtQKBjaUEy
	AEx+Z2Aq1UiMHYrljLFK6upGzaU3XN5UZ7bnyhLruDtbn3cyF82V/Fo6aX2BOm1TGWXDhMcZa2Z
	Ca0653KIboxpyIvcWzvEKzIig=
X-Received: by 2002:a05:6214:5191:b0:882:4555:f164 with SMTP id 6a1803df08f44-88d876066d5mr98959626d6.40.1766250846195;
        Sat, 20 Dec 2025 09:14:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8qZrv9VxLeGT2ry7p5S5eSnV2ALEFgspQzmYK4flM4NAF7DHnxDEWWiIAMWKPU4yOK5/ChA==
X-Received: by 2002:a05:6214:5191:b0:882:4555:f164 with SMTP id 6a1803df08f44-88d876066d5mr98959136d6.40.1766250845538;
        Sat, 20 Dec 2025 09:14:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a186280b1sm1610706e87.89.2025.12.20.09.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 09:14:04 -0800 (PST)
Date: Sat, 20 Dec 2025 19:14:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com
Subject: Re: [PATCH v3 2/4] arm64: defconfig: Enable Glymur configs for boot
 to shell
Message-ID: <gqmwj35n56yc6cd3sebyyrxakb3d7qw5pb45amhmefzj2253nv@plnbjof5zfws>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-2-32271f1f685d@oss.qualcomm.com>
 <ee084ec9-31a4-492f-97c7-009dbfd77613@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ee084ec9-31a4-492f-97c7-009dbfd77613@kernel.org>
X-Proofpoint-GUID: NhMg71XciuoPE2XRaL0NfBCsxThakXCN
X-Authority-Analysis: v=2.4 cv=dPWrWeZb c=1 sm=1 tr=0 ts=6946d95f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6FEy_uRmnU_CNISU7XMA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: NhMg71XciuoPE2XRaL0NfBCsxThakXCN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE0OSBTYWx0ZWRfX4+pPiDM/Mutc
 X96JWXaY2FyGCk2tZkqVjNWZPl5v4bG2AZLsehL3iNe/D93c6WK+pk9WVze0SKvbqx8MkkPIiZP
 5IX9VjVTTkY7q534x7qM+bhguJ+DTxQsV9uRLBAeIu3ztBiF2wEeeuS8ZnsQD0+l1u941zVTRML
 oyg+40Yg01X8wRj5bt7ZCKBHDwZJO5LpL6QVvXn3P2byD76CPEEtA1X40LftKGI2t/HIFovDSsF
 ldiQvgudDBFDc/SykSu02x7gkbkSZzK6HSBfHCBO9AyHlh8jLDj+b0y4WPzlyz8qnolJ1wRFybb
 fDEuqOvURFk1b47t0Xa76l089UfBYNdgiUcSHPXHsFCgMOIePYDBTRGHZ7law9jlB1sWdCay+si
 DWR5Bce+IXtrsYfUS9nP1i7QLTtqYB3hYlXEV3Oxdtd2HU17V25td0etvvwch9jGgo9fh4/U85y
 5duWhxkp7c9LUeN++9w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200149

On Fri, Dec 19, 2025 at 03:57:57PM +0100, Krzysztof Kozlowski wrote:
> On 19/12/2025 15:46, Pankaj Patil wrote:
> > The serial engine must be properly setup before kernel reaches
> > "init",so UART driver and its dependencies needs to be built in.
> 
> Missing spaces before ,

I hope, you mean after comma, not before.

> 
> > Enable its dependency clocks,interconnect and pinctrl as built-in
> > to boot Glymur CRD board to UART console with rootfs on nvme storage.
> 
> Nvidia Glymur CRD? Standard comment - you look at kernel and defconfig
> as it only Qualcomm ever existed...

-- 
With best wishes
Dmitry

