Return-Path: <devicetree+bounces-181172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4378AC6843
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 13:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BAC261BC635F
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 11:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B946280CD4;
	Wed, 28 May 2025 11:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIvQd3LK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91115280CCD
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748431364; cv=none; b=nHkcDqHxSjYaeFAa/Kyv54rSbknMWwHyHuc2AtqjpOVwOzhLBP/hnDfU6k4HzzhOsXadTBP88HnfGB4CY+NYRdG6xbA7VtOuQKYqzP15esY+j+YIuzxCkp9NR/YCSNMo8CwUaBp1NagVJlkVADLf0NdXRk/IsnGDeHAh6GqglG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748431364; c=relaxed/simple;
	bh=FmoVNg1Mx7uzMFgy363LZ24JH0p3rFJ6GxB9Mq+2C5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JLE7Zd4sPsFN6vw+a5WbsGUH7Q+RdAnZ+xtVN6DqNrPKv0GxWqVZPG9f5YgpIzOCJbIsBRRAl4uEKP615ioEbPp3ZrdUoBamk8BTztNCAAcCEKMBQ9VPrYrnvwiV1yDkKODON0a9oe5ORpqLSvCdytDG48xy+nJEHFrxbSs4mlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIvQd3LK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54S8pb3c007970
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=IALrJT9gN0Nv75u/D0mhXCVy
	adCO3D9DxeScc8A6Lyc=; b=eIvQd3LKJ0Wtx691dbEd8GqLv4cMyzJ754BkwII1
	iP/4rNCSkRVMrlb/FcETNCGODScA8rSrmgJYU3os7SYJLaLeG38ngqmu5VG7iBav
	WwbgsUZgVPEB/rNYzxF0lwzDW18/Rih6xX6fMyavY0PhT0bXSmqofcmjOKOnS6P6
	dZdxnu0BBLixTYtmnFiJOL4ZiEqxCjJuttKo96GbN78+3UEiBMmRoHxv/2jn6YCa
	lXC+Bp+7RtAL+vUvQ8ybUv0/d1FC7VJegfFya13HvY2JqV+gN1MB7ip/R+O+KrF1
	wyX8mn114+72cwwOLM44wuDiVsEm4KE6ebLD9CjhkIaM7g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek1x7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:22:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c95e424b62so127425085a.1
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 04:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748431360; x=1749036160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IALrJT9gN0Nv75u/D0mhXCVyadCO3D9DxeScc8A6Lyc=;
        b=luXaffmlBJsZ+7F6OWToioYEeVo8Nv3nKo0lRC07C11+/8XGIVjlexgYiigWsnyez8
         l1znPt5lGKGMFjhi3ttsHg29c01kvGlDzUKLa4UBPpG1d/2KqtvGbK9cavMCjnpdcL3g
         8rdwQbm/gO14aX4yxfcdvDVcKlzl3GPfz8aklW2yaGjOlbG+Y1xO17G1o8KDwqK2CBob
         h24pYjlzvlLM8cEPq6RdPmHzPgTMtIFMU9YTJxGALDjtFCzP8cPPkM/pxJ2BtZn3MlFU
         lBwto+9ISTCVgy5exrliSIrsvNw5cE4QDNPnokrlxcFjZYMedrt9Y06lYcVx2q4MkV4H
         4fvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAQeHwZvC8lkagYSNn7MpxhQVu6BrqvCudZzEJ8ZkenKFU50mvyAeA2yfcnoxwaRD5jenOJrqJyNCz@vger.kernel.org
X-Gm-Message-State: AOJu0YyE3j+vvN+c8upEggXsZb0tP3FBJxJzzGyXhIqiM/Qy3cNten8/
	zSaQdD/hs2xaxam5CbrGJUBas+0uzp2IBYxe2uIdNqhmpxzNLr0umPL8e/yNOl5pbCvfWu9W4Rw
	5sEwIRJ3PtBwOqmveIB+iFjiENIkgYE9auQkAl+Tu84a/0ovcVXMQFSIORTHKzP8e
