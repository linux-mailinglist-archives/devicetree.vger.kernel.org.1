Return-Path: <devicetree+bounces-245846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 03275CB6041
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 024BD3014713
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 13:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D60311C36;
	Thu, 11 Dec 2025 13:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NuAMXTtm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZHDd9/tb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A807F2F60A4
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765459608; cv=none; b=P2GDce7gonrVZvXYoum3+2B3PnreuIv9ClqPaagDb+PSdehO1b7EzRZmQCHtqBhOGeywZwenKDJcJM5KYoWjeKtSDT9WWQwqigUhO5NhSjt9D1K+f/9sGkB86z9H5qL2ptTvkw/YJ7XJWVOQyBfVi4/Yc3nAMTuXGFnkXOj1zvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765459608; c=relaxed/simple;
	bh=tOMvJxLcbfEuhH/lxn5avvhPlF1u1Kz50Zuytms5g4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D/Izsot2KJKVVxAON9Di1S9KoMyMGPixzVKvAg3J9ySJZGdpjLYsAMB+w2Cb/CeuRsZaUc53CAy7awSxRHMWwtaWBV16eoHx9pPkRNxVbbofHeYEZ8GXPV2vMadaNWIBsgh18qTXihKZ7sbg14vxpFWuEkJlofG0O1gb77eLkcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NuAMXTtm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZHDd9/tb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXwaI1775361
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:26:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/IRQR4smN+uy1iULqb5RWAOO
	kyZInu1DUFc5g6QCkr0=; b=NuAMXTtmcTJloaRbJNWC9onC6eggaFFUgzro7t3K
	YeU4kTejVafOkerIHUZhzEkgK2Zy2psA1kClTsvVTORNjJ7ECxAKM0WygJHMV9LN
	xk4rbxQlQiXWzC4qd9PBVzNXn6ISmo2Sm46Kr8+lvYS4r4xNwPBC31fOaMW/R3SD
	jZoI5iA2KxvLcWTxBkvaP5CBvtnZe5gre3e1GTp2f6zuUzvesGZpQRtdLedcA1yG
	1E3rArCRAqyrwaRVnQ4g9ksiwMl5JzfeUsyrO6lMt503I2qnt9hivNDNEKcdfwZk
	mBjDUqUdrsEVjzVnrkVuTvw/3WlsGsuS8fH5Rp2WaKvGcg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayt7090rj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 13:26:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4efef582d65so1684201cf.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 05:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765459605; x=1766064405; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/IRQR4smN+uy1iULqb5RWAOOkyZInu1DUFc5g6QCkr0=;
        b=ZHDd9/tb8JJf0R9XzAlJ4fS65iKtyGmNkFFlOsNmklytVdj1fkc93iydb7uYJBZdPt
         qZBHE8AGEDNCpz79Y2KzODlj84/ZhE5Jc5ofl4eqmcReJqhpGujuU62AiKC+O/UeTRhG
         WHWmweZjAXpqmEfiq9DjMvQbARwb1DoKOiwVZcxr85roGB40VXkn+s97yZVYq5+ow9X6
         NexZIsTvswsZFHlyEn6d4j8cMB7HPco8NIMTbhKmgmOQevt1IfUUhod2V2PGljOw4gHf
         zafHL/pw562yI6BFwm2GlCKMmD3gtQwWDmkBAAO5yV0cdNRq61BIB/AS4nn1eA5+GIWw
         ujVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765459605; x=1766064405;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/IRQR4smN+uy1iULqb5RWAOOkyZInu1DUFc5g6QCkr0=;
        b=sBrV25K8ZApGQN/jMeRyBg3vOGcZspZDeYaSix8pwaFM9B4RBaFbefKyHGd16edhM0
         oLyGE65KRehCi3xBVpIzFma9Kgj0U7nihftLn90VM9idihbYWlKzWcFtNp2g3wjRCEqH
         gpP8Spie7Gel+HC8DD+so3h0ZZn41TR8v76J4QJni/6ah3fYhlXo/zzwMxHydD3WOXp7
         zXGmQTJf1VmTfrSNSKMlOj/9VpIdb/MrrtEQRpyNl6SXIO/pd0c79bfLDifanMPiBlM7
         /T0RH3oVryb8JF4WWOYXafTobAvr7e1Hy7qs+oYF5Y7aSqN1It5gj89nlU97vTBGf1hl
         vFug==
