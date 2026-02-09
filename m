Return-Path: <devicetree+bounces-264048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAwSHSL3iWl7FAAAu9opvQ
	(envelope-from <devicetree+bounces-264048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:02:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AE51116D1
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 16:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5B8BE3003989
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 15:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95CDC37C106;
	Mon,  9 Feb 2026 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PAnSSzJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f68.google.com (mail-yx1-f68.google.com [74.125.224.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507FE22156C
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 15:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770649374; cv=none; b=Troxu8NBRN9jBmIe/lYyUcbuBpA1yiDwQrcwZiwmEfSBqqe7GHyTvldgbIwXBqMmk98ZQL1Rb04f+LYx8/fOhMtTqm8g0CPBL8fQZsFvjNSt7jO1Vdcc3VltDq0OVeuB0Sov7JM71C5WuCvf7N+wrjEedevhye31R7sb8dBlJIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770649374; c=relaxed/simple;
	bh=pvzEly1h6RX+5nVyvYuepMJ628AC7g5OzHsBQ/W1VAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o7ODx2rvCg2peY0gHoA1opcdZjd3L6g/x99YTOk2C3Jsd7KmtT9pK1R4YuX2K3jgGOJw+ruAw3lj9W1XwCVUEJ4tmetp8xtL683myHfWTnMvzn7NrTZAe+kDrWNR92dIHy0EoxaYX6euk7sLqOi2NKMMvvLrsWXeXP72m55nV2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PAnSSzJP; arc=none smtp.client-ip=74.125.224.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f68.google.com with SMTP id 956f58d0204a3-649df3c22d4so2426484d50.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 07:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770649373; x=1771254173; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JnnQJD+R93yDtjYhHjFYKLpvoPEvYMiSVqgAW4EPMRI=;
        b=PAnSSzJP8ujJVxqTMnZRfCrGq9BowYuIdYfD97HBGs8nuwlaaNTUGdkxL9ZSgiGN/H
         4Kww/lnhaehBHxy6C6dsSmFMPXdjOp9c8oguptPCIZi3ChArLGH0LI73rqWuAPYQBtpV
         apHg7Fq86zIfEWeJuMIRuR1u6zgJvJ2aztjJJy+v9Cw0qyFkk+sjGgFuIURJl+VxtLjB
         XqG5YRMdSlf3F/4bpkvPWSLCr6KFYRWHWUUbKoUYiARgp1FZlZkPCXOLOCHK0WQN5Jb0
         KG4/oheYSQOOzAm1NUo7Bfz0DUhCXW26W/qaxSuHK3AjBLvEL1wWAK+uHHN4am5nwf/d
         LB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770649373; x=1771254173;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JnnQJD+R93yDtjYhHjFYKLpvoPEvYMiSVqgAW4EPMRI=;
        b=dLXAyiTj1WL3dJNwy2LvpabFIx7N5acoSygJJqhsl67flDM9ck0t0sMYqpyh+Le+Qi
         6rs+XA8gWgN1tyLB6S+zsoXAvF7GC/mNwlpKfYDFSNEqzdnBZNn05G73Y+URWe/PY4rP
         Dds3dqgkmKTaHewF5rAmb2dhJbz/8JTrXZrtsyjckP0VVPFmZOg9CEUBVG8XbzVxJDxI
         UWH8k/D6QZZl5qpnOlCedmx51Dts2LOkigtbQ14D8GdfU7ee9v420lRF0xd0x3XpdbKC
         gUuQz8dZ5Y9p4SBLrcZW3Aoe1zfKoHdpIk7AvkTQ8/DY6lVI+ZIJBK8DYYvc/lPrX3Nf
         DtUw==
X-Forwarded-Encrypted: i=1; AJvYcCULHlTonRf5uJvcH3ONGQ6rUyf5SDO8d1eXshEd9US5gU92FP4wlxWZ1kVX3XlrS0Bh/Tj1cL7uDUYN@vger.kernel.org
X-Gm-Message-State: AOJu0YzEYqCip7GQdHqC0711Uf0sfNnskuOcmBTINvgAwFRzl236Zz8h
	Uq6SstpIclHheeyYT+oMtcu02gK+UwENT439frKrvJi/reJ5Cz3olC9UaF5ihdInnac=
X-Gm-Gg: AZuq6aIUHJ8jZyvH7+61A3DUbTpJPLULeBo2q/5kSqK39D2itrOuR8jBpXZQGasLsTq
	eAD5iAD6UqKEQdLGWgYuAYdTYSYrqwnKs9v5WP0n7Pq1rYFQtvMrkDIsBdDg5e/RE0cmvnLPUqX
	iw77gJBNMw9Oev3+/pyATbdrrUTszY3/ByQo48Wib261T35VvHxxaNtyHjxWxDqQ7Tqywo8WTIu
	ux4oSWni0QCDdQusT26tYJ2iSwuiO+OZyIeiEAQvLusOOfvRYdrgMD2LtYCMi+EGdfUpHggNMWO
	Ll4TKgRJplOqUfnCSx/xobUXD5eINKoWyVMQ0YYWWmEsApevRK+MiPBOtKu1QE6NloTXPkhmLiv
	NXV6d3kYDBass33OHMff/4V/H6g+rinWz8ywvaNHlGDnXRhAnwrYMfW42oyGL6A9B1fY8Dlm8dr
	9oUF+BJ/HAnl6Xew==
X-Received: by 2002:a05:690e:13c6:b0:64a:e3a6:c393 with SMTP id 956f58d0204a3-64ae3a6c5bdmr2693312d50.77.1770649372033;
        Mon, 09 Feb 2026 07:02:52 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f248c511sm10301423d50.8.2026.02.09.07.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 07:02:51 -0800 (PST)
Message-ID: <dcff3895-53c6-496c-8574-96943d1eddc5@gmail.com>
Date: Mon, 9 Feb 2026 17:02:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: Add binding document for cm36686
To: Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron
 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260209-cm36686-v2-0-a48126d2b124@gmail.com>
 <20260209-cm36686-v2-1-a48126d2b124@gmail.com>
 <5614db64-3ee4-4a41-bd8b-5b89cc3264aa@kernel.org>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <5614db64-3ee4-4a41-bd8b-5b89cc3264aa@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264048-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 19AE51116D1
X-Rspamd-Action: no action

> Compatible says cm36672p... Confusing. 
> Why higher number is the fallback? Explain this in the commit msg.

This driver was initially written for cm36686, which is an ambient light and
proximity sensor. But cm36672p shares the same register and regfield layout, it
is just missing an ambient light channel, because it is a proximity-only sensor
and has no ambient light registers.
In v1 the compatible looked like this:
  compatible:
    enum:
      - capella,cm36686
      - capella,cm36672p


