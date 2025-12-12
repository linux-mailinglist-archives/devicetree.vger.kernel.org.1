Return-Path: <devicetree+bounces-246180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EC5CB9A3C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 20:28:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B7F2308902B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 19:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7F63093A7;
	Fri, 12 Dec 2025 19:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HNoDQdsX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aQBFXZmj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC9B2F5467
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765567698; cv=none; b=Le2euscolPdd61Kt0gS76HuTM+dYxxT/dpyyd216/pDoC8YPxE3UAeRNKvhxSDT/W45DYRZ0BF7C4McuTyGEFsne+LlOTbmp9pNTnKgqDYbHKUMUSEwoLKGRPhcxdYbsba71dpnDHc8dM9fX+ADK4rZsT+Lkf6+7JleRBbwIBQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765567698; c=relaxed/simple;
	bh=Fu97WfepiQZ9BwcYS3iF29ob0areZLFurjDVHCMOphA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cakY+5o5sGSTwOzgWUCQbmbN8lLkPXaUPEjoHXlzsDIZDF1FLx3bc+UBq4okkonrw2p6VDk/c/AbdeTffbRxWS5anYq8vPRbwDi1lzdcU2Oew3eBn1yfsYJSZgRZjBWWcQBF2vhxqHSgswLVb5gDbgrivvrTXgZv4ky2ZOeFpFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HNoDQdsX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aQBFXZmj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BC68ecX3660851
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:28:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4iG8dDsSSuKdKDc0EjULhQtf
	uZmHQl5OwS9CIR2jEPc=; b=HNoDQdsXrM9rNYii9DI9/UxQ1oGs+b3BPCjqvDfk
	onAQeUZlwo/gRBCPIzFFsLMCfBUya8Ur+NW+8my6dZdMTDw7dVmBMN7YPADjSNQs
	1O50e5kDRJSc/GyRGIQ1OYJtHAp6d3S7LsWs/KAFfiDVGWDgwU88BP1+n61yMJ0R
	l0L3zAtunNNkGLoqtzBqWzDQ283IpfNjpfDcqASTe7PlhPoXzZy+Kkgfz0L6Yghh
	FnOa5zFXBceqtiaCr6niRNotIi7BzlFx/oAVFEAPNtOZjJ02+KpPS91V9aGQOiHS
	mSTokt3ZlKIxBHSNy4/2QD532OICqmz40Gh0X28vzenutA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b0dh6sku9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:28:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed74e6c468so23759711cf.3
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765567695; x=1766172495; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4iG8dDsSSuKdKDc0EjULhQtfuZmHQl5OwS9CIR2jEPc=;
        b=aQBFXZmj6iiSWLuQOEJ6z1K4yyduAEsIJuxXigWs/uFE+spnOx196i2QqD+miLx2RN
         V9pKOYRiCah4h3yjuo0qfqSsWwKsiTYHNxeDR8XhZfefM0kYA079osmO1SBLBSeT9voe
         mOaa8Xx1nGfnTlP/HqsvL++QV0u1DIVVrPrTImUmdpR+QH+nqGcG/FOX1vvMN4wVuMp6
         1A/Vd0g/EQX2CEO4lV0dtVuVOhKLztz4FHtbBzrlLAP4o0Wg37rRfjAxpD2L1lVr6gz3
         SuoF/8rGTboWJXukDzZ+rrPc8ATvwZjGz+vuYnVv0k9lK4sJps8Tu7WM6I9JoOAKpmJf
         bN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765567695; x=1766172495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4iG8dDsSSuKdKDc0EjULhQtfuZmHQl5OwS9CIR2jEPc=;
        b=EoQbDF4l6n8qZ2ky/KO/u0RX7myY8ItXTHgEzwf7uc2jNG71wsyR4gY8OC9H5Zuxsn
         5Y3TWboCTx8jicgfLBHQZ1Uc/1uXQNmDjCIqI3fRAn9giYxfv5B28705FnVkQ7K3OhaH
         KwsKF5JFbW8kX6uLrmOhEsaoa/osljKLfqcedBiNlsuLfUyKpGvfSWC07Q5Wnl0CMbSi
         3bWUqFcDb2q2xznfXwdmwMapnUuomrC/of512Lqbjkc8uNWRUdIUW82QNPUKHZaxIkcL
         wRqavQBfrH0gbCYUJkHa2oZUOo+X/mPVTqKaFOV3Zavbh9IDwvluAjzqLndDGDZdENf/
         PjQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvMFhC6VZtHAzVj7Wt1Sma+N0hyp+luKjvP0H6sf5EZ3oxtf3XAanFUdVgnE42UtP9VgwYmd4oxImn@vger.kernel.org
