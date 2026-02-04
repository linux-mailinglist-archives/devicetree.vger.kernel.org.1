Return-Path: <devicetree+bounces-262725-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ApgFjBug2kFmwMAu9opvQ
	(envelope-from <devicetree+bounces-262725-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:05:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F9BE9D61
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5EFE9300D68B
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 16:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D03D423162;
	Wed,  4 Feb 2026 16:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="atVwjVMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B437241B359
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770221071; cv=none; b=TZAYXpVKC4nFvXCwBcZ6R9b5W4FzYtGe4AJ54mEMP2c0URobJswV3fbl665NSTbQtsgAX1wO8TAjEw4wZl6imjLOCGRhBkXAnDnoC3g6mnpwUL0ZZL3KvJo4H8KM5k2ry4Ttnn3SlPc7hTOBwpn/HGzg7kBw3E4KdudHEo0fikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770221071; c=relaxed/simple;
	bh=zWCABr+ACI/eCGjS5iUspzLSxrwMGXCkg8c7lt9/2S0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LD6fUBJA7L7v87ER2FCN6jVisqKj6DgAhVi5VEoJsYYw+goW4WREaUw0uCk7F5XsD2z9G6fCY+z72djYcpAT3HdHnGcPeNk9DqgM++dmAWqK3VyDWuvvBRBAb9mRdJCgMNOGdANpqB1pAzgYlfp0zdKauGeYpplE9XcWh7uLgTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=atVwjVMv; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59dcd9b89ecso14179e87.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 08:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770221069; x=1770825869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+r6NDajxJtNRB9NrOZoRQuvPv0+7Fqzn7n0uynO3D0Y=;
        b=atVwjVMvosTTgNtGVE2vySPS4oC4yF9z+D2t+tCCyReCWPYja11VDfDxcp4tXo2grv
         8GKTSxhQSU9R3pIuToiRwZfKIdIzfC9W7qYp70+WWo0u42fx7i+kMV3KEFxKXY8Ax1oj
         OtE+qlFcCrcLDR13HYnVMjBdUhPMW0YKq5xOUq0XrIKt6FN2i/tDCdzTwnVC8esdOS6L
         drBRIW3jM7PwkeiD1c45e6MJ1iOZjNb+jSxXeSxTXOavbM22vkX7KGB/Re6YVd88oIj5
         /hsuB+lekrG3C87M25tDCgTa3ciKovWw/uR+9RGnbCw7PbUyYrowqD6WGsuvl+e4b0my
         1DjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770221069; x=1770825869;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+r6NDajxJtNRB9NrOZoRQuvPv0+7Fqzn7n0uynO3D0Y=;
        b=CjQsVgNZiFNa8HtYKRbkZBeoiRL9K1t/Z8L/vO9lTR7JhgMdB0dKjONKr0qCFR401F
         AD3MGz1EwwAJhmpxO6JTopmIiAxUkfxaZ27wZTPB6Lki30VdghOKkum1ndISbZYxwk1u
         ZmNC2LTkvEWccRrpMq6qvQ/tLAaPEkuqiqgDv0/VeyD/OLIwEDlavFOZLd42OZctFGGd
         UPCpqX4x9cLwQXT/xnds6ja7nzc9b2vKc2nVftg1Rbn9YNclEfNpqk3qh74Pctj5avxQ
         UIPw8yQTyKBPd566xrKsDB3fBnfqqBJmIl1fPKmx68Xg9l6zPSqDuFtlnrlKyFRcxxhP
         Pncg==
X-Forwarded-Encrypted: i=1; AJvYcCV9NIuihVR0D/8FT9ojO76ikWUNOGs1/HKU5OWgAalYHO9x9pJ3Am29HH9SuQSLafaCEjJQoVSBkDR/@vger.kernel.org
X-Gm-Message-State: AOJu0YxUDybbLzpAmxBRkqXclTaLGOOuSa5bti7v7CpJkJRY2ZmERAmp
	PRtjiJzivYOCml27eshJgzu44f0NK4MAP7gFy/iBTJdmZLER0/dZtot6FHmIMtk5
X-Gm-Gg: AZuq6aJhXoidXODP0+avgZ2g560jsgHmmecfkM2lSrDYiDyNwcwdOTl6ntHE1nUveFf
	pz4QwmNnQjx79UNsDzez2vHU6a+GAO2qaWBkpYRGeqV0TgRMHpPpvBksS046lloaun7BHD1JVnt
	Unm4L3nkR2fu8sxBs0/aXMX9ywJysxHPH9TSa5FOKl4UsX1rxkModI2QEx4ybnVVbw/u2HClmoK
	EuC2T3mEF3AAVSKda+CPpNXmL4woIziJssZRrX6VeluhT6OST2grXCa1FxrX4lFZZUPcJaWPdc9
	ONdYxbMyBmtUZ30HYsGSkAYZmw5ITOxInZDIb2h+y3dyKoBTQh+D/BrOYqFs70ESHtwcigON0Nq
	8O7NqXiuyfCVAzoI2BlPRn7X+/Cz7GrlCHkZKYRtmhKB9UIG5h4+xduEmotaP8TMh+NLEj5nxsi
	KLf3mtauD8QKeNDykFmpPrerftm7wuL1QXGFgxV/MNVOeM1TLzGRzK5/+wAYDzXYA5F7xfyv6nh
	wO9MYjjaAlLaVeRbTH8NMCt2AbIV5E8HhLD
X-Received: by 2002:a05:6512:158f:b0:59e:13e8:fdbf with SMTP id 2adb3069b0e04-59e38b6d5f2mr1362993e87.23.1770221068362;
        Wed, 04 Feb 2026 08:04:28 -0800 (PST)
Received: from ?IPV6:2001:999:700:7c7d:ca87:d71e:154f:6316? (n7ka2o5f47ode54rg9i-1.v6.elisa-mobile.fi. [2001:999:700:7c7d:ca87:d71e:154f:6316])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e3881b1ebsm755812e87.62.2026.02.04.08.04.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 08:04:27 -0800 (PST)
Message-ID: <2b3e4e63-907e-462c-ab90-0a1a94d91e77@gmail.com>
Date: Wed, 4 Feb 2026 18:05:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] ASoC: ti: davinci-mcasp: Add asynchronous mode
 support for McASP
