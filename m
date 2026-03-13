Return-Path: <devicetree+bounces-275510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL1VADxZtGklmQAAu9opvQ
	(envelope-from <devicetree+bounces-275510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:36:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54954288CCF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5D98312C48A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794973DD526;
	Fri, 13 Mar 2026 18:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuY8jiXS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550673644C8;
	Fri, 13 Mar 2026 18:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773426985; cv=none; b=c9558DCUZ8EZPHfk7bI3APqJusRKs9GoHSM0gFeH8vpUZDLpufy7nY1rtcawARKV6Z452unF+cKqgK6Eyc6HlwOD0Z/be806a/3SO90RzFgkaugo6Z1DyY7NUWgd9PFmi6WsrpEr9J+h5R82DTb+0mSqOhFKccCR7kKhrPbmlZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773426985; c=relaxed/simple;
	bh=o0v/ZnAf66UD4OY9xdCau0smA1KApQNZewsYj55Ha5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AWpg3jGqSVPxAPGZSGtT4Xrx0k5EojnZW2yeqNHd1gEjtjdSyBaQLhq3JKMAoWmMHIeH3DdXnXmmGaTczgGN3ZjqlrplOpHclaoIXNreYNjo2iB+tdBuvcct1mBToEZJ/BiL/9js7u2R38krDO5lhm1/WDr8q94l4ZOCnOub//Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuY8jiXS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A140BC19424;
	Fri, 13 Mar 2026 18:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773426985;
	bh=o0v/ZnAf66UD4OY9xdCau0smA1KApQNZewsYj55Ha5g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OuY8jiXSIDgbrXg+bgoCvPZi6MkDNdjC+Zh9TeRrn/FlQMFfAWp3c+cL4kPkG0JOU
	 iwqdoY76aPwgRxJNzz8AqWK/GwkpuSx7/Rz3+Cet/uVhwGLh05K4asltW6eyKbw6vE
	 UHYwnSv+Ad2C2eOp7AMIxDkEt/ns2snf5qNB1yAP2LDZdbI5Y22l0ZeZRcYSZpaGgO
	 ThqWGRUvEeEB38njsE3MfKFecbDbDhGLa5MgWq49tE/bfg/A0GWegyGB2q0xPBMvS8
	 GAnptatQBlI6altDHSg1TWXQAHZq1O8M/45mCqLwn8v9L0syx107qmgfLZogKCpA23
	 DkApxZiYPbdIw==
Message-ID: <d4886596-a812-439d-920a-c415660cae4c@kernel.org>
Date: Fri, 13 Mar 2026 19:36:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] phy: airoha: Add support for Airoha AN7581 USB PHY
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-5-ansuelsmth@gmail.com>
 <20260307-otter-of-imminent-merriment-d3475d@quoll>
 <69abffe6.050a0220.18164c.58d6@mx.google.com>
 <52123051-0d2d-42b2-b677-99a5de0f2c4e@kernel.org>
 <69ac04a6.5d0a0220.2969f9.9d81@mx.google.com>
 <abbf81f7-556b-4fb0-9fb7-41f4c730f1d6@kernel.org>
 <69ac72dd.df0a0220.a3fa6.8d4f@mx.google.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <69ac72dd.df0a0220.a3fa6.8d4f@mx.google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275510-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 54954288CCF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 07/03/2026 19:47, Christian Marangi wrote:
> On Sat, Mar 07, 2026 at 05:38:25PM +0100, Krzysztof Kozlowski wrote:
>> On 07/03/2026 11:57, Christian Marangi wrote:
>>> On Sat, Mar 07, 2026 at 11:40:48AM +0100, Krzysztof Kozlowski wrote:
>>>> On 07/03/2026 11:37, Christian Marangi wrote:
>>>>>>> +
>>>>>>> +		if (phy_type == PHY_TYPE_USB3) {
>>>>>>> +			ret = of_property_read_u32(dev->of_node, "airoha,usb3-serdes",
>>>>>>> +						   &priv->serdes_port);
>>>>>>> +			if (ret)
>>>>>>> +				return dev_err_probe(dev, ret, "missing serdes line for USB 3.0\n");
>>>>>>> +
>>>>>>> +			priv->scu = syscon_regmap_lookup_by_compatible("airoha,en7581-scu");
>>>>>>
>>>>>> Nope, you need phandle to express proper device links.
>>>>>>
>>>>>> Don't sprinkle compatible lookups for new code which does not need to
>>>>>> keep things backwards compatible. How do you manage device links
>>>>>> without phandle? How do you manage device probe ordering?
>>>>>>
>>>>>
>>>>> Hi,
>>>>>
>>>>> the phandle to SCU was present in old implementation but later dropped as it was
>>>>> said that it wouldn't describe the HW.
>>>>
>>>>
>>>> I went through v3 review and I did not find such said arguments. Can you
>>>> point me to it?
>>>>
>>>>
>>>
>>> Here was v2 [0] that was clock + USB PHY. (there were clock stuff as the SCU
>>> implementation was different) The link wasn't added in the changelog as it's
>>> quite different than this current series.
>>>
>>> In patch 7 Rob pointed out that serdes-port + scu was a bit unusual.
>>>
>>> Then the implementation changed in favor of a more simple one where it's the PHY
>>> that configure everything and in this new version the usage of the SCU phandle
>>> is really to just get the regmap and modify the single bit to select the PHY
>>> path/mode for USB 3.0. (it's mainly the reason the SCU is referenced directly
>>> with a compatible instead of a phandle, in the previous implementation we used a
>>> function exposed by the SCU SSR, while in this it's just a regmap that can
>>> PROBE_DEFER)
>>>
>>> Rob suggested an additional layer (a PHY) to handle this but I don't feel it
>>> would actually describe the HW this way as that bit doesn't modify another PHY
>>> but it just toggle the mode to the related USB 3.0 PHY.
>>>
>>> This is really another case of not-so-organized register mapping on the SoC.
>>>
>>> [0] https://lore.kernel.org/all/20250320130054.4804-1-ansuelsmth@gmail.com/
>>
>>
>> That's the cover letter. I guess you did not implement Rob's feedback,
>> either. This is either phy (for phy) as Rob asked or scu phandle.
>> Removing scu phandle and not implementing phy is not what Rob proposed.
>>
> 
> It was to give the full series. The specific comment from Rob was [0].
> 
> SCU phandle is going back to the old dual binding that Rob was against but PHY
> for PHY would not be descriptive of the HW.
> 
> I can do that but would it be correct?

You cannot avoid proper DT structure and DT review by re-implementing
the DT properties by such lookups.

Best regards,
Krzysztof

