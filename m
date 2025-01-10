Return-Path: <devicetree+bounces-137600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F955A09E32
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28CC73A2096
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773182144CF;
	Fri, 10 Jan 2025 22:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="I7kfSREF"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10011301.me.com (pv50p00im-ztdg10011301.me.com [17.58.6.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B815212B18
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 22:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736548873; cv=none; b=Ab3O6GLmkKGrEeV+kOrZONiQLRtTh5/h3JB5mDtWovS90FGjPiy8oIK2VMfMHEomjRIeagnhjwqok8YHebtZ6UIAAfAMc0FDLb6Cr67yRNO2kl7O9ni5mZD3JEBzabNiXifto5DUrc3zBoBBiK6RtpKlg72+jbhrQYzJqe23lrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736548873; c=relaxed/simple;
	bh=goc5t6g2bkp10C12QgtnCijdfeWvT7kQKL0Hbgigg8c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4Q76oGtvs3dagJ5w2v88wNjzZU2AZF6v5oX/HbCo1sgdh6QSLoUrZe9+0QKgK0dN0Zydzfb3BqAF8/53S92Q+Ddsk3yoxysCduEPqhKdoWB3kTlML97whuuieCU9HyvDOCBjTWj+WiizPG3phTyxmfpHWdVd+BjpxhpaySVnrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=I7kfSREF; arc=none smtp.client-ip=17.58.6.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736548871;
	bh=aaGSjRIVsjPEhw0gxrOieiZnYoxhUfoF/R2PKlEp7us=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=I7kfSREFzmrmGr/9Bulh7Ggyc49rLEvGagjgds66xlkdIvZ0xttY3qrCm6NdRBSmp
	 HEPY/5UVBkjL30LHQIN6CfW+yvHb/jo1I6udBpNMwsrHspNXWfC8QZWcsrAvXJGtru
	 IK+bjfzrtA7E5bmxr0+U0BMhVs91Fb0xIByJJdeux9jycIDuEBpAtBIvKJZA0QQyXA
	 ZccFRuXBGg8UtLJiblZD8fgG6Wb7zDprAma0IwRpMGPyzsO7P0KtZgExZXgPtsml2a
	 MnaEo7yDYlGUPrn1NT9ZcHCz1m3vSA9yh+BAAb3LN0Wza8a6tLjULBwdT3ZuV+1Jem
	 27ivqfbWFRZlA==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10011301.me.com (Postfix) with ESMTPSA id 75E551802A2;
	Fri, 10 Jan 2025 22:41:02 +0000 (UTC)
Message-ID: <54ba4d3d-db04-4802-9abf-7232861afc4a@icloud.com>
Date: Sat, 11 Jan 2025 06:40:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/14] of: Do not expose of_alias_scan() and correct
 its comments
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Maxime Ripard
 <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-2-db8a72415b8c@quicinc.com>
 <20250110174303.GA3215581-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110174303.GA3215581-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: aTUZ413hTf47rJZkBVVQID33j4Kxdg6t
X-Proofpoint-GUID: aTUZ413hTf47rJZkBVVQID33j4Kxdg6t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_09,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=884 mlxscore=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 clxscore=1015
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2501100174

On 2025/1/11 01:43, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:26:53PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> For of_alias_scan():
>> - Do not expose it since it has no external callers.
>> - Correct its comments shown below:
>>   1) Replace /* with /** to start comments since it is not a API.
> You've got that backwards. However, in other places we leave this. I 
> prefer if the comment is in kerneldoc format, then it should have '/**' 
> to indicate that and so that it is checked by the tools.
> 

okay, let me cancel this change in v5.

>>   2) Delete return value descriptions since it is a void function.
>>
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/of/base.c       | 5 ++---
>>  drivers/of/of_private.h | 2 ++
>>  drivers/of/pdt.c        | 2 ++
>>  include/linux/of.h      | 1 -
>>  4 files changed, 6 insertions(+), 4 deletions(-)


