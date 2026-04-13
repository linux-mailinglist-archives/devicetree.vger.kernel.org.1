Return-Path: <devicetree+bounces-286986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCorM/jH3GmcWQkAu9opvQ
	(envelope-from <devicetree+bounces-286986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:39:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE0D3EABB3
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 12:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBFA3300E274
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F33D36A01E;
	Mon, 13 Apr 2026 10:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="i7A3JI9g"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5EF35C1A2;
	Mon, 13 Apr 2026 10:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776076790; cv=none; b=fMADGwRJc4kQf7ztyEG099CLcwZ0bEDlOWOS+MXyg2KWLxTBPFYHxYDHCbM4E4dIafc6094HvXjupWEoGLj2ahhhmWlsa1Q80mNnuDuAS2IkvJYvb1st/AOWD+hYNE8d2ikxWCI3uMgasyldTLsTIwRT2NAMhXKt4s46Aa1iTeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776076790; c=relaxed/simple;
	bh=duq9L31NUVCD1nJNJYBo8ZhlfesdFiU++70jz5ELPL8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=DwUfQzkRKcd8iazKYzf/XMHQLEuBXTzjs0e4vTaspTOoS4Cv2ov6eEtujOhSEhNj5vzPZ+MfkQLBVFlFkrzfWpSIwW6xe8t8XnNlQxBSVlPIsNoNNRfFypuHKLbIB5ukhmtxaub4rQ+UgQGeIjBZI59XEI107GscMyxevFx8klw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=i7A3JI9g; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Message-ID: <6a204eb0-ab08-462b-8dad-8f0990dc500d@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776076785;
	bh=duq9L31NUVCD1nJNJYBo8ZhlfesdFiU++70jz5ELPL8=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=i7A3JI9g79SdnCtohMFvDOCVny58Mep5/hD+vBGfIvZxClV7vztMISAsgPZLMkgIO
	 30bpiC+t/4hyPb/dwf+/m7AZyU2Co4ynqeNbB9TjjsVCf6y6M/HaaqcJdSQAyOkMLb
	 eQVwAcjNlP/nvQ7YyVrNCOtlLK42yte8REpDGrgw=
Date: Mon, 13 Apr 2026 12:39:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH 1/8] dt-bindings: thermal: amlogic: Add support for T7
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260410-add-thermal-t7-vim4-v1-0-19f2b8da74d7@aliel.fr>
 <20260410-add-thermal-t7-vim4-v1-1-19f2b8da74d7@aliel.fr>
 <20260412-abiding-silver-turkey-1623cc@quoll>
Content-Language: en-US
In-Reply-To: <20260412-abiding-silver-turkey-1623cc@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286986-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aliel.fr:dkim,aliel.fr:email,aliel.fr:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:email,infradead.org:url]
X-Rspamd-Queue-Id: 3DE0D3EABB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Krzysztof, thank you for this feedback.

On 4/12/26 11:58 AM, Krzysztof Kozlowski wrote:
> On Fri, Apr 10, 2026 at 06:48:02PM +0200, Ronald Claveau wrote:
>> Add the amlogic,t7-thermal compatible for the Amlogic T7 thermal sensor.
>>
>> Unlike existing variants which use a phandle to the ao-secure syscon,
>> the T7 relies on a secure monitor interface described by a phandle and
>> a sensor index argument.
>>
>> Introduce the amlogic,secure-monitor property as a phandle-array and
>> make amlogic,ao-secure or amlogic,secure-monitor conditionally required
>> depending on the compatible.
>>
>> Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
>> ---
>>  .../bindings/thermal/amlogic,thermal.yaml          | 40 +++++++++++++++++++++-
>>  1 file changed, 39 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
>> index 70b273271754b..85ee73c6e1161 100644
>> --- a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
>> +++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
>> @@ -22,6 +22,7 @@ properties:
>>                - amlogic,g12a-ddr-thermal
>>            - const: amlogic,g12a-thermal
>>        - const: amlogic,a1-cpu-thermal
>> +      - const: amlogic,t7-thermal
> 
> So these two entries are enum.
> 

I will change to enum.

>>  
>>    reg:
>>      maxItems: 1
>> @@ -42,12 +43,40 @@ properties:
>>    '#thermal-sensor-cells':
>>      const: 0
>>  
>> +  amlogic,secure-monitor:
>> +    description: phandle to the secure monitor
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: phandle to the secure monitor
>> +          - description: sensor index
> 
> For what exactly this sensor index is needed? commit msg explained me
> nothing, instead repeated what you did. That's pointless, explain why
> you did it.
> 

Thanks I will add the explanation in the commit message and in the
description here.

>> +
>>  required:
>>    - compatible
>>    - reg
>>    - interrupts
>>    - clocks
>> -  - amlogic,ao-secure
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - amlogic,g12a-cpu-thermal
>> +              - amlogic,g12a-ddr-thermal
> 
> Drop both, you need only fallback.
> 

I hesitated between the two methods. I will change to fallback only.

>> +              - amlogic,a1-cpu-thermal
> 
> And list is sorted alphabetically.
> 

Thanks for the reminder.

>> +    then:
>> +      required:
>> +        - amlogic,ao-secure
> 
> Best regards,
> Krzysztof
> 
> 
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic


-- 
Best regards,
Ronald

