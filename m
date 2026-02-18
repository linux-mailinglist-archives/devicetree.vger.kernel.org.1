Return-Path: <devicetree+bounces-266340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L8sK0iKlWnqSAIAu9opvQ
	(envelope-from <devicetree+bounces-266340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:45:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7B5154D47
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 79B733012D13
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43D3C33D6DC;
	Wed, 18 Feb 2026 09:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kgVamzm9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0106533DEC9
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771407931; cv=none; b=HhfXWJN0gBVIDF8tARSUlqt7GJC1eQeC3aQv8/q+b850GzHpt5gCX5oGSnJ75soGErmaBgSILlApd3DG9tHRn2xvPiOU9aGKBELVNpwyrOS+CF2vIJzkq3kykvo5NRX/0DgSaHfkMHMxqXdAoMbBEtzBGGtgk2gPJSE2Mv2QTY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771407931; c=relaxed/simple;
	bh=YCOAmjsN9kXhrTZWAk2E6nDj/ynlM1w5oRr4v/Klx9s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lE7xojHegTj3SyHTKA/3+2aGYqKaGp2ZgbhT6w+boqb8eovtFPDnwbFwTZ0rkQNDRAQLGv0AFnbfBerVFimp1GZ3eOlX/8mA40gDfiT/DNYpjcHtygUK/Jzt9Rpeqzd0RcHonTyIpTr3r4NnBEukp9L439lRm20yqZzaMfJ2lbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kgVamzm9; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso38685585e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 01:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1771407928; x=1772012728; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pC1HV6hNu4TvzuNURJRScNNBHM+A82AzqED9Tu3H9rI=;
        b=kgVamzm93D4C107pIWRwEo3xrXbFkob1dh9XXrLjFd2K1n/nrOGrbqTwpzkanj/+Pn
         Q+zq7qABpEQqO1J9NOhPZDkl4JWEoA74unu+Qqc0N8ljecqOMX+Ihp6OjaVvuZGTK4fa
         tEL8gAZkEaYLsU9mLblA6XDk8zHPq277sAzkBrRYc66+54js4GebTBRt1+Zl2vnMcsxX
         x4kF6AZq4KrARUQOsK5oHNsqCuccpDQNJSilwDUtxirGhXKn0mcJKrFAC8SGrkG52BTV
         z03RlBcFilYW7gNeH4pRGQu63dEnJX2No6nz+fcH/XMy6HKp1an6gy7TRTJWKFgC7U08
         GCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771407928; x=1772012728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pC1HV6hNu4TvzuNURJRScNNBHM+A82AzqED9Tu3H9rI=;
        b=JjoP6qgJ8PxPPl4ugZkSuT3gbkiK8dZ7NRBca4Wyxyy/9rDwX5R93DWjH+k6R3E5z8
         skWW1sULcI73obd5dWKsF/b86zMG9rkZsLH96XUowmqx2cU8ovnTm7JLJcVLxE9178dY
         Ln8dkyVl00MTTsK8jKCWU8DDwyZH3U6g95Id2Iq6nTLMcFWlpH3F02Xi8oBllp6GOXlH
         +CIAZ9tKOwCNRE6BA7Ilz58oxrXxn2MUaMdrzAUA2oZS19T+49KLBmmWaMv6EXOxfyEv
         OiwAXTVo/gVf1mheRPKKBAIyWXqe9ZNt3Idps6NL/vptt6hmzaaejmEPW/U2bhHvcNVJ
         6ZkQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+l6xS7+FuqKkfbUQZT4G6Q3O4Z7a+v/4PApz7dIHJRTW70qvRHEk4cqhBQHmFUIZ0B2txhy2EHEL0@vger.kernel.org
X-Gm-Message-State: AOJu0YwvQiG6HQCC2pBeDPYgwBwBffWmpB9LXrT260BwZGXcTKlEendf
	IJ+y7b9YUeRZiONHUy7NKFuIkvTQpfqG/xkX4/Bwsj+PdsvrTFiaSTXJu9KWBYfndD4=
X-Gm-Gg: AZuq6aIJCeO4xFOs079B//dJ6ae4yI5DJ8dJzs4LVrU7T7VEOb74uj8zKB9XZxnYJew
	4/lLzMEMegYdHLvBO7VsAzQS7OGhU+rDB3CkLZZ+5yP4VcW3OgeXhByba8AhJtxa+K6Bd0oMdSx
	HBFZ6A7gZ+bSEzpuojDc7sMja0OQiIBZeVrFcQALkY9qNBsnmxbfxq8I6dVlG+QhxQdNFgW5CcX
	9YSGcD8lB5dLP0KbG3S3ODlmmYhopD18QM2hLLWGiTHaAwkJKdfv0w5LzPMD8civUZ+DtDJOAhZ
	hi09w5IC8PYrw7RfFDQYKqqzpmtJdGCkXv2V/1YW6SKBW4l9WN9fkpKm7iML0riBq66akPh+5kb
	gHt1G9tx5PYqfSHvN1Dr2JZ0Ew8U5BE0zHNVosnJ/d3vKQxYAHcS+sLH1mJjyx0ezaSwvPC183F
	Ud45ivI35v6kwa+yC80SKIgdt0YtUPsQ==
X-Received: by 2002:a05:600c:3110:b0:477:73e9:dc17 with SMTP id 5b1f17b1804b1-48398af0206mr29610415e9.35.1771407928313;
        Wed, 18 Feb 2026 01:45:28 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abd793sm39808839f8f.25.2026.02.18.01.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 01:45:27 -0800 (PST)
Message-ID: <4156e321-af86-4794-98be-f64235dddab0@tuxon.dev>
Date: Wed, 18 Feb 2026 11:45:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/16] dt-bindings: PCI: renesas,r9a08g045s33-pcie:
 Document RZ/G3E SoC
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260210113041.138430-1-john.madieu.xa@bp.renesas.com>
 <20260210113041.138430-7-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260210113041.138430-7-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266340-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,renesas.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F7B5154D47
X-Rspamd-Action: no action



On 2/10/26 13:30, John Madieu wrote:
> Extend the existing device tree bindings for Renesas RZ/G3S PCIe
> controller to include support for the RZ/G3E (renesas,r9a09g047e57-pcie) PCIe
> controller. The RZ/G3E PCIe controller is similar to RZ/G3S but has some key
> differences:
> 
>   - Uses a different device ID
>   - Supports PCIe Gen3 (8.0 GT/s) link speeds
>   - Uses a different clock naming (clkpmu vs clkl1pm)
>   - Has a different set of interrupts, interrupt ordering, and reset signals
> 
> Add device tree bindings for renesas,r9a09g047e57-pcie compatible IPs.
> 
> Reviewed-by: Rob Herring (Arm)<robh@kernel.org>
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