X-Gm-Message-State: AOJu0YxMSnnLaFGJeNgykKQZRq+I72J9L5Q5QrIDK33QOASjHCMvb0Wr
	9pte/lqI6UQxLKdAvhWRl9RAEakQfXhRsJOC+GOUSssJtwNUZQxbJ+Ggqbme/AUie/pNxWdQDHn
	7GCpcQ7Kg2Vc9NjN8Enynx66geqcrAUILbgoQkzq9fQJV7mFm9Pcbd48eVQnliBav
X-Gm-Gg: AY/fxX4x2PYh92Rt2+qmwLEpAbfwRGsZUQS56TGPx3BzQOwAV9d8QCDKNblRHdQk1mb
	TarFkJtGOt0IiRs/hRQ8gOHhHFnWtjnnyLCJ/EZOCg1VUUA9ufuAjFRET2NOmMzbedw2RZV/NWs
	fTgY43sGc9R8fpMDeF30c+oxSESko478L9dB9nnuljOIOBUj7OYQDvyiSuwiPivX+QYzST+5fw8
	qpFD+tMi/u0O8Olp2qTRCRH7qZMtqg4ch3/+3Qg0XKRRH0jgh0hNSYswOoiSVGtJIXWzJ+zeEW5
	JE6Ob6BjEqWmHQSD1ZlUJhuhS/wkzf8croz0fU6aMbuKDxLCeHB5sn3oJak60HYx2c4pL19ukAM
	blwJRTZRxLleX619tWZCaaGQ9rIOz5VNPenEqCzNsmIjcAmnT/0yF0dj+G1O50PzMeGDmvajy5T
	txOWeQaRmNWoAbfuolvdF9p1s=
X-Received: by 2002:ac8:6f05:0:b0:4ed:6dde:4573 with SMTP id d75a77b69052e-4f1d05defe5mr42633461cf.52.1765567694560;
        Fri, 12 Dec 2025 11:28:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzyr9/RXsJkVGr07JI30zn5AtzYTW2vr9z9xYxGmBwaQ2xPKZMLmJQAJgtcPN2kJ0FP8aDSg==
X-Received: by 2002:ac8:6f05:0:b0:4ed:6dde:4573 with SMTP id d75a77b69052e-4f1d05defe5mr42632881cf.52.1765567693969;
        Fri, 12 Dec 2025 11:28:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f42215sm2300593e87.33.2025.12.12.11.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 11:28:13 -0800 (PST)
Date: Fri, 12 Dec 2025 21:28:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Message-ID: <wwrc637p5nkz6ptuef2hrhyjgqnyifcztlkjrqyw4764vg6jpf@wso4tp6onb5l>
References: <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
 <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
 <2e5sqv2gnxdfwnfsepzdkchxip5zdeamp6bzbamq6kbk77kr3p@u5i4rrnrywno>
 <9971bd9b-88db-4628-b36b-de50c1619396@oss.qualcomm.com>
 <raj276z7euq7skvhsw7prwzlgsdy6ay7bhm4wgb64mt63q4ot4@eyvhcou7qwgg>
 <57706b2e-becf-47ac-a874-79ce17d12b74@oss.qualcomm.com>
 <812cfa55-269d-4b19-8e18-4815608b6bbb@oss.qualcomm.com>
 <6agidc2r2d2jevtiizj77mtlytoo3raxaoe6b53rvk3obmmiha@x7pqjco4ulhg>
 <030a8eb3-c79e-4be0-8305-7c9bb2005785@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <030a8eb3-c79e-4be0-8305-7c9bb2005785@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eZ0wvrEH c=1 sm=1 tr=0 ts=693c6ccf cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=mj4UdRjbQG8oDJo-2FUA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: X8gIYhj7rdOjjqrTrZa6dY1V6XfgNmuu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE1NSBTYWx0ZWRfX+mtRLo6em6tj
 2hx3RFaLVEjmvgZiXE5NiAKjdteZSHJmeqpXuzU2cWvyQlOFnt8QiVUl85aO4NT0mcJx1xV1xA+
 PMsDkfVOHSMlrDO1ejLy4aucv2sYp/vS2rBkJpeHQdzOqMLaGcMXiNiCBwLvEOPrtoIgfqTCV/Q
 tZa27DdAFbOCaTZsRAJyWgl1lFnHEWhLsifpMmf0vk4w15vTvXa3Zbr5Ic1qe22hB+QIMZN4uly
 cmnONsO27LEuUFT+U2LESc7T0CL7ggxGcQHnw6tijXzM3pCuKvQnof5sOZQAGRteKbQ88pcKi2q
 m4SeMHttbA8BRUEdaqvrNX1uhYFmTrdYUcC/xE+nTqCrtN+Wji64ru29yOMdgp8Sjr8RMG+64FT
 wVoojKwppfrcmoklKez9xrPZgXQ14w==
