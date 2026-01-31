Return-Path: <devicetree+bounces-261473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIpqDTdefmkjXwIAu9opvQ
	(envelope-from <devicetree+bounces-261473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:55:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A2C3C04
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61036301701D
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 19:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C9D36C0BC;
	Sat, 31 Jan 2026 19:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rmw5E5Of"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2214C36C0A6
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 19:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769889330; cv=none; b=jKfX+sEvkjLQdQWpTJei1MBKaZ2FIW04at9X0b9oW+jwm0GxtFx5yTmxX2Jd70M1cDwc1fc74QPIHBJ7ET43N1VTrjOtxDN2Ny34vwQGIjiVcYBsCOHqrEdR7kf7AYppBdB2wyqOEXC0LW//VZPXoXC1jJzeAPjbRCCtitm3PjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769889330; c=relaxed/simple;
	bh=t24mKOVNxxmWMKS1t9FekxYrZBCi//zHUHXDdl8G0I4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=ToBKrWDRQe/npEKfoddc4GnGHIlAc/iiNiw9mbYSjhqcrc3fDngkEzFW0kcdrE2TNnlxmeR0Qj4Lr28hJ1YYh2yOhbXETeeg/Ehq9fTzI6NCSVooiFusXj25HyccNQ7/5LJG4zkYdimBN4l/pv3KqFPSNzmdqbd6gh+00e0QesY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rmw5E5Of; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-6611cab8ca3so1964105eaf.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 11:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769889327; x=1770494127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H+VFD3n9uqCeuR5oa2hiu8NEEffv6cHN447B+eVXKTM=;
        b=rmw5E5OfI+f9amD6CdjrhJUpCNx27t7LETFfGMwZRE2lrMnm+9y2OQjwmxPrPW3man
         V+6nlU0IVqBn+5Th+W5/mcOEgfotdTkizpd2otLJePaCosTzUajbyhOjOr03lyvDqS1L
         0vGmSifl5cJkBqZKsOoRj7Ni7bioYTOOF+lhA0tesl//JzQduo+CUjDj4rbSKrgb7CpN
         NG8VoLCp2bpkgTW7tN+JFY0GA8HV7zzcDFzp/LKq/NFzgTcHbwav50ItqfJBXsGFtsXk
         oHeBuJ63edbLWvskebiTUHsHfVdTs+Wz7SVoouNmPdwCAO0HOuudFCchDS1w8pa1xZTF
         lefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769889327; x=1770494127;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H+VFD3n9uqCeuR5oa2hiu8NEEffv6cHN447B+eVXKTM=;
        b=iw2rfv1Qjf2ZstDSxOe3dfnStS3482RL1G6XyhdOQYwJkIJMTDWJW2SgivC9cQ67Ln
         EGbww93xFdj6jCdy/nLQBoT4HZLxf0UroefBVgM6ERoFStDVXDm/F+YtYodAGRIbKO/K
         Zc77HBBDe4a85cFsZkpQ/JZVlzpDWGUYhupdG/WcbdfDTiNS3lcV1fdTnmym8bWahX5C
         mJ8LfTcaTtkIUdBtkcCXjak7MPei5V3PzFShfl0icoFN0PNnkYbgw50rgTBBhn9i4YKI
         wXIXH3uW6DVON4ltXAuXtNziG+tJZkUqtgbHjV8uqBUf78MA1TcZYNCgQtmgURoMhK+U
         bYFg==
X-Forwarded-Encrypted: i=1; AJvYcCX1M2e36YEZIh8xvhUGbKW2yFklGhjPUqkQ3XZ/l9XhYcEajDKyF2epMNTbI4vDidccKRpi13XBsNQy@vger.kernel.org
X-Gm-Message-State: AOJu0YwwhDfEP5JHqeesCFLgx35sEGMDqZWNDPve2L/1DCzUVNdRCxKt
	VMF3VnMzG60AbiyQ154OPqMIUZZTKiHlpOtGHWoBft1u8Yh8qTX+DKo3vBiC95xK6AY=
X-Gm-Gg: AZuq6aKiYuncyU5FawO+ILH1wEj0gBo/5d81o8Irilx6ssA4W70g2cNIL5mnGRy1Yzz
	jY0km0lFgsVO9KIv4Rx5WL2StKJlvSFAYOWOd+PJjz76w9Fr520l65/G1YKlXlk8fE1V8MSlOlp
	fL9GCyW4VM7v/xX8OOAzEbs7iQqGvHZK9KFQio3UkmgXke+e4Pja7eCw3wcOtgFl9D+nnP6805P
	RVxdDLxJpInEjiZvkCONwP18CkIUZIwQQCbsLR6SKaQLFWH/QwhAjAbiuNHRLTrfjm/pxvfM0Qa
	Ov001O5jnux7lf1xygG/SH6hTsAFTs4JIY88vzt903ZLl5xrw1ld2ByMzyZq5rlnqiQOHd//vnF
	8wDMPNrGqFNj0d7qKBAGFNjidHjfYZf932Kl86immD3xH/WXAKfZkdWBI8V33+9aiYtMuF6xXwO
	X9HCvuDYE1gwiJb5j8NMeNFGx+Py3c5KQ4Ld3C3srPUg87YIsq1SwHQEqM9Vem
X-Received: by 2002:a05:6820:2228:b0:663:8c2:feed with SMTP id 006d021491bc7-6630f3d4c04mr3300269eaf.83.1769889326973;
        Sat, 31 Jan 2026 11:55:26 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f9a49769sm6775854eaf.15.2026.01.31.11.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 11:55:25 -0800 (PST)
Message-ID: <8cedbb9c-9f72-43ae-a23e-705b3feb85fb@baylibre.com>
Date: Sat, 31 Jan 2026 13:55:24 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 01/10] dt-bindings: regulator: cpcap-regulator: convert
 to schema
From: David Lechner <dlechner@baylibre.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dixit Parmar <dixitparmar19@gmail.com>, Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org
References: <20260125134302.45958-1-clamor95@gmail.com>
 <20260125134302.45958-2-clamor95@gmail.com>
 <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com>
Content-Language: en-US
In-Reply-To: <d7938728-fded-4d5e-b23d-a8346e3fab46@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261473-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,analog.com,bootlin.com,atomide.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: D56A2C3C04
X-Rspamd-Action: no action

On 1/31/26 1:46 PM, David Lechner wrote:
> On 1/25/26 7:42 AM, Svyatoslav Ryhel wrote:
>> Convert devicetree bindings for the Motorola CPCAP MFD regulator subnode
>> from TXT to YAML format. Main functionality preserved and added compatible
>> for CPCAP regulator set found in the Mot board.
>>

...

>> +properties:
>> +  compatible:
>> +    enum:
>> +      - motorola,cpcap-regulator
>> +      - motorola,mapphone-cpcap-regulator
>> +      - motorola,mot-cpcap-regulator

This is what caused me to get confused on the order of the later patches.

motorola,mot-cpcap-regulator is a new compatible, so would be better as
a separate patch.