To: Sen Wang <sen@ti.com>, broonie@kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260203003703.2334443-1-sen@ti.com>
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Content-Language: en-US
In-Reply-To: <20260203003703.2334443-1-sen@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
	TAGGED_FROM(0.00)[bounces-262725-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,gmail.com,perex.cz,suse.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterujfalusi@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:email]
X-Rspamd-Queue-Id: B4F9BE9D61
X-Rspamd-Action: no action



On 03/02/2026 02:36, Sen Wang wrote:
> This series adds asynchronous mode support to the McASP driver, which
> enables independent configuration of bitclocks, frame sync, and audio
> configurations between tx(playback) and rx(record). And achieves
> simultaneous playback & record using different audio configurations.
> 
> It also adds two clean up patches to the McASP driver that disambiguate
> and simplifies the logic which avoids the async enhancement from being
> too convoluted to review and analyze.
> 
> The implementation is based on vendor documentation and patches tested in
> both SK-AM62P-LP (sync mode, McASP slave) and AM62D-EVM
> (async mode, McASP master, rx & tx has different TDM configs).
> Testing verifies async mode functionality while maintaining backward
> compatibility with the default sync mode.
> 
> Bootlog and Async mode tests on AM62D-EVM: [0]
> 
> [0]: https://gist.github.com/SenWang125/f31f9172b186d414695e37c8b9ef127d

it is a shame that I never had a setup where this can be tested.

Acked-by: Peter Ujfalusi <peter.ujfalusi@gmail.com>

> 
> Signed-off-by: Sen Wang <sen@ti.com>
> 
> Changes in v2:
>   - Corrected patch 1 subject title
>   - Retained original order of operation in patch 3
>   - Corrected code comments to use inclusive terminology in patch 4
> 
> Sen Wang (4):
>   ASoC: dt-bindings: davinci-mcasp: Add properties for asynchronous mode
>   ASoC: ti: davinci-mcasp: Disambiguate mcasp_is_synchronous function
>   ASoC: ti: davinci-mcasp: Streamline pdir behavior across rx & tx streams
>   ASoC: ti: davinci-mcasp: Add asynchronous mode support
> 
>  .../bindings/sound/davinci-mcasp-audio.yaml   |  71 ++-
>  include/linux/platform_data/davinci_asp.h     |   3 +-
>  sound/soc/ti/davinci-mcasp.c                  | 510 ++++++++++++++----
>  sound/soc/ti/davinci-mcasp.h                  |  10 +
>  4 files changed, 481 insertions(+), 113 deletions(-)
> 
> 
> base-commit: dbf8fe85a16a33d6b6bd01f2bc606fc017771465

-- 
Péter