X-Gm-Gg: ASbGncsejg12CrjuCiTbx2PdsaFHgbUxLjgFR44dW11fJRks4KuyHw19ITZQZFIk+AO
	Nzx361cm6lsMMqNKEyRy/3nnTtNhtgu2AWdRsDnX0tEhxEpdmQ8mIDHnRVXTXg5vhC2QXcaqM4P
	1tDXh88t/61XIEIQ6wAUhdQ3D4TTookVw+qmj6t5OPHhwBhgGxWWyDkOr4E+IWNSDmqDqkfq74G
	zBMbTrw/ewX4S+hpOGesb2ZjQ33MVvSBxWZin1Kkch4WQ3HNfxc2N/HlepkIEF8koIWc11F4n7b
	KpG9AzP7CIwDHYKNLOgtNt+ClfayU2mP3m6o2BM4/VOmK81QoRJTPnSJByQ0zI5e4QXIGI5vKJA
	=
X-Received: by 2002:a05:620a:400c:b0:7c9:230f:904a with SMTP id af79cd13be357-7cf06d5427amr516044385a.14.1748431360524;
        Wed, 28 May 2025 04:22:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXLg/gpflaCJRIzZeb/ImyqjQZjMx4g13E+ocdgg2gQGAbAV0phsv/rmyFO+/PGEq+8VfqdA==
X-Received: by 2002:a05:620a:400c:b0:7c9:230f:904a with SMTP id af79cd13be357-7cf06d5427amr516042985a.14.1748431360133;
        Wed, 28 May 2025 04:22:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a79f69878sm2035511fa.89.2025.05.28.04.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 04:22:39 -0700 (PDT)
Date: Wed, 28 May 2025 14:22:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6836f201 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=InULQaKO5j1EUn40nVYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: ApjcwBTAV5KnLbYVymk8NXjpNNZYiL1d
X-Proofpoint-GUID: ApjcwBTAV5KnLbYVymk8NXjpNNZYiL1d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI4MDA5OSBTYWx0ZWRfX8kAc0XX7Wi05
 EQZ2j4gtalXSFQskfasmvVqDEGXjjAwZ2rTTpe7VzMV/Xl+5yKVrt7BSFQs1UiYyekgFa97oP+T
 sVUNXdTWADaaAD7FWK9L9075tEIz4y89ietCYOtq2XUW6k+wvgvZqizVvvzEIjcpkfx0KILoZDY
 gHc/CmX4namhYB/oTF950u4vnYhxs97FR17x/M87THx6Zp56XUEnLqSgOmRJ/rdTfGxrezhEgs3
 vfU7HY9/vFoOa3oq06XdnCuDwiKxerNBtK9+5dOlP4ZyGvFC0Gpbkk+6wFvvclkQMIqk0rJuc9K
 8m741umWvIbzVtIiy1iREwjPV2bZv87LW1FE//ufzomcgn2HLNHNxe+AxJ+xPU+knMJA5ekRSKC
 x0k6BWdtautBMCdJYXtu3sVwAreBxWKnT0sSmMUqw4vhEXRm4GA28M4xsvC23er3DauwWMVx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-28_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=586 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505280099

On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
> > On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
> >> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
> >>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
> >>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>
> >>>> The DisplayPort phy should be left enabled if is still powered on
> >>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>> PHY is not powered off.
> >>>
> >>> This series doesn't seem to solve the USB side of a problem. When the
> >>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
> >>> clock, so it needs to be switched to the USB-2 mode.
> >>
> >> I didn't find issues with that on X13s.. Not sure if it's related, but
> >> on the SL7, after plugging in a 4ln DP connection, I need to plug in
> >> the USB thumb drive twice for the first time (only in that sequence)
> > 
> > Might be.
> > 
> >> But there's nothing interesting in dmesg and the phy seems to be
> >> programmed with the same values on both the initial and the subsequent
> >> working plug-in
> > 
> > Please try using a DP dongle with USB 2 passthrough (there are some).
> > Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
> > devices. Would you be able to see the USB device on a bus?
> 
> I only have a dongle with both display and usb that does 2ln dp
> (I tested 4ln dp on a type-c display that I don't think has a hub)
> 
> USB3 - yes, USB2 - no (but it works after a replug)
> 
> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
> at runtime?

I think so.

-- 
With best wishes
Dmitry

