Return-Path: <devicetree+bounces-267935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAxxD+W4nWnERQQAu9opvQ
	(envelope-from <devicetree+bounces-267935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:42:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E471888A1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1BDEB301BA86
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 949DA3A0B13;
	Tue, 24 Feb 2026 14:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XmrAD7EP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E4B3806A6
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 14:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944161; cv=none; b=FF+GwfNhSwHfR9cKrgNbTAHOYmo7CQDWeI6jF6h6jdHPOn4H+1feNvdpLVA20iuEewDAfdArtnMYYgUrFVLuOLORsvJ16sEjwUAD6W81AtuyM2uEFVcyDT1OgfAHR8lRH9GgL88xbKGVLUnglXsnEt7VYU+pHR0V3T3/dRaVWj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944161; c=relaxed/simple;
	bh=XWvWnPeH3oda+i+ybVHHUYQEdw+f/U6f31p8GbiHTAI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ovot9WhZjzvo/qT9MQdPntpu7CvCgvzYzbo88JVHbMCFzvbdfhsIzSbiBr/2303K2hcgp0wMZl8j1oeesFlbPlF+04vcUQQ1PeblHtOzjGLj97s4do2fv8i9jf5+oT+AXQELUKDEN5CGM5g9XXz3e4uL1WzyAC9neg8SK0XhUFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XmrAD7EP; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a95bfdb31eso23547285ad.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 06:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771944160; x=1772548960; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jxmjoH0uXTz41md1p9C+JzGNZXnzFWIms4029sqr8r4=;
        b=XmrAD7EPH85jMp98YQZcr31VjR81gd9lAk8m32d2mPzXL48V64zM1jgp15gaStLs9+
         OsBnnj8H7Zca8yHVl5NxaXQhfT77LEyUOPHSniopy0ZM2NAUX1HJ5kXdPKiY4nhl9j5W
         4ysEaVR5e9gTBIONCG0c+OOsE561FD+Ex0YwJ/ElhPVAuNm9NWdpmeCxwXgtB2bvz/7k
         Cb/zDtyU/ZbKEecziEp0tIK4gqqyP3xjfeNwKEZwfnHZt1l+NZ296rSRQoeDoXFr42mP
         eQNiYTQOpJYCVBn1gcc7//UBLrPqoCw0pCCoZ7Hq5QjZfWvitD0vDqqrWDDM8GkPjqem
         SC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771944160; x=1772548960;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxmjoH0uXTz41md1p9C+JzGNZXnzFWIms4029sqr8r4=;
        b=M9hb1pbwPtZBay9/8BzVmjTn1UO6tLnw0MQEHphymc0FazQJ1joRNtovaRZcFLQqNC
         Lo39VoIx+9fLW99nV+5yzrVjD7CK4Ctr1ZNdvM/qQoZ/FArigvdDS/XMrX1PjjMQXKDB
         +a7sFIbbLNXMG1Asb8Y+AJCz5s3AQr0HmpBg8ek2KPqQxFlMFfQmA4nHsLZmgrIFxUsw
         WEaQcGSBeXHuh6h/058XkwEFa+Nk2sCTDfg7e5tFJmYb1/JF0KEtuLxyTIxvKyJaWLwd
         XWruJ3+kq6YkMLj9foSb2MA8i7owhcQCt0V/mF951BNLjktpFXjeaPmEiR2+xkpPqOsy
         c4eg==
X-Forwarded-Encrypted: i=1; AJvYcCWE/vbCCCjPsVUuZXcAZsStYkgefHhT2f4Aj+ZEE3MuYhxnixJs6sTgZ49h+vsZ8JiCPml/k7nvNqUQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzgd4Rg3yk9igNgywZTlhVSTjGO4GcP73od4VvwOS31kYQYcwu
	+uEA2lG0VEgZKz9DpcueT/nxhlugXXvFSuT9Vfmdsxx9mUaG7Uw9rVrQ
X-Gm-Gg: ATEYQzypx0vLCUMiLodG6jAAdotRB5NCJW2LjqAWnftS7n+g4WmgTlRVxzzzCOG8Zb4
	tPPOCrNRaZXC7Iu3lzo4Dm9jSbtMsmqBYwIehpSjljKQILl+z+jtK8b0MhaCdlDmnwO6o0anKU+
	MhiON6s0O2ZSl/mbsv/swf+eYpZGoR4oPAkgcmIC9y3boQOGUJ4eGJgtYmJAo8F8jkpi4FrICie
	lrbGjCqSsy7f99EugFQx7LNM50k2mr4UEV0JdF5pmhxTY0Oi8WUCrCoVSzMmJ2BbEdDdLy1lCn+
	yfMyxU3GMVIQ5LBPHYdZScDQq1/MaBhk+0NCoqh2xEjqPaon9FVNH2ml1tHpP3/ZsJocE57OgyB
	ovLKPiWI0oEf89vPWWCp560bsiJZw4km1GP3fZKeQxHBIkyoLCiRA9fp5iZRHn11LxlLIx1arh7
	Hn/GV53863luekpwqeLkfEKFGfhZqeLauu54HCVlc6qFhcXum1UGQoK5zfcGh6rrlP9+v+K8s/B
	11N5Bjz
X-Received: by 2002:a17:903:11cc:b0:2a7:aa14:82f7 with SMTP id d9443c01a7336-2ad74418b8dmr111623135ad.10.1771944159486;
        Tue, 24 Feb 2026 06:42:39 -0800 (PST)
Received: from ?IPV6:2401:4900:8f4d:6bb:6d92:919c:951b:7d96? ([2401:4900:8f4d:6bb:6d92:919c:951b:7d96])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e2a7sm104906565ad.46.2026.02.24.06.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 06:42:38 -0800 (PST)
Message-ID: <11ab7eb4-5c74-4ee1-b385-a5ab95d23b7c@gmail.com>
Date: Tue, 24 Feb 2026 20:12:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-cosigner-polka-de13bb9be569@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260217-cosigner-polka-de13bb9be569@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267935-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D0E471888A1
X-Rspamd-Action: no action


On 17-02-2026 23:21, Conor Dooley wrote:
> On Tue, Feb 17, 2026 at 05:24:18PM +0000, Akhila YS wrote:
>> Convert various legacy .txt bindings for Microchip (formerly Atmel) AT91/SAMA
>> family system peripherals to proper YAML schemas. This includes:
>>
>> - CHIPID (SoC ID register block)
>> - PIT (Period Interval Timer, old style)
>> - PIT64B (64-bit Period Interval Timer, newer parts)
>> - ST (System Timer, including watchdog subnode)
>> - RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>> Akhila YS (5):
>>       dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
>>       dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
>>       dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
>>       dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
>>       dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema
>>
>>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++
>>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++++++
>>  .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++++
>>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
>>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++++++++
>>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
> Is this intentional? They all say "convert", but only one file is
> removed in one commit?


Yes, all bindings are present in one text file.


-- 
Best Regards,
Akhila.


