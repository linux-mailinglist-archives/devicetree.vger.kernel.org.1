Return-Path: <devicetree+bounces-231863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1AAC11E45
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:50:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D8E6450040B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5174332D0DF;
	Mon, 27 Oct 2025 22:46:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast2.qq.com (smtpbguseast2.qq.com [54.204.34.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1D42F6173
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.204.34.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761605208; cv=none; b=OR4jMkYZVCT2bGdgffTTU/80jWJ97sgW+TREMJSqq3TVacYy6bv6W1pfRjbm9k+4EIzXfNDzwD3d7qVxLzl8dY2NZqMZGBCZ4vVDIbLF/hyon8hxkJk+bx8AkBH3e6v+P/7nU/MgG5nUHOq0ieBYWjE4xLAwV41NjRjsWthkGKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761605208; c=relaxed/simple;
	bh=Nu+/qCddjQN6XAQ5+kUwFuKX3LjaNGOENg3OPkZZAws=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d8i0hs1wT22T2C7mQDJLE2IUZCvb7IJ1qjaJXYTe8wPF+a/4NTzmLJzWASy/ID/JCiK8cRmM1JjwfQLZHuj9h02jAe6HwzpQgsP+DeDCFtZThiEjRxeUvX1zZCT/vmmw1Hzg3hma9hotGaTGcjwSQnh2dwnYJ5lOKxLunaLlv8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.204.34.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1761605111t4701265c
X-QQ-Originating-IP: Oyz5d5PWUPpnQKAXY0lT+7I1lZkCl8u+dLu11YNR+6c=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 06:45:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12312699638803652681
Message-ID: <39A1753DD4465571+84702d80-a0cc-46e0-8c83-1edf835c31be@radxa.com>
Date: Tue, 28 Oct 2025 07:45:06 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] dt-bindings: arm: rockchip: Add Radxa ROCK 5 ITX+
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-6-naoki@radxa.com>
 <5cdd3d92-eaed-4710-b56b-c9ce46bf7edc@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <5cdd3d92-eaed-4710-b56b-c9ce46bf7edc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NWLpwLZrMWrIOmQbxR6wNI8YzakCoe8FvjyQQ1OEbkOMzhIZjTGxM1BJ
	6Ps/6Dp+KeyYwrXHjKMTiWCORd3NiR0r6TbyBAYPNVwX/H2Lvx8AZlTlcnyQZjnmuvaq6RQ
	s5+wAfV6jDIBpO38autUvDxdEzdCh4hRxuLq+ffpMzVt2ouMF0OLuKvfgrzoM0qhGQSr6Jz
	cPl5Rbs44rAV6teIUnXy/BQfoRxCicrn6150qqLdJ6abUYdrx+9tRYcppkV/2IWzI6M0Xfx
	ldR5sIgaS84zIuZMbNKkJ3dZuQVyhy0qf5dqY3Fak+aqp43f8NgDYLACeDPCJKyRpJ7S5fy
	INjv3P/wZxm3km6X/n3p4r1vuUm2R12fBLFsRlbAwyyXzXFGF4co6OgetqVoB59ClprbTuF
	cWEEkTb4luZa4WwkRt/Oumvd/h3e6u/aHud0Gp30Rq4mPsQh2t/fKXQ4YA9Zcc7ow+dH4pD
	hRMFgsN4kEdILjQYDxe7fYjNS2BoB6GYjitl1p2dWC1+91qHxuLgnzE586BY3gTrPbZ+p/n
	WQ8EotapiBLqW+r6hq2iV2cmlir5Iyx3sSRaxoztQJK7XTwFrTzgu6I0NJc9otpiYEsptbc
	zTfW6xkGVDycXh25tCAUTciV3Zs+HevHGXdAffIz3PVJEu5cyWKd9mxD/SKCdoMi4lDr68a
	QMqlXBKRVcEKxz+suc8Gw0QndzTG3Ch6XeuriLWStv1Z3xq9uGShqIqCywQkTfMUh+iSL5g
	+aUeWdT0kbbb8Wz9bma/qp3cCwOP7LCEu0prhJz/tBaeFDgtlkxP6EHEHgqv43eKcwkrho6
	hMaeJGyub9Cs702KDCpcUTfWNYKwROD9dX+1GsjLlFFJNqQIZVTi4R132BcErn5ZTFioirW
	0YBV7g3m2koCXDZduQL4FQ2QxBW89P0OJ0Nt0pE1OQfUTC//2zbx49TvbQgk+achQJSNSd1
	pMlTNu7H16XIWLQnkNlNiTGIxgXr4BDSuIU9yWeugkzB00w==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Hi Krzysztof,

Thank you very much for your review.

On 10/28/25 04:09, Krzysztof Kozlowski wrote:
> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>> The Radxa ROCK 5 ITX+ is equivalent to the Radxa ROCK 5 ITX at the DTS
> 
> No clue what you want to say here. Same board? Different board but
> compatible (then patch is wrong)?

The ROCK 5 ITX+ is the ROCK 5 ITX rev.1.2. However, I noticed missing 
documentation regarding the ROCK 5 ITX+. Since I don't have evidence, 
I'm dropping this patch. (It's not an issue as it works without this patch.)

I found issues with this entire patch series, so I'm dropping the whole 
patch series.

Thanks.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> level. Therefore, we'll simply append the "ITX+" to the existing entry
>> for the Radxa ROCK 5 ITX.
> 
> Best regards,
> Krzysztof
> 



