Return-Path: <devicetree+bounces-240124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CD6C6DA6D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 10:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E74964FBB5C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 09:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6721B1FD4;
	Wed, 19 Nov 2025 09:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TjCsFkNo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JeiZDdJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BF733508B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763543339; cv=none; b=gxCeTIMf67hTHbMcuUxIiRofbRKM2k5Ft+oV72Agc6DdnMsgdNgDkhC4Md18+lMTHLysm16oAak+qPTV67yI0YxS7Ie+m9XzNm+eCuah9N/yrUVSQe0XXfprty7jyxrehHSEF0HL+rMGVM5MMcxn87tqQ/TlhFeR5/oh80hEyJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763543339; c=relaxed/simple;
	bh=jrwnzPmjdWuo+o7DXPlCIozS2cMqp4j1IJeC2T9P/qA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=an8I8Eia+ZKneoiBIaU2BhiytJFwADJmmPruLAK12JnNpnFMutXJeGh8AwkkKBdknd/eC+yx27/J0eAuu53sR/4kgLUqz+y7KB1CDykKct0fzZsSJhSeR6Rls/0HVgB9b/qf9aog2+t/D4ErXt+SgCa/UzrtOOemwWffxlt3A1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TjCsFkNo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JeiZDdJi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ3x2B6839471
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BTbtZPuzr8b614zgVfcZ7nzI
	mjQhffBU/Mc4TshKik4=; b=TjCsFkNoamUiOkS2tV7Dtuf2GEc3ApHpjs9lzqiS
	sqHHSe692rrAvrjMu6nmrmdTSwm2kkksZbqBvgtHy6rnARhMJot7KcrcOZIinrHN
	imDH+SZUDh7hcjNjsX7dz+7HNS8vpqsRsA1C0izpskT7iqCzd3i2ckvdu4c+hZb+
	JSkQJCG36Cf1FyYHdhk+N4JTufTSlwAoYA9FW6919nMEpzSL9L+MOYOmnp/cIIS3
	HAd2ewmKBU+cpeCww4rsu8xG18vVMuU/+pVwQMJNZ6NxiB3Di7Cmy0LzvC0la8jH
	aH/n3hCYt93I6BUY80NZuLxJpBzpw8ejS8EQlpCLdDieTg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah6fg8ujj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 09:08:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee168a520bso121695331cf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 01:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763543334; x=1764148134; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BTbtZPuzr8b614zgVfcZ7nzImjQhffBU/Mc4TshKik4=;
        b=JeiZDdJinThZh0iSOLsSeihC7uydknra24JDOM3NjPMT0DExxkaxkaixXGSyFG5scd
         l22uGmWrasZC2146MuTmm8PU5CxqPrE2nH5p9OIxvNUGTeYte3/Zd4tmUObA9SejLvNq
         mANf2r9FOdnU0rduP/dabCnsG3F1gN6fIN8f2p+2qJuWaSqzrvDj696vlvMJbseJ7EYv
         LBRkXFcyzdgIb20dZMld9DdzZe0zU/FW/WpHo6HU+wGmEeEMW8IY4XPUaumxADqyVZgY
         6m3svfeYTtPTIUK6jJ1zXNaXJ2DRCcKZabc8exksbe7xvuEgZ6jIb+8IywGY72SCPAc2
         xizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763543334; x=1764148134;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BTbtZPuzr8b614zgVfcZ7nzImjQhffBU/Mc4TshKik4=;
        b=cUejNA8PQS7t3eccBT5+JAIK4KXDZarKNn8A6xaPr81GWikXPB4OYTrQKq5spqDsII
         +aM94B0Qyr22Wdb40P4FF/Ytb3bsQi+x8gnQV3lr1s//7Fk5vWQdJfzugVmsMhBjkg2J
         JGWSWZwgDkvR6G2oL+VTkDUJX28bW+LEACTgWSQDkAYRXJKBCCQkKC384ij/K/DyRVa2
         8BgL8zFZl5UfLwjp5lcK6jtbGnZBg13z3BCU5jHW/aIvHZoHG+8iQte6+DCnIgH1i2QP
         w3d0KFLC8dXvYVINPTXG2XS2z+Rfe0H7hLY4KdiG62+HQDTLSr3OQPObBRPRe36wx2jP
         H/ag==
X-Forwarded-Encrypted: i=1; AJvYcCWem/SpLqvmx7dG61Hgi75LkfEVBHBy8ykTL85bhB7qKR0COJ03Bd9f7dF9RjSjtUI9YzstZaN4v18h@vger.kernel.org
X-Gm-Message-State: AOJu0Yzqhdp/3gsg6V540HYUQL5Vs1NDi+7I0RB8J264PzNXm41lQlPt
	K4LGD/LnI1W9e5YbRLn12eYhydZnOWKXCpf46Z38Pb0TmpO21WD8UyjaiupVQ468t8mDsRHSB40
	824c5Vi9SQE1m3Xe2d88gUuhJaj3P4wTHfAjHEYFOdA9wOqwMmVqOIWxZpeszXO48
