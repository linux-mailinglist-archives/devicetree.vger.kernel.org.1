Return-Path: <devicetree+bounces-253592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CF0D0EFCF
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 14:37:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4C1B30010E2
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 13:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D70533A9D0;
	Sun, 11 Jan 2026 13:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="CUf/UaTe"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67D9322B89
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 13:37:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768138622; cv=none; b=orcLhmmUCzFij33Azy5wVJV3Pjtv61E/FmQmp6uCOj3dpM+6iGTCudTFXEAPyrF9lPBOoYXellwovXC4h4KEr3BLCAPckH+PrC74KztoQYSDIvfv6IRG1ZU9fXMqbQdVloLhOdAYIJpwXmyXnz3jDtrKC6XyZhbOa5iBu2fo6wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768138622; c=relaxed/simple;
	bh=L4LzBSCQkIyCpywcTE76ousRl3nswdZ42B2G/moD+ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a40XIPT9W1JNMxolMVH9BoVTxxTS2NRCTzQgSd58QsoyEeBKxsW313S+Ms1z+T3dlS4ICTM/f83rsgMwGbOtpMEtiz4ns+l8UzTqzLMs5/R23TlyF2DFeVGvt4trnFmQKJ1zKcgjd/6u+trmFFiabDQjrqImfWr8z64IB7ZhqHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=CUf/UaTe; arc=none smtp.client-ip=212.77.101.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 13958 invoked from network); 11 Jan 2026 14:36:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1768138613; bh=GyrKJz6PMKwk5qm2HTkDflwTnAv1RI+K3notTIpruY0=;
          h=Subject:To:Cc:From;
          b=CUf/UaTedZOach20SFWH5Rs2F6kFXyWzcq6gxSvgPcDtMvWxO495Z5hRJRNxdQDsB
           rI56nFeVub6DBMVw6Eg1bw4iOvFMjCLzVunmpqYzebB4ZsqjY3e6jkFCw3RvT+L8Tp
           GitqJ0go56cUnEXOh4lUB0tCbFdKBtSgB5VMWXXZa93VFzfX+NwmTgrJxSqThgvXp4
           J7EOBF1vNH7J4I0P91c9Gto3rh1RBeX70lV6YsDK5T6YqyqdhOW13s/en5H2no+QE+
           PYREkxQzh+hBW97oqXHiAM/3HGbpWKXGhUBgAo5V1F/GfM60WQxlOT9o6Q8Ir4X0+v
           rN8y7m9wMVJtQ==
Received: from 83.5.241.112.ipv4.supernova.orange.pl (HELO [192.168.3.246]) (olek2@wp.pl@[83.5.241.112])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with TLS_AES_256_GCM_SHA384 encrypted SMTP
          for <krzk@kernel.org>; 11 Jan 2026 14:36:53 +0100
Message-ID: <d7ab5be3-8502-407c-baf6-714ac3a89cb7@wp.pl>
Date: Sun, 11 Jan 2026 14:36:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: crypto: eip93: add clock gate and
 reset line
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: benjamin.larsson@genexis.eu, chester.a.unal@arinc9.com,
 davem@davemloft.net, angelogioacchino.delregno@collabora.com,
 ansuelsmth@gmail.com, conor+dt@kernel.org, herbert@gondor.apana.org.au,
 krzk+dt@kernel.org, matthias.bgg@gmail.com, robh@kernel.org,
 sergio.paracuellos@gmail.com, tsbogend@alpha.franken.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org
References: <20260102155341.3682013-1-olek2@wp.pl>
 <20260103-sweet-micro-manul-12eaee@quoll>
Content-Language: en-US
From: Aleksander Jan Bajkowski <olek2@wp.pl>
In-Reply-To: <20260103-sweet-micro-manul-12eaee@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-WP-MailID: 2fd5ca6ba679e5b337689a6786cb36fe
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000008 [4Zuy]                               

Hi Krzysztof,

On 1/3/26 15:11, Krzysztof Kozlowski wrote:
> On Fri, Jan 02, 2026 at 04:47:33PM +0100, Aleksander Jan Bajkowski wrote:
>> Add the clock gate and reset line, both of which are available
>> on the Airoha AN7581.
>>
>> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
>> ---
>> v3:
>> - introduce patch
>> ---
>>   .../crypto/inside-secure,safexcel-eip93.yaml       | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> index 997bf9717f9e..c6c99c08dc68 100644
>> --- a/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> +++ b/Documentation/devicetree/bindings/crypto/inside-secure,safexcel-eip93.yaml
>> @@ -48,20 +48,34 @@ properties:
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
>>     - interrupts
>> +  - clocks
>> +  - resets
> That's ABI break without explanation in the commit msg.
>
I think that the reset line and clock gate are available on all SoCs
with this IP Core. Should the reset line and clock gate only be
required for newly added SoCs, and remain optional for existing ones?

Best regards,
Aleksander


