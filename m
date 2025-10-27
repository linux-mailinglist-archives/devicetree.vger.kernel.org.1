Return-Path: <devicetree+bounces-231542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C9AC0E1F4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:42:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5816818922CD
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E75B2FE053;
	Mon, 27 Oct 2025 13:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oZGbVqtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C202F549F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571789; cv=none; b=CZ55Ua4A8kC3z3LbyazxYQBfamC83EfuA2w79LRyYYNDtNQbwj3u/jJoA7mhUbb9Fq4HpDm5E62wBhcu56Quq06jVgoR+rD/zWlrzmF4B4B/4MYRKdFYs6QgSIUWrNvEHES4quFnS4X9gEJJa4qnEQ/iTeIljUHcalmMrU65qGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571789; c=relaxed/simple;
	bh=XMXKLVhIn79Z5YXtwYwp+2otGd+sjWyy/gmO/sPn9P8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qEzpPBaezddT0k4z0v+M948Y8wAO2ow1eKa4bMGU1OISpmoV3tryeYCRMJeP7OAYMFnOjnQVbJ3QnlIKD39wLBxkpZyo5/BjuqGC5OI80EOnlbeNhFcswrdk9F7bckUJhDkSOq9TnORmBztybbhX3QGj2kjs1A+DD0B0PpRPJag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oZGbVqtd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RBJhuM2546712
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:29:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VV74qFJFxgTw/EeIwCONHKOh
	1+oiVvn9rVjApUsNyoA=; b=oZGbVqtdCtjLIsgOy8MmyvH+myvMqL/Ou0HfCbxZ
	z4zhPDUqsto6nrU3BGjpphoTxrCI18x0pnvm36fBy1YS4ikSb0ow/gKB5xZVxjLn
	dj8i1Nd1GwZUHESoTfzqFtZumXtALQNddY8ZR9QRAlrTPNl4EztPfJV+iqv+GNVk
	exvhoMz3laqurEH0MIsIEtgKOoZZ0DuDMbzd+FSEen7gBWNsU/lUolio1pxZPCaC
	9Q29kZpqoIVYp9ZBjcqXdbpSPRLj1UfQhqORAM+MBejOusZ97n6CrJWqihT74x2h
	RWd5xuazULbzz3I3J8690qWzQz5HaX3NeuBNOD+/lRI5rg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a27s2gb43-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:29:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ecf1b7686cso41877391cf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571785; x=1762176585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VV74qFJFxgTw/EeIwCONHKOh1+oiVvn9rVjApUsNyoA=;
        b=FVUQX94BiIxGXrNy+Rd14VE3f61FZ9yZHZ3X9zToRm6rfFt1hG2XK/dR2fNgztiqbp
         JLeXStXYBfhvsURJPRPoFFL5uNoqDy6y8bUFlcXuEK2jdIk7vnXJdKS6mM9bzUqCX1Xz
         cNZmyOAThL5GJMsXocSM6CDvxm8uYAigKMKVg4V8UC3pmBtsMML9I/H0vWb6s53+zziL
         ZGMgdbOlAdXqABwLZKQOoXe0MgyqwzUvH0VSZ37783/gy7PZkt7ZoDCWjQ60eIXZyerv
         liruHpfkjocuAGJWZ1yCZFCzAO1YIgitweqk6ygEyq49voEAQUgtd/J2pxHwp4bP/p1s
         RY+g==
X-Forwarded-Encrypted: i=1; AJvYcCUC6/SKi/aFDRwgC6tFEKoJTI7HOyngarQAN/apnkw2UbshJUvE7YhoQv4B5WGX5hUD9gxbiJjm6TkZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdb4p0swXo3C6AC0w/FaTgQZ++SG9w6aw9f1GvZ57vDZIMmi16
	2cb8GQ4Oyz4cWiKmWhq8WrMPgxj8KZC7MJfAxqAi3hQ8OP4JifKYz3Tz1EWhORohsjkLHSJxXMK
	j7laL1ZBM75giCUeCpfO9WIQdWTfZncEgAvXyXo4gYBviVJwR6Re2cC/tUROhoN4k
X-Gm-Gg: ASbGncv511ocO13zFBPgOqUcKu61Xt6Ry+YPlWfLmluiCLB7yrRHXvAilAzdCr2b3MN
	3XBpf++PaSZ3O+mkqwF8P8vPAKSOsLmu++yGrkQ9J5l9s4PY397zJuckLSn335QUlhTMb8ErbSi
	Z0uzMT1LHqqSb/rtqn1v1EcZGk0jJcTLNPOFp5vJdflgHxzbOaTIHdIem5I/1T2TN/Smu1Vrtki
	pt9MnHcf0Xj//efxGZ3NFBmOImQHkosbBW6pgjY+XrMIPUIB4u4hlXyBYx8Dg74BUZi2vEksH+2
	DFnEy/vYTwQL+DjN7M3hMZ9ZRiLs1gQ1EVLR7tt8HqkDOxEQeYMK0bA6A2rj27Hkr8u2nogs1ar
	8uTG2ArZuq03KAwqmvlSjjc0LjzKRoQLtoXXNv7WMdbeKwjoS6jJjVWgfWo7P9VfFDPf1+gPHV1
	G3qXz23LvYc5Bb
