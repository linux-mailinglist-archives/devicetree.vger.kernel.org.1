Return-Path: <devicetree+bounces-204905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4235EB2723C
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 00:51:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77BF75E2B70
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 22:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7816E283C90;
	Thu, 14 Aug 2025 22:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MU9v0qYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8BE281504
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755211871; cv=none; b=Gz0BERHLBQjcIWC5m4jtrlykTrVZtpIYUYX+vt9XH/snhBrTjCvFVwU7HEAp/JB21SnU2d3QEXV2jbOpHj6DHm0Tn09ZKG4PkvZgMTPD/1nOe9g1rgOLgyBQnzkPNQQPmwaOkpuVBpHooJvFGkZixGYFe+70nevNfR/7e8ut/Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755211871; c=relaxed/simple;
	bh=VsRfvsLbvMPweRFwX9yd1l+oGWIeHLlnNvKbVKtNBMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EUhCYBbLByxECMQrORBsS8/+01sypjgvGprJrw2OEx9FADFsgSVkqISRoOnbaT7FX7I0RkR5LadHKJopRh6qTlV4vTvHFcrgnelCrn1lEZ9uHcwfzC8UV474xYGGDD6snOd4eZHNzRqxzR7U8mb6jYmZ7I0XOuJ+BAtB4Gwgjhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MU9v0qYU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57EHtpWC021009
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=At5mFz1vkSy2faOkC/EtnV9d
	eGFeKo96q35XzSytUj0=; b=MU9v0qYUV+xumib0ODJKcZrNBxxl+lSpjy8TNlgZ
	9v9eV1aYSpbpAPYits6nrach4CQU1KixVp9hLJpHsjZK+TLqDyWYLK0XatS/X99j
	iV/k+fwTaLr10voXU1QcBHyEBAearCgIja/3rEWYtwEchiOQ98/Dg8aA2lzsiH+a
	2poOjUwxiMiLVi/yZ/TLJ94FLK1cxSCwmdzBKQdEOSoO/7vxMN03f6FTwPTj2D8e
	aGB+s8oYduUEOX5pm8XdnI08aq87QrPJdzckw6ErIOG1WRnA9NeC1kif4f/igcE6
	d4B3d6QUGsqPKqNsAfP03KAT3oXupMaFK4WhdJEBquwQCg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmhbpb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:51:06 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2e617422so1197887b3a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 15:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755211865; x=1755816665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=At5mFz1vkSy2faOkC/EtnV9deGFeKo96q35XzSytUj0=;
        b=fiLGP24hcneFSfBzc2X6eHlKvS70Oe8E86brPZIv1hRX0ZFTo5AH/3Pq6vIpoEfzRi
         Bq8Neiv6Q9Nt//TuseX6S4YC0aQ4Pxr0zV7Ofz4Lj6bsKU7kfiv6FQi3ZW5Zqw5pXo5f
         YIYF86J58jW1+G2slPFGkZqs2noILpoEo1GH+oZPFUbtiZ4POeJ+87U8vl4kxWMnCqZh
         bo/2swWol3ek0Smwhl1uTTSLWbPET9ib6zhLjZrbLGg9n3PqfOArpGIzUhUbDPlJuQs8
         JxnbMTZFIcpgh/ZepOUPL6V5EyACsJcD7shZeZpyZwSTSpIJLtVMohMa0mqzucWvgDDs
         ACgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXR82ABBAiMkJpInEOlcMLG3PHSoxbuvcjtk3c5YE0foIO4QlePoaoltSJ/4EtwJaj4asvBX9DLmwpV@vger.kernel.org
X-Gm-Message-State: AOJu0YyKvhIodfARtpqg6eLpRJRPer6ModbhE9nvPL+ZsfXLG8/MIGl+
	kwUbFHb3SmO182AbppQahu3bnAko9iMH4bWsHsCjuIeTgi2EhcyM/MRg+N0ln6ik3ky0s/glVEi
	O8Wmukhtotu74FLfmMLvUonHpsV9kSrnBqNEq3cKR/PG+7gsMMy4I/heZ/fgYyiyc
X-Gm-Gg: ASbGncvJlNU008IsSrzyW6VSfbqUzal40IrKfFRPNbAZtZ7nPEKdTxcaGl8NqIRDBGe
	ZzlXsEQFBsH3gZyBxTKpjokhAYIICyK6mI0mV+1e1GdktVtNFLtkSahDR0EwIKAeV+UIT8rP9EJ
	n0p1Qpb9SspZ4efEKWiYk9aM2npvw3K29by5uKZ+Vb9MLXhxYIQq/j4k3G+pygviWRsJJLjsqxV
	hTAPgtf2QwqgdPRIjDeU+YbEQj5PZDqU7VV2ocl5reOeSuBZUM7A9JF2O4tXoLcMCulWmIzfrqu
	Jl+rkoXkGuaPSntcFAqTne7sYmW1yg1Nf2kmvyOIhtPsPry2h7d0gpQMkhd956jokdXrgNTiWkd
	aYXuZAHoP/DUgkdWaVbHcIhU=
