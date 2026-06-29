Return-Path: <devicetree+bounces-317077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 26HrD757Qmow8QkAu9opvQ
	(envelope-from <devicetree+bounces-317077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:05:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD3E6DBB97
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:05:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b="hBnI9cM/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317077-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317077-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 04374308FBFC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:59:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2811345CD0;
	Mon, 29 Jun 2026 13:58:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D3B347BBD
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 13:58:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782741507; cv=none; b=ea95vxruMmmi+AysQ5Fna+qHe0ChEf7JPFv/U5nbLujrI1yGSEso3aHJV4oLRc6S0YwVQA0/cPpCMk5Fr8EjMk30QMdHCT6J/Ox/spgU36g4UVynwewfPsI2Av+o65BaA7d54Sk1nsNw0IzoW1TnBsj/HChSQgIHCa8xzlbnxH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782741507; c=relaxed/simple;
	bh=yOzbqmPiymX68IbIPL916O/Rd6K79n+KEjdHVuEkcE0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=qYSh2aLdHv7I19ugq2WCRNuK230ODtCX3TokMcFxhBJvH6jbBVf52wNItmiFn0SP3gdcuJscXhZPJ32uScMn90uGu0BsRu2ZRZpEOw0xpDSH3iql8vsdo0aqfO/TEDS+JSIaQ44o7JdUPpXufEL40q2ao2xmgzqC4tWUWog1i/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=hBnI9cM/; arc=none smtp.client-ip=209.85.128.50
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4926bd21aa1so23983925e9.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782741504; x=1783346304; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PATmqIJOT58g+w0bwm0EGEjm0V85SjTo4ZbuYUtUfhE=;
        b=hBnI9cM/XkqRekuh1FL8itUOieHjKL5RvGiNhofcP+aAcjgWkS1NPkjMmrbRjtQv7a
         n7AffSrxbpbFB9wIjF2cIbi0M7bZEZsELZ9DPnWh5NtgB3gUC07T2XwOJrBK6Q2ADaSJ
         vgdrx29u+VJKcyUkME66KN2+7yA+hB8D9Eb/r78Th6MM96qSJ+gGxLmRnh7AoQfgmY1d
         stbdnXa0dGXT5dWraQqNgaZvzQ8D+jOfjFq2jRBdxwzqLeFP3BenIDE1ht4WU42PDgZV
         TVDLPvyG6ahgeMdclHyE8Gf2pwxWMim4JQI/CIgxD0/fXRdcRbTF9a3ggrpgSKdIWBII
         cGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782741504; x=1783346304;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PATmqIJOT58g+w0bwm0EGEjm0V85SjTo4ZbuYUtUfhE=;
        b=a6YHJQ8pka6y5ryC1q3g6oT9KXbx6mLUxw6OtQn8YqDaN0W/+LJBh30JQNyWt48BJA
         tWOTlsb55zgKBaAjbH4ybTANMwJz/I6Kg/TO0cixc/nHiFAB3FszYLTCsAfnaLgS9CGX
         iZpf2nnCQGLKVDR4L/hljO1C+KpyW6DviWgpK8qwGdD2P7VmrSv1zBrLSxoAXKrFtl6T
         X0YVAo2P+U4Q8KG7iNFquqUk8kZgqJzqHbrh/8JiQfGYjjO4PQ5AquXdQbYBMeLIiTMN
         nTdJXzoMCpNtqCe6VGeQknWf3qT7S7pd77vQ7VTkVxqBcL8r5OCeRgSMhhPecnXxffju
         HClQ==
X-Forwarded-Encrypted: i=1; AFNElJ8kL2EaXWR2/PD1T5R4LZm0TSXzN7/91kcvCMzP7YRwY4HNu55KXI/G2UATLY4TCwgduZZj3CoXdjM9@vger.kernel.org
X-Gm-Message-State: AOJu0YyvCBm4nqelI4FVBB9mTf204S6QBJGNyk3ndOukSaF58+7o9AXS
	IXu7jFtJptYXtNSHvIAl0+Tp2p/5TW1VXL65a3O2GzZTrBePv0SyPDcET8/I1naKwbQ=
X-Gm-Gg: AfdE7ckAQc6ZvGhA39q5od5lMHGYuXGSczdjzW+maaudTz+A9OJLdBGhXUEkshNqubn
	g8dJqtQ7MkmusiUVRLZ61uhJY3s9E36kanuLpLuAJvqLDv7Q+cJZDHOidWFBGNS/ykb6jg0PPKG
	V29Q3Otc82nsbThSk29AyVobOAZ2obKQugD4ITLc75OMLZKGigdzPqqAVplL6lG4jrvN94ey/ZE
	yPDdkLCLJS4fn931VZatBwa+pmP2aKDFK2BYk4ebj7qHz7vcPh+ZEgnr9X9ikRFAc1A8oJkzJ5x
	EKhLya+I6nLsao4BThnM9KUl0ckUGYZHEd9LKuRFjHmLj0Ox/V+17eY8eiHQFdUZh4LeDuz6jkE
	/eMQ3SdaPn3UewlL5b5undkvhHtkrRHNJPLhAOlrVijpYjpgXLYRC9W9GCyFkupHa4BFABTgllb
	S9dsH7eXJKsWw=
X-Received: by 2002:a05:600c:3b85:b0:490:50c5:8153 with SMTP id 5b1f17b1804b1-4926683231fmr259468755e9.2.1782741504468;
        Mon, 29 Jun 2026 06:58:24 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:1d21:f5d5:2d3c:23a7])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-492690100c7sm351172685e9.12.2026.06.29.06.58.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 06:58:24 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: sashiko-bot@kernel.org
