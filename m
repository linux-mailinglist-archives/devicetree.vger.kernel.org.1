Return-Path: <devicetree+bounces-263972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wC8qHU7YiWnUCQAAu9opvQ:T2
	(envelope-from <devicetree+bounces-263972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:51:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4476F10F0AE
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 13:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78B283033D32
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 11:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A35F36F427;
	Mon,  9 Feb 2026 11:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WwrKdaXG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C7436F42A;
	Mon,  9 Feb 2026 11:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770636885; cv=none; b=KHLpJwaGEFJMpLD6MBL6MuQKrUaf6s0ReqUKL8luxzh5EVraE9zEHO1oWMg7goUs02fpasHBw6DZVSjW9YC4cfB1B0GXb6jsITaM3robU5e8oR4QnpQblpx0sesoBx5EtV1Fdl/YjAsUDkIj+1iIOYS+bJLcPWHFzBqV1K8g84c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770636885; c=relaxed/simple;
	bh=4QrS573yngF8n4NJk1Mnael+xbLQy+ZP/mKMuKo0Ysc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lpgaFXstiWhnGYiZMGBu788PPENvzYGmgaqdzEgHcTneIfIzIohOXzpj/pcP9GSn2a/q9ON7t8Yd+czyYRd0JKJO/uE/ud+NbndBbusnSRQ1bAg8nAuDe27IvPLUe8S0pLRnWPZLFJhIKKfPoNS3VGksLefgh0gPP5FxaUgcics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=WwrKdaXG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770636883;
	bh=4QrS573yngF8n4NJk1Mnael+xbLQy+ZP/mKMuKo0Ysc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WwrKdaXGqV2ja4v3TQhhSZpBckr3H70ZFVczJeL8EUXvlZNRaLuI6fQTTSG0CVVHW
	 8lPe2ABwjsv3/lAwLiVYsRvnHYowhnbIKcImczfEuW9bQYiPha9vUAgel8vydBNojY
	 MOjhtHgVXRPWHDWMw7/AP1BCtVv7+7RcIXv3oUfJZ9aytAHR+KC+iqdrfneufQf492
	 2SxvFpjVn/4escftOJgZQO1kESdWPtZLsPBZjZ8PrfO60ABooWv6aPyA66ERArfUlJ
	 qRIsqMwI+pXkBgU5j2WI203EaPGl1C4gYci4Rprc9CsNcN+xs2XDR7awRE/KMEXZ9w
	 tbDXFgwbTrrfw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C60BA17E0699;
	Mon,  9 Feb 2026 12:34:42 +0100 (CET)
Message-ID: <3476c51b-9293-40f1-8b5c-9ac9802d7d97@collabora.com>
Date: Mon, 9 Feb 2026 12:34:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: mfd: syscon: Add mt8516-syscfg
To: Krzysztof Kozlowski <krzk@kernel.org>, Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, phone-devel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20260206-mt8516-syscfg-syscon-v1-0-96dcb37acdb4@lucaweiss.eu>
 <20260206-mt8516-syscfg-syscon-v1-1-96dcb37acdb4@lucaweiss.eu>
 <20260207-tricky-strange-swan-6f11b0@quoll>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260207-tricky-strange-swan-6f11b0@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263972-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[lists.sr.ht,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Queue-Id: 4476F10F0AE
X-Rspamd-Action: no action

Il 07/02/26 11:51, Krzysztof Kozlowski ha scritto:
> On Fri, Feb 06, 2026 at 11:20:48AM +0100, Luca Weiss wrote:
>> Document the Mediatek mt8516-syscfg.
> 
> Which is what? What is syscfg block?
> 

Not sure this is really a SYSCFG block.

This should be a GPIO controller range, which is split between IOCFG and EINT.
Now, the legacy drivers are declaring the EINT iospace in the pinctrl node, and
getting the GPIO controller (IOCFG) iospace from a regmap.

I don't have any board with MT8516... but well, the really-right-thing to do
would be to migrate that SoC off of the legacy driver, to the new-style one
that *properly* takes two iospaces:
"base" -> (0x10005000)
"eint" -> (0x1000b000)

Luca, if you've got such a board, could you please try to migrate this SoC out
of the improper (but working good) driver and bindings?

If not... well, I think this block is IOCFG, not SYSCFG...

Cheers,
Angelo

>>
>> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
>> ---
>>   Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
>> index e57add2bacd3..a67699f1faee 100644
>> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
>> @@ -91,6 +91,7 @@ select:
>>             - mediatek,mt8135-pctl-b-syscfg
>>             - mediatek,mt8173-pctl-a-syscfg
>>             - mediatek,mt8365-syscfg
>> +          - mediatek,mt8516-syscfg
> 
> Why aren't you placing it with all others mediatek,mt8516 syscons?
> 
> Why this is so generically called "syscfg", completely not looking like
> a real name from datasheet unlike the others in this device.
> 
> You have entire commit msg to explain that.
> 
> Best regards,
> Krzysztof
> 



