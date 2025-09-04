Return-Path: <devicetree+bounces-212669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B57DFB436D5
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 11:18:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AA02684F2D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86B8B2EE61D;
	Thu,  4 Sep 2025 09:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IwYl+urh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1EE2EF670
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 09:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756977494; cv=none; b=TvEtKgvl7eFEfAvnMf3XMsCZ1kikESn779nALTyO4jfGvzacAAlakHviIFunBaVzdSB1rs0fgVvfzONex13VQhm44qcnuPo7aaKt9r/OxkQIZh/H9d0F+Rff2F/AZFUv+Cruaz5YCpWPNk9WvOKvQNQY2/n2dPdwJGa4X5YxA3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756977494; c=relaxed/simple;
	bh=okyI9VENEpsFeL+2iWfOIXetanLtRHN5I9oZ9851xAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sZe+nQ+qXoNsn4GdVR2rCyx/sHJCuQ8x9jB689Jp/JoTtY8tsEbIUvGxhtpaYCe0S7kpyxVdBSSS0Dvon9I3vaR+MZ7vQS1zaj606tn8y3RgtYOuZl/ahz7qRMte0LmGaV+b6sbD6b3R0/uSN790aGadz/d5VI3h5Bm4OeUggfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IwYl+urh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Npo0o008929
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 09:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qmq9wf97WQ04RGKWFb6wkMRy
	x7DWCe5tA3lTLApTcbI=; b=IwYl+urhBylpm0TjNvP5v4UPRxAb7tjWGHc2T/hH
	H24q5AaNp9gCrWh5uktCFyDs6sR+xxPMoNw5dKfzdVuRwyKkpYxaxJldIbJ0gfod
	PZu2vKPAWYJ9lRhHFGYJl1fmnAAsv5p4O90t+/U5qMGfyOmE9SmLs59EYrl+LZ51
	BKTHIYSHTSRcWXCFzry4EfbK5FWmebldbhXwB7qcGeQ/p9dGJw3avYSzxaA6aHCW
	FhbYZ/oVnta+j5jPOG4LhaoXo6V9kKtwRO8Wscv0UYHcBMHgozrQtvBkDhs0Augf
	qXTfak72aahvzG1/06p11o9lXmyGIY+7vUmA9c6csBhPYg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyauet-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:18:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24cc4458e89so11472665ad.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 02:18:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756977490; x=1757582290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qmq9wf97WQ04RGKWFb6wkMRyx7DWCe5tA3lTLApTcbI=;
        b=RqzKsjwUQIL7NIRd7AHrHXWwsKtEQbmHz+x0dfTMULBwWXcPucn//MAS50gxUABIOW
         HDtWqsgTW2BAU8iqgiuDg2OonzAEu+Xrrp89sKx9cr2Y4icGPCQpSg3rLTSmmLtOpZTu
         d6n7ZVaMp8f8P9jW8yKDaVqJryx6Rp8F9/c1jGNsO1ZmQlgJ4kQ3V/OF70HOsrnjfkwy
         qnimb1DsS7vtAEts9WOVn15rwfj15GHkTuQPX0R2ahfbznGZj/g5VdNDP9FbUe0ha83w
         PwOrUegrxMdGWVtzIti3ym906WtxbmcWSgwURsA4giLp7d6HXJmuctgrTWZUQ5gTuXJN
         y/qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUAH81qciCwv7RngVDY9CtlChl2fWRaSSN5QJhIKW8V/StczDS6OvLSyO6AxglySRDdlvMIZl/DKwV@vger.kernel.org
X-Gm-Message-State: AOJu0YwbgCNVes9DucX5bmXh7jIotRSSOrmw8z8bIecU8p13GdpIlu+q
	4u//Txe6yUzNneoWRqdM6vZ7D3Z0S4ehyaWdt1wUyvTebr3MvQ8+xERtd6WvC0RI+wNXITXLja+
	9iLned632zbyxcCpDXE4058/b+X7jiSUm7hWshtZ+TABM4njgugXg5O3SpNW6LgdBo/sVmgShVv
	c=
X-Gm-Gg: ASbGncvrVu6flr6EOv7yWJtHc838lSkX1o+CR5uOwrOkmbboCqsS+kMXV8tYVvCPedQ
	TpybNh5gW0/4Eo5C2TXedQiUyFhoQ/gG62i+7IP6bMeOesXLQQGa8yTp6R+Vxo4gKS+NWBihZuB
	CzI2b1KVnjUeVSaTtejlt37rIV9qZkVcAcrFYdBM2srlGk2/VMy4HGgje9Soc/N49BGLzkWMa+k
	20vqiEwOGY794c+/4d5TndNO0kQLSeIVhSJ13acRv1eu3sLyJeuUylPeXoIC0VHDvqCvnd9a0ml
	Fc+K4DzxHnK93XI9lp/ZR/xMnzQ9s523S/3vssWdAZHK/2Fe4YRv21lxOXjghkVKStpVeL8bFg=
	=
