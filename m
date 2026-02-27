Return-Path: <devicetree+bounces-269353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOMKOvXCoWkVwQQAu9opvQ
	(envelope-from <devicetree+bounces-269353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3591BAA6B
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:14:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C39803032742
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 16:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493D544BCA4;
	Fri, 27 Feb 2026 16:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fn2ik2kQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8599A441043
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 16:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.43
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772208476; cv=pass; b=KIiTxXCDnpDEqVeWuHZaNTKLr+P9fihfTvRJnFY6/rE86XXfJyImqexOw1EFQEa4u/rYTI/JthoI2wZ4WxVmxchk7VlaKqrJJlqiM45VxHzfU61T++DYGXOpB2pdFg5+8OpZTfdUYlG9EUq/+pFSzv3rIEi6d955uYitHlQ1hDM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772208476; c=relaxed/simple;
	bh=nxgI9iSZO0Qu5sugKLMQ4YUqVNvHs2jgnwwQ8ze0Zkc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eIprTogFy6w9ooFcaRqy7/9vnOTweYr3nk7ubtDQU+EukEkUTPCb8mTTNZSbabc6cndLl03xNeAQlhiZWsMmVERS3xnQwMBesso5kw8kpHSM8wzhxTlungAU8bL+3KwqysxSwkVJfBZD4uB91Ojb5BtOXnC/33mXeSWAufxwUJM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fn2ik2kQ; arc=pass smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-65f812e0d93so3471857a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772208472; cv=none;
        d=google.com; s=arc-20240605;
        b=b0nuVnzmegfUpIB9rlL4pOSWyYDrISgJzhL0csxFkSLuvGCPgvU8i4LR839E8f7gfr
         jmIxEtQInTnL4zL6LGHEpjVlpbZa4C1iQsnbPIhmHTRRKv3Z5k7gGYmiqFXuszvM3kp5
         b/5hywl1lSYf6ud1W8lNPFYKToQqSdf7bmGZrchliO1F5JbsYsywpxhkXlgDA6y4goEu
         B3bfjqtr4wU+WDY6zXtBh4+EwE9TAoH2BJVV/zow/7rAhm0GgRarEBvO3YNZ1dmF/PgI
         DjGecCvEWsN+6nceepDD6+4QeqTn5Z5e+1Qf2CWw3A0IzxbX+A/0N8qc7MXLPtxnYeuO
         2nkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nxgI9iSZO0Qu5sugKLMQ4YUqVNvHs2jgnwwQ8ze0Zkc=;
        fh=jeCuLwNB9Lxg086rSy7nl/bpF3XIS9+iW2tKf9T6IM0=;
        b=H2i9DDtgl1E6NJZxTJJDF7greZsF7IqLzCU+vXDJu2KkU6doynQdN3eeqL4bdUoRFU
         4So5QFJ0uGHn7L65fGcYiitDf0ZAB0DzVzZEzGwWZGfqBkDcbYB/jDNhZPYQOG+K/oK9
         UTzl5/Bl97nD5hGCxGHXW+Bl/lM0zcCqEsHh9vodTvseLX4PzlJSyWc3KDp8LLF2lK4x
         pJy9MhmIdPc/jtMwgSxn380ci9yuxuMdGOIFk3wPU8S0ZZAl/VP/sICwDccZ8FxvQO3C
         SKOqAVzHcjmtOxEtJjFlguLn0ReB3Z+ewpA4qi6N5V3M5xiEmb/OvtfBzR6IakvTS0UW
         SNig==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772208472; x=1772813272; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxgI9iSZO0Qu5sugKLMQ4YUqVNvHs2jgnwwQ8ze0Zkc=;
        b=fn2ik2kQBdKqIzcz34U97r4pHEhax4AtV7wpb55vb450mN7En7LIPXXRM0JF6BcqkN
         advKlO1IX5KK6NrqGH0J1203nbFzW1WAkkSJDToj4uWDocdPYJt78QpwhjBvvDGRwr8H
         56fbQvKmy7ZK7au6rOl0TzMbygiHjdtgGi1PIkwoSEXSGUvM4OBO25LQnqOscLpu3K0f
         5kOq7k5KrnTdvp1ZatZkr+0ZojO27KlxyilA80n6U6cNJeA3bmJ+ANxI2czs6BVYgPE7
         d8xlJk6M72CTxnMvuRHEObrCy6mLcItOdn3d6nJ0Larc8lgmJzNoR1ssDztjdlMp3fjt
         xXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772208472; x=1772813272;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nxgI9iSZO0Qu5sugKLMQ4YUqVNvHs2jgnwwQ8ze0Zkc=;
        b=fwwp5DJ8Pkhp8j7f0lpD41ddyK6RrdI8dC6ARryX7FfZns7dc+iRg+wAGrUY9fUYPM
         dKsdaW4MwL08oc8A8GbBoOhPP5yb9DQ7uWQYkWzmPW7fOJGOINhbfNOPkIKD2eLVRkuf
         NrSCIf58hQjwEKzBPNPWVQb+TphWOaRdoTrwXXxoiUw84Y791oPehjHy2KpRnfszI/Qz
         rtAbma94d+aBqbJlKh760F93hY5LyH8gKtPBzrDxZsrjhLWVBl1dmKifr+cMHQr6QuzP
         wy7crxSnX6ZIjXOK/AxnJ2esDSaZMeC7ZxkSX4+/Lexsf1VZrZLvYGI1RZAi5WinLpBv
         Hs7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxBcaja3+E84Zk96UF6Dwknj2CfmuBLA7psJPjAPjt2H5+0Ow6QxOeh2547i+gNSJxSVL+E+WSgsyR@vger.kernel.org
X-Gm-Message-State: AOJu0YzFTQEQHYaVbI2ynvggpm+lu/Gpj7YB5wLdSj8+511wWr/2coBM
	hrLL1iwKXfPdVESs9NEuC8VllGRGzLjLStLjerbZ6boVA3pzzwC0xwkG2TquL0vBuY3f+FHUUz7
	lsheUaJC5/v2UTAyp3gVjP0NLPfQK/GwT2q8kMiK1/g==
X-Gm-Gg: ATEYQzyeWZ7Y/5SJRTCy82yWMPsSh93W5c6/KjUWRMfNENHKDFubs+yXp79d4N+/462
	0pmDbrWab1E0tZwQo3wmhpjP8K0yrEf3EwQLW0uwnaqR3NElsHmwyrgmLTVLkA5kSHZ0ymmC1b+
	bBiSyY5Ta2r6aX9z7FEaeFl61C5G7CqYpm+Jzfo4//DaavgNpHzD7dkfyfPNw5bBHloyPDZDEIZ
	yRsxeCmHzWg/7SHJq9n3tvy5viB+SBnSrhvkcQZJ3xhMti3It5ik3GSm8h6YiJ/aqKO25N3OAKf
	PCwDi9RjRshCQ1Km4eMeGQ==
X-Received: by 2002:a05:6402:2711:b0:65f:7206:851e with SMTP id
 4fb4d7f45d1cf-65fddefdc3fmr2005594a12.31.1772208471841; Fri, 27 Feb 2026
 08:07:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org> <20260227-max77759-fg-v2-8-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-8-e50be5f191f0@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Feb 2026 16:07:39 +0000
X-Gm-Features: AaiRm50KBQWhZtwshhskDFWYXwe_qHblEDxQ5XPhC_Q5aPvqm1GnSmcN1ro1r9g
Message-ID: <CADrjBPoChg7qu7hJgh04WTuu5oxWsjor0syjD4U79CjUJoNbuw@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] power: supply: max17042: support standard
 shunt-resistor-micro-ohms DT property
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Purism Kernel Team <kernel@puri.sm>, 
	Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269353-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,linaro.org:email,linaro.org:dkim]
X-Rspamd-Queue-Id: 3F3591BAA6B
X-Rspamd-Action: no action

On Fri, 27 Feb 2026 at 07:15, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> shunt-resistor-micro-ohms is a standard property used to describe the
> value of a shunt resistor required when measuring currents. Standard
> properties should be used instead of vendor-specific ones of similar
> intention when possible.
>
> Try to read it from DT, and fall back to the vendor-specific property
> maxim,rsns-microohm if unsuccessful for compatibility with existing
> DTs.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

