Return-Path: <devicetree+bounces-238637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E97C5CD79
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:25:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7BA694E36A4
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9BE313263;
	Fri, 14 Nov 2025 11:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UWqtZhuz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HbZWw8+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C970C2FB0A0
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763119130; cv=none; b=Ei2VkfQfNcUK1gP/1EoyYB0oC2K30a8jZTPtBNpqMtqY3jVESAxl2cw+Vsyz97ZS9QUeX4PeydK8xcMyk7QgainlgEJyz+ORBGpfOGu1E94B1w/4VK/vUrxebZkCF22b5S4AU2+mrY9tfL5+A83CbtpUtiaie+ZGMrQV+eJVEfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763119130; c=relaxed/simple;
	bh=V5e0gieDe+4S71mS/D7TuK7FS2rWE8FAjNig3g1AfhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cYu+ypOkfugb+b24bANFyQXllqT/Pc1ia/QgAfdrQU3BehbDRvwpr/FBkuKmXQLg2UZ4zNwrrGzPZYRzOVbFkVuhI8KLPUBXBkzL7huPXDce85Skh5i9zfToN/fM+hUJeqDD1XC4Pz/jqSmHzsZ7WKYDKGgZDh4ETsHHhK4AaXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UWqtZhuz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HbZWw8+w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8jxIU1582991
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mbBaG4GVXKqxdqnivGQethSywtPwE/f/PhhnNNvv/6A=; b=UWqtZhuzW2efhh2k
	ZcgNaiwEgyJHolhJfOuCaIwTKRdGI8J0Gs0lDoaBw25tPS4zB4Fl9U9ciW93ktFm
	KQLH7RNq7EGCZieBU8Qcd9ErV27O44V9IQuM/VcFlPcFiHB8hOWT1PlihfUwoRJ7
	DO7PjcdV823dShH1yughTUpPaYQrt7lC7JvJPY5y6lYwgHygjDVYyXCUhbbA9qlR
	WYGToAkOoQFNo/31p70M5nBniTTzgaHS/uCmhC57NhXQCRT9qad/8lhYHyYwvfZt
	kRlOeQ3stxOOV/WK5zhTs8aJLYMFSN18veGanSwCuiMH/JWdQAtFKcFoqMhAPFw5
	6bfEdg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9fsyr4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:18:47 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7a998ab7f87so3114411b3a.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:18:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763119127; x=1763723927; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mbBaG4GVXKqxdqnivGQethSywtPwE/f/PhhnNNvv/6A=;
        b=HbZWw8+wp+ijc0ZzzP4ghiuMClQdtnm8NDlt2Jk6sQYjvLGXJ8zbxoLB9RUHlCWtaV
         cRv0IqI0OgSKbgbTddGy4/A/T7+5EzRGcHNz2qbHtMezPvpfhmcCcODYI9MYP3OzpXoQ
         Ix62M2WqNkMhRopRN9t6VnTYJpwGKrfGNjieOHDqbQZ7+IUl0/y3JM3uNGhRq03og+3K
         xUJ+c7JpOjeRPOntBYXXCgu/IBFADconluCyu+RPirGu+6eUmayz713GWzd97r64AUBB
         l8pX1nQfxfNZY/V8fJV1jYZXXF7YrV93H/eRS3EYPhY8lckw+kpxgjbKLI840fjkHbLG
         WALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763119127; x=1763723927;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mbBaG4GVXKqxdqnivGQethSywtPwE/f/PhhnNNvv/6A=;
        b=FrOOVLBUiAgC24Cj9FvqXcO+bxuqhQu+Na7aENMfHOoGA7QzGhNUeGu1cu2FfyqRmv
         cMri7BvSKxwRauHmgQzS7YmquxwIAWGilBEYQfEI2jhPmxxd7Y6lAfx+TXkDJqTvDB2a
         9ZcZ6+Fo1nOgppuj4YwQ0Wk6YxScUbmnnLgfRlQcjXPqHGnT8EGGD/kcXlzVOnTzZrdU
         +PEE20LSqMfjEsqefBarU3uuoSkCGSsWTxu+Q10SQ82uCC0RxtqCL7Yy6n0b4/lnt005
         TBMAL2sUALW9Y2VqWgGaN/353Aa7lIirdL0pZ29gayOJdnkEBMgk5pYdtCE24iKF9BPl
         bWow==
X-Forwarded-Encrypted: i=1; AJvYcCVMqSqIOOVvJz9dQJqdeT7NJvmv/10zuZ+aA+SVWXvNv2GNP/bHyChAkwYk+rITuTmeVRGbMFszJWc/@vger.kernel.org
X-Gm-Message-State: AOJu0YzyY/B527BsCSwLJfes7bo/gGKI+LXc+HdN0DAg9XBxsS3Q5Nyk
	Ct/xqTajiKlVl4m3Okp5BOlc95BLrMmRH9oDviUzrwVit53ICUELtwGcHMb0Mbw+Mu7MCazKbtk
	CwlOlr2ziNEnV0WPSAmAvqZalq1xjeZBhOnZfrwKxW6r2O2UtEqq/JMhQ3YdBIw0W
