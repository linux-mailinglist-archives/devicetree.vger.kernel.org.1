Return-Path: <devicetree+bounces-281673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDOXEmKUxmkyMAUAu9opvQ
	(envelope-from <devicetree+bounces-281673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 15:29:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB381346132
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 15:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58F3830BFF22
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 14:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE22391518;
	Fri, 27 Mar 2026 14:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Q6242UEd"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA48F3F20E2;
	Fri, 27 Mar 2026 14:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774621460; cv=none; b=Qq08CJaIqfy1pLgC0jVN93HFkxFOC6mgxXxMR6M+5/oQNSgUZb4h+gk1FgTQAWukX4sEu0v9hOlvEjjGEB+qdhjAmoFM4+0+MGEeExPeMzHl+0SboIMOydjqFu5se/addKp49FwtDcTGf0aMmHKE/fuH2T0ZxDbiMum9jiCf7vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774621460; c=relaxed/simple;
	bh=B4keCgz4A2l6iRmTPeNPl7YLtpj6kCreS+MjycvwNVU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=U6D3XdOWhnybvuYfmEa545m6UahE2T/5YsQAdrHDTsFhm/s0VemoS9tdpLrAOi4qthpfnG/rErOBE7x6ol665BJ/WySKQQ1Ay6nqYtbz2/xu6ihZ5A3jCrcAEf2LFwgunbjj8diYq9IayNM1UnUHecxkbLC942DgTgpSquhelcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Q6242UEd; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id E176226471;
	Fri, 27 Mar 2026 15:24:13 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RemHeoGUlZbQ; Fri, 27 Mar 2026 15:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774621453; bh=B4keCgz4A2l6iRmTPeNPl7YLtpj6kCreS+MjycvwNVU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Q6242UEdYnGkMITmednJtWnN7W73/kQKymKpelhsH9b+JswZN6G8HvXM0vk13TfJ1
	 y2uPUww4e6BIIDOolFNxJh+LXQdgSg3XZ7a//HT6F44xjFtYI5uc+BLH6Gky7WwfEA
	 tZdFFCKkkC9pXc4WteNkDoD7UGEn+vt7OA0OwEvWoXdoe4+Kz4BUeMEJOzYT37LVEK
	 YYnesd5LUWNPEK8C3buOHYY0zxzGZOU7EHFOVfc6TfNbFRO0Qn5urqZUtERPLXQiyr
	 vbffMLITtH/1fbdqe/iBvuENcTCkFPyPIbnFUopTqNMtmf0GUFei2Qq+ftTkJsPP1r
	 8JoYLSEqR5Umg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Fri, 27 Mar 2026 14:24:13 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Stanley
 Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend for
 resets and RTL9607C support
In-Reply-To: <20260327-berserk-roaring-quetzal-24dd7e@quoll>
References: <20260326193419.48419-1-adilov@disroot.org>
 <20260326193419.48419-4-adilov@disroot.org>
 <20260327-berserk-roaring-quetzal-24dd7e@quoll>
Message-ID: <7fd85481d499b86a26410d5b90f7041b@disroot.org>
X-Sender: adilov@disroot.org
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-281673-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,disroot.org:dkim,disroot.org:mid]
X-Rspamd-Queue-Id: AB381346132
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-27 08:28, Krzysztof Kozlowski wrote:
> On Fri, Mar 27, 2026 at 12:34:16AM +0500, Rustam Adilov wrote:
>>  description: |
>> -  Realtek USB 2.0 PHY support the digital home center (DHC) RTD series SoCs.
>> +  Realtek USB 2.0 PHY support the digital home center (DHC) RTD and
>> +  RTL9607C series SoCs.
>>    The USB 2.0 PHY driver is designed to support the XHCI controller. The SoCs
>>    support multiple XHCI controllers. One PHY device node maps to one XHCI
>>    controller.
>> +  This driver also supports the OCHI and EHCI controllers.
> 
> Hardware is fixed, does not change. Don't reference your driver changes
> here.

Will remove this line.
>>  
>>    RTD1295/RTD1619 SoCs USB
>>    The USB architecture includes three XHCI controllers.
>> @@ -57,6 +59,12 @@ description: |
>>    XHCI controller#1 -- usb2phy -- phy#0
>>    XHCI controller#2 -- usb2phy -- phy#0
>>  
>> +  RTL9607C SoCs USB
>> +  The USB architecture includes OHCI and EHCI controllers.
>> +  Both of them map to one USB2.0 PHY.
>> +  OHCI controller#0 -- usb2phy -- phy#0
>> +  EHCI controller#0 -- usb2phy -- phy#0
>> +
>>  properties:
>>    compatible:
>>      enum:
>> @@ -69,6 +77,7 @@ properties:
>>        - realtek,rtd1395-usb2phy-2port
>>        - realtek,rtd1619-usb2phy
>>        - realtek,rtd1619b-usb2phy
>> +      - realtek,rtl9607-usb2phy
>>  
>>    reg:
>>      items:
>> @@ -130,6 +139,9 @@ properties:
>>      minimum: -8
>>      maximum: 8
>>  
>> +  resets:
>> +    maxItems: 1
>> +
>>  required:
>>    - compatible
>>    - reg
>> @@ -157,6 +169,15 @@ allOf:
>>      then:
>>        properties:
>>          realtek,driving-level-compensate: false
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - realtek,rtl9607-usb2phy
>> +    then:
>> +      required:
>> +        - resets
> 
> If it is unclear, they might not have it so,
> 
> else: ... :false

Right, i suppose if RTD SoCs had them they would have been added here already so..
will make the resets false for other devices

> see example-schema.
> 
> Best regards,
> Krzysztof

Thanks,
Rustam

