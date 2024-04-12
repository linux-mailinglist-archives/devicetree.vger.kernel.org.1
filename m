Return-Path: <devicetree+bounces-58749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7A8A2EF5
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 15:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B8941C227D0
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 13:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A7BE5F547;
	Fri, 12 Apr 2024 13:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="aU8vYHgG"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51A95915A
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 13:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712927441; cv=none; b=G4y0AIpu9WG8o2DpBqNS+dN0e5jNrChroKI+kaIjqlA16+aPcIMYoZZazen86w6FoymPc/FVC05xlnDT+k/c1gcMcQcrdgXTHc38msPVZc55OclGysrVJGagwOKAKb+LJcZ7BX4X576bLfQooakOsqERcbmvTOBkZUCvnNwuIlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712927441; c=relaxed/simple;
	bh=wyxT5/RctjU+uE+V1WH332Q2S8UhDdKdW4AzrM67odU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UqUiEHUMBLoJTwF7w3Gof8xWBlCpWvrii7QNOFb5nIp/gY4zXxdqBiR7vibh29orWEE1ZCHdy2HbomFhJANk5oxkQjjCNaf7QL5arHuqQr/wzeYxBVS2MOceMXyOY015eEMyKsEKqD9iZ0GN0ncLNE/S1K/+Ej2v6FF7NyfwRTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=aU8vYHgG; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9C66387E50;
	Fri, 12 Apr 2024 15:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1712927432;
	bh=L29BvNWQ2m15yzojelf7O3bSVZei9DrGs8hKo8q5vZs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aU8vYHgGwyi4W7hxGk4TuWdbSDunMM8WXFFpiwcpf2OHhFxcEgVcSSaeB3VuTFdiE
	 DZTJwSaaUpdmGGShvO1YugneMhMIMx9jZ4kQ+tYOV3fVTasd/Qd+8eZzjrur6PRv3x
	 57qwXruWqJHJqTEsAVkHJvaozqkUqA5MQwidA4Jv+OrveEqWR8WmcO5mU3G4KrNWxd
	 YzfmCh4fPKK3SDdw1vkPwVoCL7kOC9RaBS2GE1+FHdbOUmKk3TyEJQb5yEn7GcjRZu
	 iFlM0uzQc/uaaEtb5Xes7IzzF3ThSgZXIlBD01MRCytqz5LsMLMZ04JbfAqRgP0UOp
	 O8Y4IYCD/IcbQ==
Message-ID: <7d35b240-abb9-4539-aacf-82a76934a13a@denx.de>
Date: Fri, 12 Apr 2024 13:48:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: extcon: ptn5150: Document the 'port' node
To: Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: cw00.choi@samsung.com, myungjoo.ham@samsung.com, robh@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20240404022943.528293-1-festevam@gmail.com>
 <714fa88b-2abd-4485-bacf-b8dada683d08@kernel.org>
 <CAOMZO5A7yiYdeOjv6BabDSNKk4Gp=n1qwJP0seFvmjYYgjvhOA@mail.gmail.com>
 <c6edf937-dd58-44f7-b620-09dd452f6921@kernel.org>
 <CAOMZO5BxdE=Ry9v__inP8+WsKU1g5c2pjqQc3EDW1FUy+3ff+w@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAOMZO5BxdE=Ry9v__inP8+WsKU1g5c2pjqQc3EDW1FUy+3ff+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 4/8/24 1:58 PM, Fabio Estevam wrote:
> On Sat, Apr 6, 2024 at 8:26 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
>>> Would it be OK if I send a v2 without the USB C connector description
>>> and address your other comments?
>>
>> No, because I think this should be the connector. Look at datasheet of
>> ptn5150 and ptn5110. Aren't both describing similar hardware?
>>
>> Instead adding some sort of hacked-hardware-representation, please
>> investigate why your previous commit broke things.
> 
> Yes, you are right.
> 
> I don't have access to any board with a PTN5150, so I can't debug it myself.

I have 5150, it is on my list of things to look into, it just might not 
be right away. I'll revisit this once I get to it.

