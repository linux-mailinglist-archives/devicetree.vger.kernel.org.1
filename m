Return-Path: <devicetree+bounces-224958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE35BC9380
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 15:14:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6F2D3E37CC
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 13:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3093F2E764C;
	Thu,  9 Oct 2025 13:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fb3Ey9bA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DC52E6CDA
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 13:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760015657; cv=none; b=U43Bc+huf6pgITs32pTsL3FvsYvtbxtVtUYxXMGQuigGP3pIxfbVKsU/vpXacRQ9Lk+HUGYMnkUOhynxP9cKuCnbiNC5hQpulUhhxcc+NFKAjzKd7dBeggSae+aK8xHrkb/8eTRDOAcIaZ2XgYz6pQCvvFx90wIZbgDnMLKDyNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760015657; c=relaxed/simple;
	bh=uXvSpjVF8BK7YFN0xoPwvysk7CDBGOxoFJjEr38/hn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LNbQiTvoE62fZec5HZfDj9bWOuUbECFybGmIs8OkccB4Eo/LmA1opxHRC4MZa5HKzT5EJ5Y15PTs4TVtzGSHvw3IMRyKZ/JWBYWAkYWjzsvD13YtTWWex+b5XQipeBy8Jy4k6t6wduyXw/dX6BbF76zavMq+IUfaQMTofO73JJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fb3Ey9bA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EQQA029796
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 13:14:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lo5MRavVGxHbSwlyHOLgkDpCLDtjLUpSjKDigiF2Nwc=; b=Fb3Ey9bAch2igCHD
	rOvvjWjhsPymbUsAwVfk5vAVZZ8AbiKfkYkZPrDzYBZh5eFSmlJYYOBf12XoaUY9
	QkF65lPdzd9KBenADpNVL8vXcILzE+ttTspZkCgo26I8OxHvA5dI0GtRJuEEgnBE
	M5YEzHyO+ntM8XatSL24cMFO2jGgZRaqBpl/MS+XfRB7Bj6Ed1u7QI4KewI55frg
	lxWDu4dnBm0XPs4iGJczScylUzGR6GyfTj4nceaJiE0F0M9BYCJ/ZUDygGFxsaYe
	hiLIi5zZPmsHjNSvjLNpo7gnBqg6Yu3M2kDpxGrLJby2f4E1i2U45YJmt4UGkRev
	aNN3KA==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nawh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 13:14:14 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-59a3e6896feso2380872137.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760015653; x=1760620453;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lo5MRavVGxHbSwlyHOLgkDpCLDtjLUpSjKDigiF2Nwc=;
        b=gIRJcegvbRsTWg3whIx7aeiMu57tAcrarJVA1yZPs41kOwU/TPijU40Yzb8GJ1/XLc
         PekyrunhEuZo/F+W0iKXQ7d/DKgaj1hP4ygEv4MYeukeYdknw82EjdDG2JIvyeg4lH/9
         RqwNJ5BgJRjBYcIFGcy5fN2XG+y3ugYct1yRkRx8HLL2MSRNVLAOg6BKr6EBqgIRfeJq
         wWoUy2eaAesuVqf8s+kXNlxDlTNBdC8UewwumnLsq1J9ncSW3yewZQHCv1AFpxCW8ecB
         8e2u80lMH8bwv78lROqTfdohAdvPwHM1j+/KqTzwaNvEeYTIEl6hKehllp69d8tnRsok
         DpJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQpJHJAaIOnZvpaMAg/2TX3nQSBamkjhD5b9vpq1OJnb/jX4Hl1LGkZp241jveNFcQo3KW9sJMqQsR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzkc7xAS6J9cCaQYKEhpRb70WqtSwPQyxFU5Bg5jS/t1BdWUKTP
	yhgejj6ttbxfS4y+d+B+8ZAGanzq68MJChRO3ABK6yTV8jgCUu34mx72FadPc1LCHZEll0glB80
	Z55VrmuoNXuSRYdAgTznRsnkzDtiEb2veLnjN70P53DgMnUhkI49lp+/d+pDhwacN
X-Gm-Gg: ASbGncvlnvAqxZWwqkbyGpBR6FtCWQFLcoHWey/DKLVhWSGU49BSPEx+fuN+RLWevmT
	Oyo1Axs5xTErNdUdi1MZR56bAq+noruq62/8D+PYXUzkRluUIOdFen26xCZvx5fECKegOpIyZ9e
	bGJ01A0oqdUqdzVWW0I3nBwGBWId3AbI3o/bEN5VmqmNSJuK7KULNtierrLzaDyVHyWXNGjEJ9z
	lsWxJwa1ScHtn22iUEleIvUrBLfJV9nEPZdMhnrITIvTY48oPKTage5zxRbBdFChWNpd1Zj8z/1
	FFqGfmWFXfQrJCt0621V2GhS5/1hcsMsfBn2agwtxqnG9NP5oeMe5QEo3nvzmlJsm4c5uXqic2t
	oFjvHZoG1sE+GCNbg2FcZHBpxrceFZhAEuJhoqhA9R7kuLiR/+eBYWS3BGw==
X-Received: by 2002:a05:6102:e10:b0:5d5:f6ae:38e9 with SMTP id ada2fe7eead31-5d5f6ae3d78mr557347137.42.1760015653072;
        Thu, 09 Oct 2025 06:14:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECks5cD3E8/Ce3Prr57QfCkGaf307hNA+1+lQir9ZyF994JSEye7UPdlYasS5n+CNSCMBGtQ==