X-Proofpoint-ORIG-GUID: X8gIYhj7rdOjjqrTrZa6dY1V6XfgNmuu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_05,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512120155

On Fri, Dec 12, 2025 at 01:01:44AM +0530, Akhil P Oommen wrote:
> On 12/11/2025 6:56 PM, Dmitry Baryshkov wrote:
> > On Thu, Dec 11, 2025 at 05:22:40PM +0530, Akhil P Oommen wrote:
> >> On 12/11/2025 4:42 PM, Akhil P Oommen wrote:
> >>> On 12/11/2025 6:06 AM, Dmitry Baryshkov wrote:
> >>>> On Thu, Dec 11, 2025 at 02:40:52AM +0530, Akhil P Oommen wrote:
> >>>>> On 12/6/2025 2:04 AM, Dmitry Baryshkov wrote:
> >>>>>> On Fri, Dec 05, 2025 at 03:59:09PM +0530, Akhil P Oommen wrote:
> >>>>>>> On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
> >>>>>>>> On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
> >>>>>>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
> >>>>>>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> >>>>>>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>>>>>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>>>>
> >>>>>>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
> >>>>>>>>>>>>
> >>>>>>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>>>>>>>>>> ---
> >>>>>>>>>>>
> >>>>>>>>>>> [...]
> >>>>>>>>>>>
> >>>>>>>>>>>> +			gpu_opp_table: opp-table {
> >>>>>>>>>>>> +				compatible = "operating-points-v2";
> >>>>>>>>>>>> +
> >>>>>>>>>>>> +				opp-845000000 {
> >>>>>>>>>>>> +					opp-hz = /bits/ 64 <845000000>;
> >>>>>>>>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
> >>>>>>>>>>>> +					opp-peak-kBps = <7050000>;
> >>>>>>>>>>>> +				};
> >>>>>>>>>>>
> >>>>>>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> >>>>>>>>>>> or mobile parts specifically?
> >>>>>>>>>>
> >>>>>>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
> >>>>>>>>>> here.
> >>>>>>>>>
> >>>>>>>>> The IoT/Auto variants have a different frequency plan compared to the
> >>>>>>>>> mobile variant. I reviewed the downstream code and this aligns with that
> >>>>>>>>> except the 290Mhz corner. We can remove that one.
> >>>>>>>>>
> >>>>>>>>> Here we are describing the IoT variant of Talos. So we can ignore the
> >>>>>>>>> speedbins from the mobile variant until that is supported.
> >>>>>>>>
> >>>>>>>> No, we are describing just Talos, which hopefully covers both mobile and
> >>>>>>>> non-mobile platforms.
> >>>>>>>
> >>>>>>> We cannot assume that.
> >>>>>>>
> >>>>>>> Even if we assume that there is no variation in silicon, the firmware
> >>>>>>> (AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
> >>>>>>> wise to use the configuration that is commercialized, especially when it
> >>>>>>> is power related.
> >>>>>>
> >>>>>> How does it affect the speed bins? I'd really prefer if we:
> >>>>>> - describe OPP tables and speed bins here
> >>>>>> - remove speed bins cell for the Auto / IoT boards
> >>>>>> - make sure that the driver uses the IoT bin if there is no speed bin
> >>>>>>   declared in the GPU.
> >>>>>>
> >>>>>
> >>>>> The frequency plan is different between mobile and IoT. Are you
> >>>>> proposing to describe a union of OPP table from both mobile and IoT?
> >>>>
> >>>> Okay, this prompted me to check the sa6155p.dtsi from msm-4.14... And it
> >>>> has speed bins. How comes we don't have bins for the IoT variant?
> >>>>
> >>>> Mobile bins: 0, 177, 187, 156, 136, 105, 73
> >>>> Auto bins:   0, 177,      156, 136, 105, 73
> >>>>
> >>>> Both Mobile and Auto chips used the same NVMEM cell (0x6004, 8 bits
> >>>> starting from bit 21).
> >>>>
> >>>> Mobile freqs:
> >>>> 0:         845M, 745M, 700M,       550M,       435M,       290M
> >>>> 177:       845M, 745M, 700M,       550M,       435M,       290M
> >>>> 187: 895M, 845M, 745M, 700M,       550M,       435M,       290M
> >>>> 156:             745M, 700M,       550M,       435M,       290M
> >>>> 136:                         650M, 550M,       435M,       290M
> >>>> 105:                                     500M, 435M,       290M
> >>>> 73:                                                  350M, 290M
> >>>>
> >>>> Auto freqs:
> >>>> 0:         845M, 745M, 650M, 500M, 435M
> >>>> 177:       845M, 745M, 650M, 500M, 435M
> >>>> 156:             745M, 650M, 500M, 435M
> >>>> 136:                   650M, 500M, 435M
> >>>> 105:                         500M, 435M
> >>>> 73:                                      350M
> >>>>
> >>>> 290M was a part of the freq table, but later it was removed as "not
> >>>> required", so probably it can be brought back, but I'm not sure how to
> >>>> handle 650 MHz vs 700 MHz and 500 MHz vs 550 MHz differences.
> >>>>
> >>>> I'm a bit persistent here because I really want to avoid the situation
> >>>> where we define a bin-less OPP table and later we face binned QCS615
> >>>> chips (which is possible since both SM and SA were binned).
> >>>
> >>> Why is that a problem as long as KMD can handle it without breaking
> >>> backward compatibility?
> >>
> >> I replied too soon. I see your point. Can't we keep separate OPP tables
> >> when that happen? That is neat-er than complicating the driver, isn't it?
> > 
> > I have different story in mind. We ship DTB for IQ-615 listing 845 MHz
> > as a max freq without speed bins. Later some of the chips shipped in
> > IQ-615 are characterized as not belonging to bin 0 / not supporting 845
> > MHz. The users end up overclocking those chips, because the DTB doesn't
> > make any difference.
> 
> That is unlikely, because the characterization and other similiar
> activities are completed and finalized before ramp up at foundries.
> Nobody likes to RMA tons of chipsets.
> 
> Anyway, this hypothetical scenarios is a problem even when we use the
> hard fuse.

So, are you promising that while there were several characterization
bins for SM6150 and SA6155P, there is only one bin for QCS615, going up
to the max freq?

> 
> > 
> >>
> >>>
> >>>>
> >>>> Also I don't see separate QFPROM memory map definitions for Mobile, IoT
> >>>> and Auto SKUs. If you have access to the QCS615 hardware, what is the
> >>>> value written in that fuse area?
> >>>>
> >>>>> Another wrinkle we need to address is that, so far, we have never had a
> >>>>> dt binding where opp-supp-hw property exist without the speedbin cells.
> >>>>> And that adds a bit of complexity on the driver side because, today, the
> >>>>> KMD relies on the presence of speed bin cells to decide whether to
> >>>>> select bin via opp_supp_hw API or not. Also, we may have to reserve this
> >>>>> combination (opp bins without speedbin cells) to help KMD detect that it
> >>>>> should use socinfo APIs instead of speedbin cells on certain chipsets.\
> >>
> >>> If it is a soft fuse, it could fall into an unused region in qfprom. On
> >>> other IoT chipsets like Lemans, Product teams preferred a soft fuse
> >>> instead of the hard fuse. The downside of the hard fuse that it should
> >>> be blown from factory and not flexible to update from software later in
> >>> the program.
> >>
> >> This response is for your comment above. Adding to that, the value for
> >> the hard fuse is mostly likely to be '0' (unfused), but all internal
> >> parts are always unfused. Maybe it is 'practically' harmless to use the
> >> freq-limiter hard fuse for now, because 845Mhz is the Fmax for '0' on
> >> mobile, Auto and IoT. I am not sure.
> >>
> >> I am trying to play safe here as this is dt. We don't want to configure
> >> the wrong thing now and later struggle to correct it. It is safe to
> >> defer things which we don't know.
> > 
> > What is "soft fuse"? Why do we need an extra entity in addition to the
> > one that was defined for auto / mobile units?
> 
> The hard fuse (freq limiter one) has to be blown at a very early stage
> in the chip manufacturing. Instead of that, a soft fuse region which is
> updated by the firmware during the cold boot is used to provide a hint
> to KMD about the supported GPU fmax. I was told that this provides
> better operational flexibility to the Product team.

Do you have an upstream example by chance?

> 
> -Akhil
> 
> > 
> >>
> >> -Akhil.
> >>
> >>>
> >>> -Akhil.
> >>>
> >>>>
> >>>> We already have "machine" as another axis in the GPU catalog. I'd
> >>>> suggest defining separate speed bins for mobile and auto/IoT in the DT
> >>>> (0x1 - 0x20 for mobile, 0x100 - 0x1000 for auto) and then in the driver
> >>>> mapping those by the machine compat.
> >>>>
> >>>
> >>
> > 
> 
> 

-- 
With best wishes
Dmitry

