Return-Path: <devicetree+bounces-321565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PI+GFm8dTGoTggEAu9opvQ
	(envelope-from <devicetree+bounces-321565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:26:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E6480715B32
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 23:26:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=r017DZ2y;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321565-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321565-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C98B300A4BE
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 21:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4182644A71C;
	Mon,  6 Jul 2026 21:26:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9317042F713
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 21:26:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783373165; cv=none; b=PkbT4mmX1U2124rkBx4YylhAykBjqi7Rx/luY8fU6Z7OETEb/lOxIxyhyMn51KZArBaTlgnu2c71xGtt7UVlLC4R6ZRJqn01jDn3qurO6aUzCGUXLHwV8dcEzOpwG+Xg5KKu9pgLMIQ3BpEzjN/h3ZEjHQGB0o9/kClwbiEXda8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783373165; c=relaxed/simple;
	bh=GHu8E+ZzIjl1pCy9QBxel1fS5I4F/Qa4IkmUrQYcut0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TPeGGI4KqoSC4j/9RbkmWuKZYZGto8VCIemMFjy6Mh8L6zc2bgcJINqZNRRPfWeShYXlJAZSkLQ6NBwi+ud8nGgAgrK/SfWKzV+lD36xfvv8Tlif3XEHvJENArxhWVGWpgh/k86l9gzzKapmfL4NFMQQU5HLbqmvEH3b3B5aVQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=r017DZ2y; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493d1e8aa46so19070455e9.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 14:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783373162; x=1783977962; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ihP68MSIVTxfpMWP1SL0q+2pdJ2V1J6RQAuUgDHhRvQ=;
        b=r017DZ2y+ltqd6XNJksy7oeelsuhCj80XVAzVCweQtH04ubhbpawn9W3jgTJnJaDOG
         NV6qtsLtB58SVVjHIqrdA3SlRn1yakUCPEj6MrUMLS+lSIsOxUM281NYOzHuG9vRh+Ao
         EIWsWlE5kLwdjVcA6le3Zc3tXQnVgjRW8tsjR0yCfXaWscd59BmyPJbPOtWHLorzgqkE
         B599hS+4Gk4Io0jYLyR7e1x/jFt+a9U3lWuo5biaddnUzlNBHHVzfTZMVZfprle38qyp
         ZlQLDtVCb4u0mDi9K9drLpI6qliiP3mj2yv5NAdkOAQsNzM3LU1j/NttTxTEQrhnSYA8
         ZfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783373162; x=1783977962;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ihP68MSIVTxfpMWP1SL0q+2pdJ2V1J6RQAuUgDHhRvQ=;
        b=PU5D5exxTuo6Ir5Ky5ji/QvSuQWSiDpUQn6S/lXXoI6YCmyoZy6jLE+8XCCUoyqwhN
         edZBRlWsLXzqT1OTcPyhQcSqIlH453dHNJhWr4kDChYftJhgShGELVQ8ZJyna5nd4QmN
         eBxbsZxZUzInDsrJ1I2uCEtnlYqMh2mYq8SMyxQZITxa1oaAyI1UNLMry66XWcul76EE
         MdefL2JV+cKPPlRrLXq5DkHVW9s4vwhTXDPjuJR16an1fhLrhx+Py/wYFVwFmcC+hojT
         G6P+BgFVHRCRP8HafWgDbvNNKMj3S0KAzIwwEZSW2csrB3UY5ydS10/XPXzlI7pJnOR9
         zkww==
X-Forwarded-Encrypted: i=1; AHgh+Rqno+L/wFEcGn5KATUC1O9UQcXeiwbPMFguZML3ebE3HOK7f17S8RKMd80Or8nBwVVsAk7z91OqnI1H@vger.kernel.org
X-Gm-Message-State: AOJu0YzHRhKm+GUbPgx2rvAkKaTeNM3131R9JEJykINGhCZk7emrSS0u
	f2U35g0T03TA61trjk708TnNcVHEYry3QIREVKYm4Sg3rhak1vNy7kRq
X-Gm-Gg: AfdE7cmSiWq4fS7dqedt7kQ9A1+IN7TVdInUBzkjOis4A1F66vQks4j1NTv+vKXFisR
	p17buTXwy/MfHFfk9PnR5SOsDVk7KkpSj1WB6GmtflF3HUPKa9IdurJ/wLzNUsC/Y376OQG6nPj
	b+qOTa1D8UAFxtJiCPDrDgNVuU1FhEaCLKiGKxdSDJuKQCC4StBCxk6Efw4mPpvh90+K3/GwAgm
	ARvbj4tPcW8b1a8MQuEi/xEVagEGKBVlEzZRJvXCJ1qv2uFwQX1c37Q71T2sZ2wP/Y94cL069PU
	b7PzJYKSrcpyiSfGELrnqIlRKi1dSq8Memdi8df3DR2CYBVBmwCkNgWc2RozcaOTX7F8Z8AMD4e
	o5oJRnKGe0CxuWi4MtfyY5yFYowbtkt4QLkKNSXHIwrUFM3HKFKJtOAjcK9vK+zAhuo4C9oTsH1
	BvWL0XGHaBlzYFnmqj++JGWnck
X-Received: by 2002:a05:600c:1d0c:b0:493:bed9:b53d with SMTP id 5b1f17b1804b1-493df09b330mr24203455e9.31.1783373161558;
        Mon, 06 Jul 2026 14:26:01 -0700 (PDT)
Received: from [192.168.1.10] ([95.43.220.235])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493e01c8159sm12334715e9.1.2026.07.06.14.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 14:26:01 -0700 (PDT)
Message-ID: <2b192691-54d8-4449-a18c-b87266c6c73c@gmail.com>
Date: Tue, 7 Jul 2026 00:25:58 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: motorola,cpcap-usb: add chrg_det
 interrupt
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-2-ivo.g.dimitrov.75@gmail.com>
 <20260706-visitor-calorie-b805ac5af970@spud>
Content-Language: en-GB
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
In-Reply-To: <20260706-visitor-calorie-b805ac5af970@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-321565-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:khilman@baylibre.com,m:rogerq@kernel.org,m:tony@atomide.com,m:linusw@kernel.org,m:brgl@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivogdimitrov75@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E6480715B32

Hi,

On 6.07.26 г. 20:14 ч., Conor Dooley wrote:
> On Sun, Jul 05, 2026 at 01:11:02PM +0300, Ivaylo Dimitrov wrote:
>> The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
>> for DCP detection.
> 
> This is not currently true, the driver does not look for this interrupt
> at the time of this patch.
> 

Right, this is bad wording caused by the fact that initially the driver 
patch came before the binding patch.

>> Update the binding and example DTS to use the corresponding
>> "chrg_det" interrupt name.
> 
> Sounds to me like this new interrupt is optional, since until now it has
> not been needed? The patch however makes it mandatory. I think your
> driver patch also makes it mandatory, which will break older
> devicetrees.
> 

Oh, it is indeed not needed for proper DCP/SDP detection, after some 
experiments I was able to teach the driver to do proper detection by 
using current interrupts only.

> What makes this ABI break okay?
> 

Will send new series with schema/DT patches dropped.

Thanks and regards,
Ivo

> Thanks,
> Conor.
> 
>>
>> Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
>> ---
>>   .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml     | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
>> index 0febd04a61f4..523a8f8480d0 100644
>> --- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
>> @@ -30,6 +30,7 @@ properties:
>>         - description: se1 interrupt
>>         - description: dm interrupt
>>         - description: dp interrupt
>> +      - description: charger detection interrupt
>>   
>>     interrupt-names:
>>       description: Interrupt names
>> @@ -43,6 +44,7 @@ properties:
>>         - const: se1
>>         - const: dm
>>         - const: dp
>> +      - const: chrg_det
>>   
>>     io-channels:
>>       description: IIO ADC channels used by the USB PHY
>> @@ -91,10 +93,10 @@ examples:
>>           interrupts-extended = <
>>               &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
>>               &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
>> -            &cpcap 48 1
>> +            &cpcap 48 1 &cpcap 13 0
>>           >;
>>           interrupt-names = "id_ground", "id_float", "se0conn", "vbusvld",
>> -                          "sessvld", "sessend", "se1", "dm", "dp";
>> +                          "sessvld", "sessend", "se1", "dm", "dp", "chrg_det";
>>           io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
>>           io-channel-names = "vbus", "id";
>>           vusb-supply = <&vusb>;
>> -- 
>> 2.39.5
>>

