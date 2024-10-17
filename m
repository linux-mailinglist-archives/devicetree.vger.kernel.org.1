Return-Path: <devicetree+bounces-112283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0539D9A1A94
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 08:15:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AEE2C1F25A96
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 06:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7AD4084C;
	Thu, 17 Oct 2024 06:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQLNX+wl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2E21CAA4
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 06:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729145746; cv=none; b=ao59kgOMChFuqRa16qKm2+eKgrcBeSorbKPv+QSfAEn+h/n5RDcwoGsdH4KrTjd80Ov+lwbB1/xSUtHBv38yAo0WMccrnSnO10O6cCQ+a3NXuIQ6rEHREZWj58KjlWdKR13ZAI8md1kzaz/nH4G3oZM4EE0njl2wTwjThKe6vdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729145746; c=relaxed/simple;
	bh=0OzQ4qtcxzyOeTOo2cDXhkf/mPIlvPFXlttmfahEgnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Y/2+mGhzB2Jg5sbUJxnGoGk1wEtBgaPQ94cUBXEOPbC9k2pBHr7WoLnRD/8mNZwdOkWpey/vrrhYPutUA0HMh6TGUHmL6nPXfEgUaO3lMuV6J/iPDuFssw7HbM1dHKkLQlo3uca2uMQeuTlXFs9JwEMouDyPx+kl5woWO9DlQa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQLNX+wl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E130C4CEC3;
	Thu, 17 Oct 2024 06:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729145746;
	bh=0OzQ4qtcxzyOeTOo2cDXhkf/mPIlvPFXlttmfahEgnQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=lQLNX+wlUdZiVd5z/eDbgBX0qi+dJVBEDD0fzCizHC9G8h2pLQWnl4s6t4cQgJLUi
	 ZY5UC3CE69qfwIp/g8ZoCXJkpxYlAaBMrXlSaquf4qkSjoHT0QFStnU/zV1EiKNcHH
	 e1Twlqew/Y1CUlsb9lR5uRp/EuTLDX38i7YcFvJ1rMTzQRYAQ1K1We6O9Mi/ttSqXo
	 LMwjWRJlTsE4HPdB+CLhnUuIkJiIYj6bJXwYiEcoQbTiiVuLM0MpJnCCb7Y7Lj2u16
	 6mmmxFw1p24o3hk+tqTofMJXpxjv3CPW4aruPFObU+7j4uFwJPv5X/KsgqxvvwQtxz
	 Lucx+tV0QT6fw==
Message-ID: <5ae0ee99-74b2-48db-91c2-8daced6797f5@kernel.org>
Date: Thu, 17 Oct 2024 08:15:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
To: markus.stockhausen@gmx.de, linux-phy@lists.infradead.org,
 chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
 <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org>
 <002201db1fe0$4b398dc0$e1aca940$@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <002201db1fe0$4b398dc0$e1aca940$@gmx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/10/2024 17:30, markus.stockhausen@gmx.de wrote:
> Hi Krzysztof,
> 
> with your feedback on the latest version I will take up the issues from 
> v2 once again. To be sure that I do not miss anything in upcoming v5 
> I will comment on all your feedback. 
> 
>>> ....
>>> Changes in v2:
>>> - new subject
>>> - removed patch command sequences
>>> - renamed parameter controlled-ports to realtek,controlled-ports
>>
>> Changelog goes under ---.
> 
> After reading this another 4 times now I think I understand. You mean
> "put changelog below signed-off-by". Will do with next patch.

--- is under Signed-off-by, so yes, but more importantly under ---.

> 
>>> ....
>>> diff --git 
>>> a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml 
>>> b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
>>> new file mode 100644
>>> index 000000000000..a72ac206b35f
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
>>
>> Nothing improved.
> 
> In between renamed to compatible "realtek,rtl8380m-serdes.yaml". I hope
> that fits the requested naming convention.

Yes.

> 
>>> +  The driver exposes the SerDes registers different from the hardware 
>>> + but instead gives a  consistent view and programming interface. So 
>>> + the RTL838x series has 6 ports and 4 pages, the  RTL839x has 14 
>>> + ports and 12 pages, the RTL930x has 12 ports and 64 pages and the 
>>> + RTL931x has
>>> +  14 ports and 192 pages.
>>
>> Totally messed wrapping. Please wrap your code as Linux coding style.
> 
> Was restyled in between. If this is still an issue in latest version, please advise.

It's ok, the rest as well.


Best regards,
Krzysztof


