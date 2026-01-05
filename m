Return-Path: <devicetree+bounces-251708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BACCF5C91
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BD56302BF73
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FB7311C2C;
	Mon,  5 Jan 2026 22:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IHk5T+qY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aveZV26I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476333115BC
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 22:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651222; cv=none; b=uyGk7FfPBsISAotV4PkNFBUSsc3lgrYxj52QzI00KuHeMocFBiIRQbKbDoEHUfmROM4m3tvBg7fzZYoVv1wfCSJdpP/udVkPvPxNhEJVoWFcozJ2Z0W9zLY65L/2GRHMfYpabNiQdZ7mV6AFvb2y7l++G9g/3cDDbwmYbor2ewk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651222; c=relaxed/simple;
	bh=YjSC45+R6n68HD/P7WqTA/Lc4HCrUlF6xCu+sJ0GmM4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M3Cr1H2Vg9/3XGMXLXwpPfewLDXM6OHEiQeCtKwFnsg1IdjOnGf2FC1f7DcnTag62AXjSiQVVsPWJrnjdwaGVrfVnUPbATdbSAP/ppOM5sRavZrcEsBXASpiM9gzBdYTaadA4x8b9V3FDIDMVUHHQa2kbynyNVS3Ycl9aeJfLAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IHk5T+qY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aveZV26I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605IHCoW610492
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 22:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AfiitqXqNys0Lkwd8sM0ucjs9nk5HRlWcYhIfzV6kX0=; b=IHk5T+qYtZO0E7md
	B1DCYrhjIFnJlbulAD3XvWVaTdEQkvqFfXvKU0iC6/60V+76ItEWaRdxA/0/jLWQ
	xnmvOwhFWz9NljQxuaw3BEu9ZWYDGzGCWM9Q130hXVQeAlpYEhvqRprnorBVeYag
	gUNyj6/pjSmN12v70pG51N5w98ct+wj/XJaq1g6Ly9UP9Eigr0rmGcjeKnJOidnV
	bik1vHwl9SKzoawiXQSoLxECtLi7x4tAsjpMyh9MdBvp/3yZuO5GwrfUiI+N06dr
	k4E1k6pMZPoMA6JLniHwEUdHfhlOnwDODa3E/1J43+t5GpT16Eshi0F+mRlFoEoy
	edls6w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgaus21h8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 22:13:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f4a92bf359so9446651cf.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767651219; x=1768256019; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AfiitqXqNys0Lkwd8sM0ucjs9nk5HRlWcYhIfzV6kX0=;
        b=aveZV26IjtqfJv+G+qo2ttZe7JfuV3FghujCCSGn0LndO2S0B2Wrv8kolsd6mHkrp0
         29YfVT7JMjrIJekMqUcY/IyDkma2XDZNgCuC9TU8ujbtaz3KtLI6b2ydDWVtYcHfCiB3
         4O8OqVjBinO/tVfSqgXfttn7Ak5SO0/kz/CMwiDkiYwqaIfCwoi38JrpUwGOECNeJVUC
         4etGnfVmCV/ExeN5JfeoF2eq7vOFLGlMFx4L7OzuT2YymszD+zBD87u5nYUcXgEiWU8Y
         xRjhUV+pZibXasOl16OaWAlzzhKpaoyNW0w3YxBwzjD0dpHZwy8+Z4gVRVc3ZAuQWGnJ
         5ClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767651219; x=1768256019;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AfiitqXqNys0Lkwd8sM0ucjs9nk5HRlWcYhIfzV6kX0=;
        b=F/BaVCZn5TLjLAAQeIFkc1cDWk+p429oFNTjZeqx++ZHDkuGWMsjihZfPjSg36zRDv
         A4K09jTr8jGPFvTXJGufrSPpUgyBax8c9uxgFGu4wr9THmZtTB/pEUf6UGGPYJdcD8It
         VPBSmJhxJE18RkxiaVsPvh+thbpXD2jY72HREJqEl2Cv03vLvW+sz9ll8W36DkqMVBkp
         EcpeJRTy0zO5EBxijL1ArF1242yukmGVExHRRmRpGA4aBlGoZ1G4hwpliQtGSENb+qOe
         W2e7JPa8MSGnaowQIA45pjGrkGkUtXlxmFe0npa9UHdteP3UFB4ZkEg5MnZaSM51+Yke
         mvEw==
X-Forwarded-Encrypted: i=1; AJvYcCVm6j3AgQpJvc0kHVh98jA6vgL0uz4oHBIjBjxV/LQQxpyZmq/8dkXbwHwOL3KPrTXcnIiO+fjMRY02@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4z5hFQxtkN5UU2XE5r/xRX11g6k/bQQIWaze8op7I+WaeCEJ7
	S0XNRk3hOuUcN/K7oYxoMyPqZLTHyM6qVcoezfu3Xjxtp8YzcjlD7+Wb3S4nHdxcz+uJwPlxMd4
	4kZJfV0bs2e9RPve0imfj6T4RERN1AvafFYX1T7pWfKNG4VFV3qBoiOOkpu7Aav+Y
