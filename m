Return-Path: <devicetree+bounces-190110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F8EAEAA41
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF7F81C25029
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 23:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09C4E22541B;
	Thu, 26 Jun 2025 23:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n8Iule3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6578B225409
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979417; cv=none; b=AmeIbEUJvJ2HKvshZRW2N6AgBDu5TVO1MaD01Sk06r+lPWllZHu9lW0D1NjtrjCaS2hHXRhrjwQ0e5C3VZB/tdkIpn2zrOmfK9VBiFf+0+1pZd4c7UgYzWkSyg0TBogQYMSLo8HJMFZOczFe7jf2khC7e/JpacGRrzlA6s7iY6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979417; c=relaxed/simple;
	bh=3JijB3VKc+J8wQeVMLnJEeSafRk8Jw7gR2uLJ4RHxJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N0fRR9kbRLPOhJqVwoi5fJAGEQvGWNNhp68BuaKn7pdbEtX/+UCw6aHsB5gMIN2A/r7g5MoQen20trClb466gsCT7SmI74fEyKV/MVYGSCZHe03cLA/ajEk8R5KaatgfNr5iSg+NohVIfMtmcOLNVSvq+n5AQBVKv14RBzOxSVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n8Iule3E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QHfJmt018863
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:10:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=q+8yrNczXC3f3KwEtPJsZsV/
	JxmWaRSIUGPZ0TfcX5E=; b=n8Iule3ExQB8XrkWpS7iUB7XWxO+8ORNvr1lNtFG
	hTfRR01ahTz+RTPHWMMXGfFz3/tyesmq7GGVDFVG5NFR2WMBadbrpoM3yhGBfk/b
	NRKRTfLfr0qfFf/X4RDGSqJYoV5mPk6+1odqZGD2Fj1KoQUTQJwMER0XxVsZnN81
	K6LyYNKrf+KpR3tTJ4Y4V1vJAVwJ4D02I6HZO2GTygGLDMAYf3ayqHpC/XrtpXQq
	ov0vx6iGrJyRfLrjCr1ZCZbtxSiTX7k1UKA87aFLz8+kSsDpZAXFSH72ga4G/xTi
	7Z78kHS0mUF6MPzeS1kOVbBuz8L8/hxWzEiK95UzZk8QNQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tdesj7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:09:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so439928985a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 16:09:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750979397; x=1751584197;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+8yrNczXC3f3KwEtPJsZsV/JxmWaRSIUGPZ0TfcX5E=;
        b=n4SjFiAWM6fbdLc9GFsqPtnlDmIjUvFPK8qLcxLfFRoYatebogn1sjfnV/vr5xxwOq
         aFb5OC3klr78QJRVG4BM5gqf7YGldEi+iAUtpK//4PzlKPinaH22RqPqJJVwEC+FaBWn
         I7DipAiNa527aM4Z+7kADBzZ8ZxVv7TQ5OUGhVJEV0OzJBG1Zxkt3d4quFF/dI2mZ5A5
         RwkW3vyoN8ulwhiOARv0yvhs3iM05Yop+14+vcPxAZhGEwNQT229sGlkrcvAF2GuNCyK
         FDUZr/Vn45mGd1/4Af9UykyX+g/gQ4132wZ6PQeB2DTGNUxC1U2CuvLkfdq8n8CTXRzB
         eSxg==
X-Forwarded-Encrypted: i=1; AJvYcCXNoDc1+aglJ4EI7nvyg+gAd+rFh5m55EaOt/c4cNuC71/X4GJZZrPx9Ef89WKgruHCM2ZqUo8H2TaL@vger.kernel.org
X-Gm-Message-State: AOJu0YwFdLBcto52UXodfL/Vnu4MDaQD8yA7KJdK+u4pc6v+5KlWGjXB
	LN6abptctp05IGBw1eX1fEha1GIXc1XgCP8vS41QrJKjXotZBtBKh5xSj1E8UJX74DxI5j0s3R5
	9sLoHrbyDN2Nh+Q1Y2l5NI2vlPEYLJrPbz/wbQpA1Uedudyae8uN6tgVVSQ8DXuu1
