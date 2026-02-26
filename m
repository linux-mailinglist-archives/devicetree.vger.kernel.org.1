Return-Path: <devicetree+bounces-268789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIQLNJUtoGm+fwQAu9opvQ
	(envelope-from <devicetree+bounces-268789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:25:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 091581A502E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 67529301D54E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39833366DC4;
	Thu, 26 Feb 2026 11:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="n/p1+SYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1443644A0
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105104; cv=none; b=XaRxTyuwMk3Z1Fwrsop1Nh4v85ey99nexn3mpo37VKsscdwPDOEhvaY9a1UqfkSJ3RxYE8ZZwlxFbTVNwt/pDRd1xgPrnPz08vBeIOF5NrPL6ZPCUTjd6Nyf2SalRXxl+znG/xOBQGWRA3LasPvQY0Txya2QdasGF5PRN048ibg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105104; c=relaxed/simple;
	bh=qoAG85cQLkPyPVkb7i8S/gUbpDBrputYuNRJ4SQGpNg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CR+SoE6a23jq9vvhPjtYFj7wtE7r9NrqpNPQKe893n7WW3ysjdJjKNpvFBq1iKk8WdNU1eQ6o6jnBhF8bwkhfvETuaeo10Fmol5AtfOkm8Zfwoyj+lo3drN/pB9Cr0Kl1onOIDxY9xonqkn21uCCQ77x0MSN/pNRBgreYe4D3SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=n/p1+SYd; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48371bb515eso10084695e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772105101; x=1772709901; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qoAG85cQLkPyPVkb7i8S/gUbpDBrputYuNRJ4SQGpNg=;
        b=n/p1+SYdFrt6YgNGhj3aaQx5Cq3pxOpub5ZM3RDpqsV7UsGO0y1u2UWb+Vv4MK4Rs0
         q+f1Do0MU0XkZYJWYL5R4b1l3Sw7d2X1yF1Oi8CVjQl0Tvs1jk/kVZ3+TiIUAQgYO429
         Sadbb+U0Pt40ORsmyJMsVzwH2Vfp++5qrqk7MHSml2TLkw2vLcc6OyBLrFVtlBUKNSc9
         KpFMqlqcXGNpGDdfAVAPe1lcCn51Rdu4doc6zVFyEIh2Ctbp+hMhUXL+cdDUX1A4PeJr
         Ye/uMlA3F/P7n1VKXKgbNG3CWfOns1M30BMnmhmYC+MdDkPlRz7PGVLxCs56eT3Naxei
         ODgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772105101; x=1772709901;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qoAG85cQLkPyPVkb7i8S/gUbpDBrputYuNRJ4SQGpNg=;
        b=wnrsw64i8vGMj78NWbeqNtg05hKaQycc/p3gcPjTdLoxU9vu3QIcK4gOxGGYEkfTlO
         Zg3MdHMTBBW87byCSWTJbtpCPXPEY7k5vVKfx65/A4O7U+1MTz/YSUfQSkgF2TIUyabL
         /giZ3FjFr9ztM0JUIph4coJBwRvkVJb5KrJcrU9zhcm6g7/30ag6zi8YnbysJP1o4M+a
         dttmiNmfa1IGQMTaM1YEGMt33G0gSQ2HtDqhbA4pOgXHunoN6JZeJRRXAFvChuXr3ga+
         YUt8h+ICcAHOjdTdy5TYMmKWkolYisyNRd9lJqk6hi/RwUYoNEFNh2T2InWSkMlXIA06
         em1A==
X-Forwarded-Encrypted: i=1; AJvYcCUYLTuTrQ7pdQtLH8GOl6v9+krQJfzEmHbRK7DUC/BEwf4dAnpPDlnNq262biAYQ7VKRTEsNINpxTN5@vger.kernel.org
X-Gm-Message-State: AOJu0YwA9gJ16mY5zkevMsKiagILW7sREqoVJ6fqlTRydm89cmFebYCl
	jwFS7ypbGMxQN3hCzYQPo3hEl8T6GiJX7oUKlRzgazoeN3Azez9eliHsyPf1HyQ7u0E=
X-Gm-Gg: ATEYQzzcEGd2aNqCjrKGpLXPu8ZpS2aWdQ6Y3HyUJNnIk431SnslHONMHIzIca23tSP
	IztSFLseRZPtAiEs+SnoUYZtweyFW5etU+op2KP6F1AzUW8gR+BUMIKfwpSdiJMKaLGEVM8+r94
	jkX26CYfga0ZG5ssuyXlGns7vBWHYsImt/NMgci7m3iwqVi9dAHIekap5htwX8jKvD8Q3mWq+No
	fa02IA3ksXbE00j9h9YYrPj5FqXbc4xkmYYguF4I9iX3bHW5CNvK55qCa43vhCNZW9Cp+2ZHMgS
	ATJiivzAOhOHgVnnOpdsZoabdNx1jWhmHBVNJXF/QB96h0CLP7DI3xFIVsOguZkS6Lzn2ePAphe
	TFypl90VCPMQv3UMQ6ilB3//EzAXMlNmjM7v+eBnnAVqHdnbSuW8txXYQSYiB9DRrLjk7DT8ddU
	LqiCqnSo82eS7qJTxG3cFqfnxZ7fH4Hg==
X-Received: by 2002:a05:600c:5020:b0:483:b01c:9508 with SMTP id 5b1f17b1804b1-483c3da0abdmr31292235e9.2.1772105101244;
        Thu, 26 Feb 2026 03:25:01 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm82044185e9.3.2026.02.26.03.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 03:25:00 -0800 (PST)
Message-ID: <a30132d9-6966-4ac2-82af-b1a20a2b1a12@tuxon.dev>
Date: Thu, 26 Feb 2026 13:24:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/16] PCI: rzg3s-host: Make configuration reset lines
 optional
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260219223542.6364-1-john.madieu.xa@bp.renesas.com>
 <20260219223542.6364-10-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260219223542.6364-10-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-268789-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 091581A502E
X-Rspamd-Action: no action

Hi, John,

On 2/20/26 00:35, John Madieu wrote:
> Some SoC variants such as RZ/G3E handle configuration reset control
> through PCIe AXI registers instead of dedicated reset lines. Make cfg_resets

There is checkpatch warning on this line as follows:

WARNING: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7:
through PCIe AXI registers instead of dedicated reset lines. Make cfg_resets

Could you please check?

Thank you,
Claudiu

