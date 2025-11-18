Return-Path: <devicetree+bounces-239970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EE4C6B89F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 21:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3264B354F26
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 20:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB0E2F39B7;
	Tue, 18 Nov 2025 20:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="U1uD4D7k"
X-Original-To: devicetree@vger.kernel.org
Received: from bumble.maple.relay.mailchannels.net (bumble.maple.relay.mailchannels.net [23.83.214.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976FA2F5335;
	Tue, 18 Nov 2025 20:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.214.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763496802; cv=pass; b=m2r1IPBLOZviT396c+diHepKIraRf+ps0i57F+U3jD6bCP/meAjL4J3xAAMdF8FUrV0ivTu77AjmuqLmzeFgMyYvHPT+DvnQSDs6BvOxNoBDcAqXYXxz/6El6arKWbXEJCPlJUsGnE4PVjJXGpF196aZExkJxWY9IJczKbGsXBg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763496802; c=relaxed/simple;
	bh=p9+bKI98JVT7q7HxWC1pZ1MjZAp9cIcyRBA41ifxMT0=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=HR9u+UOMvGwCVcm/Qi3AxqAZKyGXJsjgM6zvazvT6L6GW6ZKil2wbNqT9ZVZUTz/AXLdP17jH++pDAHNszbQv6iSc6KZNiD5s71H7x90wEa4p+ZHBTROfSA26c4tXeLr+yTQRPEkwtQGRsRm2Wn86CXQeeCKIZvu6/uPR/C2cbU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=U1uD4D7k; arc=pass smtp.client-ip=23.83.214.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 61771822718;
	Tue, 18 Nov 2025 19:57:28 +0000 (UTC)
Received: from fr-int-smtpout26.hostinger.io (100-96-77-176.trex-nlb.outbound.svc.cluster.local [100.96.77.176])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id E36F9822723;
	Tue, 18 Nov 2025 19:57:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763495848;
	b=CZeiHv7XXFXKuHBPuBB4OSbkJIH9QTFhUs8SrbpW3DeU+cVjhsvfwzfMpTkUO/NzVCJr8B
	YtXxVlVMw/+9detR32tEzZb96PZI+a81Misiv+zwMMfUL1N00oa61ZfQ29Dl5jbTroKLGd
	4ONz4kVFcJIW1ZW3LolR7yDVyanXTswtWgXyMM6vc3H1SKAGVGnA37LNcXRV+kIqbE0eU6
	AzlzRF3sV25yF/8HzgeO3M9yzuPsiAeHfP7R/XCTP4H3lFCI+e3BOVcLS4BuxxVLALAx0G
	MLJEg+FZW7cWZaBoOvXLRQf4TSwyWGawRqxTHotFi+2r6Hyt44XPXJCD3gw6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763495847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=BbcOD3VD6adCsQK5uLNPbk3zQ4lGeD4EBSzw6F4p+ao=;
	b=i05GSgUos3YFpwmTiVmcb2cgzAnuukAdPA3SaIgsyB/IvvMRyNUYUehug4jRTAVTSwqMUe
	wba5WLGnGc2xrukmgIkaVi/cmjJtOBznpaA1k/V19kVoP48DoWcplc1HCmiYGOG9oNNQbh
	f4Tkk2dxuAnrMl7uorpD+8P9nmtyeq4KMvHJ+oTChlyssgWm2zM24odcXgGzATDJcaexng
	DNVQpzF1dj/uiExsom31PHhDmHMZboKtSEJpoL2Kc3R7HmloCooSLCCceXWuRHY+/kwC49
	3Lc+4Wt1TfoXqf0Jj81qQZu2D0Yo5ZwCR5WlJL17hiRMAZHyN9V7QWqOcKD5kA==
ARC-Authentication-Results: i=1;
	rspamd-55b59744f-bdkvm;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Society-Reign: 134a57947117443e_1763495848172_292490701
X-MC-Loop-Signature: 1763495848172:1169941706
X-MC-Ingress-Time: 1763495848172
Received: from fr-int-smtpout26.hostinger.io (fr-int-smtpout26.hostinger.io
 [148.222.54.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.77.176 (trex/7.1.3);
	Tue, 18 Nov 2025 19:57:28 +0000
Received: from [IPV6:2001:861:4450:d360:cf0c:923e:c2e1:c25a] (unknown [IPv6:2001:861:4450:d360:cf0c:923e:c2e1:c25a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d9wPb4nG5z1xyp;
	Tue, 18 Nov 2025 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763495844;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BbcOD3VD6adCsQK5uLNPbk3zQ4lGeD4EBSzw6F4p+ao=;
	b=U1uD4D7kpTyuGqaAmQHJGfeC/p6SjJD1pzeLGaLGpUmnGoPzigMZjHTU+8waAUX33OE85W
	Hko74hd3tocL+CPQq10EnheWNH3lwAdqFvOfso8BKw0QDqUzjagtTsOaNFIH/zmnvDfHME
	zrxmFYc9wX4gBKp6UWIzSEalOwS1lBWpXC7KtqF2Iyfs092Cu64g5ufMc6txEBL2wmH9mM
	PfOUP71Mv/k+5511S4XgXHd7pI0rgwmHsMc0W/O0NQQhfO664FWV3lYcY9qMqDgwbpFyyj
	GkftKxXEnKyqQMoX4KThfoLNc/Esj56huT6FvQzDE57UN00xlrJCB2fsUVOxWw==
Message-ID: <4e7bb5f5-30bb-4ed5-bb32-3008caa1826a@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Asus Tinker Board
 3/3S
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com>
 <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
 <e134902e-e298-45d0-b94f-77748bb948c4@kernel.org>
Content-Language: en-US, fr
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <e134902e-e298-45d0-b94f-77748bb948c4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Tue, 18 Nov 2025 19:57:23 +0000 (UTC)
X-CM-Envelope: MS4xfDr4wJCM3Z+k7peG/DjGFXbeSgYqjNqYCqeYhgVwqFEEqi28ZdJjanfR9dCSva3D+4rkCDt1ifEpJ8lLihRwMlJmXJQnvxvLIDrU8WJbDnSxnUDwRuQc f0T1yzS9q/s1vsElD0oMQDQ79KOxdmV7aeIcR9UwU7l/nhJTXhFBn4ShqCk7CNZtob0QE5VaxSHYY8GWCR1QhZQQMgiNue45McwHlBp8xkIyMZ7GOLUz6mo5 3IAHrij8CcockAeScy32YEElUa+tx3LugEvx4R4I1QqBrBYKDPF6TeezeL7QXtSYKZnYGOD6bgnJSTlhRIKyRRStrJt3L9TRYdH4CfgfVmH3pMkuZrJ1oxcr 0Y3VqLd1aa1D2yDVOcEOYmK7yu2asyp5z0ox8g/PC61FCCzUrQIiwsEVOeOh+JKW9OKR9fXLFnavYbsN/Mr9H8M+1ObuBgURguvVLgWrTM0/3SWezHJ7czb+ O9vUtNJy4WqdfLCvgPHeHXIjwbKqrRYViK9te53C/Dm1zc1qV6+6VUYKG/p5E0g0StU5+pEvSPRlBqc6tO+Qoowo87WbLi5z7qrjc9Lqckay24BZH1IRy6nW 3qGb2sr1enklqd8KX/GHam6uCDU5tNWTCtcSisxvuwl59WHWtKx/6qIFasIEVpwBXBDPNdoVJeRbAcy0a30rdFQhKLIDASvMB6HkWj/GrpZXHw==
X-CM-Analysis: v=2.4 cv=DJTd4DNb c=1 sm=1 tr=0 ts=691ccfa4 a=IE4TgdwzI+KwY9PEtNToqw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=-Yt9tNsTAAAA:8 a=d70CFdQeAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=GGi3-jLaLKOeRkm_cG8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=NcxpMcIZDGm-g932nG_k:22 a=cvBusfyB2V15izCimMoJ:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Krzysztof

Thanks for the new review!

On 11/18/25 17:31, Krzysztof Kozlowski wrote:
> On 18/11/2025 16:56, Michael Opdenacker wrote:
>> Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
>> which are SBCs based on the Rockchip 3566 SoC.
>>
>> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
>> and a "mask ROM" DIP switch to the "3" version.
>>
>> [1] https://tinker-board.asus.com/series/tinker-board-3.html
>> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
>>
>> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
>>
>> ---
>>
>> Changes in V3:
>>
>> - Remove this Acked-by as the binding code changed substantially:
>>    Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Above commit msg and DTS suggests they are pretty compatible with each
> other, so I don't quite get why this changed. Your changelog says
> "unexpectedly turns out to be compatible with 3 but not 3S.", but is
> this real or are you just guessing? I think you were tricked to change
> correct code into this.

I was just guessing.  The likelihood that something working on 3 doesn't 
work on 3s looks very small indeed, but I'm not the manufacturer to 
completely rule this out.
>
> Anyway, however odd this is, I don't care enough to stop this patchset, so:
>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks again!
Cheers
Michael.

-- 
Michael Opdenacker
Root Commit
Yocto Project and OpenEmbedded Training course - Learn by doing:
https://rootcommit.com/training/yocto/