X-Received: by 2002:a17:903:2f0d:b0:249:f16:f080 with SMTP id d9443c01a7336-24944afb3ccmr234248705ad.52.1756977489600;
        Thu, 04 Sep 2025 02:18:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1YA8b/X0kiXwOjhDTMCW5oJYVAsU0R0JJ1m0N74tbsJnxiIQuGYYqpZFLwCSpwS0SH0XTgA==
X-Received: by 2002:a17:903:2f0d:b0:249:f16:f080 with SMTP id d9443c01a7336-24944afb3ccmr234248365ad.52.1756977489073;
        Thu, 04 Sep 2025 02:18:09 -0700 (PDT)
Received: from hu-pkondeti-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24b11448a5asm74820385ad.54.2025.09.04.02.18.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 02:18:08 -0700 (PDT)
Date: Thu, 4 Sep 2025 14:48:03 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: hrishabh.rajput@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for Gunyah Watchdog
Message-ID: <ec0dc13a-30f7-44a0-9a4a-5f44eccd3933@quicinc.com>
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <a3af076b-ca0b-4d5e-8294-2bf5a9814959@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a3af076b-ca0b-4d5e-8294-2bf5a9814959@linaro.org>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b95953 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=bjUImR_lD7Cc3jxH_h0A:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: FuD43dFpyj94kxcGkiX6xwCB589XQYI7
X-Proofpoint-ORIG-GUID: FuD43dFpyj94kxcGkiX6xwCB589XQYI7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXzhtuvf3ZRzlg
 nP7mjrGC7ZdMk03Tq7Hu/PcwZbm1aTykY+alOetbY2c8f0pUJpy2otaGOj6PpouaTGxf4LK2hc6
 NkoGcPWvX67Wa6uEFzrxPpogdwaIXNzGAx7cMsc4DbkANnKoeYBTxLUpYLmsWIR2tWtomgmAABK
 1MZNlGHwPfVVtzspZyquQxY4SsrtpFBMNfaqyEygZVDAIQOvAWKlbrpxiZ8FMavFzIkvzB7Ac+k
 R6EhvVylgu4HiqPYQeFkvxsZTYfVSloGkNzOw/FJwHMVzwPFZ2u+X1x9/MH/nLy0cEqBiNFnkIb
 CiWTDB8hcM1NgtHA0Q47Xthx8HVMGbWVgotIim6HzWu7uWQlH8gJ9jynG79L0JeFHIRQk6oQ4aX
 SItP6XKA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On Thu, Sep 04, 2025 at 09:13:23AM +0200, Neil Armstrong wrote:
> On 03/09/2025 21:33, Hrishabh Rajput via B4 Relay wrote:
> > Gunyah is a Type-I hypervisor which was introduced in the patch series
> > [1]. It is an open source hypervisor. The source repo is available at
> > [2].
> > 
> > The Gunyah Hypervisor doesn't allow its Virtual Machines to directly
> > access the MMIO watchdog. It either provides the fully emulated MMIO
> > based watchdog interface or the SMC-based watchdog interface depending
> > on the hypervisor configuration.
> > The SMC-based watchdog follows ARM's SMC Calling Convention (SMCCC)
> > version 1.1 and uses Vendor Specific Hypervisor Service Calls space.
> > 
> > This patch series adds support for the SMC-based watchdog interface
> > provided by the Gunyah Hypervisor. The driver supports start/stop
> > operations, timeout and pretimeout configuration, pretimeout interrupt
> > handling and system restart via watchdog.
> > 
> > This series is tested on SM8750 platform.
> 
> Would this driver work on older platforms like SM8550 & SM8650 ?
> 

This driver should work on 8550 and 8650 too as long as the hypervisor
overlay is applied to the device tree which happens in the bootloader.

I remember porting some hypercalls to 8550 upstream kernel to induce the
watchdog bite in panic to collect the dumps. one of the biggest benefit
w/ this driver is that we can collect dumps upon kernel panic. since we
won't be able to pet the watchdog upon panic, the bite would eventually
happens and device enters dump collection mode.

Thanks,
Pavan

