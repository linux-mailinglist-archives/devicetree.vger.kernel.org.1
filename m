Return-Path: <devicetree+bounces-276886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HcxHGP1uWnRPwIAu9opvQ
	(envelope-from <devicetree+bounces-276886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 01:44:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF8C2B4AD3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 01:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF610301DECE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 00:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36EA721E091;
	Wed, 18 Mar 2026 00:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b="Am4pLtbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1DB21771C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773794649; cv=none; b=fl8o72vRpF4f9ZFDK9kAuKBN8OZ0PqLQh0GtsxYvxj0LjuqxVU3+DG2x/YLIdUXS7aASozY5vJU2YGE3yTDyYsAt5KLOM43+LXuLEDDv4B/FsUxvcncsXJXObmqs/3javex4loRm+xS3PoABXmuGICxHjG57jvHryohj+4g917o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773794649; c=relaxed/simple;
	bh=NGoE1cDoBcTftVSQ+ZwV650yL2LvXWLP8EZteCeKrZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SphBn8AgSOomRslLvTDWAWJvuf2DNRiTw0fUbLEAZkzCLwgCipys/ECWnLRySHzdwYi2Ckv30Tnp3edgcPWyuwUhJIxxRiCMMRAnynfyEzkA/KO8cXmJeYuH7HzejuFEA1Ej50cQczyAhrfKeL9QSwIiKqRngrrwQsFbQlln8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net; spf=pass smtp.mailfrom=pardini.net; dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b=Am4pLtbB; arc=none smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pardini.net
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso7610797eec.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1773794646; x=1774399446; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z3klIIEcX92zdVI267329I5bjpI/sVO4ClpefsxUOMo=;
        b=Am4pLtbBfWD8PZl2n9Y7ItBgJdRHbJJ4wRz1cPJQN8FUEya/Yygcsn9a72XH9rRWm4
         hUEHdRynGCs+9UQrxAKx6CLuDjmWX375X8Ha5BuBSObcR92FES47CDAZ8okf0eG8NarZ
         cc82nxQnts02QJ1FtHaQ80BoklPoMIllO/RA2cOB6PBO6MBoEG2pOwG9LS4SnxOOh/eh
         NEUPYIfHI9ARRZXQjl7OPyoBHEXwtQgolKeRhgNxoqd9JXcuLouqS9v7sknKygdMPaoo
         qzNJvxdC4htViSbAY1sfr0z+3QF+oBZVuVtYBnJLhRsh7VTo/GKHM832wjW3SK5Q0/FO
         fc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773794646; x=1774399446;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3klIIEcX92zdVI267329I5bjpI/sVO4ClpefsxUOMo=;
        b=D6lPskG74XafyN7q4tM4+zC1ZUxcLC72E3BgWkz/BHcKu9roeyRWWJJo05AaEIursT
         YwmXMRqSStWIKfxK/MerLeFlin/JuDVWWiKc4TePCpC4+ZKaoMGQ6MlLVFQ1Z8EleaKP
         yDiSbPxBOtFYGYzeJI4k/8uZJGncp2nYP5slopioC3zZ1MpK5REt7TCvzvXIqbD+jolp
         2kT5K59xew6WF5vxcPGLvhM3Of5eQN+RmyfY4vuGCLTkUXrgQJQeoFAOPRVwqLYoEHmT
         K+TVEfCu53y4vXEPyfItZQ5Y7f2RDW6G+dfYLiGDk+f/ZuVvmOyopKTjWlyEzuMDSnUU
         VoOw==
X-Forwarded-Encrypted: i=1; AJvYcCXKJBss5yHmnrxkzEpeovyxAqaAtI1F22CThO7qSItvxb6N8HKlPMSyl0KB++4/u+57AfOjd8edlORn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5oA4LT2NURQJplfF/RRODbVyeWCBh5G+sH/nQJY8cSK68d2sP
	PWpV5VaIXpSGCkByu6AvWcGJhrHXUmdl1BYgsZUKDamY9u6bJLjJAV9/P/RgWTa9rw==
X-Gm-Gg: ATEYQzyDWHrcewg48eZDnb2vzUSbmEOubGFRlToKEJOspjqJKjmTyQSlpSxlci0Vmpg
	Fvn7LzlaPVFqLZsmqca5AoARpT/ccJS4GY8LYGfuCnlCEt7F9k7cxRSA94gEyyl4WwNfGXnZB0Q
	KqN36+I/AGVTGK597caIG64Mn/rcWXk7BmVtTRo3TmlEOt5gjsQxQ32GWCRXwXNHNYyppwp424W
	w4MysFFXaLbFanH4HfEDOtxxmTQDxAncmdoYXwasj6N9eITTfH7gdFZGR43b3N9VDYUKNX02/fd
	v2jAkTMFnMO2BkZCULyi3pE61gchT3BlmXL3/i2TWoFdKHrR2qB6Mxy8tFuZ2QpUv6xRvTJt+ga
	VqP30Egb+6fIYVwNdqr8rPzG9KPABPVr0uldTsg2Uc3Kc1KQVDSRat+XYIR++zPPcTwgkXUe3DQ
	H+b4TdzJG3XKyce1MGUqBXvj0HOB6ocJvkylgAK4PBcB2KODUDSkC1VrQ/cSAZDF3yGaTqZzJY8
	Z8XBBjnHk4J4+8wkQ==
X-Received: by 2002:a05:7300:ad2d:b0:2ba:6723:503d with SMTP id 5a478bee46e88-2c0e5193913mr637584eec.20.1773794646317;
        Tue, 17 Mar 2026 17:44:06 -0700 (PDT)
Received: from ?IPV6:2804:7f0:6980:fbfc:7d22:811:8e46:acbe? ([2804:7f0:6980:fbfc:7d22:811:8e46:acbe])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c0e55ee672sm1972724eec.28.2026.03.17.17.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 17:44:05 -0700 (PDT)
Message-ID: <c8f0883b-6000-4439-a716-4436100ffc25@pardini.net>
Date: Tue, 17 Mar 2026 21:44:00 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] clk: rockchip: rk3588: add I2S MCLK output gate
 clocks