Cc: sashiko-reviews@lists.linux.dev,  linux-sunxi@lists.linux.dev,
  robh@kernel.org,  devicetree@vger.kernel.org,  conor+dt@kernel.org
Subject: Re: [PATCH v2 4/6] clk: sunxi-ng: div: add read-only operation support
In-Reply-To: <20260629130342.73C851F000E9@smtp.kernel.org>
	(sashiko-bot@kernel.org's message of "Mon, 29 Jun 2026 13:03:41
	+0000")
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
	<20260629-a733-rtc-v2-4-7b72112784f8@baylibre.com>
	<20260629130342.73C851F000E9@smtp.kernel.org>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Mon, 29 Jun 2026 15:58:22 +0200
Message-ID: <1jcxx9a1oh.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317077-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[baylibre.com];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-bot@kernel.org,m:sashiko-reviews@lists.linux.dev,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jbrunet@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:dkim,baylibre.com:email,baylibre.com:from_mime,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,starbuckisacylon.baylibre.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAD3E6DBB97

On lun. 29 juin 2026 at 13:03, sashiko-bot@kernel.org wrote:

> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] `ccu_rodiv_ops` omits the `.determine_rate` callback, which breaks rate rounding, reparenting, and proper rate propagation for clocks using `CLK_SET_RATE_PARENT`.
> --
>
> commit 97a1d0e7adc68eb81524d76b0c667da1b5f1be50
> Author: Jerome Brunet <jbrunet@baylibre.com>
>
> clk: sunxi-ng: div: add read-only operation support
>
> Add support for sunxi-ng read-only dividers to be used by the a733
> oscillator detection logic.
>
>> diff --git a/drivers/clk/sunxi-ng/ccu_div.c b/drivers/clk/sunxi-ng/ccu_div.c
>> index 62d680ccb524b..0e3d9e6e30fb0 100644
>> --- a/drivers/clk/sunxi-ng/ccu_div.c
>> +++ b/drivers/clk/sunxi-ng/ccu_div.c
>> @@ -143,3 +143,14 @@ const struct clk_ops ccu_div_ops = {
>>  	.set_rate	= ccu_div_set_rate,
>>  };
>>  EXPORT_SYMBOL_NS_GPL(ccu_div_ops, "SUNXI_CCU");
>> +
>> +const struct clk_ops ccu_rodiv_ops = {
>> +	.disable	= ccu_div_disable,
>> +	.enable		= ccu_div_enable,
>> +	.is_enabled	= ccu_div_is_enabled,
>> +
>> +	.get_parent	= ccu_div_get_parent,
>> +
>> +	.recalc_rate	= ccu_div_recalc_rate,
>
> [Severity: Medium]
> Does this struct need a .determine_rate callback to prevent breaking rate
> rounding and parent rate propagation?

I don't think is a problem in the specific context of this series since
not parent on the RO clock may adjust but it is indeed something to fix
in the next revision

>
> If a driver registers a clock using these exported operations and sets the
> CLK_SET_RATE_PARENT flag, the Common Clock Framework's
> clk_core_round_rate_nolock() falls back to a pass-through behavior when
> .determine_rate is missing. This causes it to forward the child's requested
> rate unmodified to the parent, ignoring the divider scaling, and also causes
> mux reparenting to fail.
>
>> +};
>> +EXPORT_SYMBOL_NS_GPL(ccu_rodiv_ops, "SUNXI_CCU");

-- 
Jerome

