Return-Path: <devicetree+bounces-242121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 18995C86BE7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 20:13:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B8EFD353277
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 19:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF62332ED6;
	Tue, 25 Nov 2025 19:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KDZFJSR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70153287247
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 19:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764097997; cv=none; b=Ca0tQr55wZO2y2fXuEFAi+kvRm+u0/Mbvl9h4dmYNkG2KwxhNoBgMla23P0WeSR7/wpdtGO6tsZNJl9mYtjY9fRw1a7d1J+oBHvsgQHu3+eqYJaOAJagWGhSr0RJi629BmdZ9+pyEp6CcdfFx4p4ms9MiPPCDX7n62TWnx64G14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764097997; c=relaxed/simple;
	bh=O6xQSEOSSLorS3JoyF4oWOfmqM+ZOwXB9/BrGMSCLEM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=mGE58NqseK7c3yQDso7L84oYRtCdxcEyFhSG8vbQS5E2i0B0iD0ylazfoW3Tvho13BeYaOXC17F4QJW32tu70P9YLQXL9cvpFeUYHzGwZE2Nzv6AoGfmKOuB35oY+qBU78xohNyyZTBqa3j/8b3u8InDU64O+wMEJaCH5loSQgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KDZFJSR6; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-343d73d08faso89822a91.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1764097994; x=1764702794; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=C02M4R8AXlaGJb+76yOGTDrtM9vCoimbBn8lp15HTo0=;
        b=KDZFJSR6Dxdqd0gU7qbGN3K4YS9koSqM58gmsXpRg9wM4RUfy+9IjlqUPU2ojyRl5E
         TRqvbH9lj6wx/NMsvNb1K4W8T0fcHopJmD7V5k1k/gdZZvsScocUubNfDVmF3ADWHiot
         y8BmytvCSD/2USNi+3wYzT9hE34QhjIiBMG0eIuU7Y2aqe4cziNCWigAmjBB1soRQiEq
         zeVBWKh4OZHQxIJk/Mx5bH+9F9DQp2wIJiNJTs1A13XHk0tvStoizNiCymS+8+S4TwKp
         XDWD6RuKsN/wSXyZvWMstEOJo+jYKjoZHccekdOLR2ku+e7QoGvjHP7tzUydjp3Ye7Rg
         e58Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764097994; x=1764702794;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C02M4R8AXlaGJb+76yOGTDrtM9vCoimbBn8lp15HTo0=;
        b=ankOKe8Wb56fAFThKNNobXa+Fp9R+L/LExHEY0vZl3sqSyQnB2aoyMopMeySS4/wsw
         ddpuaaw8hmMCelRLEZfrktDcfC4D6FBlEtbkXYKL2ALFbtpmObw7BDF+pHNhuN84o3Zh
         A5P5kAUaJu0Vrm2FidcR396yVV8VjpEOOu8xSm8f+Oh0cnTczLSZOjofXREk65YuKl8Q
         FKIQXqLJGjmEofAxut7uO7XT01I5+VJyehIDnJxKuiIRgLuJbY1m802v3fpQz75R4E83
         j5WhAX9fFdTc5CV+KS3Tz6rJyE6oGs0d+SBwzVyBhAkPFLqLeaeBBf6CzcqJkuRxtRQN
         deeA==
X-Forwarded-Encrypted: i=1; AJvYcCX/2TLPt6f2d8x6ntiZVKVPFe0Ox12khc6+IpchfZ7VrhAUCjjPyBBAcH6IqKP+MzpfSBpotM1Zkjk1@vger.kernel.org
X-Gm-Message-State: AOJu0YzyxXF8+VKByDiPfEB4whgtK1R7hOwimnEyAMpF8Cdzn8qynObD
	l6qY1zWJcswY0B9/jiJh7aKgDeimABVK3v4SsWcZQFHab24CTs95aPaP5ByiIv2ATic=
X-Gm-Gg: ASbGncsEkJknwGe8/huSfNTWgPYvk6hkrR97uXG1Lk62PP8QE2JWfrrT9P2IOkE+cvh
	Edjvw4Xk6ZyU8n5xqhiMFRIyZkW9Zk8Ho+U4U75jMhhXGx+infAiEqNYDzhS1mchvbeCz8KsKhE
	WVflPsUCEBcgsw4M6laNN+ZmkG5wzNjQPzfHMd5nMMb6X2+o7wnKcI7gOtiHc+ITSQVG1trS5Mv
	tXLSZowf1uMwjt3x7kwpLkQ42wbyjZh+fR6Sl2N3dh9yDiA81l9IDiwxUpq27RkeEDu1YNtnFMC
	b49bsP088ScXLl9/jtqHEDQeE7+IxFLNLpuF6Qf0s2n8FewT3gepGpXySFGu0kacByprtlAJmZQ
	TK9+d8F6X2bDb55W7CgifyIpxBhlE2u1AqRBjAsFFCV3lRHstk93KwioOavo2H33uIUyH7PqUAc
	c1hwYeIC9a
X-Google-Smtp-Source: AGHT+IHP+k2R3EGO8iDfp3QWHD4eBn1iOwj1nBs9x0FoztVw6VI+8cqb7hGb/P+tf7nDKCbWTeZr+g==
X-Received: by 2002:a17:90b:1dcb:b0:341:1a50:2ea9 with SMTP id 98e67ed59e1d1-347298c120fmr19107932a91.16.1764097993444;
        Tue, 25 Nov 2025 11:13:13 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3476a56b53asm178611a91.7.2025.11.25.11.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 11:13:12 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC] of: Add of_parse_map_iter() helper for nexus node
 map iteration
In-Reply-To: <20251125085521.451ea208@bootlin.com>
References: <20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com>
 <CAL_Jsq+2sFzQb8j5bBWbwgyYn5apLTfWOTZW3+9n74uVyph16A@mail.gmail.com>
 <7hjyzedgoc.fsf@baylibre.com> <20251125085521.451ea208@bootlin.com>
Date: Tue, 25 Nov 2025 11:13:12 -0800
Message-ID: <7h8qfuc4dz.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Herve Codina <herve.codina@bootlin.com> writes:

> Hi Kevin,
>
> On Mon, 24 Nov 2025 17:50:11 -0800
> Kevin Hilman <khilman@baylibre.com> wrote:
>
>> >
>> > There's also this in flight for interrupt-map:
>> >
>> > https://lore.kernel.org/all/20251027123601.77216-2-herve.codina@bootlin.com/
>> >
>> > There's probably enough quirks with interrupt-map that we can't use
>> > the same code. Though it may boil down to handling #address-cells and
>> > how the parent is looked up.  
>> 
>> Hmm, I wasn't aware of this, thanks for point it out.  It looks very
>> similar to what i need, except for it's hard-coding the properties as
>> "#interrupt-*".
>> 
>> Seems like this should be generalized to handle the generic nexus-node
>> map. But it also seems to rely on an existing function
>> of_irq_parse_imap_parent() which is also specific to interrupt maps.
>> 
>> That being said, I'm not sure if interrupt-maps are really special, or
>> if they are just a specific case of the nexus node map.  This drivers/of
>> code is breaking my brain, so it's more likely that I simply don't
>> understand enough of it to know how to do this correctly.
>> 
>
> The main difference between interrupt-map [1] and the other nexus node maps
> is that in interrupt-map a child unit address is involved and translated to
> the parent unit address of the matched interrupt-map item.
>
> This child unit address is simply not present in other nexus node maps [2].

Ah, I see.  Thanks for the explanation.  Indeed, that makes it hard to
have common parsing code. :(

Kevin

