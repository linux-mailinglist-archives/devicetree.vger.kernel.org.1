Return-Path: <devicetree+bounces-314395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x1iMEfIZOWqAmwcAu9opvQ
	(envelope-from <devicetree+bounces-314395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:18:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3485F6AEFE6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:18:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=aliel.fr header.s=courrier-s1 header.b=fg+m3CxD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314395-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314395-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=aliel.fr;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2AF39300AD89
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23EC7390234;
	Mon, 22 Jun 2026 11:18:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F000363C6C;
	Mon, 22 Jun 2026 11:18:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782127084; cv=none; b=aGEKBIbt5Mb9+BUsq18HUH3cC329VVqlwhHAuhMAXYg/YbnhLjPb/HE8k1w6MzBkfwodXZNBHKKvfQdjA5fZFiAonog8ak5tIq3Gz7+5il3NWDMSu5lLu55z8U4wQNKDZhtJXc2RqzJfrfUfEPSs9P7SVuuGFpKv55Ai15o5jwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782127084; c=relaxed/simple;
	bh=HdtF2G1DsaD29ZHA5Zc/J92hjynpjVG3JfparU9m/WE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZvZPl0Al85uhfstR1JYdBlttirEkoG9XXEGOo4KDqCeyGp6PpPFhu/G073wKNaZ8ylYfkcDD3i9h75DVfTpMSlWYvqb6jsX0DTMhjaPJbQ4LVzQpttALPFuP6SZpD9F59a3SOCq5luuE5/YLNrTW1EedX0cXsw0wjOgKlcT5Uqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=fg+m3CxD; arc=none smtp.client-ip=65.21.61.41
Message-ID: <dc285387-b0f9-4f48-a0ba-c544c5af11fb@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1782127072;
	bh=HdtF2G1DsaD29ZHA5Zc/J92hjynpjVG3JfparU9m/WE=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=fg+m3CxDeoTsbMdqm2wMyM+Wbgj9ubSfZ8BENBPT4sEkGL0IJQbisZ+QP2SKFzzpq
	 3zjM5GUOik+0hVIXsy/39O4ttmgoeIaIqOkVOi4vze+ZBQ+ym/NssY2JStDRxu6bro
	 8kya+zJceqbC+keEof7DdOjBn1R+fApT2BGfb354=
Date: Mon, 22 Jun 2026 13:17:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
From: linux-kernel-dev@aliel.fr
Subject: Re: [PATCH v5 1/8] dt-bindings: thermal: amlogic: Add support for T7
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>,
 Guillaume La Roque <glaroque@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20260424-add-thermal-t7-vim4-v5-0-9040ca36afe2@aliel.fr>
 <20260424-add-thermal-t7-vim4-v5-1-9040ca36afe2@aliel.fr>
 <2e2a93c7-6bf9-49f2-95ed-f44cf767e9fd@kernel.org>
Content-Language: en-US
In-Reply-To: <2e2a93c7-6bf9-49f2-95ed-f44cf767e9fd@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[aliel.fr,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314395-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:linux-pm@vger.kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor.dooley@microchip.com,m:glaroque@baylibre.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,microchip.com,baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3485F6AEFE6

On 6/22/26 12:02 PM, Krzysztof Kozlowski wrote:
> On 24/04/2026 17:45, Ronald Claveau via B4 Relay wrote:
>> +  - |
>> +    temperature-sensor@20000 {
>> +        compatible = "amlogic,t7-thermal";
>> +        reg = <0x0 0x20000 0x0 0x50>;
>> +        interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> 
> 
> This wasn't ever even built! Really, it fails immediately. I will send
> fixes, but quite disappointing that contributor does not test its own code.-
> 

My bad, I thought that `CHECK_DTBS=y` was enough to test
`dt_binding_check` as well. I add it again to my build tests.


-- 
Best regards,
Ronald

