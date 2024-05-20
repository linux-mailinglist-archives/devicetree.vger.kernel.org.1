Return-Path: <devicetree+bounces-67837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4982E8C9DFB
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:18:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D82FE1F21DC9
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 13:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1297D3FE;
	Mon, 20 May 2024 13:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pchLScKF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD5B1CD18
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716211089; cv=none; b=DOJAS933bP82DRwFq7XLNHHq7l/lIrZR1Na4xFjB/Ecc29PtWQaL+/4H4ZgHkMgK8/A5kfTYcHm0tYHs8C7lpBxX4HF0eeqNNpwZnKtCo4G26g/BcBnnDmRKEnKJGRe9gADnFREIgkZRSsvpLaPq8SV8OTC04VdYNjL4OsljL6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716211089; c=relaxed/simple;
	bh=2hALWE8fnBqoM58T1YdEXuHjivXfafCW3bI9ZwC9+E8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rlfzigrfXq2/cplo4Qizm368Ob6/49v6OATfAkDyTy4VgCo1KgSsIuBdzjbPxFLg3xN8hvQmQYicEf/wmQhmsD6eWFFmynyZ4lRNdW6Fa9sfa3F7C3qnD83sC3LsZaSyVISPuJOAE17jy/6scRLga0FaO5uQu3FZ7GhWNjIAvnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pchLScKF; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e719bab882so17044931fa.3
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716211085; x=1716815885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2hALWE8fnBqoM58T1YdEXuHjivXfafCW3bI9ZwC9+E8=;
        b=pchLScKFPMSYD1igrT0unQyxomTHu7+K0MJvcY66II8kL+TpfIlwBtyUvbyZaK2EIQ
         vakKL0YSsWbFSrwVgHENnRPkWdKAAl5Pnb93O1Ts1fUZpN+aXHJ2CMeL4JsCUpxNIDtj
         NTw86IqJhZAty3ikPMRPp8gCQK20YN8+Edg4oDS73W88mk2cqDhP/U5kIJcHRv9PzSTH
         CFGpW8WQT3WuEN0ZPR127PlPMDNLDCRLCUL+2R8zQFv44oiASZct6k4jFSWaF9EnyFia
         HndoB4ioDCUkRrQ65A8y8pRuGF9zZ1crEjdqyXhBr9YPzE8qa6Cwop+m9YbacQgJkPof
         kZig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716211085; x=1716815885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2hALWE8fnBqoM58T1YdEXuHjivXfafCW3bI9ZwC9+E8=;
        b=ek5xaqUTZbjmEIxIy1+HLj/rUIOdgLRCFNTXr72C5Eo8WWmw//He4XrJRzWsdnMC3+
         zquQqIyL84+CSsdmdxs2TnI5zTy1AqjDdcyRjmAW7UlYTx4M7nipSxLMBniDMNDaJbhG
         LOtl4r8hRUa3+pEuoys7B5ne8eEKqRjGH1Ko6oYe/V2UzSTuSS0b+WoSOw0keLNEnLiZ
         qtr+d+kbbcSeRXbUJGkCfhm96Ma9nC/U7q76pwy05T7kAA3KBwrbDk8WDqss/Grfbc0W
         /6rJNfGQ+lNOF+7jXf4dG8bsx3bjwCNXXXlVBoSeq7ZKbQTNtckhy7f+n0hNnnCJZiR5
         pGzg==
X-Forwarded-Encrypted: i=1; AJvYcCUdLix3NlAt2zcnzHsKsNcyOFGFGB7Mo/ubp2wXju9OA7aUvjcl/DAyxS7WAm3t1F+yGSdZH+S6DzSLPuUfMLyn7JJ59nqTGf5E6g==
X-Gm-Message-State: AOJu0YwIrhC4xU9/7SMUKJ/3rMdLAx/4zC4w7BuqYS5RBxn3leG+oBAn
	4O0sr9LQcKkm8J8vxAGtBSK4Gmezv8I/Lp2KIZCu7G56XjwET8auCIGjPm9o9Vw=
X-Google-Smtp-Source: AGHT+IHeYKVAaE5HyEsDgFLcMCPB2WCj14+aNFb2GEDcGEbOgS6uETP3DFE/sf70LFxupGhpUsHcGw==
X-Received: by 2002:a05:651c:1542:b0:2de:7046:b8f8 with SMTP id 38308e7fff4ca-2e51fd2e6a8mr293920221fa.5.1716211085159;
        Mon, 20 May 2024 06:18:05 -0700 (PDT)
Received: from ?IPV6:2a01:cb1d:433:4e00:3518:6eec:d551:4012? ([2a01:cb1d:433:4e00:3518:6eec:d551:4012])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b8a77f8sm28983023f8f.54.2024.05.20.06.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 06:18:04 -0700 (PDT)
Message-ID: <13468147-6853-4bd8-bd3d-d1f1927133fa@baylibre.com>
Date: Mon, 20 May 2024 15:18:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/15] Mediatek thermal sensor driver support for
 MT8186 and MT8188
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Nicolas Pitre <nico@fluxnic.net>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <981a8748-16d0-4744-b097-aa9dd14c63a8@collabora.com>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <981a8748-16d0-4744-b097-aa9dd14c63a8@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/23/24 11:22, AngeloGioacchino Del Regno wrote:
> Il 02/04/24 05:25, Nicolas Pitre ha scritto:
>> This is a bunch of patches to support the MT8186 and MT8188 thermal
>> sensor configurations. Several changes are needed to cope with oddities
>> these SOCs implement.
>>
>> All values (calibration data offsets, etc.) were lifted and adapted from
>> the vendor driver source code.
>>
>
> I picked patches 7 and 12 (and also fixed them) introducing the nodes for the
> LVTS controllers, but will not pick 9 and 15, as they're either missing thermal
> zones and/or using the wrong names; let's wait for the next cycle for those, as
> I will also be able to add the SVS on top (needs a bit of time for testing),
> getting both SoCs complete on the LVTS side, without rushing.
>
> Cheers,
> Angelo
>

What do you mean by "missing" thermal zones ? (is there some reference
code somewhere listing them, or whatever ? how can I know which ones are
missing ?)

It seems to me that Nico took into account your comment about 'tzone_name'
and fixed these names in v3 ('cpu-little0-thermal', ...). Are they still wrong ?

Julien