X-Gm-Gg: ASbGncv7kuhNG1nhO+SWUb2/e917L0J4DPxYOlSrI+sux7gDebZZ7URf344lt4PDT7q
	RkrdVoS5aFgGow+rWzjB2sid3eIGj+Se7HCtu/7X/RJL1iwsqzomzwLB4+mgzuAa6GrtgP+0Uzc
	MeQkCwJHyUgDotS/xZ3+BDqr+wRwSv9uYLu1f3Ktg1Nk4Vpt536pzd1vA6Re+l30cqdU/X97HSk
	Ndpwe13Dd3UdnMrBaQl4tGm95OhLSZqyvVg7TQvRiMH7/bqU9iwgH1TTkSPQtPGjxSu9c6SMCXs
	p12yeswvJNiO47VCcbvI76mndgsVHuHU+RLjRzF2q2algmvkRArpLMGT5upBwIbwMQsm8VCu3W/
	J3XShpEV97rEcR16M4HikIKeDCvLa29n7BME=
X-Received: by 2002:a05:620a:4492:b0:7ce:f3fd:cc69 with SMTP id af79cd13be357-7d443940e2amr184863385a.19.1750979396718;
        Thu, 26 Jun 2025 16:09:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaXw/nhsPOlsYeS4SRUp/yEZteG/c+kPFe4zGmOo6zyTuqANon38rBZCd3vkjW+J8ir4/a1Q==
X-Received: by 2002:a05:620a:4492:b0:7ce:f3fd:cc69 with SMTP id af79cd13be357-7d443940e2amr184860985a.19.1750979396259;
        Thu, 26 Jun 2025 16:09:56 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b24028esm192582e87.19.2025.06.26.16.09.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 16:09:54 -0700 (PDT)
Date: Fri, 27 Jun 2025 02:09:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/4] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
Message-ID: <4v5gi2woexvho6hc5enhjg5w2couvw2s6ywyhg7rhz7zdtyouo@fcw2bixmqxoh>
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-2-6e8f635640c5@oss.qualcomm.com>
 <aFloifxONXnQbVg6@hovoldconsulting.com>
 <aFlps9iUcD42vN4w@hovoldconsulting.com>
 <diarijcqernpm4v5s6u22jep3gzdrzy7o4dtw5wzmlec75og6y@wlbyjbtvnv3s>
 <aF0WGmnN_8rvI9n1@hovoldconsulting.com>
 <zufyvg4hoxxz4i45pynzta3gyglqvecrmeslnpphsgwmtujivl@t2zbdtejt3x4>
 <aF1Hhs0JAS747SVi@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aF1Hhs0JAS747SVi@hovoldconsulting.com>
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685dd357 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=rEvX1EWfX6HDnhaDtb8A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDE5OSBTYWx0ZWRfX2QFVeJpb4OQ/
 n7BL6HRDij3pE61v/JWR1Jgqz5vxKxq/kcwaM4b8A0m8UDQbI9aKq39RRFPHVMg17y61yXP3rfh
 Kf3xXz1i8tKD5Sdu9GVzK+4sJGD/MYoyMaqPuOaGMY3aJIJg2r/RaBonhrXgKkmSNrjlpdZ/8FE
 rpTcepzVTJpvnJddRJHNPurWDASMDJfjL+BowloML+qhdVshjwg40qmLbEIOIOM+G40q9p11/8M
 9zMDw5J2pt1bHtSwt6BcArXCKDO5lWqfxZ4jMIDl6A3VplQ8ZfO28o/dZmbu6pxR9KC6l3HkqtW
 i1iOor7Ucz0j29pRdYEXv8pA2mEAssiGTlGlFNUTc9XkmYG/Py4aLwYgNjZYKW7DFUStRq6LTQc
 /xRCbTULONW3espgmK7bw9TBMmfwjq/Y3+ld3qX4Ez/wscXNPxJJ3rBDealqSm464f8HFzkY