X-Forwarded-Encrypted: i=1; AJvYcCUEacF4Wd0QsPee4eVQpCLZQDVZdlMmL8s4zwF/RNtadN+qpCIK16HEdNP4vptLoPI4TtoE9eLMySbT@vger.kernel.org
X-Gm-Message-State: AOJu0YxX4qE7ZpQSZGiro8uXe7qvDse3oEnZt84Mtx5AJDt7c8Guy6lP
	ISI8yPG6q7AfX43ACl839djxgoOhf19rjOew5Oue0aIZp6DmfFIzbnC3UO5u1+D3iIUod5M/+uz
	0qYOatVDp1L3BsfuCelRmyVXUlG5nSjckm6Fh6QvsFtrWS1Ega9Pran+lsKzv6Ibu
X-Gm-Gg: AY/fxX586Hlp0yfYOTxkJzczIu50l9u7pd4OX4Rx2x+k/6/YYUUMAue5+LbE6/5t7AH
	gGPJ0uhBhw/SXbXk2A/9kGDRRUdxw0ygU5agaoKnijjopqLCBcQyxPM5lZYIiYKHHme4/8/btXq
	t645gMSYOEm0BqT22uwBI14ACA9NjO/RmvCveI+uOQS/7epflv1Y0SxSLvyxuF0A7gyCy9+gj9p
	r5tjDXcTaYAIhXVQp0V6VJ5AlIaiVt5RHp2sIcl++2WBmo+i7IzmTWbZ8uZrUPey4An4dq4tFiO
	9Aur5tGVbGPgxMVxOMAaH7ODLCOinSW5Bst6gn8ZbMIXtNmAzQ6YrEpd4BVNQr2yj59FpDb/rG3
	nfUDXS+UHkKcHWvnjbHn2e0DU1KhhBHG37NPjuF8SFg9KU36b935vulhzETNZlVGzBcLhYvpsX1
	pa0zYUOAZNo/vCV8HLZtC9wWA=
X-Received: by 2002:ac8:57d6:0:b0:4f0:2777:55c2 with SMTP id d75a77b69052e-4f1b19b8b33mr75336391cf.10.1765459604486;
        Thu, 11 Dec 2025 05:26:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMhykz6Ew8bA21aFvGlpOsS2rOr+FcEfspZn7Jc0WDl8ec4ZVtbWADVWFnmmpqSOzCT/28zw==
X-Received: by 2002:ac8:57d6:0:b0:4f0:2777:55c2 with SMTP id d75a77b69052e-4f1b19b8b33mr75335771cf.10.1765459603614;
        Thu, 11 Dec 2025 05:26:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3194dbcsm864481e87.78.2025.12.11.05.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:26:42 -0800 (PST)
Date: Thu, 11 Dec 2025 15:26:41 +0200
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
Message-ID: <6agidc2r2d2jevtiizj77mtlytoo3raxaoe6b53rvk3obmmiha@x7pqjco4ulhg>
References: <8560ad26-4756-4c2a-97c3-2c5c0695172c@oss.qualcomm.com>
 <z4gqro2bx6oq2ht75m2klogo5dsirb74tmc3u3shjyalxmaxil@5sy7ufmqhdgw>
 <6fa1da5d-9ea7-4d72-a03a-82edc4bef099@oss.qualcomm.com>
 <3gqq3w6ovy5srgvabyeugsjbwrhaxmjvicykhjmlcxd74gtsaf@5u6wvvzeq52z>
 <90bc84e7-19ca-450d-b41f-fd96367e8cce@oss.qualcomm.com>
 <2e5sqv2gnxdfwnfsepzdkchxip5zdeamp6bzbamq6kbk77kr3p@u5i4rrnrywno>
 <9971bd9b-88db-4628-b36b-de50c1619396@oss.qualcomm.com>
 <raj276z7euq7skvhsw7prwzlgsdy6ay7bhm4wgb64mt63q4ot4@eyvhcou7qwgg>
 <57706b2e-becf-47ac-a874-79ce17d12b74@oss.qualcomm.com>
 <812cfa55-269d-4b19-8e18-4815608b6bbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <812cfa55-269d-4b19-8e18-4815608b6bbb@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEwNSBTYWx0ZWRfX9N0AnS3PLD/F
 8r38sk/ui8OMepOVmslOnoZyKMObEvPS5JMTw7AREKaCP+te6A49tjA5/igAF6YR9Ar4DWTo0mF
 HCRlvYNjlIMTf3TwQlvimF3BtYZPrl1DWMF1brBiQ+1rx4l+qqDLWOMXEH9k2ACN4pnXM1P7Ly2
 p4jN7dSCoJ87iHNpLryq4plZS6rk2AjZAIF8eBU0zm8NOD+wE3D05pSkPZv4VjVGRBdD2Kp3b1P
 immBuqyRw2YB4wzl74bqBjH1BQ+LuSGiquOBlYqeTg5zqJL/vTQkm0vuhVnyhu6NIKqNAMr7Nzx
 6PfYC3Y6+bwa3V+rXDbTrG8E6DV7Ccd0LbPx17mcMtZp25GZ2juPhcOrZNBqgwI4ickqplqLAJy
 hMe1ofEfOFLNJDRFdeFCX9yCPA41YQ==
