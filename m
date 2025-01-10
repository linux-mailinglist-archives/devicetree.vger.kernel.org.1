Return-Path: <devicetree+bounces-137605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BCFA09EB7
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 00:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45E51167D20
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42C74221D82;
	Fri, 10 Jan 2025 23:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="gqmv9bma"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10011201.me.com (pv50p00im-ztdg10011201.me.com [17.58.6.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51EB220680
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 23:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736552019; cv=none; b=TS8+IgYn04qSyRfpynmSuP4sURt9ThSeo2rFsXx0rH8uwzw4sBc/6nJMfCWCC+n66hbGwyn2TNoDyUvivOL8M25QJPOTaZd5rMXV3AA90S5oBy0J+sYrgc7Em8An+9d+SJpRqH+YYrtBvatUv9dhH5xxVO6mvlEzGagbEmuzTIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736552019; c=relaxed/simple;
	bh=2Wc1ekaohD+CE4ZXa0Npda9jJN/5WIJ0lPtbnARa2s0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IR/4GycbEJxeOQT4sQFKJW7GK7rm/S5dglMfC3wWkF0f5De8gfKh6PrWUbwJDLt2Sp7jXXkXlNQ35i6+CcyZjyVMPh9ezrsZm09g9XNLp7UD1LoqpCYXwtgGgX3t6fIwFgnxjC5jzHA0NM21evfgrfTImea8cUBvEzttyqelykE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=gqmv9bma; arc=none smtp.client-ip=17.58.6.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736552017;
	bh=B/nbjpNBkBGDIw1vpxk8HL0zYAod8IDWfaMGF8EczJ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=gqmv9bmaYnpHwqIl6nZrLEPVvoxmhAzGPACWlrlV9KEC0J7giBstP9QvBg9XW25TA
	 GCMasJFl+jYWVgnDP9MpPOAkR9unkfrar//82TOpIWYc+14thhd8smPBjRfpVewv1I
	 l8AINFT8CdiJNmeAdR8aQa9VnXgVlyrgo4Iwog+RBpWWRDtfZnJk2g9Ni1fCFvIvXf
	 6vYp7kz1VEzZ1lI+kWwSGdxh6f/1y6dk2xYIBwNqTSRS+vZeBdFzujjv1mkNBUzy5M
	 bprZW5GG+2K7mNvX8/uTzVkLMOp7pHXtskRg79qy2GNNmkLaD8ppDT9EvjeQPlE/hX
	 s/H14ySbzKTJw==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10011201.me.com (Postfix) with ESMTPSA id 0F19B680453;
	Fri, 10 Jan 2025 23:33:28 +0000 (UTC)
Message-ID: <545ee89e-9d51-4dff-a57e-f4e18af6c0eb@icloud.com>
Date: Sat, 11 Jan 2025 07:33:09 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/14] of: Fix available buffer size calculating error
 in API of_device_uevent_modalias()
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
 <20250109-of_core_fix-v4-5-db8a72415b8c@quicinc.com>
 <20250110174848.GA3223452-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110174848.GA3223452-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: L_YABO0OWmZhVTLa3z0s6CLA-dMlulvR
X-Proofpoint-GUID: L_YABO0OWmZhVTLa3z0s6CLA-dMlulvR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_10,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 bulkscore=0 mlxscore=0
 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501100181

On 2025/1/11 01:48, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:26:56PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> of_device_uevent_modalias() saves MODALIAS value from offset
>> (@env->buflen - 1), so the available buffer size should be
>> (sizeof(@env->buf) - @env->buflen + 1), but it uses the wrong
>> size (sizeof(@env->buf) - @env->buflen).
>>
>> Fix by using size of space from char '\0' inclusive which ends "MODALIAS=".
> 
> I prefer to get the printf specifier change merged rather than reviewing 
> if this is correct and doesn't introduce any new bugs. We're under 
> utilizing the buffer by 1 byte. I doubt anyone will ever hit that and 
> it's not any worse than if they exceed the correct size of the buffer.
> 

got it. you are right.

previous series v3 contains 3 patches related to MODALIAS. and i
keep this patch and drop other 2 patches in this v4 series.

my thoughts about keep this one is shown below:

1) this simple patch may record evolution history of the function.
2) you ever given suggestions about this change.
3) the issue printf specifier solution fix derives from discussion of
this change.

>>
>> Fixes: dd27dcda37f0 ("of/device: merge of_device_uevent")
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/of/device.c | 14 ++++++++++----
>>  1 file changed, 10 insertions(+), 4 deletions(-)


