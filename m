Return-Path: <devicetree+bounces-258904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLzRLVRXc2kDuwAAu9opvQ
	(envelope-from <devicetree+bounces-258904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:11:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E9774D50
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 12:11:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40934302962E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 11:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B901337B8E;
	Fri, 23 Jan 2026 11:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hAztp8++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2975833CEB7
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769166666; cv=none; b=IwVSQ9bJh/sVLHCDyOn4QhllgdVCbTQoitww77RZj+FTABbLUwG/6iZMRAfUD2g10cYrFkx5dOUmRSOqmuVSqYoGTk/Y7O+bo22BzUMxzBq5MzY6XVlmu7vvbn5fuECIxShnljYFKkB1fVMI0aj/0qroMBSnUhAkJxdxY9bCYt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769166666; c=relaxed/simple;
	bh=JzYSUCqqeWKfNi9rdKkxtfHev0ia4H+r1I/ZRyvcQiI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkhbp2Hbzu5DNb+dJh3SBz3PkCP6+Ii+Na6oRYoJbh2owZEv4LkdsIBC/asY2b0s8G0nXrOHSmPi8uQ0vKFGeVEkEUxJ1Pm7recEj8rCJV4Rg5nL/YE82Bfct8mV7hmwApBenQ13DqpReaYIjiQwL1UW30SbV23CsYr06jemSU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hAztp8++; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-81f4ba336b4so2276129b3a.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 03:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769166663; x=1769771463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=54G7XuhdW75vYSZtlnacHikNaLX+O6Mlc4zbY7Y1Luc=;
        b=hAztp8++AFV3mA0CV5I1xTB6mzXvh0DiZUWpiGqlZOGQvdZZU6qJEc7HprCfpRlM/O
         P1JP9mpEjogKrEvETqxYGVSrNlQuZ/Y4JoyIzB01x2lKKAM6EBsZ6XlDO0HVxdRB3nr8
         ZX85jqkVDgRrfpgLzVYTRIIzs9SmAPoMlY9xf63JUuwC9Krnf02EpO5afVvN6OnVxalw
         8rswvL+F9X5RlzfAdLS3vwI68mxSyzKa3XPBWEvDAPrPgkNHWl0qHY0CylpeFP5m1pNa
         WTSmLmYeFrzOVKYtYgxr5LOC/Pmm399ueF6NFPOLb7ESMCotPxiSuaUh2S4gxmtKCZui
         HHsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769166663; x=1769771463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=54G7XuhdW75vYSZtlnacHikNaLX+O6Mlc4zbY7Y1Luc=;
        b=J5Nit86Xu6zxrwNCPUDWjkVO1qEIX/J9tS3C0EkdbcvLSiAJaimFFRBAXJE649ZxJ8
         IokCwpymC/VXFi/F4HddYWdk+ycTjwJv2e7Y45vJqYCZRVVTKMK3O6vxu1Dh/Ky8knbe
         5o9PUdld46sUTfFQkRrmU87sTjlsUxndpuGFGWN6ivANWVnasih0Tpek6trSJ7RDbpTh
         w4SCfnye0beJ3u3t4bCX6QU4/9LcpVi37s+fXcet2bSvR/sKCLY1mcJTIlEW1RMpb/Ac
         N8izB8/5Gy/Fwi4i8aY46iY4MDT4vyWh5VOpv97fZRtOgvNtkFDh+af8gzSd//0kqKaA
         A6ew==
X-Forwarded-Encrypted: i=1; AJvYcCVA2H3PS6p0kIxhQ+04KrfmDLhdJutPMAMwZXn/W2csargiEKuIoBJUbnhk2EQGMPKKaVPHOXe/ZN0I@vger.kernel.org
X-Gm-Message-State: AOJu0YxO5ywiW2g7IVASydyQlK2oJ6HCtXn8jqfudzqPFzBGiQJOmQ0K
	dEzjerrgGv62ddF/J05v0YoawOMcMxZQAPPZK1NnqIWdPRZhRUArTIDP
X-Gm-Gg: AZuq6aLsWW9/f9aRaOj4e4Dh+8vso769GlCfIVoKny/JB8k3fGos8xFCZDhuF8QmgVy
	egY112+jLUvYBOeAQzayjoqcEvo2xGNsM4a9S4wYnJBl/AItSVJJSqZWZO4D0q+YIU8UDQlYgQT
	66aaAZ3w7AEQHaaJoUIxZ1hpfeZ2g4+x4Q5mROWx2V5yi05qvdkB1Qsx3Mvwzb7Earh/72s+YBQ
	IdAsDS8zXo4+8q6sSfiDNvIpmB/34jtvCZA2MtqRN2WfnKDcm4rtOtRP3nTA2jPMEjn+oMaD5hd
	qkUhWEQOVStgbKavBBTXbRujvgET3iyuMw76FK6K1Q/HWadEIWsotPytfUmYSuYt/74b4g7c539
	0c2VBhcFPZ3zQ4Yc5LSDRuMe+2ZwdrWSHxIuXqBTP8Vub2lFZajIgyRP9OQAukh4OQhHW2NUcmH
	c2F0ytraE5MFgtqSFs8gT+okLWUAeUto62+A==
X-Received: by 2002:a05:6a00:bc8c:b0:823:aa5:23f1 with SMTP id d2e1a72fcca58-82317eea693mr2402046b3a.57.1769166663318;
        Fri, 23 Jan 2026 03:11:03 -0800 (PST)
Received: from [172.16.20.12] ([136.226.253.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231864489csm1949221b3a.9.2026.01.23.03.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 03:11:02 -0800 (PST)
Message-ID: <54d156ba-e177-4059-a808-2505983b4e2e@gmail.com>
Date: Fri, 23 Jan 2026 16:41:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
To: Krzysztof Kozlowski <krzk@kernel.org>, lee@kernel.org,
 danielt@kernel.org, jingoohan1@gmail.com
Cc: deller@gmx.de, pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260120125036.2203995-1-tessolveupstream@gmail.com>
 <20260120125036.2203995-2-tessolveupstream@gmail.com>
 <3f3c47ea-1660-4bd4-ab89-3bdf58217995@kernel.org>
Content-Language: en-US
From: tessolveupstream@gmail.com
In-Reply-To: <3f3c47ea-1660-4bd4-ab89-3bdf58217995@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258904-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmx.de,kernel.org,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 38E9774D50
X-Rspamd-Action: no action



On 20-01-2026 20:01, Krzysztof Kozlowski wrote:
> On 20/01/2026 13:50, Sudarshan Shetty wrote:
>> Update the gpio-backlight binding to support configurations that require
>> more than one GPIO for enabling/disabling the backlight.
> 
> 
> Why? Which devices need it? How a backlight would have three enable
> GPIOs? I really do not believe, so you need to write proper hardware
> justification.
>

To clarify our hardware setup: 
the panel requires one GPIO for the backlight enable signal, and it 
also has a PWM input. Since the QCS615 does not provide a PWM controller 
for this use case, the PWM input is connected to a GPIO that is driven 
high to provide a constant 100% duty cycle, as explained in the link 
below.
https://lore.kernel.org/all/20251028061636.724667-1-tessolveupstream@gmail.com/T/#m93ca4e5c7bf055715ed13316d91f0cd544244cf5
 
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  .../leds/backlight/gpio-backlight.yaml        | 24 +++++++++++++++++--
>>  1 file changed, 22 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> index 584030b6b0b9..4e4a856cbcd7 100644
>> --- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> +++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
>> @@ -16,8 +16,18 @@ properties:
>>      const: gpio-backlight
>>  
>>    gpios:
>> -    description: The gpio that is used for enabling/disabling the backlight.
>> -    maxItems: 1
>> +    description: |
>> +      The gpio that is used for enabling/disabling the backlight.
>> +      Multiple GPIOs can be specified for panels that require several
>> +      enable signals. All GPIOs are controlled together.
>> +    type: array
> 
> There is no such syntax in the bindings, from where did you get it? Type
> is already defined.
> 
> items:
>   minItems: 1
>   maxItems: 3
> 
> 
>> +    minItems: 1
>> +    items:
>> +      type: array
>> +      minItems: 3
>> +      maxItems: 3
>> +      items:
>> +        type: integer
> 
> All this is some odd stuff - just to be clear, don't send us LLM output.
> I don't want to waste my time to review microslop.
> 
> Was it done with help of Microslop?
>

I understand now that the schema changes I proposed were not correct, 
and I will address this in the next patch series. My intention was to 
check whether the gpio-backlight binding could support more than one 
enable-type GPIO. 
Could you please advise what would be an appropriate maximum number of 
GPIOs for gpio-backlight in such a scenario? For example, would allowing 
2 GPIOs be acceptable, or should this case be handled in a different way?
 
> Best regards,
> Krzysztof