X-Authority-Analysis: v=2.4 cv=WYIBqkhX c=1 sm=1 tr=0 ts=693ac695 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=LE2o2ln4a_ku5-eNlCgA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: TAyldcITs7sO15ZjlTo5wy5oMh-loKC4
X-Proofpoint-ORIG-GUID: TAyldcITs7sO15ZjlTo5wy5oMh-loKC4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110105

On Thu, Dec 11, 2025 at 05:22:40PM +0530, Akhil P Oommen wrote:
> On 12/11/2025 4:42 PM, Akhil P Oommen wrote:
> > On 12/11/2025 6:06 AM, Dmitry Baryshkov wrote:
> >> On Thu, Dec 11, 2025 at 02:40:52AM +0530, Akhil P Oommen wrote:
> >>> On 12/6/2025 2:04 AM, Dmitry Baryshkov wrote:
> >>>> On Fri, Dec 05, 2025 at 03:59:09PM +0530, Akhil P Oommen wrote:
> >>>>> On 12/4/2025 7:49 PM, Dmitry Baryshkov wrote:
> >>>>>> On Thu, Dec 04, 2025 at 03:43:33PM +0530, Akhil P Oommen wrote:
> >>>>>>> On 11/26/2025 6:12 AM, Dmitry Baryshkov wrote:
> >>>>>>>> On Sat, Nov 22, 2025 at 03:03:10PM +0100, Konrad Dybcio wrote:
> >>>>>>>>> On 11/21/25 10:52 PM, Akhil P Oommen wrote:
> >>>>>>>>>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>>
> >>>>>>>>>> Add gpu and rgmu nodes for qcs615 chipset.
> >>>>>>>>>>
> >>>>>>>>>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>>>>>>>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>>>>>>>> ---
> >>>>>>>>>
> >>>>>>>>> [...]
> >>>>>>>>>
> >>>>>>>>>> +			gpu_opp_table: opp-table {
> >>>>>>>>>> +				compatible = "operating-points-v2";
> >>>>>>>>>> +
> >>>>>>>>>> +				opp-845000000 {
> >>>>>>>>>> +					opp-hz = /bits/ 64 <845000000>;
> >>>>>>>>>> +					required-opps = <&rpmhpd_opp_turbo>;
> >>>>>>>>>> +					opp-peak-kBps = <7050000>;
> >>>>>>>>>> +				};
> >>>>>>>>>
> >>>>>>>>> I see another speed of 895 @ turbo_l1, perhaps that's for speedbins
> >>>>>>>>> or mobile parts specifically?
> >>>>>>>>
> >>>>>>>> msm-4.14 defines 7 speedbins for SM6150. Akhil, I don't see any of them
> >>>>>>>> here.
> >>>>>>>
> >>>>>>> The IoT/Auto variants have a different frequency plan compared to the
> >>>>>>> mobile variant. I reviewed the downstream code and this aligns with that
> >>>>>>> except the 290Mhz corner. We can remove that one.
> >>>>>>>
> >>>>>>> Here we are describing the IoT variant of Talos. So we can ignore the
> >>>>>>> speedbins from the mobile variant until that is supported.
> >>>>>>
> >>>>>> No, we are describing just Talos, which hopefully covers both mobile and
> >>>>>> non-mobile platforms.
> >>>>>
> >>>>> We cannot assume that.
> >>>>>
> >>>>> Even if we assume that there is no variation in silicon, the firmware
> >>>>> (AOP, TZ, HYP etc) is different between mobile and IoT version. So it is
> >>>>> wise to use the configuration that is commercialized, especially when it
> >>>>> is power related.
> >>>>
> >>>> How does it affect the speed bins? I'd really prefer if we:
> >>>> - describe OPP tables and speed bins here
> >>>> - remove speed bins cell for the Auto / IoT boards
> >>>> - make sure that the driver uses the IoT bin if there is no speed bin
> >>>>   declared in the GPU.
> >>>>
> >>>
> >>> The frequency plan is different between mobile and IoT. Are you
> >>> proposing to describe a union of OPP table from both mobile and IoT?
> >>
> >> Okay, this prompted me to check the sa6155p.dtsi from msm-4.14... And it
> >> has speed bins. How comes we don't have bins for the IoT variant?
> >>
> >> Mobile bins: 0, 177, 187, 156, 136, 105, 73
> >> Auto bins:   0, 177,      156, 136, 105, 73
> >>
> >> Both Mobile and Auto chips used the same NVMEM cell (0x6004, 8 bits
> >> starting from bit 21).
> >>
> >> Mobile freqs:
> >> 0:         845M, 745M, 700M,       550M,       435M,       290M
> >> 177:       845M, 745M, 700M,       550M,       435M,       290M
> >> 187: 895M, 845M, 745M, 700M,       550M,       435M,       290M
> >> 156:             745M, 700M,       550M,       435M,       290M
> >> 136:                         650M, 550M,       435M,       290M
> >> 105:                                     500M, 435M,       290M
> >> 73:                                                  350M, 290M
> >>
> >> Auto freqs:
> >> 0:         845M, 745M, 650M, 500M, 435M
> >> 177:       845M, 745M, 650M, 500M, 435M
> >> 156:             745M, 650M, 500M, 435M
> >> 136:                   650M, 500M, 435M
> >> 105:                         500M, 435M
> >> 73:                                      350M
> >>
> >> 290M was a part of the freq table, but later it was removed as "not
> >> required", so probably it can be brought back, but I'm not sure how to
> >> handle 650 MHz vs 700 MHz and 500 MHz vs 550 MHz differences.
> >>
> >> I'm a bit persistent here because I really want to avoid the situation
> >> where we define a bin-less OPP table and later we face binned QCS615
> >> chips (which is possible since both SM and SA were binned).
> > 
> > Why is that a problem as long as KMD can handle it without breaking
> > backward compatibility?
> 
> I replied too soon. I see your point. Can't we keep separate OPP tables
> when that happen? That is neat-er than complicating the driver, isn't it?

I have different story in mind. We ship DTB for IQ-615 listing 845 MHz
as a max freq without speed bins. Later some of the chips shipped in
IQ-615 are characterized as not belonging to bin 0 / not supporting 845
MHz. The users end up overclocking those chips, because the DTB doesn't
make any difference.

> 
> > 
> >>
> >> Also I don't see separate QFPROM memory map definitions for Mobile, IoT
> >> and Auto SKUs. If you have access to the QCS615 hardware, what is the
> >> value written in that fuse area?
> >>
> >>> Another wrinkle we need to address is that, so far, we have never had a
> >>> dt binding where opp-supp-hw property exist without the speedbin cells.
> >>> And that adds a bit of complexity on the driver side because, today, the
> >>> KMD relies on the presence of speed bin cells to decide whether to
> >>> select bin via opp_supp_hw API or not. Also, we may have to reserve this
> >>> combination (opp bins without speedbin cells) to help KMD detect that it
> >>> should use socinfo APIs instead of speedbin cells on certain chipsets.\
> 
> > If it is a soft fuse, it could fall into an unused region in qfprom. On
> > other IoT chipsets like Lemans, Product teams preferred a soft fuse
> > instead of the hard fuse. The downside of the hard fuse that it should
> > be blown from factory and not flexible to update from software later in
> > the program.
> 
> This response is for your comment above. Adding to that, the value for
> the hard fuse is mostly likely to be '0' (unfused), but all internal
> parts are always unfused. Maybe it is 'practically' harmless to use the
> freq-limiter hard fuse for now, because 845Mhz is the Fmax for '0' on
> mobile, Auto and IoT. I am not sure.
> 
> I am trying to play safe here as this is dt. We don't want to configure
> the wrong thing now and later struggle to correct it. It is safe to
> defer things which we don't know.

What is "soft fuse"? Why do we need an extra entity in addition to the
one that was defined for auto / mobile units?

> 
> -Akhil.
> 
> > 
> > -Akhil.
> > 
> >>
> >> We already have "machine" as another axis in the GPU catalog. I'd
> >> suggest defining separate speed bins for mobile and auto/IoT in the DT
> >> (0x1 - 0x20 for mobile, 0x100 - 0x1000 for auto) and then in the driver
> >> mapping those by the machine compat.
> >>
> > 
> 

-- 
With best wishes
Dmitry

