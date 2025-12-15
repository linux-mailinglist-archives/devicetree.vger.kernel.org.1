Return-Path: <devicetree+bounces-246763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EB7CBFBA0
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:21:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C4C7303273D
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 20:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B9C30E83F;
	Mon, 15 Dec 2025 20:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oo+FxrqY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cPUX6py7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D82207A38
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765829968; cv=none; b=nEKVZMM4aoHPxG2E/OJUupmiNkRwXyo7l3v1Vly5BE3EfzVXpq7MwZEa3acrUgSwrI7mNHbLupClGShUZ52az5yA9+PWqjwAh7pqxot97YhImSE3pg/E3F7htVW2rdzdRR3cvwRbe8pR07EyNMHOR8o7Lp1t5dHpT8RmL1iq0Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765829968; c=relaxed/simple;
	bh=ZctggFCKGNPdOVeNvoahy6lhLTD5GnVrJTESbZ2zFrg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bWVduCTdff99JZuYBRxQOltHwK6+nzqH+8jq9dYiJrVzMlpErU6amtdShcPp2D9Tp/YQS3N6u6ij5mOYGD/La8tBGhnyeahYXM9DDLGakNhQFPz+HyDtqTbjHPibg6OVpPvImeKuOJio5sPineoutuA8rjNRnIOBLCkUkarKKrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oo+FxrqY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cPUX6py7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFBT2iW189633
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TT1d0umxtClSU97VLqt24Auu
	oQHZRtR4IuDHXfMJgmU=; b=oo+FxrqYaWe59oSZjqGDjlrKUHn4+yCsEiH+eDUD
	q2J/7JqAuZajXAACZYYWYehxd6dCUAKBPATODxPtEIZliQW20/PRzL8RetAZw1dG
	dLpogUMYM6eA8ZS+3dWG4xjrM0x9BIaj3su58n+g5gT6ygokYEHOQi3E0LePNJaH
	JZbBNFKgp753VyQqYySt439nISiCYiAqo//I/1NKPE91hZ4zT1XGM3Rd7pI75r6b
	vPepr04AShaY4RfDDa35q+r9Es2KsVCMTstb19DHuTTIP6KY96Lfzx4Dr6Buih/G
	UDKKke0qsh560RrbeDktMaOBl5+drSOTV5RGbvd64ZnVbA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2hgasfxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 20:19:25 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee416413a8so45461621cf.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 12:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765829965; x=1766434765; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TT1d0umxtClSU97VLqt24AuuoQHZRtR4IuDHXfMJgmU=;
        b=cPUX6py7NJouTpFxiuL9KWAcOwaDH6iUvj4JMObiGz2kWqWmr1WxW+xoGoyyDNhFVP
         gWpFm/p5xD2tpNj7Ec/5yUMBHFsgzIvAbVuhIrlB/0iw6CzpN1MSXeiw/Wzjrf8ruWlG
         lssEDUfbKqQUumayJ4gBeVPc8clXupmSIsI/d+F0xo0ca28Cm/w9Wd0HRxy6C5LNMeR0
         JwGBxEdyW7078ivBJWJzSLtoF57UK9sp857Duyjp0sEQxNwe8uH/Ryy4Gsq4WGZh0wgY
         mZ35Nuf/GcV4avoJXToF3BC+Ztam9b+Bq2fJGJKVS/y9HLyY80cKVKMfdWozKY8i3zb1
         gj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765829965; x=1766434765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TT1d0umxtClSU97VLqt24AuuoQHZRtR4IuDHXfMJgmU=;
        b=owQjjK/emdSNWvRDkRPYR59cjgPBrLFW/lO5Q0z4FeGKy+vJKJ8xUjLdhjyfndH1VK
         gH4Cu95PZ/f/uBsMUM5LP/fBB7B96d5DADUfWqBf/I4ItermUty2gZj5PyEr/yuFZiJe
         CO1QCNfbGHNDUCuCFAG6mI9b5h5sjwVfiZ289NlGiR+m7jAjnW7StuCPNH/RqvRzXyZW
         T9E3azivRnuxDfOXo0RzLMaGT14gkYO3elE2zZwFHWjAWyBfWD2jurcbzwDD8AbtgG+0
         tdCRVqT/1Ln6dyYK8IeQOy+v3u5w7hKCwstjmmKAFXOMnEQQFtdkbrzPSwgp/+dLkccR
         DXBg==
