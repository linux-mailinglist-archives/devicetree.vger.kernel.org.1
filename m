Return-Path: <devicetree+bounces-262730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKEYG1V2g2mFmwMAu9opvQ
	(envelope-from <devicetree+bounces-262730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:39:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EE4EA60E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5843230292C7
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 16:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D542F8BC3;
	Wed,  4 Feb 2026 16:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wjn9pUFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EAF2F619D
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770222897; cv=none; b=MEG2CD6Bea5g8XzT8migdMZ0x7e/Q4rXUE1I4x3ugWOQGO+OEZUSSvw/VoYSDbvLmE5q8fZ9jSqmJiUDzpv3SBa2ay9ABw6dvOCjB2qkeyQI3+CxA4hNA+SQwlLkzFFZ5oueNz1VCq5sJodUUb43gjjaRL+m2dI29bxHenomTQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770222897; c=relaxed/simple;
	bh=aD3JG2CFG0c/0J99/RvgjjGJymEw45rYyKXCIerd8MA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P2ETHwuBsZM5/ULtyqc+NyBLCa4MaIp7UQPltcviIUJasPBR+ULsVavLOqinVjXand7oK6JrjfyzCAkyXfdVKokydewGi9zwkhok2N22bWczALyalFmJ0ZBPrlUlmo3BxpKlEE2K7HiCrITj4uacGhTiRv/h6c1NQY4G+aPzCkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wjn9pUFz; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64937edbc9eso55674d50.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 08:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770222896; x=1770827696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aD3JG2CFG0c/0J99/RvgjjGJymEw45rYyKXCIerd8MA=;
        b=Wjn9pUFzWfE3RTBKprt0ESn5qv1wW0359wQg8otruxEO3bVNPhZyySwCx0Z4E99JkP
         Mw/M8ll/4anNUm6QOjqhtkp6OTwZRzMegKPRT81TjhFoad3BulgU+eqFXTDmuApHgyBd
         Xh6JsfLrHfj4NwalokwIeq0xSENo2rwRBWf8e3jTzJ1nxbsu6YVfr4ULenUEL3RijmTD
         jrbEm35jBCIuSpoKerXunT3pWGQSW3yF5cMxN6NtG+SbK0pclHi3eHUetLqBMfJxgOtM
         aK7Rnb2+Gc8lYizinjUe5qgkG/IcjlqO/eQFRoUMA/YbvpIt7/d8nJtripaNsau8X3C6
         3U+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770222896; x=1770827696;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aD3JG2CFG0c/0J99/RvgjjGJymEw45rYyKXCIerd8MA=;
        b=peB1D5QnuydQxIvgq5GYNIXzLwjGbWiDutIrJiyEVx4lUf8XrXw3HZ1gFozPtDVglG
         znkX3Si0VsWKBLtTAOkSph5O99t/jEcyOEYSEavSvug5ZUW2kT/5KwENsxFGheCyI1Ek
         J0vAcJCAnqUqAAjkmt+2FDcUwrsv1U+DLuzrrS83CtaPnzdn0njDtclvo1FpslB776PS
         e+6HhMLJizuWjuxIFvLbJAGwlcKkq5GW2uYbIylbuBZLwj2etUWLkru84cLhHWpvxDdr
         AO3HBViYAhMAfnU0Zr9lPuKZ7D5Y9PdNQ5BOeUxl0seGEiY1Pmqz4VXi4rTvnwXjUr9r
         ir/w==
X-Forwarded-Encrypted: i=1; AJvYcCUPrEvEM8lLVCmwcbJzTt1gm63Zr2FSGhCWgK+dus0ZjdlU1Z+5yztC6HohK6wK2RXuiIdMaNtBrNqa@vger.kernel.org
X-Gm-Message-State: AOJu0YyYH4S2M+IfbckDOJgYzeHQdHi8UiY4LJjd1cjYB/0oJOWEQQlo
	ZTTdQgYHIq4RVFJSWXIABxjOaTTYYOn3utidx8s0vU0b/CR9tjYvST7L
X-Gm-Gg: AZuq6aKKqNx2BTOsQN/xjgCSuGdXGjhcDmNOPqn8Fa1Zqn7YBD76DLUI3JIQE1WFCOY
	tIzDtJGEdOlio9pxy4EjFy3/XFU7p6LdrZc4TNUG7EO1EYHG1TabUxfLcvaGKwuAp55dnIlumXa
	7e61wM9fjJ2OrfSrWkmuXQeELwD8/ocWp1JWt73Thiz/UlKOAUWCsqzKbx2RnoEnba0dTk8L3qL
	Ogqw8SCNABVMVK7GHslABgRCHnnyfunhutpC5tPbZRiXGYegHnsXZaqFc6P/b1qH48e/WAgpkus
	0S/K+TmcGckg94KlT2o74MJPNKQ3gas0hpFTSN8rGFW1+chNoMnKbjIlxx9x9BxTMnY3zA4Rq6V
	tNzzecrQ7yEOvBJWmJe4yx3E3ZzFcuV73Zrl2gpjYjkq11pIg/CzKZTYfurvxPl/Ae2frpbos8k
	3zhRALC+gBxVbuJw==
X-Received: by 2002:a53:ebc1:0:b0:649:af6b:7427 with SMTP id 956f58d0204a3-649db4bd3aemr2658511d50.78.1770222895989;
        Wed, 04 Feb 2026 08:34:55 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649dc4b7e06sm2822790d50.6.2026.02.04.08.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 08:34:55 -0800 (PST)
Message-ID: <34824fc2-af03-48e3-98b8-04fae28c9a64@gmail.com>
Date: Wed, 4 Feb 2026 18:34:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
To: David Lechner <dlechner@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
 <20260201-cm36686-v1-2-4949a2a9ba63@gmail.com>
 <eb922433-3951-409a-a397-b48efef57b7b@baylibre.com>
 <b133521f-434d-4972-82a3-6e7978e557bd@gmail.com>
 <086d6b35-8c19-4e92-9cd1-557b98991d35@baylibre.com>
 <372c9172-ea01-4a3a-b737-3f7f14519791@gmail.com>
 <0b001503-5882-446c-a0df-642a9f75e7e3@baylibre.com>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <0b001503-5882-446c-a0df-642a9f75e7e3@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262730-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 24EE4EA60E
X-Rspamd-Action: no action

> I assume you have the hardware and can do a test to confirm this. :-)

I tested the formula used in Xiaomi's driver in the mainline kernel and
compared it against the downstream kernel, and the lux readings match between
them. Therefore, I suppose this solution could be good for now.
Although my formula for calculating scale is wrong - it should be inverse
proportionate to integration time. So:
80ms -> 1.28
160ms -> 0.64 (what Xiaomi uses)
320ms -> 0.32
640ms -> 0.16
This can be achieved by multiplying als_trans_ratio by integration time used in
Xiaomi's driver, and then dividing by integration time we have set up at the
given moment.
For example, suppose we set our int time in mainline to 80ms
16 (als_trans_ration) * 16 (160ms / 10000) = 256
256 / 8 (80ms / 10000) = 32
Starting here, we calculate based on how Xiaomi calculates scale for their values:
32 * 40000 = 1280000
val = 1280000 / 1000000 = 1
val2 = 1280000 % 1000000 = 280000
And that leaves us with scale of 1.280000.
Of course, comments on how we came to this value would be included as well.

