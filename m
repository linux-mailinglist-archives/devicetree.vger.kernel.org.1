Return-Path: <devicetree+bounces-270915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOjkGTTsp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:24:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDA41FC8B8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F0F4303408B
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4041136683B;
	Wed,  4 Mar 2026 08:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iz0eGMMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43BF3859FD
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612640; cv=none; b=tNem4gHt8b1m2N6UFiUgdpYIOALBmdKTEKnKBXZhlCJ2FEDzUehpC5zAbdrQhEgdKgtIypcbsH24ZFu+bv2jPKgJvPXjxb9OB7QwipX1VYOy+qvYZdkhjmOMuI+uT5er+G0+hb1rfhZ48pPrAqEVJL4ly1Bb4huwT3dCajfTGdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612640; c=relaxed/simple;
	bh=lkBG6SiI7e1OOzwc0SW+0ME52IePCbj8kWW3kPp7lbQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cKd5/LUbx3S6JjwGS33G0zPYxW67kiUl1z+9/7jaHKIubZfNAaZ4euqGK/4WoT89JLAYVLRP+6VVKbCjTqNOih8XleT3WseBm4HKj3DRt0kCvctXhfrAFWJ26ZNGKtKpesNeoPN8hXyt+DMiv22b0ALHTjIIn6zAroe/QOtesy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iz0eGMMt; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-899a5db525cso60391496d6.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772612638; x=1773217438; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1VF2q2iw+ZiKGJt45rPpIgu/gs74haGCfE/ZxGBpnps=;
        b=iz0eGMMtDoOAtD0X/KMtJKux4XMLR/G9PnbgACGfWGfKkqQ5wWXWv0QJljkFWUTSD/
         SsaYJQ81cAQwERGhTVto8iDCIsXD2rr7Zgl+1Idx7JMGL8IsOwFZVjQ5PKpXYgw4+y/F
         eW+8u1wLwYHQQWINdZ+0CmFkEfGigYorqRM5TEhU0+LVCzNmX24Y3vuRaCtBWhWFGZZr
         n/dRRCv3toYzMNnMXdib8fyUG01fTINi5WdyqbxRn17e/CBEPumIZEhqWJ1dFE3DjYJ3
         dKF2SlJyygwl59OSTUnp0GbsdlXPFHPLtygXXX6bQMkmhGllpMmLBM70F00kqJatPWOT
         mLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612638; x=1773217438;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1VF2q2iw+ZiKGJt45rPpIgu/gs74haGCfE/ZxGBpnps=;
        b=tCrpMFfVCBE1kWJy00x8r1mv6B/7v2lauqh6GZHf1HNv2wAdHl5Rg0hA1c6tTnh5hH
         fztwZopzGnMRq+zF385XFlpwvXpDJZGzqhWoK/roUQ3xutJtwt1oxILqaDX5GZalC+Gv
         z4TTDACrhTG7cRMMEcfTgoiuKlUI/oUIVAJekhW7QXOhIdJ7hlgP9rH5TV37gG4Djo51
         AO4pkDh0XMRflDdpJR9xMyMPGvY22HtNda6BthxGmXO3vVZqyiRgec0AyvN6dfqmHV0a
         cpwCMkVlGAOlEf6IbYrOY1aXSlQs3beJMToU56MLx3wm2f4Fpeb66LvWhFPdVWLARHyj
         w6Gw==
X-Gm-Message-State: AOJu0Yys6IZwQiyINGSoGnGw8/UQcBjDoVCPM/y6tJkaN1PYkp6lL+14
	2mbK8h/HPCu/HCiusd3X9w1pzZLnTgUN8d6LXZe0ZC8zWsa4N8WHjYwV
X-Gm-Gg: ATEYQzzZTNqvdCN2hNHoxPLbknn5TpQXrpTjssOPN7ywvqVsA1rWwmLYDYBkNaCg1PT
	O8/PtcMWvoRxWdLlSbbpAswprXqvTZwTa9dML/eoYhUgnvLXJChI9E/74l8EsCXC98iWZy+Al6l
	AUIJJ/9N/bNYGgCYv4aEzCNtI4gr9VOsoI0axEdKU6g29kD/mIYrnsBobXvgIMltRmLIYP83Eai
	OCNAgZmC8gyxKkrm/4BzMnynvsIVDeCmdNRCWVhgzrEbVqMiAk8kmw+Ex0Vq+me3XHleIPo4qFe
	m/zNWlXHiSEizmKrgOkRFjvbszRzCsS67gs6j5vaHmT9MOREQhfPi8tsjoZzUAQhkv9de5OoRUo
	lFCsXvA13SHZ1TRLa8YAvc29iXOUWX4i7mTwgKj3QBw6TezWFW7YJlZO7AUzIkdtZIWSf56kn1T
	LyEDOJlpKNTT6qtbtezzfYmftJ
