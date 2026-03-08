Return-Path: <devicetree+bounces-272594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id y6YCCuGfrWm45AEAu9opvQ
	(envelope-from <devicetree+bounces-272594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:12:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AC023107C
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0529D3012EB8
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FEFF31328C;
	Sun,  8 Mar 2026 16:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FlEmjmFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B54431328B
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772986334; cv=none; b=ttdkSxaoU44Bq3NJLlQ1IGE/mwEBDcDHIiY+ip5/6Q2Yr4fQKLttkgPG/iz1V5R29Y6hYb21m2S3qirSTTFOw4DMfchE5/2n+/qvEFea25cJ3FZxb3MrA3le5X7YnwVyHj3s48Gupk00U0qJlirohPZ9IFh201sVJq0jwY68r7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772986334; c=relaxed/simple;
	bh=LjFlqG3/syx+R7HqVGg5skm86j3H1h7rW3ze72w6frM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CWj80YVeiDL66s20oIxJhXTjE0sEcD5gbUKcznQSAZKUp3ymKmHgkNaWZZitP3XgDAPhFn+53OORvrKERl9CL1il2Od3iemwj06heS7l8Uzp+QOELqmbO3jGR5mz9RJeDGcBYbke5v1LpTTig+bpmKOgxZOOMekZupWwjEyO9vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FlEmjmFv; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso96693005e9.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772986331; x=1773591131; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MCvFjV8EVaef8yL+ehrSZi3neS4JtlD4VmzZ+01tNOs=;
        b=FlEmjmFvcnmNOQvtP7rW2P9zsKXSq5C0pcQmGRM4Y2Z0p7wEWt8pVBCp/kGLv0eW4k
         JP/pvOJVVMn2lJaqNhuKC7W/mVQLd5UvaEPrtdf7YaB89ztFjTsfxZYLO+lrsonQ7GV9
         nHmhIp9TPPr+4MyIbfIBrd9ik77Fna7fTS6tjqKH7K1tFiadE8tPhnBIqXERhiUbsj2Z
         n5vB1U7OgiriDdqYp5z7+5Rqb4+G16KVtfWCL56OSSvmWTtVGdgv6NTE+hhumNPjCTou
         yHRxdnrJedSFUTau5UAHbEr5mDNFaFMAESIhIwhaFMvX0/0q3CmTnoVUwyOtEpQ5400h
         SySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772986331; x=1773591131;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MCvFjV8EVaef8yL+ehrSZi3neS4JtlD4VmzZ+01tNOs=;
        b=QcAaN+5Ukxjc408ty/yav23H0CtWy0BCR+Ij/XEL4CLSUM5PZ4mpVQICdnOwVYUGUQ
         bjU2ksu2EcDWFPANg+1Wdv3GldMDx3TomqzkJM38aTXZfAj0vs7rj65Qk3DpUgBh1A0e
         Pqcl71zwdbwKMK6I1/EB1izV9MHWo3HNEiShcGZb2A6maWzxOZIYrUFMPtt25cdkyfwj
         9P+EyUPulLPvXfTGhuCnw6UZ4sHrBXILfAKVHf+999AZs6oRRyLQ908PP+BvKjyokgVW
         GbD6GvyHDtImADPgHkzXz7UNTEL6XYqdVBUL0BN3kOmiDU5dmCxTp661YP5YRyfA4DNn
         Zkhg==
X-Forwarded-Encrypted: i=1; AJvYcCUOsVj3j6ljrfvZglu5P5nTYGmGNQVQp6SQRpvSHGpVWFeEcfNpw7f0hipAu2e3fjgap6cuqGfv5okW@vger.kernel.org
X-Gm-Message-State: AOJu0YxTDUHSuGzkcBF2IHAaUS/bCAFyzRlVa+jxq2B/SMFtAmMm075d
	2kSCE8ago/8FlB+X5VDL6KNe3A60Bu8Tckms80m2CLBc7nIgnIHIyM9FMCBhY1WfAPk=
X-Gm-Gg: ATEYQzxiyTnxIk0zfyLrrD0cIMqPhFtvY1UHtoEDd12WocphevN2Vk9KT6bXikLMdnZ
	DUzNcWcp4csX4LflStUB3+opT5pDhtUoroNad11TxbYdXATmuB6jiNjkmT7IzaJI5+xZQElIA/X
	gBh24abAcyEvA/vJABLKl/Fl9Nx29PWmiGZaEq9AIqONYtN/TyzMj7Cpx7aTonvewUmLRVYzAla
	AilWm9o6r4eK+kTDObzBdilV/SIkjjcTknz8lecT/Xy2u9PjS0NglZi7bPNNqNzVMl0zZM7zynr
	I0BryLm9MfW5J20fPIJ/qzH8gNaM4yxhmL4LVVQFhrgGAGqJiSurbaUAoiH0QdjHPqUXpwJCrEr
	eKJSrfwq3hyx8yriY+GFdrY7youCz/plmIo06TGlTZ6WRAoQz0Xl3pLSuZ+3jH4wimdFb+UXFTt
	reR0T7E5IF34lNdPRsCeBTE0W79Hv/Z0j0WmfGXybe
X-Received: by 2002:a05:600c:8b5b:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-48526927a4dmr139650865e9.15.1772986330688;
        Sun, 08 Mar 2026 09:12:10 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853149caffsm37960475e9.1.2026.03.08.09.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:12:09 -0700 (PDT)
Message-ID: <7de6368c-0b9b-46dd-a752-e063f88ae164@tuxon.dev>
Date: Sun, 8 Mar 2026 18:12:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] clk: at91: sam9x7: Fix gmac_gclk clock definition
To: Mihai Sain <mihai.sain@microchip.com>, mturquette@baylibre.com,
 sboyd@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, varshini.rajendran@microchip.com,
 cristian.birsan@microchip.com, balamanikandan.gunasundar@microchip.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 ryan.wanner@microchip.com
References: <20260302142008.3253-1-mihai.sain@microchip.com>
 <20260302142008.3253-4-mihai.sain@microchip.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260302142008.3253-4-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 70AC023107C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-272594-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi, Mihai,

On 3/2/26 16:20, Mihai Sain wrote:
> According with datasheet [1] table 12.1 the instance ID 24 is used
> for gmac generic clock.
> This patch adds the correct gmac_gclk entry at ID 24, aligned with the
> SoC clock layout, and removes the old misplaced 67 entry.
>

Something is wrong with this patch and the next one. I suppose it's the missing 
version number in title as I cannot grab it with b4. Can you please re-send?

Thank you,
Claudiu

