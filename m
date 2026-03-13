Return-Path: <devicetree+bounces-274901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMSkCPGvs2lYZwAAu9opvQ
	(envelope-from <devicetree+bounces-274901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:34:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9033B27E2DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3906C30120E8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 06:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8907B33F5A9;
	Fri, 13 Mar 2026 06:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aCKtSZv8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AEE24397A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383508; cv=none; b=Xk/cwEunINx/BvXC15ygSNBJEliajWDEz1bzE79rX8MwCnNkIiC6kJ11IgmD3r2EL6l5cA2oBtNpGU76uxJZ7l9mr9RVF0lqyFq183Aq/dcohs8k2eXjlWy5NIS+O4VKbtuPwFRpPQpHdZLvZF8VjU1pOlogG1RdlINzIavWn98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383508; c=relaxed/simple;
	bh=yC186mT1odJBeJSMepQAkYwRWPnxTp/vnor14K9Iqsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eiWizF4xtVLGCOo480jN7dFbkcAG3kvJ3G6nn70kHTWMYwvX4s/R5Sj19Cx9HSMcGie/0hTISxrl9Fo6duYeWX9AvASPIrep2cPQzAkFCp5/DPxiuh5OZg3q+aBEsZibkw9bqRaOaJsDcU6uqVITTBh5urhSiDE0ccZKf9owU40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aCKtSZv8; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2aea68839a5so14423805ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 23:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773383507; x=1773988307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5B5bkjfvouv3vKy7xOZhVi00OXVaTar+WdRxVUnQ5gA=;
        b=aCKtSZv8eq4y0EwCxLwuTavQQHkYMaqSmnZllvdSxUAHQyYY4IjRklpFDkYGi1D2yD
         0v92IUGS7PzInYK8HGEfhYH6k0khzWi06yOYc6mQNqwUWvqRHXj3LYzWTSu1XSmmuWZT
         xsqlKPE1JNc0P3v4lWGyUMSqFsC8/TviRqKiwjxCaknklP2t2wpQCms2nTakoiv0uH4Y
         aoJTE17zA6DptDyEHa39cNfMpORG+S8hpbNfHSiZ0faaA5KNMkq/b5wnxANmM5TSTebm
         vGyJyQGSAQ+OVXOLcCDXFQhSSx/l2zOttklW4h0bNzZecJT5YJKi2/Xoevi9JvSt4SYk
         qwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773383507; x=1773988307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5B5bkjfvouv3vKy7xOZhVi00OXVaTar+WdRxVUnQ5gA=;
        b=d8Iq/c4iKn/yrwBtfE6PhvdhBH5vzeUo6XnT96mF4WVy8EM97Tx+Z6lhgKEzdOhEIJ
         cWTt9mtsIjzoDasuHUMny+T4tl65TbcPqnaKAN4R2XpimMjCmi4PCX08FKW1Ltq9iXSd
         kV8YAtolaCfeu51ElwYLOpoqKIUm2uVmT26mdFofXhvpCTp7qdxMlUNKq443PnB7sl1e
         hw16TvFZHvff+j3nE3x/7i2I4+feEL3byNSbWKezEXH5uSdRlSc2L58MH51pnrXBXaPy
         3aKFmnTUeT2SWPOPfDZT1F1CTpQ94+JQgmEx3zk3CYyGnyLkprEI4KMvcjVT6ROeOHNc
         Bg0A==
X-Forwarded-Encrypted: i=1; AJvYcCXA5g9+vBQLNSgLJkgWfqz4G1DbbEZ43FIp4QjcAZ3I7WrV/d94D5hJu4fivqsBEo56n/EImfXze/Cr@vger.kernel.org
X-Gm-Message-State: AOJu0YwT5uEPirrK5dMTjbzhZp0MA3li/REnix51dfLfVTLGWoKvW/MD
	nHGoMx7bl3rDOANvla9cnJ+1KD/hpfBd3BdLpsLBccprPsVrfOrI/51h
X-Gm-Gg: ATEYQzwJBn85FA1Y2t7dslyIRA9q3/AO1xtMDLdeWU1Sdo1inhfK4y7gMSiVIY3tYz5
	Jz5G8Naph5SOlK69lIPBtx2vkfPO1MnYgXFQomMpswvN5SN8jhBbg66sQ0lp6NGH6oEIfDNRyMY
	A/WpyEx8SmSuVkQ0o2xACzvZH37MQmI+2FdYktyGGoV2smYh4eOPdoIZaB4r9/f8dkI46WqEwiG
	N4ZgbyLoVFKGg0ke076/LKL2ESQ6VgE2RJlBEK6taXITGTfjC4IDQBTzxzJSoskgb5hDRw+2fLB
	Jcxg04QSgJkVRIHqDkk+tzPu0jT1vSTQkHP1WtdglrnOFAYpYT0yCKUZfC2Pafo3WoIsPZIV2OK
	pehZg00/HHHFMph4eSXVq3P8TFqfH4g4fKz/6UXWMoZntzGbVZM34KFtl4XCS+ov/wWQD4raGV0
	FYvf744Y0xketqUOI5HlrgOUm/GQ/81ogYxeZEUJjAv+qT
X-Received: by 2002:a17:903:186:b0:2ae:47b0:dc80 with SMTP id d9443c01a7336-2aeba48f0eamr57727825ad.11.1773383506399;
        Thu, 12 Mar 2026 23:31:46 -0700 (PDT)
Received: from [192.168.1.5] ([27.7.215.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece8453cdsm10353455ad.84.2026.03.12.23.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 23:31:45 -0700 (PDT)
Message-ID: <2178f79e-65da-4e97-aeaf-21da0af95dca@gmail.com>
Date: Fri, 13 Mar 2026 12:01:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: usb: generic-ohci: add AT91RM9200
 OHCI binding support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Claudiu Beznea
 <claudiu.beznea@tuxon.dev>, Herve Codina <herve.codina@bootlin.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260307-atmel-usb-v3-0-3dc48fe772be@gmail.com>
 <20260307-atmel-usb-v3-2-3dc48fe772be@gmail.com>
 <20260308-camouflaged-sage-warthog-fdbb7d@quoll>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260308-camouflaged-sage-warthog-fdbb7d@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274901-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9033B27E2DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 08-03-2026 14:53, Krzysztof Kozlowski wrote:
> On Sat, Mar 07, 2026 at 09:16:19AM +0000, Charan Pedumuru wrote:
>> Add binding support for the Atmel AT91RM9200 OHCI USB host controller
>> to the generic OHCI schema.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/usb/generic-ohci.yaml      | 33 ++++++++++++++++++++++
>>  1 file changed, 33 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>> index 961cbf85eeb5..a8a94b9c1fee 100644
>> --- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>> +++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
>> @@ -55,6 +55,7 @@ properties:
>>            - ti,ohci-omap3
>>        - items:
>>            - enum:
>> +              - atmel,at91rm9200-ohci
>>                - cavium,octeon-6335-ohci
>>                - nintendo,hollywood-usb-ohci
>>                - nxp,ohci-nxp
>> @@ -137,6 +138,16 @@ properties:
>>        The associated ISP1301 device. Necessary for the UDC controller for
>>        connecting to the USB physical layer.
>>  
>> +  atmel,vbus-gpio:
> 
> gpio is deprecated. All bindings use gpios. Also, pins do not use vendor
> prefixes.

It was already defined in the existing device tree and the same was defined in the text binding, I will remove these particular bindings from text file for each patch.

> 
> 
>> +    description: GPIO used to control or sense the USB VBUS power.
>> +    minItems: 1
>> +    maxItems: 3
> 
> Why is this flexible? There is only one VBUS, no? Which pin is it
> exactly on this device?

VBUS has 3 pins and will write the exact pin in the description.

> 
>> +
>> +  atmel,oc-gpio:
>> +    description: GPIO used to signal USB overcurrent condition.
>> +    minItems: 1
>> +    maxItems: 3
> 
> Same question here - how is the pin called in the schematics?

Okay.

> 
>> +
>>  required:
>>    - compatible
>>    - reg
>> @@ -144,6 +155,28 @@ required:
>>  
>>  allOf:
>>    - $ref: usb-hcd.yaml
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: atmel,at91rm9200-ohci
>> +    then:
>> +      properties:
>> +        clock-names:
>> +          items:
>> +            - const: ohci_clk
>> +            - const: hclk
>> +            - const: uhpck
>> +
>> +      required:
>> +        - clocks
>> +        - clock-names
> 
> There is already if:then:else covering clocks, so this makes multiple
> clauses being applied to same device. That's not really readable.
> Unfortunately that's a bit of a mess from existing binding. This can be
> solved by moving this to separate schema, especially that you want to
> add some specific properties to this device.
> 
>> +
>> +    else:
>> +      properties:
>> +        atmel,vbus-gpio: false
>> +        atmel,oc-gpio: false
>> +
>>    - if:
>>        not:
>>          properties:
>>
>> -- 
>> 2.53.0
>>

-- 
Best Regards,
Charan.


