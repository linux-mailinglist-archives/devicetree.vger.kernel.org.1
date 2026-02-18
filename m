Return-Path: <devicetree+bounces-266343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOySBpqKlWnqSAIAu9opvQ
	(envelope-from <devicetree+bounces-266343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:47:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8219D154DE4
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:47:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FC6C301016B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C562933D6CB;
	Wed, 18 Feb 2026 09:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hF0pr6ji"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC5D33A705
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771408023; cv=none; b=djMTSfFCT9dhv41uG5qyrNYzJ5gqzuTtfWx4ZUSk7TTwKd9djOkeTEuR8/LPtUgZcX2fsweTTQtxrlLLXUmXp/NwoUDCzH0z8FIPtrMFzWrM+gbckk5I3N0ao/Jpl+L1mosdujum+aGAsliFoNaYdxG53qFPesQsmvnfH1Goy2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771408023; c=relaxed/simple;
	bh=ZyrO2BTUvvC0XGd70mrGogYUc7XQ4XFmboQrARHmUCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZRw9TkhTYaD103Sub92IW8XuWO3PUye3BforAKVJ++HfvcFHwdHCDxS/hpVszGn3eQwAB01vjHDYEBCkisfqxr/MG1RPBsVkCpdxqrQlev7sDqOv2rCz62xrtLMwlMa8mDSrx/uZSAUx+xb6/MryEsdTclp203lLiOwOpP7xqNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hF0pr6ji; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-48375f1defeso39470125e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 01:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1771408021; x=1772012821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/iyPc1B0BPSkZP0CkpRNAjkwIO7YfmnXVuQxXaZEPfc=;
        b=hF0pr6jiId7BdBML2N7RUk12zSTJ2+bZdjrYHWDSXIJpZSDv/EEKhEpH9cy7D/ZUff
         iVXMpFFfNTJAc2/h7/H37fl5cMP8rC5VOWZTHwe7p1dVKxgtQ+9/u2RZTJKZvldHy5/W
         ScywWZZ0i5CK0KqDk5vBRX9XP5N3MNwgEJ6ALcsLVMw/c7iA7Y+dszvXMEsTgJxilweL
         RzfcvG2VdJcwJJAsAlvfUpjPrQRNAQO9h2UWx+3uwsBlM2B1tPisPsdhQFQiLmWDv7Ja
         XrY3XFGPQlOt3KNUW4Hkjkjf7ZTZWAHEx/RZe8zbtmrX4NDmhM2+G7j0+cvS8uYRY2/c
         4xAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771408021; x=1772012821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/iyPc1B0BPSkZP0CkpRNAjkwIO7YfmnXVuQxXaZEPfc=;
        b=vDgxNaBMspHmEClepYlAJZhgLYAHC0sZzVPLolI5SqDO22eRjpJBkf/jLQQ+KtfsPm
         jNKk5abqDOQzKLoTbJBGF+fO9u9HeQ5e6/Zj2mTZE9KdsM795rk/54+JvvunO6RFu0EX
         1qunbmKZk5qOwLr9YNKoeNjhCO/OCmKlPSNp/S8h7ZiEaPzvgGt+V+SEuPL8wTQVf3eW
         C+R8QgCFod/6YNoqBiemPv0FgTm7QJs25rIwuLeqmbBIwfYc+qE8rH562fcRcNRF+fcL
         AHTxsgBb7wzND6+vrZ+9ww6klPHxzFWdT3AWoDoeUSKtG3b1UxVI//WPF56mHIS3wcC+
         mU/A==
X-Forwarded-Encrypted: i=1; AJvYcCUDtZ+T8IcjDwED+ca0nTAZqrYentE5lknt0QYziCoGs2lAE4+fcpQ6TMzwQ+8EdLDev/2L/eF9wfsE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1HmVHCAQn2g6kTHyLatFGu1AO2rMzL2lK4FDFnGLqYBghb5kC
	N1Zel1qQmd93c30dFDe9t5/FXUE7cpL2UHiSYCitlRRhYkeljBKzmf6/dTd4LyJVHrM=
X-Gm-Gg: AZuq6aJsJdXMt8mpX45fM8pGG8hKqnCLQLobbWB7KeVESHSZH6SatVfsGy6Qn4UTjd/
	7Yi7qj1/jqBrKD/y6INM0Aepg+lfGVuqNf6JWbmHmGW9PGfkjm9Vba7d5NuLoW7cOZOEaBJ/CV1
	fQAYVtoZzHBr+TyEssOVHxJ50s4ezPwU9lKpQBJT+iCW3jOyDwerzuoJRv70kL/1EMiuP6G2Be6
	Hwm0aWFmgeW0KuqdTxZxmYYakS62lHKic83gjKwOtNpTbFVjDQsJrS0tZnauBluvxtAqXBo7rO0
	xpZY70dKUUowekGdcvgWAfDI43UzMi6cm3iRvBXxi2yUqMb5i9jXiIemfIkyqwiX6yINjXsjZMv
	2KsmVd1woZn+gPOASNRuMUF31wYlAoVrZsE49mFeA2qIjk44y1mB6NeOgCToXGKjvdBFI9CRkS6
	htrIIH6ZviNMrM/Sp3O+qCCtyb10yg9A==
X-Received: by 2002:a05:600d:13:b0:477:5b0a:e616 with SMTP id 5b1f17b1804b1-4839b4c7242mr7100315e9.5.1771408020940;
        Wed, 18 Feb 2026 01:47:00 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839712336fsm15853195e9.2.2026.02.18.01.46.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 01:47:00 -0800 (PST)
Message-ID: <b9287c3e-8850-440d-bb08-aa3af6a6f353@tuxon.dev>
Date: Wed, 18 Feb 2026 11:46:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/16] PCI: rzg3s-host: Explicitly set class code for
 RZ/G3E compatibility
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260210113041.138430-1-john.madieu.xa@bp.renesas.com>
 <20260210113041.138430-12-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260210113041.138430-12-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266343-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Queue-Id: 8219D154DE4
X-Rspamd-Action: no action



On 2/10/26 13:30, John Madieu wrote:
> Program the class code register explicitly during PCIe configuration
> initialization. RZ/G3E requires this register to be set, while RZ/G3S
> has these values as hardware defaults.
> 
> This configuration is harmless for RZ/G3S where these match the hardware
> defaults, and necessary for RZ/G3E to properly identify the device as a
> PCI bridge.
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

