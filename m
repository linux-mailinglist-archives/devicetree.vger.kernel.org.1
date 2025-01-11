Return-Path: <devicetree+bounces-137608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04351A09F91
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 01:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D616A188EE5D
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 00:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF438479;
	Sat, 11 Jan 2025 00:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="NAjc/0lA"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-zteg10021301.me.com (pv50p00im-zteg10021301.me.com [17.58.6.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8627E1
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 00:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736556038; cv=none; b=GjUmFOZ/LzzlVaZ9/8KcuHxW8XzNfu/lxWPTs9JIFXYmBK5RtCewYn9JNaARPFLfcxw9i7AQlStkdlf2ciNhrOjmD/c1RrUPpPehfHKHTo6tWlvVAyGrr3Nzcr1bRkY4/sSfs3KGEtKRWtpgk4YWccev0Halr7kY9smcHDpmy5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736556038; c=relaxed/simple;
	bh=RahWFGItY0GmZsGHs/aSQTKq6jKvIds+tsdJ74CmGCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U8fHXC97kJGXICuyFTExmEaoSLep3YiHxp+c/q4V8IqBIXP/DFu1lIU5aoc6VGPDoe0DkEWUi4gc0pdTPURKJczL1iuXPBFcC8896aq3/kXPQxAqXXp1z/B5JazPIvrtU4RnE8SF89HUOVu9tGJA5W3c5dPQ9ueZPw8Gx5z9aPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=NAjc/0lA; arc=none smtp.client-ip=17.58.6.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736556037;
	bh=+88Aaq3Mc6Ztyi58v6/eAsQrLXgdb6HSd+DkmUxUf88=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=NAjc/0lAOqAWHklGr+hWjU+NwBjpVG79oGq902Aup3FkjQQTP2igk+bEcICZbWy00
	 zTOgoPNL/ufTCEbjEdYzMpPdic2zWybKl+q59tDi695+NWgRd0wsR3kTMA+PS0CwnK
	 2KHjyYgTPO0ZhU76Gi6hfI7n+YTUDMYSDh86c1reIftp7f1Ec2SK1xeWeE8ubd4pk5
	 JVDuzjJmJnz0xWZPSAbrl3QztKVCl06KHSuipJgJb2QjZ0HbMCEEu2WRBjgBdrJaTi
	 rLwwcu2858QAJjJCvSW8RkoC3p3JAzHOCUJzZQ6gwE080GEyjILcezcDPggJBEvZuY
	 mXv631xYzc1IA==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10021301.me.com (Postfix) with ESMTPSA id DD89750008C;
	Sat, 11 Jan 2025 00:40:31 +0000 (UTC)
Message-ID: <06b98b91-e795-4b74-aed7-ae4a65560353@icloud.com>
Date: Sat, 11 Jan 2025 08:40:27 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/14] of: property: Fix potential fwnode reference's
 argument count got out of range
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
 <20250109-of_core_fix-v4-7-db8a72415b8c@quicinc.com>
 <20250110203521.GA3520266-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110203521.GA3520266-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rGI7DkeN_BMwfebE_Sw83ZbccGdTxk5l
X-Proofpoint-ORIG-GUID: rGI7DkeN_BMwfebE_Sw83ZbccGdTxk5l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_10,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 mlxscore=0 suspectscore=0 spamscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501110004

On 2025/1/11 04:35, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:26:58PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> Currently, the maximal fwnode reference argument count supported is
>> 8, and the maximal OF node phandle argument count supported is 16, but
>> of_fwnode_get_reference_args() directly assigns OF node phandle count
>> @of_args.args_count to fwnode reference count @args->nargs, so may cause
>> fwnode reference argument count got is out of range, namely, in [9, 16].
>>
>> Fix by truncating @args->nargs got to 8 and warning if it > 8.
>>
>> Fixes: b66548e2a9ba ("of: Increase MAX_PHANDLE_ARGS")
> No, it would have been 3e3119d3088f ("device property: Introduce 
> fwnode_property_get_reference_args").
> 

agree.

> Why don't we increase NR_FWNODE_REFERENCE_ARGS or rework things such 
> that MAX_PHANDLE_ARGS and NR_FWNODE_REFERENCE_ARGS can't disagree?

that may involve ACPI and not sure if there are risk.

the commit you mentioned above have below commit message:

"The semantics is slightly different: the cells property is ignored on
ACPI as the number of arguments can be explicitly obtained from the
firmware interface"

let me do more investigation (^^).

perhaps, various firmware(DT|APCI|SWNODE...) may use
NR_FWNODE_REFERENCE_ARGS instead defining a MACRO such as
MAX_PHANDLE_ARGS separately.

> 
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/of/property.c | 5 +++++
>>  1 file changed, 5 insertions(+)


