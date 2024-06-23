Return-Path: <devicetree+bounces-78819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C9B9137A0
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 06:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5BB81C20EC6
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 04:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4876E14293;
	Sun, 23 Jun 2024 04:26:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgjp3.qq.com (smtpbgjp3.qq.com [54.92.39.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A044512B83
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 04:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.92.39.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719116773; cv=none; b=mspCXWdcuWoinHJoLFTwPHUoKhgGXGzBOh7CnFG1828UkoXlrHYsLJQ8eX0KDwQpXsXNSETo2iSLbwZIK2e0jnEUJUCPBOaKl7pT+ga2lkYwBXCdH4JOnNNYHTsgzcx6NqfW2Z+i5fGLuMNAxwVknwXYqf1ztK0QJVgNhA5GZK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719116773; c=relaxed/simple;
	bh=SFNoNrrQX0ddZZoo0/YaPbOqLavoe7zC0nnjD5+Uszo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LruQuYZn0BU7dEyWHEXVAsBNPVH1NiDtH5mClyxzbF2gOcnZGbNlVpyll2sxIsUVZc3BTuMgroQpq5UhP0K7q7coVhZSid9Q7T02NXmIEAqqyKE5o3cdw6liaCI4QViBjt5tkM7vVZb4yq1Po/VhI8/cXish3+q0vjQpEWqKbrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.92.39.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: bizesmtpsz5t1719116699to838b6
X-QQ-Originating-IP: /Uu0RheMLCYlnou1IU0pZbHkn/oRZL3KyTQMj5G8q9w=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 12:24:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2380804386648222078
Message-ID: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
Date: Sun, 23 Jun 2024 13:24:56 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for
 Radxa ROCK 3C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
References: <20240623023329.1044-3-naoki@radxa.com>
 <20240623040409.1756986-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240623040409.1756986-1-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1

Hi,

Thank you very much for your comment!

On 6/23/24 13:04, Chukun Pan wrote:
> Hi,
>> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> 
> I don't think a fixes tag is needed, because there is no documentation
> for this. See also (sfc part):
> https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/

I see, I'll remove fixes tag in v2.
btw, is this change reasonable(acceptable)?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>
>> Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Thanks,
> Chukun
> 

