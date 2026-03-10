Return-Path: <devicetree+bounces-273374-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIl2Edrgr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273374-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:14:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 31507248156
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3AC99306E3E9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E292E43E4BD;
	Tue, 10 Mar 2026 09:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RUS4Mkei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4BD543C07F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133607; cv=none; b=rmZ2COjzcoaFjoGlwE3TPwPpDeBE7ppTc3goWsGou/3Xg68zeLVRBAXV5p/Ivy8ed4UiA5XGfl+sJWy16v9yM2vmkvVhy9MWGmZWw2rn9p4TgQQW6yy9qos1dSfpg5VI94lGpXAMOxwrJW7p34W112IbhiNaNx5MJKUrusEYHuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133607; c=relaxed/simple;
	bh=tEFYO0uTGG3RBllERrPF5DzaftMEMRz2sM98VlrUM9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qGMZUVSt8sgf2w2rg44ybR3HEKZimo2FxJo6nTxBVxqr7tv2LKJa3Quqso3mOlP/Pa/YBQeweXZBnGeWbF1SsXGUUSiOgmqQTzZaEoYbyBzy3PpxeGCpxV0sNVIGoG8gPKRg1cpQjZhfEMBraEm7rEeQ70L7Jv7Boxscnq1bVhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RUS4Mkei; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38a4118c4f7so45619601fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773133603; x=1773738403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zl2WvhbFbraZUhYBtyE3J1xua471EsuSkkgP86bdwB8=;
        b=RUS4MkeilU/4OUNanPa4zYQ2neTTHV4O9g5ZfUOnGMUq25/UxTw3Na4BdxdF7qXB0A
         mEBhLzHFNCaEfEDQ6XyU4lSPO4WS8Ow7l2kZMNc4XQRxynXHeN5/cXC34SQ+nsz+Znah
         x4QEt7r8zSSmvdWnJA5f80CXoG2JoMVV9PlvHvYv7bq/QVWBfPUOJnJhRGP0H7q5p/nX
         l/mlrlFm0WUtVYANuu6JECbBiRoZCGdAe7kgYBeyrfwHqXmLNtiqIv1FS7yyhPl/DmlJ
         fLFbtEGYAJyZVYdTYubslCUy8QLjJWNub8Z3oeKPSrMp//rpojEiD6/p7xrxgwcwf3jy
         acFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133603; x=1773738403;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zl2WvhbFbraZUhYBtyE3J1xua471EsuSkkgP86bdwB8=;
        b=CVakrb/RQ+GkESDnBRdSp72iIg2UhMgdHHQTLZ34EevmuSiPtcBmNjdSz1T2csWICO
         tw9EK68kNTFLYPQ7IMlTYO1LkqQeT/8uI01AkRfUpzNbiN2CFZ08iajNz8ip3g9CiylH
         ydJ5eE6SWjLLe2VWO8C+5pK9nlYXnLVZ7LvVY7Sc9eVdyy081UfvYrj3JNM/EUpujso+
         Fhok+SvGilXLGa6xMgDxWEuF0h9LGHXabzqDkjWAUaNAXPZRET+LrgO16/aTpwK3Hcf+
         fU8KjUnnq3W/5lO2PldrRZqS1JjkdspbHHa1cgUIXe28DcR1VnGhfzjoxLqdCAcnVeQP
         mvpw==
X-Forwarded-Encrypted: i=1; AJvYcCVleuMm71s9HcB5hBqsUYsYZDii9jfg/kO2zwXtoQbDuA+UuyTSRZUktKgGRI+ecRddaEC9CSKhH6NB@vger.kernel.org
X-Gm-Message-State: AOJu0YxLXFydiT2vARDSSf540Fw/Pz6VL4OIYP5vX1DYfGHuNI/rBIXE
	8n4lQfS7pSKgvK2dKGma21ERHUeP5P0Cgt8d2V/ASl04aia4B5QMNezz
X-Gm-Gg: ATEYQzyFu1phX202Pvt3BzLM3yDNffb2bAiXmHrpIugcOJJ7UQcWPV4EiIGBIFnVqO2
	9x5r36PugQg3dHxeUV+D2+1Tva8LDrbFJkn9QmrZ+PmQA8Eb8qH57z7dK4ljdc5Zy9xgYDXVSP4
	14vVNJLebkm/7UKxEOyqDXRW4W/WDMlw8+g4K/Clr2liIhVzPwmdKgr+AsixNeG8UKogqCg+5v/
	1nngKptR/U7AE5A9zPCD7lq36BItuNyJzSulbVaJdhGc8IqO34kTRQjHMenzwrzVNVOmj1HcHyi
	6BUxSkObDm6bdIFbMERQXQ5H4LY9Zjh60oIme/WOOj57IwVuGG32CcHZxY8VD/+C6zbXUA8julK
	nDXJfUgxY0N0qTdc72kZhK1O7EuhdRb4Ff3u1tv4Ph6Ufoh6uwliKQvwpNwSCqiFpjbxxcoz5Il
	BT5zhMGNUVAwm2HLfN2GXpQcYlFUkoteI5qn95PSzzd5OFuMFvxk9P+jZJ4uzkCyDLIWR6eqLlb
	q+yZKFT
X-Received: by 2002:a05:651c:4198:b0:389:f5b4:46cc with SMTP id 38308e7fff4ca-38a40b4b95amr41127041fa.4.1773133602805;
        Tue, 10 Mar 2026 02:06:42 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a5cfcb1d5sm3371301fa.16.2026.03.10.02.06.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 02:06:42 -0700 (PDT)
Message-ID: <00f4efa9-bdc2-4f10-a3a1-88bd16ac38ad@gmail.com>
Date: Tue, 10 Mar 2026 11:06:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Matti Vaittinen <matti.vaittinen@linux.dev>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 31507248156
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273374-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 24/02/2026 15:11, Matti Vaittinen wrote:
> From: Matti Vaittinen <mazziesaccount@gmail.com>
> 
> The ROHM BD79300 is almost identical to the BD72720. Main differences
> are the initial values for some of the registers. Thus, it appears the
> BD79300 can be handled with same software as BD72720.
> 
> Adding the compatible for the BD79300 enables people to use the real IC
> type in the device-tree instead of claiming it is BD72720. This does
> also help differentiating the ICs if appears it is needed.
> 
> Add own compatible for the BD73900 and mark BD72720 as a fall-back.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
Hi dee Ho peeps,

I wonder if this should go via MFD tree?

Also, out of the curiosity, I saw:
 > pw-bot: not-applicable

in Conor's ack-mail. I suppose this has a meaning?

Yours,
	-- Matti

---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

