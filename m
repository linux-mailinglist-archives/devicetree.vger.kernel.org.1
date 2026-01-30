Return-Path: <devicetree+bounces-261237-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHl8NeK3fGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261237-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:53:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C231BB5E7
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:53:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D368B300A757
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98CE330EF94;
	Fri, 30 Jan 2026 13:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j9p9aum1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD772F618D
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769781194; cv=none; b=fiiR+x4vFHZ1PJBS8OAdwf4nsYhI6iXWlHHf6mmOLUuoc6e+9s9aCufeUuD7Iqj6MxLJVTWWzpD0iL/lmlUG655kqtT2oW8uQBqFKUn7uyYyqGTWg3OuWnGxjgTDHZUdB80v15EDWvw0FuWLvIXLG6nSDbqXlrduGZIont9xxrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769781194; c=relaxed/simple;
	bh=lwHSW4yFYrq7C7ukeFfwIsI3wJJGF+4yOoFIz+TjZ5g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rXtNT8+cfrA6fXp3vQ5O9HEvnLwYUQJOUUujiEPMSNuig0yp9MhNcvoiReK+BYKQ/czLEu42LbV/DveLRdvYaQnhittWOrj7GEsZ/jEderyqDfXiZ4fu32d0f6OMUKjfIBY8uMTKxe2DDngNjmJaNmxKT9TdFy2wRONDfhP0LOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j9p9aum1; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42fed090e5fso1763084f8f.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769781191; x=1770385991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fNa01vI1UZD/5USaqCSEKUoS+bCUzsBbRR38Izr8E/4=;
        b=j9p9aum103ASP3lhsVEfnlwSIoGAyxtiSTo6tkByhWegAU0mxqrwxFE3d5vVTHk2vI
         4CoEWn8ekznsO9E2gt85BFVSFAPNjSKf4myuLEdPHVC4oJlv2YBIixcRFwpeH4Gt20E9
         HsazsICOEjJw68HX+GKbQeH2caRhcQyEDy8o8vdGvhKj1Zh3xq+SLg6tO2Tvq+TzbO9Z
         0bPJ4nsoFskMkaP7iWelAxix1SYRGsCtk0QU5Zf1XbEvey3OXZ98FRGCGScn25q1B4mB
         85aH4pU680PVXKpEELD1r7kFUFAvHm/cY8+zb/KkVjlGRMHLB20y0HwBhH9Z1liLsjuP
         ggYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769781191; x=1770385991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNa01vI1UZD/5USaqCSEKUoS+bCUzsBbRR38Izr8E/4=;
        b=RP8cwqRVg1scIPZunV1Czf78D0xGEYnsgP+6JDwkcSszOn6yqGs5q4DxufTwSVdRq5
         CpkGqS1cDanCU+uBxTHCzNlS0HvqeSmuXz15SBDmARX1SpCecJMvMXtAmRYMBuWxmwyi
         jAi1VNRMbu6hmNcSHukr97Nd9Wy9/9BUa/zpkJEfDMCD5um808w0jdP1UA2vycG3kUEj
         ikM/hYtnMmjdykDFpgxBGLNSu4ii4dsz53EVhO8tI57sUMJKaYNG4OTfb6ucG4ShjKRT
         SI8RStBHniKL+gYhApd/PObDrRo4Gkr7DauNO9ng7mIifeWY2YvZGHG4Xo93ehPRm1Vw
         HDtg==
X-Forwarded-Encrypted: i=1; AJvYcCWD7AyE0ODOcRUKRL5NrPLMuJZrbH16QFthv0mFNmUVbZezQ/faiB8bh3zYeB7fOb/vJcpLHtrNemvk@vger.kernel.org
X-Gm-Message-State: AOJu0YzpmNlSD0wit30nyiNF9xxCkeHSg63BjavmbOx7FtmKD06/hwCP
	Ep7YqM2LWQjxr5m4BbczTWO5q3sLiWyffCrT6z+kfB3COie/QrHIYqgKAP0VJDR2Yic=
X-Gm-Gg: AZuq6aLwOcnmUjxduMoZHhSMwMH0pkdzPnB/ywV+uocq9nrHsImPixGoS/ePx4DFGKB
	yWJveiuu8U/C91sDKYdhiBQygvsVdoLBPaCVBBRNaap4lFv7fskHHJpsA5PCWvvDJpjdVMlgod3
	RiB3iKSDIkVXXozjejt0rg6RhIfELeL0c79Hq9Fakw149wE6iPBWCvHBDpmvcTElAM9ifxyvtdP
	RSmB91VTwCijXc+QD0Mo8UufCTU7wHryceTJEh9x3Iktr5hmFa9bAkCj9tR2i7QkD0Mf5Pzf7x/
	qpWQXmgdsoqw17ITgKaK7VcKt7AXFPzmw2Ksv+J8EuZzP8K/bY/0+w9Lo+qKMQtQuZ9w+36C7Lv
	vObKmhZAK685m+g/XihEyvKgJz4X9al0gSTL9pNNQx0iLMUCFEKhijEXRM0YjErSObigDsXdnep
	n2Gz+P/iEekSasaMbgcNTkiE0oB5iT
X-Received: by 2002:a05:600c:a00d:b0:477:89d5:fdb2 with SMTP id 5b1f17b1804b1-482db465e44mr31524145e9.14.1769781191115;
        Fri, 30 Jan 2026 05:53:11 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cefdsm22444151f8f.23.2026.01.30.05.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 05:53:10 -0800 (PST)
Message-ID: <d962357d-13bb-4ea1-8eae-e5efa1b9c965@tuxon.dev>
Date: Fri, 30 Jan 2026 15:53:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/15] dt-bindings: PCI: renesas,r9a08g045s33-pcie: Fix
 naming properties
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 john.madieu@gmail.com, Conor Dooley <conor.dooley@microchip.com>
References: <20260129214130.16067-1-john.madieu.xa@bp.renesas.com>
 <20260129214130.16067-6-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260129214130.16067-6-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-261237-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org,microchip.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,microchip.com:email]
X-Rspamd-Queue-Id: 3C231BB5E7
X-Rspamd-Action: no action



On 1/29/26 23:41, John Madieu wrote:
> Fix a typo in interrupt-names: "ser_cor" should be "serr_cor" (System
> Error Correctable).
> 
> Also convert interrupt-names, clock-names, and reset-names properties
> from "description" to "const" to enable proper validation with
> dtbs_check.
> 
> Fixes: e7534e790557 ("dt-bindings: PCI: renesas,r9a08g045s33-pcie: Document RZ/G3E SoC")
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
Thanks for fixing this!

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

