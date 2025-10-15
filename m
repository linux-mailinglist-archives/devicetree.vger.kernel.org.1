Return-Path: <devicetree+bounces-227009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E73FBDDBFF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 11:22:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D33B582C33
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 09:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B9C31770E;
	Wed, 15 Oct 2025 09:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pHKb+eE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EB3302CA2
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 09:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760519926; cv=none; b=qFScscOXy98QftfU7QKC2S95KoYh9mzME3k86WPMX7xBelsKgFUDsb+zbzMhndXFREbsgBdJW7TLlQ4+Mc9eWxkQtB0qjPk2yOgiPs5qY3hXvjB8fPu6t9IW50pBqK72EBdGlzNPK8hx4FKRNmJbdefF26Hk2bzETl/FqrVNtEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760519926; c=relaxed/simple;
	bh=v+1yFx6m8EFS51NH+9N1+Ps29Xui1uKYHZuhxqSh1hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bwKdLekBi9hgAiNCl7KezWW1KJ4/eMIQLOuwypb46W5quOMOemVUzQkSk322otGLP9ZLosWazJl3HU1p9GaGX9Vpo9SFMsZqD1ywa7rjlAIr+rP6aj/O3Fx/479K+4VRE4z5AHMwjkfZuS1/Fe/8gAYMuQloHaaFSj8sm8NewH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pHKb+eE7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sSCH004236
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 09:18:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bS1E+4mwLwBFxlFV6Y8vnGID
	Eaq0IJ1+mTWNPvPN/ow=; b=pHKb+eE7EYO3K0e1ksvCiWA39iLCSJMsj+XM1ksK
	4S36D/sLeMMDMQehEZXKtspD1kktRrZO3Dlq7DoNX/eV0sfC/1Dc8OfSatgYNDyQ
	QN6Yg2Pp4Hykgt2jOj+AaTTMA5jeFfO4NaSjuWVHFpSgbHACBlR9wb/q06SQsqo9
	Ty7Bm1djb6BatJ6dqk2tJcDOOSBm4yU5y3H9OcENfgaeX9cMHf+vo/CYEwogapeZ
	xMKsIiOBQSKpnqxUfIOT52/5uD0dTVQu3EawLIxL/jAbjRviygrp/h1lVR79LBAm
	mupIk6btIy3iV4jCQ+DAbEvK2XIVc2uRHW41nIgPV7KQqg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwp4mf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 09:18:44 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33428befc5bso12688987a91.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 02:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760519924; x=1761124724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bS1E+4mwLwBFxlFV6Y8vnGIDEaq0IJ1+mTWNPvPN/ow=;
        b=MSMaaoRYhNLKjq0Wwnf6KSyvhpC5GgGlRYvARHWXNDLiZJUCPIiB/Ig5tzrygCyDfE
         C2nDZEF1tI3DYqDR5tyhphr06lMuHupEDwfl5WXJcmCW6G4fzCMzcbWPl7cyKeOOUK0Y
         y0uiFAOmcG0QsVZ3qYj1gE8a9eK1B9/zrhL2055eBL7u4HRxRW80JHxlPmRYDiuqy0PO
         VNtVkoykF+URaJHpg7dhaSL3eIG8VjgdDC+LwfTHmvJ5cVV+XHU5HO0a0j+UzlPL5CtZ
         3hd8fGy72dXaMP58ktkh2F75TNK2O3ZsvEKl35BzfdCRS+LGKpA/E0xRarQay3iYDMMn
         /8jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXdB5+nUtOEqKA7Nv20DOXX1C6NTHT5oWcoVhJcHfuRThBWuwUCV/gCSgzz8hhfMvlV8Y3SS9NHneAm@vger.kernel.org
X-Gm-Message-State: AOJu0YyykFHPJBlr8mGMZRUeeHpXOi3+5f/xMuyKRUtkapMVrbI2E9Fe
	5IGdJvSBxgg2Os9FabH4xxhnGGs2tr7yTM1j/zfgM8ALCqwd64YnLSVIVHqWtk3qXnBWEIqxM9Q
	Ji3OdcIpFpZgRiqVZYnt5xMnRBMRoSzY+zokwC81Y9PEDOxG7MD+MfoONdKpbmfCD
