Return-Path: <devicetree+bounces-268794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +G+7E/cuoGkrgAQAu9opvQ
	(envelope-from <devicetree+bounces-268794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA181A50F1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67AB23074E37
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5BA374168;
	Thu, 26 Feb 2026 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="d/MbUPey"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177E7372B28
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105423; cv=none; b=fUQNqD2uQYovzrMdu1sbmY/ae3A3y1sbw+Gg+yBPubJylWjGmNYoSPUx4HRumKXzxVLbfunPm0uZL88WjKTO97XFOy4Rr3z5kRQK8hQw0i9mTpNBAofqWMkwiOlqnDGW+bcJF0LKVcbwMBrl8gYmMK4ZqL4Nqfx4I4KqhUy5Its=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105423; c=relaxed/simple;
	bh=gzOlBY8s8d5K60vNR7YJL060QBQtdO6FKSLNusiqquo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CFkrvkuNknWf8oVfkkRU9XMYeXc2956nEL9oWMQZN0ILkklqvT94EKqbpGRrZxK4CEHa0x7H+N4tDNBrGAHHRA5Dzc7x4Z1s16/dond8rpKdYMwyf/MWp2mmfcnkFGMxK4/iI1lzfLbY9LQ+87TfZpMnmBBB+oNN4IqamIfEIVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=d/MbUPey; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-48372efa020so6310385e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772105420; x=1772710220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5blS5e/UUiqpkutZRn2hy3ZVpuHS9zAQP/d/WpTwzS8=;
        b=d/MbUPeyDFN+DfT14sNwhmtwKmxJb90sfeScVAmoZblvH+dFeVnsaXJQwxk8Eqd+rA
         gaAU2E4eTLjNSRL+TOSvqGX6cwh+pJfV8P7zppJkDr2omETr1lzw7dN/L7ddINBTB696
         RwYLO7nff1BIWbXTpQ3NT6eDnUoFnF7xBVa0oi/MrVEKQx22M/RWUXXwtegoAqN3u9OO
         DAdQldgAIEPTPlibocrE/BdFxmqhxp7OPIe7+uk601zOVXKDrQk94147pXDh60xU3LNk
         l56Lppq52AM3Bhd0C5OD7RbQiRVjARGHgyfsR7yMkhbHKt1fTS4KibdHtuLOSrmPG+lQ
         YFvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772105420; x=1772710220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5blS5e/UUiqpkutZRn2hy3ZVpuHS9zAQP/d/WpTwzS8=;
        b=MvHGuoN6ZpYl5NoJEyjhI+D4Uo+vAc4+/oSYPTqC3LbtbNC+R+n7557Rbpz5EBqdSR
         UZ1CPZtc9sYXqgdpnarqC1wpvPnUuYU9AfdLCgFqot0wTr1MBp6zRXYgHzutNDr2nYeU
         sbAyQ9p7LzjcyV0UDiyWTE+hrRgZMjofSFg0/I+od1QChwkaD1f/g453fjaj60KFizhd
         vHreI+7JshK69RHFIYQCaO3XR2JI8M92QddMsZSVZWRPFnol8KXFPnrZRJLITMwUjSHw
         T2INJCD8Mf1XeYj746nbO0+QfdnkT371m3qaFUgefPZ/VWhiVCuDpOI4rp69HV8xaROp
         /NtA==
X-Forwarded-Encrypted: i=1; AJvYcCU3odDaE94IhwyqwqHKEStEaMeWzX+N9myIPqMijuA8EEqNEi8qXExDkwoFvV9rCCZGO3u4HVwHV19S@vger.kernel.org
X-Gm-Message-State: AOJu0YzE5B64G9Kot4WAKub4GxB93XlTcU/EXkC/CS1GXGT1LY/G7nwo
	LdlKPaBsymp8xZxVOwCJArd30+7aAZ2TFqx0nwHEX15+OOSQn5a9MpLL7pzG+m/1orc=
X-Gm-Gg: ATEYQzwJYUJGODdyXWEW3cRG5GnUxEQbY+0IcCFNM/qdnA23nfY0Wt64N9qMb3/bUyl
	wPELo0Xa1l3HLYntVoBQ1d4bRf9gANxc0Jy6fod62V3ufODkwJG7/UxnucjlpxQw9HK6FdzNz0/
	HFiAv2fJTXeHPfwRf8cnOniOF/49ovnh+GjcyvgPYu7JhYc54S0AlT4iy3OvVScypezc2dv6Kw4
	dQwWKHkC0roEIDGX8fDcTtQIupMPovdOhSuKMGWhWBntHu6F2wr8naC1MMg4bNFDs1yEUI0Rx8x
	AleZuhhr8xG+a3FVas7wxeSfwPSOhT33idOngfungSKqOb0nsUQwOKLQYKfUNs6qNewC8AMUhfQ
	Wafl0rdbeWWNDTml2vn1xWEmynlQj8iHkARNZGn1rkZmiG2I53ykAEDzu3zGo2ys1XvtK2mDPS+
	AscQRpev7DCI3/GRpGmGarKA5IyBBHmQ==
X-Received: by 2002:a05:600c:628d:b0:480:1c10:5633 with SMTP id 5b1f17b1804b1-483c21a582amr59493115e9.26.1772105420441;
        Thu, 26 Feb 2026 03:30:20 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfb77abdsm34249225e9.2.2026.02.26.03.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 03:30:19 -0800 (PST)
Message-ID: <912673f8-fd79-4e3f-b45c-730c8629331d@tuxon.dev>
Date: Thu, 26 Feb 2026 13:30:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 02/16] PCI: rzg3s-host: Reorder reset assertion during
 suspend
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260219223542.6364-1-john.madieu.xa@bp.renesas.com>
 <20260219223542.6364-3-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260219223542.6364-3-john.madieu.xa@bp.renesas.com>
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
	TAGGED_FROM(0.00)[bounces-268794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,tuxon.dev:mid,tuxon.dev:dkim]
X-Rspamd-Queue-Id: DDA181A50F1
X-Rspamd-Action: no action



On 2/20/26 00:35, John Madieu wrote:
> Reorder the reset assertion sequence during suspend from
> power_resets -> cfg_resets to cfg_resets -> power_resets.
> This change ensures the suspend sequence follows the reverse order
> of the probe/init sequence, where power_resets are deasserted first
> followed by cfg_resets.
> 
> Additionally, this ordering is required for RZ/G3E support where
> cfg resets are controlled through PCIe AXI registers (offset 0x310h).
> According to the RZ/G3E hardware manual (Rev.1.15, section 6.6.6.1.1
> "Changing the Initial Values of the Registers"), AXI register access
> requires ARESETn to be de-asserted and the clock to be supplied.
> Since ARESETn is part of power_resets, cfg_resets must be asserted
> before power_resets, otherwise the AXI registers become inaccessible.
> 
> For RZ/G3S, both reset types are CPG-controlled, so the order change
> has no functional impact.

Please drop this part as the order may impact the functionality. But with this 
fix we now follow the config order from probe, so we should be good now.

> 
> Fixes: 7ef502fb35b2 ("PCI: Add Renesas RZ/G3S host controller driver")
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

With the above addressed:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

