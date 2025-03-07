Return-Path: <devicetree+bounces-155117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2B6A55AAB
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 00:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CC291766C2
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 23:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98A9827D776;
	Thu,  6 Mar 2025 23:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="ne4RQggw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A57D20298E
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 23:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741302438; cv=none; b=a/9zVAnLexHRD5Ni+9UDJZplFwgE5+cPxpAkRZhzxwAWX7/psmU6Yrxc0Inf6BznpFJK3AF5dtTWuk6nLbtlyD6PSMsm6/cmDd4fpKYCfnU+yWsaEHuHsN7V1vcEtj/ddyCd9Gcaa8hvo32Fx8FLtpP/pr1M2HmYWqZ9Z/LGOuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741302438; c=relaxed/simple;
	bh=LAhhwaLpDCJUoINFXLHc1zMU01IGs6t+jAVidUm3LTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vv0Biqa7RSKa53cWpEhRWsh1PxzmzssGHpIc5z0HVkU+r18pC+zut6uxCxq4jkgJ97xEROJ7AGDCzVMlwWzemx3iegMh08AKZrc330XV03DIb70SZmGv21LtP1KjR0cIOHDgXFSvR61yxXb2DEJqs1cjv2JITL67G0iv+DgJlPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=ne4RQggw; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741302434;
 bh=7Hz4rVSOPCLFTfl28e1lA4te8SstIFjzPVnzUbwvmJ4=;
 b=ne4RQggwaC5mwX1DBLO7G4paDJMdBSIJRmUVM0c+Z6DCoCVeXaWCy/IsyY2w590dvafMSH8Gp
 wbDBFeChJ6f3bgLDdhGZMgY9UsJt3+K6goLT7kAmh396wSmlLo8k0c7FxxwI9ImFNDvB644k6S8
 XQzmqFGc7nj079YlFh+bc/8L+aYeVVuQgTTSHdeCfibAVK1/fGzz6Mqi29kSM4358E9GPgI/DuO
 oFd0uZrEG06ZC12JAFdQjKuCEb7x1LPDHw9vx2GUsiKy7lwyyiEM6xFib0cnqSiQby2izQkwUmp
 XMHyo+zIxI6UPFBssTaBg2pkzegeFwIlBJ74CTiy7ezQ==
X-Forward-Email-ID: 67ca2a9ec1763851c065cdbc
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <7fa480bd-9bc5-4069-a623-afb140455192@kwiboo.se>
Date: Fri, 7 Mar 2025 00:07:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3528 QoS register node
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250306123809.273655-1-amadeus@jmu.edu.cn>
 <20250306123809.273655-3-amadeus@jmu.edu.cn>
 <cdbc1556-4662-4078-a4d6-33545e2e2491@kwiboo.se> <117081043.nniJfEyVGO@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <117081043.nniJfEyVGO@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2025-03-06 19:08, Heiko Stübner wrote:
> Am Donnerstag, 6. März 2025, 17:55:16 MEZ schrieb Jonas Karlman:
>> Hi Chukun,
>>
>> On 2025-03-06 13:38, Chukun Pan wrote:
>>> The Quality-of-Service (QsS) node stores/restores specific
>>> register contents when the power domains is turned off/on.
>>> Add QoS node so that they can connect to the power domain.
>>>
>>> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 160 +++++++++++++++++++++++
>>>  1 file changed, 160 insertions(+)
>>>
> 
>>
>> These QoS node are typically referenced from power domains so that the
>> PMU driver know what QoS to save/restore when a power domain is power
>> cycled.
>>
>> Vendor kernel only reference the two qos_gpu nodes in it's power domains,
>> do you have any documentation or knowledge about what power domain the
>> remaining QoS are related to?
> 
> I think the GPU actually is the _only_ fully switchable power-domain on the
> rk3528. The other powerdomains seem to be always on, but can do this
> idle-request thing.
> 
> At least that is what I'm reading from the pm-domain definitions in the
> vendor-kernel, combined with a look at the pmu section of the rk3528 TRM.

Thanks for this information.

Regards,
Jonas

> 
> 
> Heiko
> 
> 