X-Gm-Gg: ASbGnctGUz0C3W6joC+H32QRsROO8COSzxwvQ+A6P4ayuFFeYAr4NFVyI2kLyjTZHhh
	LMtFbZveAlOhJJyYVytwf5JN908lbmDCTswQZyzmAJUvsm72llC6cmfATSFV8vIFSQhhISmCB0X
	k6caTLpT8XROEIPD7lygsDSXwIXFpiAVDon7FLiWnKkhfADXQM7C9fLcU+tnJ3NuQXacIO7Eupd
	SM9Hu4uEJqnLiislXUoDy3azVGZ3RmhvfrZjCX4md+vYuev0LngoNYqZigdwY9GGNUKNASr4RjO
	KUHjS1YTVcTshSRvMkexrJYl5pKSxGv6XH2X7WWsNqfCiu0990UYPVsOBj206deVwJl0+wk/jXF
	wDe2Xt27xTzQ=
X-Received: by 2002:a17:90b:33c1:b0:32e:dd8c:dd18 with SMTP id 98e67ed59e1d1-33b51386478mr42150816a91.17.1760519923665;
        Wed, 15 Oct 2025 02:18:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMgnMO7HLRZxNRp6JE2WyjZvNwxMd4B9BWG+xm9wiLFSOLNzWFuvmVaLsS63QDbhtbP/hrPg==
X-Received: by 2002:a17:90b:33c1:b0:32e:dd8c:dd18 with SMTP id 98e67ed59e1d1-33b51386478mr42150785a91.17.1760519923204;
        Wed, 15 Oct 2025 02:18:43 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9786084fsm1727013a91.10.2025.10.15.02.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 02:18:42 -0700 (PDT)
Date: Wed, 15 Oct 2025 02:18:40 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
Message-ID: <aO9m8PA5QMb5JDgz@hu-qianyu-lv.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
 <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
 <fw5hf4p2mjybvfo756dhdm6wwlgnkzks4uwgo7k3dy7hyjhzyr@bv4p7msxapcb>
 <aOzSnxuuAb4gFCkk@hu-qianyu-lv.qualcomm.com>
 <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <x2443gg3bj37j7qxjk3ocol4xzcly2vandob5j46bp5c6akqb3@zgwrl7qhl2y6>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX1Qj8PVjm6rG8
 4DO1aPnWU/vRQLr6MSYQEITZNB6WHiGFNvzYFvkSosD4v2BZnhX+j6+lie8/P7Zpieon6LXBPDt
 tozybegxjnkD14ypnWp5cU6dtcLR7PXqzVzifVac4HaO95xT+1bNp5WMDLsUtqABvUr03BGgu8f
 yIgg8PuK4xy6okpUyp1/9VwPp6eFfHHEGyLer/x1Lsg0UY1qY68b2BpqjOY4ZKXcuHJpiwcEjab
 xsdPF1fnEAbi4Cj/UJo6njNEyk8SeGOvtlMcynatg0PZ1Pe9slBDUxGvKDhZ4DjoKo/2sLURX6C
 3ISTdj8qWXZJnXMnWKfU+su55u+BGza/cXM9XlhOPHS+RY0O50OcYGDEpcV3KVXV7Sv2obSvxU2
 40h1qLMyAYNg+sDDDqRHjvTXiMk0gQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef66f4 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=naz9k7CIUQbskZorHm4A:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: rLaaRClagcKEdi-TvYlbcSr593ZcigQU
X-Proofpoint-ORIG-GUID: rLaaRClagcKEdi-TvYlbcSr593ZcigQU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

On Mon, Oct 13, 2025 at 03:40:32PM +0300, Dmitry Baryshkov wrote:
> On Mon, Oct 13, 2025 at 03:21:19AM -0700, Qiang Yu wrote:
> > On Thu, Sep 25, 2025 at 05:28:15AM +0300, Dmitry Baryshkov wrote:
> > > On Wed, Sep 24, 2025 at 04:33:19PM -0700, Jingyi Wang wrote:
> > > > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > > 
> > > > Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
> > > > qserdes-txrx register offsets differ from the existing v8 offsets. To
> > > > accommodate these differences, add the qserdes-txrx specific offsets in
> > > > a dedicated header file.
> > > 
> > > With this approach it's not obvious, which register names are shared
> > > with the existing header and which fields are unique. Please provide a
> > > full set of defines in this header.
> > 
> > Sorry, I didn't get you. Do you mean we need to add defines for all PCIe
> > qserdes-txrx registers? I don't understand how this makes which register
> > names are shared and which fields are unique more obvious.
> 
> From your commit message it feels like
> phy-qcom-qmp-qserdes-txrx-pcie-v8.h is an extension over some other
> "base" header file (likely phy-qcom-qmp-qserdes-txrx-v8.h. It makes it
> harder to follow the logic and harder to compare the values. Please
> define all used register names inside the new header.

No, the new header file is not an extension. It's a full set of
qserdes-txrx register definitions required for Kaanapali PCIe PHY.

Let me rewrite my commit msg.

- Qiang Yu
> 
> 
> -- 
> With best wishes
> Dmitry