X-Gm-Gg: ASbGncsjPfxG4c2Wyn6iWS13IGDJFSjGMs0SEtkBkqMAYbgH386xaMN5Tv49qkffy/a
	WPoFEVevZBHcCsYpTG72IJ/Uw5djNVkWFuPv6YVRuT1EzFxqavymalTMX7G16i0fbmzBwpcUMPc
	jEGreW8TWVBNGjgIU2yKhXMUjj9nBdqAc4tBPn0YcdlLdTHcYI1jqZMWseq1eMSELhJf4dZr3Ws
	N/UhOjlPrhzHv+75q37TzJvuIXkcTFkTt7z7x4K7dscA2XGs437oh46da7aJKNqWJo3g5BiEclD
	GdUd8OPRrdrtO0wmjoT+DX0bze9AAaOLLE17XtWcFUKNzHPYZJETfUpcL1tOG6Cqg4eS8QcJFqA
	6g4vDZz0YzK0ORwo=
X-Received: by 2002:a05:6a00:4fd6:b0:7ae:fea:e928 with SMTP id d2e1a72fcca58-7ba3be8cd3fmr3878366b3a.18.1763119126662;
        Fri, 14 Nov 2025 03:18:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH6iZx+FzQlCIsos6qvKvDJ8K8f/ULva9o995W8TNe3A8FEdEjmEYQBEco3kWM2aaOCN/EV5w==
X-Received: by 2002:a05:6a00:4fd6:b0:7ae:fea:e928 with SMTP id d2e1a72fcca58-7ba3be8cd3fmr3878331b3a.18.1763119126181;
        Fri, 14 Nov 2025 03:18:46 -0800 (PST)
Received: from work ([117.213.102.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9251d31c8sm4844965b3a.30.2025.11.14.03.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:18:45 -0800 (PST)
Date: Fri, 14 Nov 2025 16:48:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] dt-bindings: wireless: ath: Deprecate
 'qcom,calibration-variant' property
Message-ID: <kve3f7zkywwsfkylom3jp4e3ejlspnlvnmlkuq77uy6fqsy5dt@gaitvppj2jcw>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <20251114-ath-variant-tbl-v1-2-a9adfc49e3f3@oss.qualcomm.com>
 <b9b4f1bb-45ef-404e-b75e-962e85a557a2@kernel.org>
 <fmumja63j3xvbvfxlmtnkfubgw4jwo5f43srrpfgqrxyqknrj4@izsqazgbiehp>
 <1703d8d7-5105-4585-b8f0-82bb54809718@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1703d8d7-5105-4585-b8f0-82bb54809718@kernel.org>
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69171017 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Nd/jlyMbCgud2ZEcqXkYLA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=g1-VRVjhQJBYHFELFpAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: TecgNHDPf7c9fy5LhVlDe8dCrI1wqg0O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA5MCBTYWx0ZWRfX/K/31Hl00yvm
 07jlrSeUR00CjvxLOyw/R5Xj0ITUNfbcKXmOyR3t3hCJdGcHSywUbA/33qobyh7oaBSCkbnISTN
 SYM+hLtkNlAtGW6El1TvMnbUbz4zMy+EzqTd1Akl5eTHjZqqxqEv11zeAECtJfO6K3BIHyPiyWn
 3/dLPLYcoyT9KwY8zygnIUgAkw298tAjneSLVlrJyBq6AuoXsiizmdlnAMS7lHPj0MLR/on04ej
 xiGOkWEH64LgbiWU3Bc9X0bAyQ4Hc+wgBZ74dr/X09rof1PLpA1QLSPq5W0l/9HKRkrUWG8pFQz
 0CL8BYdtoDqwfDFVU8PsFaDG8aspGI8qlZsWIKsR/oQM2YyIZ6HM2Dkkeyb3uY4m7AfFAMkFBou
 fZGmk0d9DJ4jS/0KM9Vy4TUNyu5TcA==
X-Proofpoint-ORIG-GUID: TecgNHDPf7c9fy5LhVlDe8dCrI1wqg0O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140090

On Fri, Nov 14, 2025 at 12:04:55PM +0100, Krzysztof Kozlowski wrote:
> On 14/11/2025 12:02, Manivannan Sadhasivam wrote:
> > On Fri, Nov 14, 2025 at 11:47:25AM +0100, Krzysztof Kozlowski wrote:
> >> On 14/11/2025 11:22, Manivannan Sadhasivam wrote:
> >>> On devicetree platforms, ath{10k/11k} drivers rely on the presence of the
> >>> 'qcom,calibration-variant' property to select the correct calibration data
> >>> for device variants with colliding IDs.
> >>>
> >>> But this property based selection has its own downside that it needs to be
> >>> added to the devicetree node of the WLAN device, especially for PCI based
> >>> devices. Currently, the users/vendors are forced to hardcode this property
> >>> in the PCI device node. If a different device need to be attached to the
> >>> slot, then the devicetree node also has to be changed. This approach is not
> >>> scalable and creates a bad user experience.
> >>>
> >>> So deprecate this property from WLAN devicetree nodes and let the drivers
> >>> do the devicetree model based calibration variant lookup using a static
> >>> table.
> >>>
> >>> This also warrants removing the property from examples in the binding.
> >>>
> >>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> >>> ---
> >>
> >> The problem - visible in one of the examples here - is that one board
> >> has multiple WiFi chips and they use different calibration-variant
> >> properties. How do you find the right calibration variant for such case
> >> based on board machine match?
> >>
> > 
> > I suspect the legitimacy of the example here. I don't understand how a single
> > machine can have same devices with 3 different calibration data.
> 
> Me neither but I am not the domain expert here.
> 
> > 
> > AFAIU, calibration data is specific to the platform design. And I don't see any
> > upstream supported devicetree having similar properties.
> Deprecating these is fine with me, but I would prefer if we get here
> some clear answers that mentioned case cannot happen. If you are sure of
> that, please mention it in commit msg.
> 

I'm pretty sure that this example is wrong. But I will wait for Jeff or other
ath developers to confirm.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

