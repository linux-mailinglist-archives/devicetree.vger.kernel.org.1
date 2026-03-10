Return-Path: <devicetree+bounces-273574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEXoBAQ0sGnRhAIAu9opvQ
	(envelope-from <devicetree+bounces-273574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:08:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F498252EFF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62B18335B8FF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0DB399349;
	Tue, 10 Mar 2026 14:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BGFGevT1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAE8391E47
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 14:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151382; cv=none; b=aPPft/e3D5RbqVGUsfycSZKoxcjnA2VJQANJw0wPwJNHHywQqXHNYLAA+wqfvYTr24TpbvLvwUysFySvl4z6paXGCUQOdVmAFVt0ZqbI53c1SfD76Pv8oapPfjqiSDb3n3TbbmzfmzV2QywiWKFI/kRrEGXPum/QnN8GCIsuNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151382; c=relaxed/simple;
	bh=ApfcgGOi1Ye03LN3vCeIJtRCx0yShUmpZ8HqMmrutII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A7kyeG+1MelN/tQ0q83W/xNcPxieWBLCfKfzQ3NAcEmzOvYTAHvy1x525HSuJU/EKvi6+SGvrR0uvcawFFmPe/4O9xu2n4t7Uho568vhFXk/Xycq309z1jbt8n4XIqHlOebSJ5cG3xQgq0rSJL5N6sp6hxp4dCuxyaj1zc1EVb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BGFGevT1; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a126b79512so5498608e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773151378; x=1773756178; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2e8XU8e/GZXxfNkw8jOn3ZidfNHkI/Gwd99YoTVI0Kw=;
        b=BGFGevT1XHyX/7AGe9fQNbmC/5hbFQZ+WlDVd6oFM0NHzYdSNDYUwDyTHXUcdCO4yJ
         UZmh4RIbNenzKtQFdMNeXiZqM6fPpiqcTF6TGo2eys0CXQIDnI253Mnc/9bnCxN1Nfql
         BeMsTJLE1ZlDLtZo6Sznw3lA4EffD022TCsdVoOjCkQioECOaIKN02Mpd2oONLxn5EYQ
         ltzU8VbWpjKtftzmJ4UBYE73iY3uEA1axDUVvUTGkNT+nmHBO+H3+TMNTSHr2RiiO/i5
         ZBS99m3Ly5o7fMfdvvEgPT2PtaA8ZXFhUautRK/uycT0/ZUIUOEPhcWCZRm+2nWasHDS
         B9/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773151378; x=1773756178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2e8XU8e/GZXxfNkw8jOn3ZidfNHkI/Gwd99YoTVI0Kw=;
        b=vYdJuvpAhEw2aTz580UHkhMZUmTtunEZt04ZnKD66DDU7U8kJbVKB+Z4SNVOigh5t7
         Qe6JGVZiBG/uNPGCxpRGta7XbzhVdsWfCChM5TG7zZ/vAsK/TE8/VsYdl+efXNor1bsx
         1Bxpyqmat7SMtG0obUdgtHAJjJqO4/ano03l9kNOnOiISAVXOwMNHgxBx1X0U/i/yS7L
         oP8lW8mwMyK9cDCIlJaD64JIm723JPM0JIsIkGqWCLendW9m5xpHFoPnklOLmmpd1PvA
         5lrD8YB1Mfh+ygBYuZnU674tQUlZDx1kqz9PDLzUMHrzzIndr7WEiUlh6/cKqr8s7DbK
         SAlw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ5k0P8F5lpkXYFj0dsunpLceEvx2DvJxfOuLmL8GM7vhUKt85FEeEQNHlvaIVjzq/CVGsherJL/Pw@vger.kernel.org
X-Gm-Message-State: AOJu0YyItphGU02qRSA52xOBha4p5wgy9hkov78vIsUvbLCohI+XPKk/
	gQ1agUrD9HSCrjT1WkstmzGGGQ3WZqTnai1dxv0Er37EQRH14D4+HFs0
X-Gm-Gg: ATEYQzxtSyyOslWC1BrXU5GSLb0nQLddyzhVd73NU02CH+jjRseIvHHlOl0XIXO1mvq
	AlerbMiQluxviLheeYYyCPAK/+ROgC8w7KFBb7zYDlu3w4lCWHvxrp7WeNkiBzog9k4DH9ZNT59
	kIkZ6cZvlinPQwt8MASkf6kd9XQ6il5gkgiHIqdi0KXP3OcQnEVYTXW7QTPy+rmV4H417HAn3hV
	EqMB9bD+HncUQ3QPi2ca5toOYF5H6oSDZNYIJuydK6UToFjGnFmvQSjQ+aXmIN6ahSragYcPkjv
	Kgs2qp5TSJqBiOeQgoAKYHhuzqo4MIFgS1f+jJbf4RbiHkqYcz8me4GcIPaz8ju0swO7n/+Upfy
	e/IZfaxczshvk2QDe8Sssuvr757M0YiBHbv9+2UjWtyq/wTOxPmHQi7LfA56uQqgZlcZgjV2zMq
	aNn+Plpk3NHHlfpO4N9Q36ZLEU/xjgE56yOAm99+Tf8SG+QzSOlvc+9v1II3kMNveOIMj7FLvq9
	BI5Z0STuXWQJv68GD4=
X-Received: by 2002:a05:6512:1597:b0:5a1:4401:3b25 with SMTP id 2adb3069b0e04-5a144013bc2mr4601873e87.48.1773151378023;
        Tue, 10 Mar 2026 07:02:58 -0700 (PDT)
Received: from ?IPV6:2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703? ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d08d269sm2852310e87.84.2026.03.10.07.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 07:02:57 -0700 (PDT)
Message-ID: <feb4ac9d-c0b7-4c11-8586-e45f89099c87@gmail.com>
Date: Tue, 10 Mar 2026 16:02:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
To: Lee Jones <lee@kernel.org>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Matti Vaittinen <matti.vaittinen@linux.dev>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
 <00f4efa9-bdc2-4f10-a3a1-88bd16ac38ad@gmail.com>
 <20260310130725.GL183676@google.com>
Content-Language: en-US, en-AU, en-GB, en-BW
From: Matti Vaittinen <mazziesaccount@gmail.com>
In-Reply-To: <20260310130725.GL183676@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 7F498252EFF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273574-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mazziesaccount@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 10/03/2026 15:07, Lee Jones wrote:
> On Tue, 10 Mar 2026, Matti Vaittinen wrote:
> 
>> On 24/02/2026 15:11, Matti Vaittinen wrote:
>>> From: Matti Vaittinen <mazziesaccount@gmail.com>
>>>
>>> The ROHM BD79300 is almost identical to the BD72720. Main differences
>>> are the initial values for some of the registers. Thus, it appears the
>>> BD79300 can be handled with same software as BD72720.
>>>
>>> Adding the compatible for the BD79300 enables people to use the real IC
>>> type in the device-tree instead of claiming it is BD72720. This does
>>> also help differentiating the ICs if appears it is needed.
>>>
>>> Add own compatible for the BD73900 and mark BD72720 as a fall-back.
>>>
>>> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
>> Hi dee Ho peeps,
>>
>> I wonder if this should go via MFD tree?
> 
> It was missed because of a malformed subject line.
> 
> If fixed this up and apply the patch.
> 

Thanks Lee :)

-- 
---
Matti Vaittinen
Linux kernel developer at ROHM Semiconductors
Oulu Finland

~~ When things go utterly wrong vim users can always type :help! ~~