X-Gm-Gg: ASbGncuGqs8rWCgrx1UBQ6wKBesR1Whw/nkbHWFBMJE3MsvLjCiJgC8Vv4SfpBqrAHF
	jOvl+tYbbgWiY6BqiNK80r0HqL1nmCxr5ByqopO7f7SgmbVXprzAm1YeKR8PoO+9CR1IuAfQlV+
	2jNqSiMnskvV6hq6uCGb+JRGmv1C3m5/omllRnl7vDYv5LYpjajILMLR3Ouzx4GC9LZos0+MWcR
	V+mXkT3ELpatCmMmIa2APff0j8u8jT8Gx57VKMTCCV+FUcAUaCF+CldZWKOsqF+F89DXoye+6R+
	l7DJt6tuCQaAAUQQmpnhXcF63/26WVL033M67d+2B5KIbtpicX3NK341crsrbCx3/EJzawm7cZu
	oKarJ63aWW59nKfPBZ9q6fbFK0JIQoHJF5kU3zCrilq/wWAXkJWyoDBMurIAcxL059iHywN7/QN
	qYsMKafBccgGE5eFTXyRdL4s4=
X-Received: by 2002:a05:622a:1a8d:b0:4ee:219e:e66 with SMTP id d75a77b69052e-4ee219e1ccbmr132271761cf.83.1763543334070;
        Wed, 19 Nov 2025 01:08:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvGrTwGWgt3h25w1spAqf1PMbfdl26WuMNR8Rh1qTaBhxRDJpt0kYDPqbU3TG80HYKB1z85g==
X-Received: by 2002:a05:622a:1a8d:b0:4ee:219e:e66 with SMTP id d75a77b69052e-4ee219e1ccbmr132271461cf.83.1763543333526;
        Wed, 19 Nov 2025 01:08:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9ce080casm42649461fa.5.2025.11.19.01.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 01:08:51 -0800 (PST)
Date: Wed, 19 Nov 2025 11:08:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
Subject: Re: [PATCH v3 0/6] media: iris: prepare support for video codecs on
 Qcom vpu4 platform
Message-ID: <a4wd4u4qh7ldiz6qzvmse72vhsuh5i6erpbglgzgnz2zdo75tq@xnwmwrij7rqx>
References: <20251107-knp_video-v3-0-50c86cbb0eb8@oss.qualcomm.com>
 <3vbq76dpjnadfrnufojq4zqiv7p5p555rhxfx6yoncc354p3lk@ohcs3ldhuoao>
 <2d56fc4b-6e3c-4f83-aab1-c48db3b8bb2d@oss.qualcomm.com>
 <CAO9ioeXSXwm03e_j8TuXz2Sqr1J2n3uEFH6dJoKVyE+hJx+woQ@mail.gmail.com>
 <be157faa-b062-4726-83e2-ffdeaf792b50@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <be157faa-b062-4726-83e2-ffdeaf792b50@oss.qualcomm.com>
X-Proofpoint-GUID: rB4EVtA31PaAJZbiV17dXo2hhS9YrSs_
X-Authority-Analysis: v=2.4 cv=ZKHaWH7b c=1 sm=1 tr=0 ts=691d8926 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=74vutVrwjju_euDmxZsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA3MSBTYWx0ZWRfX0hSr968agCeX
 HpfRZrf/80ezqjdjQD3eyTtTcjVWW8loJrfFTbR0df4w833uF6uxb6WgH+MPKDh+e61V5KalXz8
 jyzcH7TmrK+HW1HUrTLyQ5Lv8u0vT86XQ/FtMNo3BmiezoQoThlrH01CDfuFdQgOk/WxOcn6hx/
 wgSRrniIyBAWSrXSJN62EQRuq8C0RVh8Jj0ZXcuLf3JtcTohxt7cImu04MB0BWwPpIe8S9jug2X
 lfxh+FLGOzqxOzJHOcGC5XSCaSz5P3exnVv//zftBf8vZR2fcIx7U9TR0lLtox6C+JxgDYMkMPA
 ShYoFC/vcPGRnTwtLixWT5PVyI8UQtprsyeC4VOJMlMAZ9/s5L/YjQ0REDK0PNRMGKLrmuIg3C/
 DJEl67soZeo+oA3vyz4UCH2SxR2LFg==
X-Proofpoint-ORIG-GUID: rB4EVtA31PaAJZbiV17dXo2hhS9YrSs_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190071

