Return-Path: <devicetree+bounces-275811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sIEgA2TntmlRKQEAu9opvQ
	(envelope-from <devicetree+bounces-275811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 18:07:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FBB291977
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 18:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE41B300A4CF
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 17:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5891C3750AD;
	Sun, 15 Mar 2026 17:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MXpCvxXD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CD0372EE9
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 17:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773594459; cv=none; b=ebEOCglmc06GJprP2WemeTIiAJuLb1k9DcoZxgvaFpP7c3kT+qcvHZGRcY0VEAg8MiPdrx6F37wBuZ5pGDScy8FnknsWBX1wd2emIdhrQoGiL7PpA/Y1iHvOwPqw7ZIJv5yXBsb4jsPCgjs9BW5NYql7iF1XuJNrIq+7Y19Q3D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773594459; c=relaxed/simple;
	bh=u7g/7fNCkIeTMCYO3iV/qfav7MuiFPpqrSVcnGrxMBU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=abRvnN4jMkH3Rg30FDWYxJrO7wUG+4wI4x+x4PzByX3EjIAFHR66mRvbLJzg+clzqRuOguShjxZWKins6JubX7Aeo1owy9Vg0Yj98R649zBKxv/kG7h3eCgcLOzmllYlHRTvgLqo+vHChtLYkA+LZN3vg51DjGp6l+xcoQqUIkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MXpCvxXD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b96d784828bso570178566b.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 10:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773594446; x=1774199246; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ups20uRnYGz6Ay3iT6SM4s0q/qm3+3T4sX9Egk3yWMY=;
        b=MXpCvxXD51aZGQlwIvOcLBBX4zRc8uF4mZx4CZLh+TOtPiF6PJcWVoV4u5fXXNuxDA
         5BKrczr5O0txyEDRwovSQzPzSbKpu29n0MXMyZDmtB4qxkIGUsVHSkHIBcRbLk8Jbnss
         HGdty24QuonvyMas0c3xTjfbxicr15PKq6NDLNdOcVpbjWvnktVgeUePdPbuQtm7U9x5
         j5jKKuYc2Ctvbh0c88OS8y3C/sum8y464jAjmLfv/4ZZgAX5LQPi5dkhl2WE/1+cgqjp
         kgH8e65UAoJiFHwS1hrhzClXvg9A1rgDuTQvS0kKgOyRYA9BGjuDboP+3m4bHJ6G2FlQ
         M5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773594446; x=1774199246;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ups20uRnYGz6Ay3iT6SM4s0q/qm3+3T4sX9Egk3yWMY=;
        b=NxM3mr1wfGjT+BrQy/rMkxTbS3GGKhXaGdk3r/+QCej3lp7UrlK2Q1sxjkVQKewXjp
         qGlL2gU8QPp+FP7F/j7Iq7DsXwuMT/K9A54j/TmEsiVvZQagv2RBWZuCzowHrRY1c+/W
         kKsVdFXNxukqweX19sJMT7YgUMlIuoyi8okVMePNL7t1Ow8XBJN+8qxkEhmgOTxUHG6N
         D460P0q4rsHa/pMRHvNthdQmktVKwakw5rUl3OnDwCA4FK9639eGNC9+4O4U2REq1WBW
         oMvY+5iBxHy7GuR2Lv8MFIJ9OUFK1eLBFmgOsU34eRuc2y7zCoq3bR4/g4MbB/N5PXHE
         myQw==
X-Forwarded-Encrypted: i=1; AJvYcCXjOSVyYyg9yS930q4w83A4LeWrkrBI+CWeVU3Cy7JCUCd2kpM4zhaTKBgFGG+NcQg9HzDrc9IO529V@vger.kernel.org
X-Gm-Message-State: AOJu0YwYaraeNWkWXeeEikJm4iq9HRXTiS8qdGzreB72rXyWGHxVaxug
	yMlof0IiKUw/gGWofSFzhpDki1igeXKpfSH67gka/YJvqdDOPtkKQBgc
X-Gm-Gg: ATEYQzwqXGvxQ5MEz/za4jL3poS1XDH7a0k1bgmNufjvfYGkqdNGXpvkbDygk4gwN7l
	c/41t1qc5H84OnlrsHSA2OVlBuqG/GiahNVbFOF4lhWVR8ftlSMR39c4U4PSU5wshScp2mi07DT
	4w8y6HTumwPJmIFyz+dRRRtbmfeuAiynqMM/2XX2ESFo3ND9KE4m2K3SXx6cbEyHE3zGXl5TVt0
	zHfTXldEZktCKySZBOLpFwhTcxuWvPc+TGQRLENXv0KNMjrI0oJ/j0tPJyoqVx+FYd4ffAvVgfI
	ZUUJfVwOexb3sHs2O/XVU8jtw3AF4p3FlkZnGyt+Pb8o/fBV5mtHAqbRbE7OASLgkw3R0KGpmSK
	Zr/TLwh1MRIIWxuThWx0yn3ieuIYzOf+5i/CJ/5Nk9x7tsoF/eVxYjB93ARyFYGO40OhbuYKmwX
	QjtKHfKSoApgBuzEjjKXl8TGzIna8Kc+sFRR1F
X-Received: by 2002:a17:907:fd0f:b0:b87:1fe6:f223 with SMTP id a640c23a62f3a-b9765012d6cmr568157766b.6.1773594446007;
        Sun, 15 Mar 2026 10:07:26 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976d0b5886sm399606066b.65.2026.03.15.10.07.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 10:07:25 -0700 (PDT)
Message-ID: <567e0d49-270a-4442-8416-a9625bbe98f5@gmail.com>
Date: Sun, 15 Mar 2026 19:07:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: iio: light: vcnl4000: add regulators
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
 <20260314-vcnl4000-regulators-v3-1-3c4a48d30676@gmail.com>
 <20260315-honest-debonair-oarfish-3a33ed@quoll>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <20260315-honest-debonair-oarfish-3a33ed@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275811-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vishay.com:url,bootlin.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A3FBB291977
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/15/26 10:49 AM, Krzysztof Kozlowski wrote:
> On Sat, Mar 14, 2026 at 06:06:30PM +0200, Erikas Bitovtas wrote:
>> This commit adds supply properties for the sensor, I2C bus and IR LED
> 
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94
> 
>> anode supplies [1], which can be found in vcnl4000 ambient light and
> 
> So other devices do not have these supplies? Or have only some?
> 
> You already received that question, so I assume you checked. Then check
> again because 4040 has VDD.
> 

VLED is supposed to be the IR anode pin. Every model has one. It is pin
1 on vcnl4000, vcnl4010 and vcnl4020, pin 6 on vcnl4200 and pin 4 on
vcnl4040.
VDD pin is pin 7 on vcnl4000 and vcnl4010, pin 5 on vcnl4020 and pin 3
on vcnl4040 and vcnl4200.
VDDIO is an external supply to the I2C bus for the sensor.

> thus in
> that case 
> 
>> proximity sensors, to ensure the sensor is powered on before proceeding
>> with setup.
>>
>> [1] https://www.vishay.com/docs/84274/vcnl4040.pdf
>>
>> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> index 2ba4d5de4ec4..a1b4c02db246 100644
>> --- a/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> +++ b/Documentation/devicetree/bindings/iio/light/vishay,vcnl4000.yaml
>> @@ -33,6 +33,10 @@ properties:
>>    interrupts:
>>      maxItems: 1
>>  
>> +  vdd-supply: true
>> +  vddio-supply: true
> 
> VCNL4000 does not have VDDIO and VLED pins.
> 
> Best regards,
> Krzysztof
> 