X-Proofpoint-GUID: IMUV5kqrLshKpdaqUxdBxtGUmlIJyAe5
X-Proofpoint-ORIG-GUID: IMUV5kqrLshKpdaqUxdBxtGUmlIJyAe5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_07,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260199

On Thu, Jun 26, 2025 at 03:13:42PM +0200, Johan Hovold wrote:
> On Thu, Jun 26, 2025 at 02:15:26PM +0300, Dmitry Baryshkov wrote:
> > On Thu, Jun 26, 2025 at 11:42:50AM +0200, Johan Hovold wrote:
> > > On Tue, Jun 24, 2025 at 04:13:34AM +0300, Dmitry Baryshkov wrote:
> > > > On Mon, Jun 23, 2025 at 04:50:27PM +0200, Johan Hovold wrote:
> > > > > On Mon, Jun 23, 2025 at 04:45:30PM +0200, Johan Hovold wrote:
> > > 
> > > > > > Also not sure how useful it is to only be able to read variables,
> > > > > > including for the RTC where you'll end up with an RTC that's always
> > > > > > slightly off due to drift (even if you can set it when booting into
> > > > > > Windows or possibly from the UEFI setup).
> > > > > > 
> > > > > > Don't you have any SDAM blocks in the PMICs that you can use instead for
> > > > > > a proper functioning RTC on these machines?
> > > > 
> > > > I'd rather not poke into an SDAM, especially since we don't have docs
> > > > which SDAM blocks are used and which are not.
> > > 
> > > You're with Qualcomm now so you should be able to dig up this
> > > information like we did for the X13s (even if I'm quite aware that it
> > > may still be easier said than done).
> > 
> > I'd rather try to find information on how to update UEFI vars on the
> > storage.
> 
> You can do both, especially if it turns out you won't be able to have
> persistent variables on these machines.
> 
> > Moreover, using the UEFI variable doesn't send the wrong
> > message to other developers (if I remember correctly, I've seen patches
> > poking to semi-random SDAM just because it seemed to be unused).
> 
> That's for the Qualcomm maintainers, and the rest of us, to catch during
> review. And people putting random values into devicetrees is
> unfortunately not limited to SDAM addresses.

Yes. But here it might be more fun.

> Furthermore, getting an allocated block of addresses in SDAM for Linux
> could be useful for other things too.

Yes, but this obviously can't happen for released platforms.

>  
> > > > I think the slightly drifted RTC is still much better than ending up
> > > > with an RTC value which is significantly off, because it was set via the
> > > > file modification time.
> > > 
> > > I measured drift of 1 second every 3.5 h on the X13s, so having an
> > > almost correct time with massive drift that cannot be corrected for may
> > > not necessarily be better.
> > 
> > For me it provided a better user experience. Yes, I'm using C630 from
> > time to time, including the kernel development. A drifted but ticking
> > RTC is better than the RTC that rolls backs by several months at a
> > reboot, because of the missing RTC offset info.
> 
> Does it have to roll back? Can't you just keep it running after whatever
> semi-random date it started at?

It rolls back after reboot.

> And there is ntp and services like
> fake-hwclock which saves the time on shutdown too.

Likewise I can plug in the USB RTC or do something else. NTP requires
network access, which is fun to have if you are debugging modem of WiFi.

> Anyway, I still do no understand why you seem so reluctant to having a
> proper functioning RTC using an SDAM offset.

Because that would be a one-off solution for this particular laptop,
etc. I want something that other laptops can use without having to find
another magic value which suits a particular laptop instance.

-- 
With best wishes
Dmitry

