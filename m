Return-Path: <devicetree+bounces-317273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K6siErrTQmobDwoAu9opvQ
	(envelope-from <devicetree+bounces-317273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:21:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B49156DE9AF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 22:21:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=OatlEDlf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317273-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317273-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 053F9304D77B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 20:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B8139183B;
	Mon, 29 Jun 2026 20:19:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A03237DAC2
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 20:19:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782764382; cv=none; b=U1q8XnMuZzI/PwQuawswm/FWph4pBpMlneD+KMTNLKdQ4qBtMuiU9b4T+3Zb4byD4TFI7p/Bwr/DbqmRDYZbXzrXqHiUMKawjIo5f0EyvodejO7eEfmAL2GxqgUacu3F7qL8rcRiqbU7/o46Qx1h2x1gpuyEq35HqppZlEFfplY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782764382; c=relaxed/simple;
	bh=qBWfXMK8NShG6BVaJl9G/8xNVbc3kadCRpe7nOtCDL4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DQpAIBtKQiMKxQ3z3Z1DfuANkKhlFrSehFXw2KPgBcshAGPEoELJIZlInQ4wLTrLiGw1V3YGdLhsxQHxbhmZ1RqqYNt34+iPb6CNXOO1YRfqI77M7ImQzjsGZnJ9qcXayCn3diUSbsXlI4eOOYKeBzBhd5W7O0/qE5K+SQrgIqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=OatlEDlf; arc=none smtp.client-ip=209.85.210.176
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-8479f1a86ecso153597b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 13:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782764376; x=1783369176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RN3ly0amkqfVWnS6oZWUFFDffiw/D/CaNP3X9CnZ4y0=;
        b=OatlEDlfsn8TqzTdlAVqvuM3QPLelJgcFn4Wzhem0WabGbVvH3y6yIgBO4xQ1PGU5+
         qyWLH29NZoDXjVhjmqQTdP6aaIqOmNQsMK83K2dhwqf0b3YOx7tgMLEPgWCgxmHwe1Rc
         7ftc4czkMHipxOCeQFohKimA6htL7ne0zxpNaXXpGKKKTAT2bVQqK5st69TXAeebjdSa
         sqmKFfOUfjEGCtRl1WCeph92/itGeybyKiI1fEBy8yOgPzRx5zY1BTgTQsK2v+dWLdkb
         F1IxzOCH3Z2mGDdkfkkrHD1gsKu9mm99xtpeUXNbIm9U8XvmfHhvRzJcFtTcsrZmORGt
         Lusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782764376; x=1783369176;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RN3ly0amkqfVWnS6oZWUFFDffiw/D/CaNP3X9CnZ4y0=;
        b=lwOfYR4nrBzN/vzt9KijY3z34sel332Am9iDiubUr7zLxerql2BlMNRBJwq6trSjnf
         O/DHphaHFw588lcAP02ifxSfdaAAms/kcU6yL1dHxc8WnUjumVdVw9nPap0Cs5DQH0Yq
         25KYtIQSY8cv1y5cfOIP76ECvR1biM80TIcEO92E2uSY/2XN6zY9QHCHYEy61QgYn+a7
         bcyl0YFXGtwaUUjKL1Wmz9p8Wx4PXOO6/ElqwniGaOvLHMfDbJRTS87HHiORgi0u4U1y
         L/DeRmAQpXlDjR4A/Ld4ybC5ai6KGKLLvMx6j1o3IPV1A/di8OOLsYvRwzX6F9cs9ekH
         J6oQ==
X-Forwarded-Encrypted: i=1; AFNElJ8cA4CX0WLdijnXIsbEz8NbGjLwLbVZWpegYSU0B0WgabNLBV9BD1fuq3efKp1jcf5FSgUI5CMlfy/P@vger.kernel.org
X-Gm-Message-State: AOJu0Ywad5EcklGylVApk9/fSOxOz80H+e4atamVSaiEkIOEnrLvcauB
	PXcfLRVyICDxEdu8ln2Y8hhpBMm+5LaeqABuCMyGU+PG5WrJIoJcirqK5GywWOsUkjQ=
X-Gm-Gg: AfdE7cntNYAmGqyYhpovyne7BKPgNrO5BJCVF9czE5CLs+oQy91s7ZeT3L1gMnpcavH
	Q+9/c/t32PyE5/Bu4buTM07tnz5SFlM0Df8sLc9+cJIeYmmY8Gr6IvgkHZA26XqsKc4rJ0lO6Ru
	65sVA7k6/vsVKrrPs8jCdoOetRBTZX7JElF6pzEvGKmO+gipxC6in1wgzP0ScJhJ7sX9lvrHpEr
	eUrDQlNytIfF+9S9/wHu9TcxUYNJoXqSXE3VM+3VeHh9nJx0AWBwnEOkKAjyd+r2y36NQWfw5K2
	u+i0JESoHUWr1CLVA2fPlXQUG7S0m1gPcS93W5zxZcbIELEzg3VPdF6qaPdkaE6wqipFCYNfpa1
	R4GKj2Mk539w4IgbUg7xxXCguo4P4QahYNUrppjfNIcp30koHE0Qm/gvOT3bQFGU/ohnatsZhET
	XHqgMPofeQCw==
X-Received: by 2002:aa7:9314:0:b0:845:e105:1e6c with SMTP id d2e1a72fcca58-8479f2d0fc7mr588972b3a.62.1782764376433;
        Mon, 29 Jun 2026 13:19:36 -0700 (PDT)
Received: from localhost ([71.212.202.210])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-8479fff4c7csm330037b3a.16.2026.06.29.13.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 13:19:35 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Bartosz Golaszewski <brgl@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Vidhu Sarwal <vidhu.linux@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
In-Reply-To: <20260626111720.56688-1-vidhu.linux@gmail.com>
References: <20260626111720.56688-1-vidhu.linux@gmail.com>
Subject: Re: [PATCH] ARM: dts: ti: Fix typos in comments
Message-Id: <178276437558.1055800.3079252935866099561.b4-ty@b4>
Date: Mon, 29 Jun 2026 13:19:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:tony@atomide.com,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:rogerq@kernel.org,m:vidhu.linux@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-omap@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:skhan@linuxfoundation.org,m:vidhulinux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,atomide.com,iki.fi,kemnade.info,gmail.com];
	FORGED_SENDER(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-317273-lists,devicetree=lfdr.de];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:email,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B49156DE9AF


On Fri, 26 Jun 2026 16:47:20 +0530, Vidhu Sarwal wrote:
> Fix comment typos found with codespell across DaVinci and OMAP
> board files:
> 
>   limitaion   -> limitation
>   swithes     -> switches
>   converstion -> conversion
>   differnet   -> different
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: ti: Fix typos in comments
      commit: 21e741f3922c40305d9225c7a3b2557e5d926cd4

Best regards,
-- 
Kevin Hilman (TI) <khilman@baylibre.com>


