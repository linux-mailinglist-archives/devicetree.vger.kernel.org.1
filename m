Return-Path: <devicetree+bounces-269335-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCk5JEO8oWmswAQAu9opvQ
	(envelope-from <devicetree+bounces-269335-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:46:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B18F1BA32E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 571B83184917
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16B5A439017;
	Fri, 27 Feb 2026 15:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jCWljCye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B2043DA3E
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 15:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772206587; cv=none; b=CcnyXxpYpCIYUcShi8Kjm1z/uXjzoz7YNog68qwlCT+7lFQLr2Ono/ER0y4hHXu+5rc+GDpmjPe2JvR81CfWpgelulS7DLFmFfOl1/aDsAonkyoSrxWtk6x8+zHs/jTTo76IMafIc+D/GMn2LxY+JezKoCVAiRG3PK+8pgaHfZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772206587; c=relaxed/simple;
	bh=UWqymA4e7LYMuMduy+UkKVG1WqyH3ZdKw++6sgj83H4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rOw0gMKHc0yFQVfppVD2Ul55Fhwk0aNPxobRZtHYR34WxepEjw8LFilqSZHCTcGOMm6L0QGrjfYtsntRjDK36OKugc1lLLqJWeqq1NDpSHPu7ZsAtC7tDvNhUZJ4eu4kkIhOVg4sjqAoRG8nRqeIo00fjs6Xl49+di4jHD3NNXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jCWljCye; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-82742aa5a3eso970661b3a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772206584; x=1772811384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WTtIa50EX2gBjUIgh/4hqiDtH9jDI9dvjYOsiss415w=;
        b=jCWljCyesaYPmp3YIl2lHqvyaeeIG+/XvTkxMU6PYbBdPCtLIJEDTps6aA/Kkl15OH
         737RGJ5nGVveCY9j/Q1hnW9tguqKYS89H+vkR2U3jAuf7Av4pPfvlhrvGrWdNfIA5ryW
         Kb58kYuNxs7xkxGpQmbn7KTJaf5akxa5nltQKH2pGo2NfJDggcCc9RYoZlfg6wWXFOXE
         1X7BWOkUgGxh9TytR8AB1nBnLlCHf8EHtTdvvZreQcvFol1J2ggh+j5LDbVtu1IIxIbV
         Z1WLatPzJ8z1BiJT/+rwpPzkXcn8hAkNe38FLXoMJKm/rIwuXYTy6AsHDnb+CVYQ5gL5
         mjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772206584; x=1772811384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTtIa50EX2gBjUIgh/4hqiDtH9jDI9dvjYOsiss415w=;
        b=GDwdkkxL/o5uW4u/ZF8zqlOujqtqbOePumBtoxDZME2j3fgbEKX/tWG55ksvGLpYad
         GrLCeP0CdpD45YtVqFdfxQ6SzZ3f81ImJvExh0eL7gUaVxRBae7QupyeTOwCDdgGRnr6
         Hxq2SsYNG/CD2/RpJQdBU8a+uRvRVHTLnl9w9rqQyRbjDkxJHST5uRDjJimsy6fzMsP5
         fpgSGXN92dlVCIy/u6Sl28kwUAiBmSLBL4EGo/lsCzOgZNa9GX3mMyI1N0DP9CFWKsB1
         OmJwh7Ypz3RWiH1TZ5coEFOz080pQothJSmqywG8ErLOjccdzrIbwutabb1TR3fxj39q
         FvAg==
X-Forwarded-Encrypted: i=1; AJvYcCWQdcHoTMK+Jlf9+NEsyNMTpGtIzD6Wn+IbDfmkgw1+n6hhJIKzbLSGwLS1QinUQgFbYfbn/Ssj6HVQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+TNAC4HtNOI9naejMBUaGMrBmDGpV0Qtj6I9EeI4FCkqhlNhR
	FXqe4uHlvEL89h1qeKwtjfIlPSVNYCN2fnv2OPQXsDjTBEb2ZDpnMak2
X-Gm-Gg: ATEYQzz1hqqoeXdp6bXB34OJ679ih4t9XBSOU2tbuwsO9t750rzrYfnGKYi3FqJiWXP
	xZCIw/Du/r084u0FB829GspbEiR5gOR9cP6vEVvSBvlIW0K0+xg4B+vhJVZdIBA9e9PywXDL6MX
	Jb3GbOB46ZA3uuVFXBQ6IOl7nzUKSdZxVpNliYrcfXmjO7vEM4Tz+9415+XCTZvKaNRbUfuZnfY
	lyd5MY5LLGGp96MWoD3862udaM/9EFn5QxrqgUFkKUSImBovNTnOZ+bM53u9p27sdFegugXyaLH
	4J+F8nwwYhPBTthghowZXePFawItgS+xe3XKC6Sg+VhBtStBtsTtS4k1F9vonRLq+LCM1JwsAh2
	biGx8s12soIeEqGspAIPdw3qZRCXVpx/EfVPm6xOIzgxS1mfye0pS2s0OM8i8reLnlX4tZ53VQU
	ok2xXYopx3Ug8UoJ3E+rwbTGOaYneeoQ5klqkMPljrtHRSnM4bRuw0ssQi0F7mMCPpTIL7JClv4
	gNRaPfn210=
X-Received: by 2002:a05:6a00:ab02:b0:81f:3afe:281e with SMTP id d2e1a72fcca58-8274d92e2a4mr2562694b3a.3.1772206583901;
        Fri, 27 Feb 2026 07:36:23 -0800 (PST)
Received: from ?IPV6:2401:4900:8f4d:f11c:79e4:e568:8dbe:778e? ([2401:4900:8f4d:f11c:79e4:e568:8dbe:778e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739d8bcb2sm5413525b3a.22.2026.02.27.07.36.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 07:36:23 -0800 (PST)
Message-ID: <f6d4dd37-3817-45b1-a642-8a07405f505d@gmail.com>
Date: Fri, 27 Feb 2026 21:06:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] dt-bindings: arm: atmel,at91rm9200-sdramc: convert
 to DT schema
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
 <20260226-arm-microchip-v3-5-0bda15abd922@gmail.com>
 <20260226-escapade-staff-4f2842222b3e@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260226-escapade-staff-4f2842222b3e@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269335-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tuxon.dev:email]
X-Rspamd-Queue-Id: 0B18F1BA32E
X-Rspamd-Action: no action


On 26-02-2026 23:42, Conor Dooley wrote:
> On Thu, Feb 26, 2026 at 04:13:37PM +0000, Akhila YS wrote:
>> Convert RAMC SDRAM/DDR controller binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++++++++
>>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 20 -------
>>  2 files changed, 67 insertions(+), 20 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
>> new file mode 100644
>> index 000000000000..1516fc8e09e1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/atmel,at91rm9200-sdramc.yaml
>> @@ -0,0 +1,67 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/atmel,at91rm9200-sdramc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Microchip (Atmel) SDRAM / DDR Controller (RAMC / DDRAMC / UDDRC)
>> +
>> +maintainers:
>> +  - Nicolas Ferre <nicolas.ferre@microchip.com>
>> +  - Claudiu Beznea <claudiu.beznea@tuxon.dev>
>> +
>> +description:
>> +  The SDRAM/DDR Controller (often called RAMC or DDRAMC) in various
>> +  Atmel/Microchip ARM9 and Cortex-A5/A7 SoCs  manages external
>> +  SDRAM / DDR memory. It is typically exposed as a syscon node for
>> +  register access from other drivers (e.g. for initialization or mode
>> +  configuration). No interrupts or clocks are usually required in the
>> +  binding.
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - const: atmel,at91rm9200-sdramc
>> +          - const: syscon
>> +      - items:
>> +          - const: microchip,sama7d65-uddrc
>> +          - const: microchip,sama7g5-uddrc
>> +      - items:
>> +          enum:
> Whoops, sorry for not noticing this earlier, but an items list with one
> entry can be reduced to that one entry. For you here that means that
> "- items enum:" becomes "- enum:".


Hi, i changed patch as per your suggestion, but i found some errors
with  dtbs_check, anyway i sent  a v4 patch.

let me know if any  changes required.

-- 
Best Regards,
Akhila.