X-Received: by 2002:a05:622a:1190:b0:4ec:ef49:1b19 with SMTP id d75a77b69052e-4ecef492b41mr65596211cf.5.1761571784934;
        Mon, 27 Oct 2025 06:29:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2ciuf1XZlemNcLVcB4yTtYI2v5x4NM+7pH7d4hnFEsjbYGGggzRsDo1URSo4Ky4GlyXwgvw==
X-Received: by 2002:a05:622a:1190:b0:4ec:ef49:1b19 with SMTP id d75a77b69052e-4ecef492b41mr65594691cf.5.1761571782964;
        Mon, 27 Oct 2025 06:29:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f74ba6sm2304297e87.90.2025.10.27.06.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:29:42 -0700 (PDT)
Date: Mon, 27 Oct 2025 15:29:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: yuanjiey <yuanjie.yang@oss.qualcomm.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, simona@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mkrishn@quicinc.com, jonathan@marek.ca,
        quic_khsieh@quicinc.com, neil.armstrong@linaro.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 01/12] drm/msm/dsi/phy: Add support for Kaanapali
Message-ID: <ehgdx7av3jewowkvtsqrbnsphgxm5hryl6n5otnapi4xneldze@gcwvpssisv2x>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023075401.1148-2-yuanjie.yang@oss.qualcomm.com>
 <omlhiywjr46ik6bj2aiutgcf4aifen4vsvtlut7b44ayu4g4vl@zn4u3zkf6cqx>
 <ad906eb5-c08f-4b66-9e37-aaba99889ad4@oss.qualcomm.com>
 <aPryORKIuSwtXpon@yuanjiey.ap.qualcomm.com>
 <einog245dsbqtx3by2cojyzmyctk2fffpwndwoe24puwqq4fta@cu6iiidxqgr4>
 <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0291d0f2-483f-48d8-8c75-f1bbcd1ab18f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: P7ui2d-1ryroP8p9nfzRvFDIRVkvfjrn
X-Proofpoint-GUID: P7ui2d-1ryroP8p9nfzRvFDIRVkvfjrn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNSBTYWx0ZWRfX9YaSufK/8nq/
 cBzSZ10iZLnql6c7zgYTwT547kxKvkrFW84u9+SsAR5Rmrwk3fnZIimmumJw8a3BRteg3GbCN5H
 nldhkTe/HSa2PhJxzxZRYTZ4QlW3nJMz4wIcVdKb+lt4pYqTjiv1uiwt2QfpDjaEzXBtWGq1van
 AyKYHz/qllCLcBLPel54htd4RZ/4/8KBHyEP70ROr66SfcbFBPihWmW8eheXY0MOqJy9cu/GvZO
 X/EjGaPh9LcS+jbfCgsCOl1qcwZIVSBksZZfnhJNYS76wDxcyKCM8WmGzNNAKtue+mp/G3emOHx
 9zJten15jWjqhwaxvOqaj6nv8kIli1pENbzCentzdtEHSVJkvxwUfQU9Q/zqc5H4o+6qaiL1duE
 S6iWpOYK/ZmAv8J5hriAQ532clNBsQ==
X-Authority-Analysis: v=2.4 cv=R60O2NRX c=1 sm=1 tr=0 ts=68ff73c9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=r5vzRnyTyaal3BpozBMA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 spamscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270125

On Mon, Oct 27, 2025 at 02:20:26PM +0100, Konrad Dybcio wrote:
> On 10/27/25 2:14 PM, Dmitry Baryshkov wrote:
> > On Fri, Oct 24, 2025 at 11:27:53AM +0800, yuanjiey wrote:
> >> On Thu, Oct 23, 2025 at 02:02:45PM +0200, Konrad Dybcio wrote:
> >>> On 10/23/25 1:48 PM, Dmitry Baryshkov wrote:
> >>>> On Thu, Oct 23, 2025 at 03:53:50PM +0800, yuanjie yang wrote:
> >>>>> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>>>>
> >>>>> Add DSI PHY support for the Kaanapali platform.
> >>>>>
> >>>>> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >>>>> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>>>> ---
> >>>
> >>> [...]
> >>>
> >>>>> +	.io_start = { 0x9ac1000, 0xae97000 },
> >>>>
> >>>> These two addresses are very strange. Would you care to explain? Other
> >>>> than that there is no difference from SM8750 entry.
> >>>
> >>> They're correct.
> >>> Although they correspond to DSI_0 and DSI_2..
> >>>
> >>> Yuanjie, none of the DSI patches mention that v2.10.0 is packed with
> >>> new features. Please provide some more context and how that impacts
> >>> the hw description.
> >>
> >> Thanks for your reminder.
> >>
> >> Correct here:
> >> io_start = { 0x9ac1000, 0x9ac4000 }  DSI_Phy0 DSI_phy1
> >>
> >> And v2.10.0 no clearly meaningful changes compared to v2.9.0.
> >> just some register address change.
> > 
> > Addition of DSI2 is a meaningful change, which needs to be handled both
> > in the core and in the DSI / DSI PHY drivers.
> 
> DSI2 was introduced in 8750 already, but it was done without any
> fanfare..
> 
> I see a diagram that shows an XBAR with inputs from DSI0 and DSI2,
> and an output to DSI0_PHY (same thing on kaanapali - meaning this
> patch is potentially wrong and should ref DSI1_PHY instead?)

Most likely.

-- 
With best wishes
Dmitry

