Return-Path: <devicetree+bounces-235054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D50C341D7
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 07:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0B6FA4E1227
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 06:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FEF2C3252;
	Wed,  5 Nov 2025 06:59:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF062C375E
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 06:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762325948; cv=none; b=RvR2ZjZ0Ji7rtW5X21+c2oWE6rGRn9EBhsfytjc91IXR15u4Vq+AvfJVKcbpVdBtwk6FGAzkmEF9L8ebeof31+Wxc80Hafo0pHidbm7R0KLkrtV/AiaEkiafdP6h5pVpj3LVyK0f1NZmtHYgu6VuUVIpLSohYrz1VmB/CeLCARA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762325948; c=relaxed/simple;
	bh=KoToJIrsGZK9MqOnOpGhYZ2QCbcSaqPYSC5omKn/5vk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S2aiq0s+J+zwsfItk+75O+rjxD7ug80TPg0i9OMpZPdfGdsRbYG0+26vlI736y7QXNqxQAHtJQvUw/oc/G27Du778Ps/rvS/oCtVdWXHr+pHmk/1mrPbuxrPScw3vBQoihY47DzT45iP9eCIAQllToXbj1hu3N8njQeQj+CcvSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762325833tde008904
X-QQ-Originating-IP: xq+306SU+Fe2VACtff6Epzu834VNa0vC95ixU4W+UpE=
Received: from [IPV6:240f:10b:7440:1:a426:813: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Nov 2025 14:57:08 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7931151714921745533
Message-ID: <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
Date: Wed, 5 Nov 2025 15:57:08 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nwz8Cs33/LprLWOpfuuEsBnaPmczbKwyTK0e+XuaRuLRANT0mUqp5bqS
	Zw2SFtSiHFDewC/DEke12lHxngHMxtaYWaoVK5M9blb3nELfIL/alKlz1r+Bk2yB8iVJfWC
	Eu0/uWKwVhXr8u02Dej4MSgNuoNky2J4Eqk7pOjfDxmFAE9u7lQzp8CJ5aBUqRbAzlkY3Hs
	JzJma3BKIuK3+V1uTwZJqiPuAwFmUtCP0D+5W5MWfreMUniFI2XKUivtwSPV7aLqM096VuM
	ZVrML/Gx2GuovtCqJW0Ca1CDwc+RFoaFHiKpmckx7rcsP8d4A2VqNqauMwmBnKxLW53tBcZ
	Qxmrl+oy0ImnbgLdidyCdByRfen0TF0KtBtXWMf3hgM4JhgSutbbgLXumKuF5bDBGSfFI5r
	PSHqottJ6Es+oina2O+q3PY9zCeaUOcoWPtjULOS799mHNTArlKol0NMOYuVepXZHR9Xhbg
	sueCDia0ltXCRCFISdVz9gtXJ5Y0uIdEIuiQJ/2pKsRG3rqGn4MR2BnH/OZV6cmrptP0LO8
	Y1os2S+oTnQm7D4AAk8RBfWfyoHNIc1hGcsRZITPCb7S/4EkXhk9b3S1SkaKy1ufTLR3hj0
	h7H3n/KMIClw4I9sf35SRamRTS/PgvCF2qtPtmtVp0Y9oQ5cAq5v0deDtfdDp8GZv6Ei/gQ
	EbQlKsKF3zvztTw7niyAvm0yYuDedi/1NIxg/Ll6cveeEVa5dHGGqfzkQ4tABhX0FI7Rmer
	CQjKJ6/AfJat+lV7Qx/DMU85FnsFir4oCohJJI6J2FFp8YXQUIP1Pa8B7SpneQ+NZTIKClV
	S26lf6ksYLoOC8gH7nR4mARaZdN2hL9GBRYHEnACjOR9dL3HXbMz6ywhEgkyTuLxuQkpDq6
	VtM5BivevtuJMzNOpNsGi055WwLy+FfCtCeMBma6phh/ubmDlxHZlyo574rFpKQlmAc9Z5+
	biFhgb8dLFhd6fg27ZsdH7QAN3iVg+tObGZ241L+tQzobvbdWoQwHsRIiAjGvIe4mf5g=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0

On 11/5/25 15:43, Krzysztof Kozlowski wrote:
> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>
>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> 
> Wrong DCO chain.
> 
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
> 
> NAK, you just stolen ownership of an already posted patch.

Read "Changes in v6" and patches; my patches are not the same as v5.
Your reply is totally inappropriate.

> Best regards,
> Krzysztof
> 