X-Received: by 2002:a05:6214:252f:b0:899:bc85:7b68 with SMTP id 6a1803df08f44-89a199a8921mr12167536d6.16.1772612637696;
        Wed, 04 Mar 2026 00:23:57 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a0fbdbcb0sm31329776d6.45.2026.03.04.00.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:23:57 -0800 (PST)
Message-ID: <3aba626d-7b5b-4d5b-9c91-07f6a2d7c244@gmail.com>
Date: Wed, 4 Mar 2026 00:22:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 1/3] dt-bindings: ethernet: eswin: add clock
 sampling control
To: Krzysztof Kozlowski <krzk@kernel.org>, lizhi2@eswincomputing.com
Cc: devicetree@vger.kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
 rmk+kernel@armlinux.org.uk, wens@kernel.org, pjw@kernel.org,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 ningyu@eswincomputing.com, linmin@eswincomputing.com,
 pinkesh.vaghela@einfochips.com, pritesh.patel@einfochips.com,
 weishangjuan@eswincomputing.com
References: <20260303061525.846-1-lizhi2@eswincomputing.com>
 <20260303061637.872-1-lizhi2@eswincomputing.com>
 <20260304-hot-sponge-of-emphasis-6864db@quoll>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260304-hot-sponge-of-emphasis-6864db@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 0EDA41FC8B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270915-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,armlinux.org.uk,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lists.infradead.org,st-md-mailman.stormreply.com,eswincomputing.com,einfochips.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[29];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,eswincomputing.com:email]
X-Rspamd-Action: no action

Hi Krzysztof,

On 3/3/26 23:44, Krzysztof Kozlowski wrote:
> On Tue, Mar 03, 2026 at 02:16:37PM +0800, lizhi2@eswincomputing.com wrote:
>> From: Zhi Li <lizhi2@eswincomputing.com>
>>
>> The second Ethernet controller (eth1) on the EIC7700 SoC may experience
>> RX data sampling issues at high speed due to EIC7700-specific receive
>> clock to data skew at the MAC input.
>>
>> On the EIC7700 SoC, the second Ethernet controller (eth1) requires
>> inversion of the internal RGMII receive clock in order to meet RX data
>> sampling timing at high speed.
>>
>> Describe this SoC-specific difference by introducing a distinct compatible
>> string for MAC instances that require internal clock inversion, allowing the
>> driver to select the appropriate configuration without relying on per-board
>> vendor-specific properties.
> 
> Pointless description/paragrapgh. Your explanation why adding a
> compatible is "because I need compatible". That's completely redundant.
> 
> Explain what is special about this MAC instance, what's different in its
> programming model or other characteristics that you claim it is a
> different device.
> 

I think ESWIN should improve the description/paragraph and properly doc
the timing issues discussed here:
https://lore.kernel.org/lkml/32a1f814.2c79.19bfe173225.Coremail.linmin@eswincomputing.com/

I do feel the need of using a different compatible, though. I think we
discussed in depth in that thread (link above), and advice from Andrew

https://lore.kernel.org/lkml/59cec617-0189-4dc3-bc3f-6346155a62ae@lunn.ch/

https://lore.kernel.org/lkml/bd202cfa-d6eb-4d0e-982d-b49795dd25f7@lunn.ch/

is to basically apply different parameters to MAC based on eth0/eth1. The
compatible string approach is a clean solution to achieve that. The reason
being that for eth1, there's no way to meet the standard without clock
inversion, given the vast internal clock skew. I don't think claiming it
as a different device than eth0 is that far-fetched. Hence, no need for an
additional property and the driver code to check for that.