On Wed, Nov 12, 2025 at 10:39:16AM +0530, Vikash Garodia wrote:
> 
> On 11/11/2025 7:09 PM, Dmitry Baryshkov wrote:
> > On Tue, 11 Nov 2025 at 14:43, Vikash Garodia
> > <vikash.garodia@oss.qualcomm.com> wrote:
> > > 
> > > 
> > > On 11/11/2025 4:08 PM, Dmitry Baryshkov wrote:
> > > > On Fri, Nov 07, 2025 at 03:19:35PM +0530, Vikash Garodia wrote:
> > > > > Upcoming Qualcomm kaanapali platform have a newer generation of video
> > > > > IP, iris4 or vpu4. The hardware have evolved mostly w.r.t higher number
> > > > > of power domains as well as multiple clock sources. It has support for
> > > > > new codec(apv), when compared to prior generation.
> > > > > 
> > > > >   From previous version of this series, the kaanapali binding patch(#1/8)
> > > > > and the compatible patch(#8/8) have been dropped. The discussion for
> > > > > this is captured here [1].
> > > > > The series introducs buffer calculation and power sequence for vpu4. It
> > > > > prepares for vpu4 when kaanapali is enabled after the binding discussion
> > > > > is concluded.
> > > > > 
> > > > > 
> > > > > gstreamer test:
> > > > > Decoders validated with below commands, codec specific:
> > > > Why not just run the fluster testsuite?
> > > > 
> > > 
> > > yeah, fluster can also be executed. Individual codec commands were
> > > explicitly called out incase someone wants to run standalone gst pipeline.
> > 
> > Please switch to fluster (in addition to Gst), ideally running all
> > test cases for a codec. While enabling SC7280 support I found that
> > there are enough corner cases which are being ignored by the driver.
> > One additional bonus is that fluster runs several process in parallel
> > by default, catching issues caused by several decode threads running
> > in parallel.
> > 
> 
> multi process issue is due to below [1] (tried it on lemans). Due to higher

I haven't seen SMMU errors on Kodiak.

> concurrency, we can see that the DMA buffer is mapped into un-addressable
> range (0-0x25800000) i.e 0x24b00000, and leading to global fault. This was
> the reason i was keeping 2 memory-region in kaanapali binding, to restrict
> certain ranges of IOVA.
> 
> Below solutions are being tried, again this is not limited to kaanapali and
> applies to existing enabled SOCs as well.
> 
> 1. introduce dynamic device for output buffers which are big size
> comparatively, via iommu-map
> 2. introduce the restrictions to the addressable range.

Hoping to see them posted and land soon.

> 
> [1]
> 157.511807:   SMMU_ERR_FATAL_NSEC_FAULT_NAME_REG : SMMU:>> 0x0x15000000
> NonSec Global Fault: NSGFSR=0x80000002, NSGFAR1=0x00000000,
> NSGFAR0=0x24b00000,  NSGFSYNR0=0x00000004,  NSGFSYNR1=0x08840884,
> NSGFSYNR2=0x00000000,  NSCR0=0x00280406
> 
> > > 
> > > > > gst-launch-1.0 multifilesrc location=<input_file.h264> stop-index=0 !
> > > > > parsebin ! v4l2h264dec ! video/x-raw ! videoconvert dither=none !
> > > > > video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> > > > > 
> > > > > gst-launch-1.0 multifilesrc location=<input_file.hevc> stop-index=0 !
> > > > > parsebin ! v4l2h265dec ! video/x-raw ! videoconvert dither=none !
> > > > > video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> > > > > 
> > > > > gst-launch-1.0 filesrc location=<input_file.webm> stop-index=0 !
> > > > > parsebin ! vp9dec ! video/x-raw ! videoconvert dither=none !
> > > > > video/x-raw,format=I420 ! filesink location=<output_file.yuv>
> > > > > 
> > > > > Encoders validated with below commands:
> > > > > gst-launch-1.0 -v filesrc location=<input_file.yuv> ! rawvideoparse
> > > > > format=nv12 width=<width> height=<height> framerate=30/1 ! v4l2h264enc
> > > > > capture-io-mode=4 output-io-mode=4 ! filesink sync=true
> > > > > location=<output_file.h264>
> > > > > 
> > > > > gst-launch-1.0 -v filesrc location=<input_file.yuv> ! rawvideoparse
> > > > > format=nv12 width=<width> height=<height> framerate=30/1 ! v4l2h265enc
> > > > > capture-io-mode=4 output-io-mode=4 ! filesink sync=true
> > > > > location=<output_file.hevc>
> > > 
> > > Regards,
> > > Vikash
> > 
> > 
> > 
> 

-- 
With best wishes
Dmitry