X-Gm-Gg: AY/fxX5itwVgEq2/QRfkAA77vIbAxh/vok8+Ljmji6JMRPkGQRHAhTByUOABLtHZCVx
	VGLveU7GNsCRq8UFJXiOlLW/ekElP2olw02g/EIYXRFAKZK049JE7DSkl3+PPNaaN/Iuy9P/nST
	MmifDEdAz30EvvvY48p4ov/r2ITUXsgKXt78gC7owc6og20kdCF5yX1x7l1/YohlYC1QamQD7Ps
	/e9JPgIkYIeHhMy5R12kSrl5oXfxVcRN+vUXw7PFtPqRElfiBlkMnfQ/SKMyuyLxeOXIw3do80X
	0ml/kt+P6MUSSY/50OS7s8XXQDWJI8BVGBBRwA3MKwg55caBv4bIEw4RbqEKeykftpZxa9EeZmJ
	qf3YGhoodSs+5vbJPRtMZdMh2LelOwaA58vX3mlvGwY2vEVlGbLbh/ED39fURaxXF4hfaxQK7VK
	EpxJFmhfZMVbEeUSjqw18rWQQ=
X-Received: by 2002:a05:622a:4184:b0:4f1:b9c7:18e7 with SMTP id d75a77b69052e-4ffa769902bmr15119851cf.4.1767651219415;
        Mon, 05 Jan 2026 14:13:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHhNVwWjv2h2JPNQ6cUx+nHFFHd9wvTTiR2wjeXg72N7icKXoJNSBeOgUV0dHfT6JVmEKjGRw==
X-Received: by 2002:a05:622a:4184:b0:4f1:b9c7:18e7 with SMTP id d75a77b69052e-4ffa769902bmr15119481cf.4.1767651218913;
        Mon, 05 Jan 2026 14:13:38 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb90fa13sm853591fa.42.2026.01.05.14.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 14:13:38 -0800 (PST)
Date: Tue, 6 Jan 2026 00:13:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <kfjogrtbwpk7mkg4fq2vyve6k6nwccguyxupdwhrcknf3qnahm@xyd545je6u77>
References: <20251230130227.3503590-1-tessolveupstream@gmail.com>
 <20251230130227.3503590-6-tessolveupstream@gmail.com>
 <30ee8541-3ec2-49ac-8fe0-987cdc5b16e7@oss.qualcomm.com>
 <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14613f89-6be0-4eb3-beb5-375ab008a313@gmail.com>
X-Proofpoint-ORIG-GUID: eA3Io64WM-bbGGuikRmBFJH533tbtNlB
X-Authority-Analysis: v=2.4 cv=DP6CIiNb c=1 sm=1 tr=0 ts=695c3794 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=2L8lAskvLMvQcOQ9AYIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: eA3Io64WM-bbGGuikRmBFJH533tbtNlB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE5MyBTYWx0ZWRfX+V4Nar457YUF
 rLX/WYtAHmB9e+cQY53elqMZwGkY6AdX2gb+8wTiO+c7s6KRC51FVTCjVB3vQegQaK6ZBL1d4D6
 cbXfhUboZkn74CicUXLUX22sUFhLy/kbZnStdk02Qk2CG/RfjVgt8m5RkIdgySGKmBMqws/HCLh
 5VcjGvC6whddHjSTOtGnbxlEYASR3KF8AsiiRu2Vs7fha2aW3TyAHV9ML3cJBScSCyH+PqqTNnU
 Ops4+OEc1AC8eV2QVSazNZNb1ABU6DSASwuTjcUf/60BjhkyI8cngps0WvnHpABsyK+n9LPFpe4
 wJTKE8fGhOSTDX7zXj7h+rL8AVnUlMuW5WRi8D2xOGT0HlaCShhFfPJ2sFhriySYG1e8eB2mmSD
 WK437rLpdH9fx2XpY+yzjJ3cNnm2JFgJfsJvmVWEXqn0dRuMnmkAO4nqxAyq0Mnb3V0XAmuAkIA
 sD7Tp44sDqML0ybnrkQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 spamscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050193

On Sun, Jan 04, 2026 at 07:16:20PM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 30-12-2025 20:21, Konrad Dybcio wrote:
> > On 12/30/25 2:02 PM, Sudarshan Shetty wrote:
> >> Add the device tree for the QCS615-based Talos EVK platform. The
> >> platform is composed of a System-on-Module following the SMARC
> >> standard, and a Carrier Board.
> >>
> >> The Carrier Board supports several display configurations, HDMI and
> >> LVDS. Both configurations use the same base hardware, with the display
> >> selection controlled by a DIP switch.
> > 
> > [...]
> > 
> >> +		pinctrl-names = "default";
> >> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
> > 
> > property-n
> > property-names
> > 
> > consistently, please
> >
> 
> I didn’t fully understand your comment.
> Could you please elaborate a bit more so I can make the
> necessary changes correctly. >> +		regulator-boot-on;

What is the order of these two properties in most of the other DT files?
What is the order of them in your patch?

> >> +		regulator-always-on;
> >> +	};

-- 
With best wishes
Dmitry