X-Forwarded-Encrypted: i=1; AJvYcCUB95RIt7JkJxsYlnDxS0s8aNGWwh23tpwTw++k0pGT3lLWfZ2QAgza9L/DEA46eIXGhMCV1nYJMetd@vger.kernel.org
X-Gm-Message-State: AOJu0Yza8SgWxc3qeJvFMPgl7irA4FFCyYPRRagfYTd8pT7IEOUnQOdh
	jYTdBOQvC2nz7vZzMJziswxrKebnI8Ik9Yrmhd//GJiNYYRoq/8heXXuyIkGg7k7JOtBPCXcZC5
	M1A4GCBvWNlv4a+F60kXL4OPUhyzUcKe2npq5Gh6LYQBe1KJqbNDjvdAKIu2cetyY
X-Gm-Gg: AY/fxX53/WiHdbT10cyKT/TB8el/yd7COAJbGVcTKknvcxrFdEULBBaN4MMnPoiCmKV
	/z5nLcV09UgGIZMlSU7mPkhY/cNloJA+eM0mGjb9I7Ft/yXS3SFF0djerrqOUfdN7jhSQ8UiFxw
	NZu0jlRB1v6Qf0P9i5iHVE98XSryDSCpdmJ+8xySGHvKWSE2UD32xMvKQibRJKHdqo0TDPvVcN3
	/kCMVzc8ErvH7Rel7YLPEyh84oYXD9d2Fqq0NEJaltkFQpkwwX063NQ88TuiM2HxpVx+cv3BKZE
	xqtCoHWVrOcc56d7mafREE9H5cp116Su2RFv4SpULfOeNZN/3Tke0ZO5CnbGKiY6gfV18cEMM0Y
	7nfTSDpbV2t5ZU3m0OH5UlIrCoMIZzvRl/Bxqq94/OqJ71BbXxACVOvdHTl7T4xKEY9dFzUO465
	RJOFmlp5BPmL9vPM7uzFoI9Lc=
X-Received: by 2002:ac8:58cb:0:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4f1d01731admr166123791cf.0.1765829965171;
        Mon, 15 Dec 2025 12:19:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYJEfX+zyhyh7P4YyfpYutO7MWGAMPIszFLOtP6Q5AB6qwEWt1FE10FnaLONq81p+uNug+bg==
X-Received: by 2002:ac8:58cb:0:b0:4e8:9920:be58 with SMTP id d75a77b69052e-4f1d01731admr166123181cf.0.1765829964435;
        Mon, 15 Dec 2025 12:19:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fdee14645sm31330941fa.46.2025.12.15.12.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 12:19:23 -0800 (PST)
Date: Mon, 15 Dec 2025 22:19:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Enable cpufreq cooling devices
Message-ID: <trajn276nneqmpun5zh3w54mfglf64vl7yea2n5hzqq5skxsqf@vckpmhfchcg3>
References: <20251215045451.3150894-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251215045451.3150894-1-gaurav.kohli@oss.qualcomm.com>
X-Proofpoint-GUID: WbaJvACzCBfuEV4_AhQMjkRPrftXkXMw
X-Proofpoint-ORIG-GUID: WbaJvACzCBfuEV4_AhQMjkRPrftXkXMw
X-Authority-Analysis: v=2.4 cv=GpxPO01C c=1 sm=1 tr=0 ts=69406d4d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=we9lbk642uJVcpOj0xQA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDE3NSBTYWx0ZWRfX6b2Nl8FeRKdm
 JyOiMTAl+TNM7HJt/h72FZnoGKgA3K5UsJV3+1+gut2DAnwXMqhZL1n+Hy4KSxxYz73XkceGR0u
 Yt2lAfBbwNTGWTevHeANqPGAEYEUMcOCJy0Se/Vxh0n2m0s0Q5NC6muz9KZ1aO9DaOgkMulZwxy
 cO1oZp5kz1SXSEXCqtkYxx7EwoVAvwYG5oUSN1BYYwg87tUppbrdZLrmmf2huXp+RVJ7zio75/4
 M2KLZ1+6LeIyNhIzyDjudbirMBZzJpFyIXCpRyGv2XLR11KlAcQfhbaWwgUZOr6bngVQZC3Hl55
 ETiL303PFQVBN7l6kR0E689xPPQfDmGDZYHcEyPLLACZ3STaLw7c2Td1psl1XCFs+ZWnrHRDHqf
 ty6vRLMs4jExMHT1qEPIwycMQ5OmWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_05,2025-12-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150175

On Mon, Dec 15, 2025 at 10:24:51AM +0530, Gaurav Kohli wrote:
> Add cooling-cells property to the CPU nodes to support cpufreq
> cooling devices.
> 
> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

