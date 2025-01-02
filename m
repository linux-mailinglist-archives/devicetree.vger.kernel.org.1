Return-Path: <devicetree+bounces-135110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE39D9FFC8B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0E4C3A23B8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9B613C8FF;
	Thu,  2 Jan 2025 17:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="viMptFaQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C761F5FD
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735837656; cv=none; b=GzKDiGu2ZJhDUDxlzw0Nx9ihIRr8V0MDrDIDd5Ti+B4NPgmHlPhaljfTjsCvrE2dXnKSJqA10sBCvyKDvQN9gLDr0niBS1zB82y6QrG3AuIBeQpJ5Rvro/c32uF8O86w2nWhGD4/n6/4yx0Rqz7SiC7+8WM7POAQ8Uzxg2whvRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735837656; c=relaxed/simple;
	bh=A0kk0hRl9c2bhzB6DjZowALilC7mhbUnkx7pIz+/Og4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tg6UpX45k7lUDzCOED2taSTiydcDjOWfDCrJGvkLigyTEfjam2av1SvISrXocYw+waWDBJ9ej6wz0ldO+vgK0ityAFZUW3qDCNT5aUgkqUhqLzSeYjly0EGZQebJ+wTF7+i4Cet85/YTv1WtRo9RrPhbBGsLqJJgBhemLunfF5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=viMptFaQ; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1735837653;
 bh=dRM7LIJF9jh6lqB+/i8HwabrDShaWCLC/iAJxa/ormM=;
 b=viMptFaQviw3VC7E4rUgfCaA5t9OZncdzdGKuK7ydaUvLgR8zeJ5NG2esMy2ug48r2OT9qPQ4
 zf+/AnvkGXZc2OG61OaSzIti15yFheusX1sqEiBEqddd12iP0cyTfl8kyqaxcMneI65bFF342Lb
 rnqWKSf5HY+95rIRiKX7a+3Z7g3ZNVVYxaSkA1r3ey/cFz29egU2hZQOR1X9gY48XACAAvACTOB
 mnllW0ngVWkgdBZ/zA35bLoNBGtikC1WBeB+93p3X9DuXI9/cmIXFX6CH750EIFMQmC+ETb4kM1
 DEqQT4oOip6ML29ZiooM/FYkLqoA8CicbMEZ/PFOrxog==
X-ForwardEmail-Version: 0.4.40
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
X-Original-To: liujianfeng1994@gmail.com, vkoul@kernel.org,
 amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 heiko@sntech.de, kishon@kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, p.zabel@pengutronix.de,
 robh@kernel.org, yifeng.zhao@rock-chips.com
Received: from [192.168.2.234] ([78.69.151.207]
 78-69-151-207-no600.tbcn.telia.com) by smtp.forwardemail.net (Forward
 Email) with ESMTPSA (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384); Thu,
 02 Jan 2025 16:57:19 +0000
Message-ID: <688c8fb6-68f7-45f1-98fc-8b3252b3ecbf@kwiboo.se>
Date: Thu, 2 Jan 2025 17:57:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: rk3568: add
 reset-names for combphy
To: Jianfeng Liu <liujianfeng1994@gmail.com>, vkoul@kernel.org
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 heiko@sntech.de, kishon@kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, p.zabel@pengutronix.de, robh@kernel.org,
 yifeng.zhao@rock-chips.com
References: <173367712869.1031947.3262464465649332012.b4-ty@kernel.org>
 <20250102151601.2615178-1-liujianfeng1994@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250102151601.2615178-1-liujianfeng1994@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6776c574758981c18e6f13ec

On 2025-01-02 16:16, Jianfeng Liu wrote:
> Hi,
> 
> On Sun, 08 Dec 2024 22:28:48 +0530, Vinod Koul wrote:
>> Applied, thanks!
>>
>> [2/2] phy: rockchip: naneng-combphy: fix phy reset
>>      commit: fbcbffbac994aca1264e3c14da96ac9bfd90466e
> 
> The other patch in this series:
> arm64: dts: rockchip: rk3568: add reset-names for combphy
> is missing in v6.13-rc5, which will break pcie2 of rk3568 because the phy
> driver has changed.

Yes, the commit fbcbffbac994 ("phy: rockchip: naneng-combphy: fix phy
reset") breaks backward compatibility with existing DTs and this commit
should probably be reverted or driver need a fix that fall back to old
behavior in case DT is missing reset-names.

Regards,
Jonas

> 
> Best regards,
> Jianfeng
> 