X-Received: by 2002:a05:6a00:a0e:b0:74d:f997:1b45 with SMTP id d2e1a72fcca58-76e31eedebdmr7910294b3a.8.1755211865648;
        Thu, 14 Aug 2025 15:51:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE82TPNJ3ll/m6MhFabEUR14MGIKrwXTkhR8iXZvn445BnTFS2znQUAA1pHvzWHlQz+zbMePQ==
X-Received: by 2002:a05:6a00:a0e:b0:74d:f997:1b45 with SMTP id d2e1a72fcca58-76e31eedebdmr7910261b3a.8.1755211865187;
        Thu, 14 Aug 2025 15:51:05 -0700 (PDT)
Received: from hu-bjorande-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76c61705bd7sm14513362b3a.31.2025.08.14.15.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 15:51:04 -0700 (PDT)
Date: Thu, 14 Aug 2025 15:51:02 -0700
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>, sboyd@kernel.org,
        mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com,
        taniya.das@oss.qualcomm.com, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
Message-ID: <aJ5l+0Fv7nm2vKuZ@hu-bjorande-lv.qualcomm.com>
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-8-pankaj.patil@oss.qualcomm.com>
 <28ea2b11-a269-4536-8306-185bf272bd60@kernel.org>
 <2yekmjqihkzsfjr223vepigfj4hfruleigguhrlekp6s7riuxk@ta5kghr2kafi>
 <4559a710-8b4f-4988-b063-40486fe0ffe2@kernel.org>
 <2025081338-backwash-oak-0677@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025081338-backwash-oak-0677@gregkh>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX2DUbYnNhWh3b
 Xy7nyqf6YQA5dZzXoorfvb58vXqE7Nsm25IQNu1oMYYYvXPETUQ/JGigaPDc9xjzgUQrhy8/m5D
 i/cnDWxtzU0UPf0CQSI669Lr0c0lWARSU+sLv6TCeiWL2EtV9f0NbDhbBTdRlSSi/iC2de4tGGx
 Im0p7We23CuXfU/eZpM7oXrL8eciDiWLiAAFc94uUJtJ2fa+976lRMcuskHAajMO73LXQgtoXLP
 H17+m1s7TtondrS0egQCLrqA1qBmiKx+V3pwnHfjm1dtqAj3/+d93KzVz4kOB2Jx2lTcADseRpW
 UA40m43dDlZUX2FreTnCNr1FXUzIwGYxEL9l0Sf6Knzcm4uBytogmw35Y+bA/P+mgxRG0E7kY85
 vQV6uENU
X-Proofpoint-GUID: Syf9foUt8OF-TZuWACv1KqHcJkCH3y9F
X-Proofpoint-ORIG-GUID: Syf9foUt8OF-TZuWACv1KqHcJkCH3y9F
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689e685a cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=mDV3o1hIAAAA:8 a=xkPlMqQ6EUx7zbaPWWUA:9
 a=CjuIK1q_8ugA:10 a=JEtk54xxEQEA:10 a=UDyAGHZwfzgA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-14_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

On Wed, Aug 13, 2025 at 06:19:20PM +0200, Greg KH wrote:
> On Sun, Jul 20, 2025 at 02:18:19PM +0200, Krzysztof Kozlowski wrote:
> > On 20/07/2025 05:46, Bjorn Andersson wrote:
> > > On Wed, Jul 16, 2025 at 06:28:15PM +0200, Krzysztof Kozlowski wrote:
> > >> On 16/07/2025 17:20, Pankaj Patil wrote:
> > > [..]
> > >>> diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
> > >>> new file mode 100644
> > >>> index 000000000000..a1a6da62ed35
> > >>> --- /dev/null
> > >>> +++ b/drivers/clk/qcom/gcc-glymur.c
> > >>> @@ -0,0 +1,8623 @@
> > >>> +// SPDX-License-Identifier: GPL-2.0-only
> > >>> +/*
> > >>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > >>
> > >> Missing date.
> > >>
> > > 
> > > Per updated company guidelines we don't want a year here. Please let us
> > > know if you have any concerns with this.
> > > 
> > I remember the guidelines and they were about publishing your code, not
> > about contributing to open-source projects. And whatever you have
> > internally does not cover us at all. You can have internal guideline
> > saying you need to buy me a beer or I need to buy you a beer. Does not
> > matter.
> > 
> > That above copyright statement without date does not adhere to expected
> > format. Explanation how this should be written:
> > 
> > https://www.gnu.org/licenses/gpl-howto.en.html#copyright-notice
> > 
> > The GPL-2.0 license in the kernel also uses date:
> > 
> > "Copyright (C) <year>  <name of author>    "
> > 
> > There is no option without date in the license or GPL faq. I am not a
> > lawyer, so no clue whether this is what we want, but I also should not
> > be my task to figure out whether different copyright statement is okay
> > or not. It's your burden.
> > 
> > Or drop the Copyright statement complete to avoid any questions.
> 
> Note, we don't take legal advice from the FSF :)
> 
> That being said, any/none of the above is just fine, there's not even a
> requirement for a copyright line at all.  It's up to the author of the
> file as to the format for what they want to do in the end, none of it
> matters to the actual existance of the copyright itself, which is
> implicit with or without a copyright line.
> 

Thank you for your guidance, Greg.

Then we choose to follow the format used in this patch, without the
year, going forward.

Thank you,
Bjorn

> thanks,
> 
> greg "I talk to too many lawyers" k-h