To: Daniele Briguglio <hello@superkali.me>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pardini.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276886-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pardini.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pardini.net:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ricardo@pardini.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pardini.net:dkim,pardini.net:email,pardini.net:mid,0.0.0.10:email]
X-Rspamd-Queue-Id: 2FF8C2B4AD3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/03/2026 10:06, Daniele Briguglio wrote:
> On RK3588, the four I2S master clock (MCLK) outputs to external IO
> pins are gated by bits in SYS_GRF SOC_CON6 (offset 0x0318). These
> are set-to-disable gates with hiword mask semantics.
> 
> The TRM documents the reset value of these bits as 0 (gate open),
> but in practice the Rockchip firmware (BL31) may set them during
> early boot, preventing the MCLK signal from reaching external audio
> codecs. The kernel should manage these gates explicitly so that
> audio functionality does not depend on bootloader register state.

Hi Daniele,

This series fixes ES8388 audio on a board (Mekotronics R58X-Pro) which 
I've not "yet" sent to the list due to lack of time but also because 
analog audio was not working.

Without these patches, the i2s0_8ch_mclkout_to_io gate remains closed
(enable_count=0 in the clk_summary), and the codec receives no master
clock. DAPM reports all widgets as powered on and playback streams run
without errors, but the hardware produces no sound — a rather
frustrating failure mode to debug.

With the series applied and the board DTS updated to reference
I2S0_8CH_MCLKOUT_TO_IO from the codec node:

     es8388: audio-codec@10 {
         compatible = "everest,es8388", "everest,es8328";
         reg = <0x10>;
         clocks = <&cru I2S0_8CH_MCLKOUT_TO_IO>;
         assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
         assigned-clock-rates = <12288000>;
         ...
     };

audio playback then works correctly, tested on headphone output; thus:

Tested-by: Ricardo Pardini <ricardo@pardini.net>

Thanks a lot!

--
Regards,
Ricardo

