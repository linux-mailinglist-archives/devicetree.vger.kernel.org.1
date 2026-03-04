Return-Path: <devicetree+bounces-271282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD9DN8eoqGlOwQAAu9opvQ
	(envelope-from <devicetree+bounces-271282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 22:48:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B82920832E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 22:48:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8DDF30488C8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 21:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CB8D374756;
	Wed,  4 Mar 2026 21:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="kXijcwDr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx3.wp.pl (mx3.wp.pl [212.77.101.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4053537F1
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 21:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772660808; cv=none; b=Assx34pLyHJiTsoQPV1LDb9XQ7OVN1l0FzapYgCTyatPEQnXI4EiOE18CnMAKmJTi666pIdSxl0tDxnPDGMnPpfFJoLxMD/8dxTajSwBfK6OeOOES0Mt1+hUvmyIBiCgIhYmYtrbaFBq+QnzYbbSFzCPmWAq59yhDK1y+CjTcvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772660808; c=relaxed/simple;
	bh=223XzBN0EuYg8B6+phfCR8wOW4TgNR5NTLYQtHwsqNI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iLCR4rh+UzQAoRTo3/6BknWrQE3+CnAOHjT0Jpd5U2nLmgZiOrOfw7tpTuMwDrrW9/l93EhPKqjIu5LkGIbFOyJVHDxdFoNQNW3qv9Kor73qHyRh4ujdXOEKxaXxi9BjPnF3yHUqJy/nP9pPHsU+KW+5QK1nd6jq7R0x1X6Z8k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=kXijcwDr; arc=none smtp.client-ip=212.77.101.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 398 invoked from network); 4 Mar 2026 22:46:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1772660802; bh=NzpEAndabLXdFU83lYguNUY29Q1wC4ZmNMkxm9NkFgM=;
          h=Subject:To:Cc:From;
          b=kXijcwDr5eR+9K1AwEREg5sp8eO2Ui5fNQ/FNdpdD4KuEECE7vZahMbWoLbr221VF
           YDdZcQW2bq/cH4l4B9dnHaSQIOlXrJX6lmG86qAKolf84vsSUInILkDJiH35VvpCLC
           7Lt/fLQ7rjqjdVkIjGGYT/vj5iJODYPGx7rN82nglesI7ilXYsoPz16kYO/jdLJN8l
           l5Resb1XzI48I8Whs3PHD7z3LKLXAZZA8GLYpCrCpUEqwcehFiHjcL0Y3OnQhEFoGd
           qfFgyF47S1t4dK+qTNRhKK9z4bWOyKJRcVO8WrhYn5c0uSUqbCVDVsne9U1yV0dQRy
           pEqTVWAKGk8MA==
Received: from 83.24.116.171.ipv4.supernova.orange.pl (HELO [192.168.3.246]) (olek2@wp.pl@[83.24.116.171])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <conor@kernel.org>; 4 Mar 2026 22:46:42 +0100
Message-ID: <f9b266d7-f545-4088-b6c5-a0cc8676d60c@wp.pl>
Date: Wed, 4 Mar 2026 22:46:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: crypto: eip93: add clock gate and reset
 line
To: Conor Dooley <conor@kernel.org>
Cc: ansuelsmth@gmail.com, herbert@gondor.apana.org.au, davem@davemloft.net,
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 lorenzo@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260303193923.85242-1-olek2@wp.pl>
 <20260304-hardship-abreast-7a2d58cbe446@spud>
Content-Language: en-US
From: Aleksander Jan Bajkowski <olek2@wp.pl>
In-Reply-To: <20260304-hardship-abreast-7a2d58cbe446@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-WP-MailID: 99f604febecd4a2e8ba3ea7d20496df9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000009 [oTqX]                               
X-Rspamd-Queue-Id: 8B82920832E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[wp.pl,none];
	R_DKIM_ALLOW(-0.20)[wp.pl:s=20241105];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271282-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[wp.pl];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[wp.pl:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olek2@wp.pl,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,gondor.apana.org.au,davemloft.net,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wp.pl:dkim,wp.pl:email,wp.pl:mid,1e004000:email]
X-Rspamd-Action: no action

Hi Conor,

On 3/4/26 20:08, Conor Dooley wrote:
> On Tue, Mar 03, 2026 at 08:39:17PM +0100, Aleksander Jan Bajkowski wrote:
>> Add the clock gate and reset line, both of which are available
>> on the Airoha AN7581. Both properties are optional.
> Why are they optional?

No reason. In theory, a hardware designer could connect the reset
to a fixed input signal. In practice, all SoCs on the market have
a built-in reset and clock controller. I can mark them as required
in the next revision.

>> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
>> ---
>>   .../crypto/inside-secure,safexcel-eip93.yaml         | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> index 997bf9717f9e..058454b679b4 100644
>> --- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> @@ -48,6 +48,12 @@ properties:
>>     interrupts:
>>       maxItems: 1
>>   
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -57,11 +63,17 @@ additionalProperties: false
>>   
>>   examples:
>>     - |
>> +    #include <dt-bindings/clock/en7523-clk.h>
>>       #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/reset/airoha,en7581-reset.h>
>>   
>>       crypto@1e004000 {
>>         compatible = "airoha,en7581-eip93", "inside-secure,safexcel-eip93ies";
>>         reg = <0x1fb70000 0x1000>;
>>   
>> +      clocks = <&scuclk EN7523_CLK_CRYPTO>;
>> +
>>         interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +      resets = <&scuclk EN7581_CRYPTO_RST>;
>>       };
>> -- 
>> 2.47.3
>>
Best regards,
Aleksander