X-Received: by 2002:a05:6102:e10:b0:5d5:f6ae:38e9 with SMTP id ada2fe7eead31-5d5f6ae3d78mr557333137.42.1760015652601;
        Thu, 09 Oct 2025 06:14:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59082802080sm327717e87.25.2025.10.09.06.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 06:14:10 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:14:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>, joro@8bytes.org,
        will@kernel.org, robin.murphy@arm.com, saravanak@google.com,
        conor+dt@kernel.org, mchehab@kernel.org, bod@kernel.org,
        krzk+dt@kernel.org, abhinav.kumar@linux.dev,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev
Subject: Re: [RFC PATCH 0/3] Introduce iommu-map-masked for platform devices
Message-ID: <q6ym54dfmwes3avn2mv22hukstwfrus2d233atjy7cttvgrhvl@ahcqalnz72vs>
References: <20250928171718.436440-1-charan.kalla@oss.qualcomm.com>
 <CAL_JsqK9waZK=i+ov0jV-PonWSfddwHvE94Q+pks4zAEtKc+yg@mail.gmail.com>
 <1d36569c-55b9-4390-87d1-fd0c2f837014@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1d36569c-55b9-4390-87d1-fd0c2f837014@kernel.org>
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e7b526 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=nh7g1Hw0eNnsH1J9AAMA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: Z57u0WVxe1QSPd_d61l9CSJ4E25QxIlN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9FCVAv9nwYY2
 Dvddr7N8Ndcxst0AE6NZn2pb0l2BVtCBLSbEJK9KRrF/Wn9UexCUN58BX7m11CtZvH59M9sEQKU
 VhQnFvLoIZ8zU1wYxltePpZt0HIOOGTDSmKROpd/dnm90rYqr0FeIhmFzSNnrluEicA2IIsSfRx
 eKait3quvIIukDIH2JpxdJH1JO+SfbZTmp3432sgazFw53URVKhjJORrtrH0/H7Aw86WHx8TGeW
 eWz/0ksfsxK+6trOBtoRk26YsYPoyn5yysPKWSpuNTeGDeATiTEGDCT28+yJ/xchLIF02/AJDvh
 ANOzXwvslW0564DLFt7Cma7kbpqfgxVXXqwHXBSbQ/A9pTajW/5MG0TXgBQp2s1p2dFcnTyC1fo
 3yqssK1qujcjPeqL7U8SGahGrOgWeA==
X-Proofpoint-GUID: Z57u0WVxe1QSPd_d61l9CSJ4E25QxIlN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 09:26:43AM +0900, Krzysztof Kozlowski wrote:
> On 29/09/2025 05:23, Rob Herring wrote:
> > On Sun, Sep 28, 2025 at 12:17 PM Charan Teja Kalla
> > <charan.kalla@oss.qualcomm.com> wrote:
> >>
> >> This series introduces a new iommu property called iommu-map-masked(may
> >> be there is a better name), which is used to represent the IOMMU
> >> specifier pairs for each function of a __multi-functional platform
> >> device__, where each function can emit unique master id(s) that can be
> >> associated with individual translation context.
> >>
> >> Currently, the iommu configuration - at least for arm architecture-
> >> requires all the functions of a platform device will be represented
> >> under single dt node thus endup in using only a single translation
> >> context.
> >>
> >> A simple solution to associate individual translation context for each
> >> function of a device can be through creating per function child nodes in
> >> the device tree, but dt is only to just represent the soc layout to
> >> linux kernel.
> >>
> >> Supporting such cases requires a new iommu property called,
> >> iommu-map-masked(taking cue from iommu-map for pci devices) and syntax
> >> is:
> >>    iommu-map-masked = <FUNCTION_ID1 &iommu ID1 MASK1>,
> >>                       <FUNCTION_ID2 &iommu ID2 MASK2>;
> >> NOTE: As an RFC, it is considered that this property always expects 4
> >> cells.
> >>
> >> During the probe phase of the driver for a multi-functional device
> >> behind an IOMMU, a child device is instantiated for each FUNCTION_ID.
> >> The call to of_dma_configure_id() on each child sets up the IOMMU
> >> configuration, ensuring that each function of the device is associated
> >> with a distinct translation context.
> >>
> >> This property can also be used in association with 'iommus=' when dt
> >> bindings requires the presence of 'iommus=', example[2]. For these
> >> cases, representation will be(on arm64):
> >>    iommus = <&iommu sid mask>; //for default function.
> >>    iommu-map-masked = <FUNCTION_ID &iommu sid mask>;//additional
> >> function.
> > 
> > Where does the FUNCTION_ID value come from?
> > 
> > Why can't you just have multiple "iommus" entries where the index
> > defines the default and any FUNCTION_ID entries? What's in each index
> > is specific to the device.
> 
> 
> We discussed the problem earlier and that is what I asked them to do.
> Apparently I was just ignored so now two maintainers say the same. We
> can get ignored still and the third maintainer will have to tell this.

The main problem (which comes from IOMMU definition) is that currently
the iommus property is not defined nor used as an ordered list or
anything like that. Other devices depend on it being a set with no
additional structure. We can change that, but it might potentially
affect others.

The iommu-maps is e.g. used by Tegra display device to map multiple
contexts separately, but it doesn't fit all the needs because it doesn't
allow us to specify the mask.

Also, the video-codec is not unique, we have other similar usecases, the
display, camera and GPU, which also need to map some of the contexts
manually.

Last, but not least, there are e.g. fastrpc devices which have
subdevices just to declare the IOMMU entry for the context stream. I
would very much prefer to be able to drop the subnodes in a longer term.

Speaking from the drivers point of view, we also don't have any control
on how the IOMMUs are attached, while we need to control it for these
kind of contexts.

-- 
With best wishes
Dmitry