>>
>> The rx-internal-delay-ps and tx-internal-delay-ps properties now use
>> minimum and maximum constraints to reflect the actual hardware delay
>> range (0-2540 ps) applied in 20 ps steps. This relaxes the binding
>> validation compared to the previous enum-based definition and avoids
>> regressions for existing DTBs while keeping the same hardware limits.
>>
>> Treat the RX/TX internal delay properties as optional, board-specific
>> tuning knobs and remove them from the example to avoid encouraging
>> their use.
>>
>> In addition, the binding now includes additional background information
>> about the HSP CSR registers accessed by the MAC. The TXD and RXD delay
>> control registers are included so the driver can explicitly clear any
>> residual configuration left by the bootloader. Background reference for
>> the High-Speed Subsystem and HSP CSR block is available in Chapter 10
>> ("High-Speed Interface") of the EIC7700X SoC Technical Reference Manual,
>> Part 4 (EIC7700X_SoC_Technical_Reference_Manual_Part4.pdf):
>> https://github.com/eswincomputing/EIC7700X-SoC-Technical-Reference-Manual/releases
>>
>> There are currently no in-tree users of the EIC7700 Ethernet driver, so
>> these changes are safe.
>>
>> Fixes: 888bd0eca93c ("dt-bindings: ethernet: eswin: Document for EIC7700 SoC")
>> Signed-off-by: Zhi Li <lizhi2@eswincomputing.com>
>> ---
>>   .../bindings/net/eswin,eic7700-eth.yaml       | 75 +++++++++++++++----
>>   1 file changed, 59 insertions(+), 16 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
>> index 91e8cd1db67b..22d1cecea07e 100644
>> --- a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
>> +++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
>> @@ -20,6 +20,7 @@ select:
>>         contains:
>>           enum:
>>             - eswin,eic7700-qos-eth
>> +          - eswin,eic7700-qos-eth-clk-inversion
>>     required:
>>       - compatible
>>   
>> @@ -28,9 +29,13 @@ allOf:
>>   
>>   properties:
>>     compatible:
>> -    items:
>> -      - const: eswin,eic7700-qos-eth
>> -      - const: snps,dwmac-5.20
>> +    oneOf:
>> +      - items:
>> +          - const: eswin,eic7700-qos-eth
>> +          - const: snps,dwmac-5.20
>> +      - items:
>> +          - const: eswin,eic7700-qos-eth-clk-inversion
> 
> So just enum for both entries?
> 
> Anyway, that's the same device, so you do not get two compatibles. This
> should be a property. Which property not sure, maybe all this was
> discussed already.
> 
> 
>> +          - const: snps,dwmac-5.20
>>   
>>     reg:
>>       maxItems: 1
>> @@ -63,16 +68,29 @@ properties:
>>         - const: stmmaceth
>>   
>>     rx-internal-delay-ps:
>> -    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
>> +    minimum: 0
>> +    maximum: 2540
>> +    multipleOf: 20
>>   
>>     tx-internal-delay-ps:
>> -    enum: [0, 200, 600, 1200, 1600, 1800, 2000, 2200, 2400]
>> +    minimum: 0
>> +    maximum: 2540
>> +    multipleOf: 20
>>   
>>     eswin,hsp-sp-csr:
>>       description:
>>         HSP CSR is to control and get status of different high-speed peripherals
>>         (such as Ethernet, USB, SATA, etc.) via register, which can tune
>>         board-level's parameters of PHY, etc.
>> +
>> +      Additional background information about the High-Speed Subsystem
>> +      and the HSP CSR block is available in Chapter 10 ("High-Speed Interface")
>> +      of the EIC7700X SoC Technical Reference Manual, Part 4
>> +      (EIC7700X_SoC_Technical_Reference_Manual_Part4.pdf). The manual is
>> +      publicly available at
>> +      https://github.com/eswincomputing/EIC7700X-SoC-Technical-Reference-Manual/releases
>> +
>> +      This reference is provided for background information only.
>>       $ref: /schemas/types.yaml#/definitions/phandle-array
>>       items:
>>         - items:
>> @@ -81,7 +99,9 @@ properties:
>>                            or external clock selection
>>             - description: Offset of AXI clock controller Low-Power request
>>                            register
>> +          - description: Offset of register controlling TXD delay
>>             - description: Offset of register controlling TX/RX clock delay
>> +          - description: Offset of register controlling RXD delay
> 
> As pointed out, you cannot change the order and there is no reason for
> doing this explained in commit msg.
> 
> Best regards,
> Krzysztof
> 

Bo


