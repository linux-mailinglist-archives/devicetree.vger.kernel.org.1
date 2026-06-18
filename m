Return-Path: <devicetree+bounces-313608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qCT5BoBANGraSwYAu9opvQ
	(envelope-from <devicetree+bounces-313608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 21:01:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC06A245C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 21:01:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=prRVYidE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313608-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313608-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 136A2302269C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 584A93E450D;
	Thu, 18 Jun 2026 18:56:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120233502A9
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 18:56:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781808977; cv=none; b=aXfpxkH3vpXNLeleu12oOXY5KcJUaMkDYrQ+n0MoHwT321uDmCdR70pFhpybetSsZUE7LK5ZQ4CvCgnP58WnT7Ly1X1zDklEFZ0DpCYAkELjAQOagtD6aFKL0RR71iOYiXG+B4G+7iQnrUnP2WeF/mB/pgjQDMhGK7fgNoOkHv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781808977; c=relaxed/simple;
	bh=fjQMEVKU6aPBoShsqz1pBXXrH131KtdlQ/A/QQAVYkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IB6HXGcBwtYoyfHzVJTAOE7YMn7/whT5MpYJ8LgepUZW6pFKJBXJfIaBYgo0jym+LP/lYiMwIzZlPRXUESmo9zddwXnLuVFDnMvXNRb2Dn8PbBQJc++JQrqSy+yL5JDUfCVmWNfGSINYgkhGpbAsR8O/3I4jYlpXA9Q7cWAfKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=prRVYidE; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4908b92904fso16474695e9.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 11:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781808974; x=1782413774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=evnk7vg3/NTpBLsBSt0/v/1Hx+pafxs17vxy70hm68o=;
        b=prRVYidEyTI+kKsrWNmMeGCsZ+a+7oZpUAJsrWBR3pKa5RwyrSmpbAT1XxhpWBOZBQ
         2x3VhLLb1LBgHbl8qytO4/RdOyPY32PF8KdQoIb+00080eZsRYQjvnarGBjCsoveawJP
         pCRNQX/YjnauraTn47Y2zXWYx4DpK9zzTKAriqHYXWinbKGefWshC+07mt97lvlrL6Hj
         MOWAIvNWlxMSaXUH/jTaQEaLQIbuCASwbXstEd+tI+qBifmJkHmdfFnzCjKwmM4fyiYQ
         uww61UX7MpdeYPAKA7eIXAwktZvWfpkL3roEvfomCwKxTvyeiPAB573J0f3FTCvjkyXZ
         l19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781808974; x=1782413774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=evnk7vg3/NTpBLsBSt0/v/1Hx+pafxs17vxy70hm68o=;
        b=dBa2R5NhhYQ/HVNaJx1uIlufeonqZMXYIELdweeEhxMwM+FD8rSAlmH4G+LPPs16r3
         imdSgLUoMATXoOwDvjETINJokH+grTFZgl7+Abj2uBg4UVqU/CIHRILCPrv2/5o59DjO
         NVGn371C0LImwIgKqYJzOHB2AyC8OMlUKZ1bWhF33Z06CnMwxc6kPrLSZnExj8ePuVLs
         naCAWaklHpF6E48vGQxtJOrYQo7xik4PHtZugX29TT6rxTQn5PI4Papi07gZzm0BDw1R
         zCVdVEhqbEnv29JxtDfrmB5KCpx1ogOVoeECTSgdE1vIjnUijo37AwjbTxDNyKIu8V3G
         j28w==
X-Forwarded-Encrypted: i=1; AFNElJ9YFV/HKrIVGxatFxYjDsEAyRarFlQj3Y2avMA8jw0HqAEpLPb5MgIRG4VcBbnx5uBcAp6eXOi76fXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwOo58xA7j98KXw9ZTyQNFwZ0uOOf7ABm+90H0BxmuHvbwW+q1L
	76tZIlz+CBkzGzAUsTABL82u9OPnQZpQDMYc7WqHQ/L5lFpa8J/nS9BI
X-Gm-Gg: AfdE7ckMhwDtvCDNKpZKTwImIam31Lf5CdfGeP4JvO4cP/k8YMnQatDmwtnqkbLyjbl
	PkYtZczjmMVeQMXcNVD+XhCOHeVJwDWZrLU6gzfFSyAPJDVnQDZo33OGDBhI8Htx7nA0hLOvAkb
	8IHWDcUXs3n/tcXD7Qwd5Fb8+jgeePGdrUiIw+1mtoZp3B7q3d7axH14GMQnbr9iFwd5NVC1vT5
	ksPBwTgm6zQBcIMawGyri9KSpREUlmKsBuBzGShbhPDFxhyO6r68+41KegVVCHYgXo9+bDFA/kJ
	mt7Ix8VNQjbA15GdHzJTSLdVP29KqJsxTP00jQ5mP85vIcOMB7F8+LpqdL5as1jfYg4ULYW/18B
	Ol3/xZ+3HJ73erkL70UTnJSvfHPRfE7Rih44GboY8IYwtVnVsWhvT7d1YoI30CcVznlMB8LpGGp
	pJ0KaNII4n1zbkcf8YAYth7Yn3zuhrIeU5j3fDSpi4C/JKixDsT20NIqA5N1qmrJYsoVXZQQl7r
	UdoSkxuh3QnVEi29Q==
X-Received: by 2002:a05:600c:6090:b0:489:5022:39a4 with SMTP id 5b1f17b1804b1-4923f4562b0mr19793815e9.9.1781808974258;
        Thu, 18 Jun 2026 11:56:14 -0700 (PDT)
Received: from [10.128.11.42] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4923fcd7027sm9756965e9.1.2026.06.18.11.56.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2026 11:56:13 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <79b1a519-5723-4e0c-904c-b7fdf9564ee1@gmail.com>
Date: Thu, 18 Jun 2026 19:56:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] clk: amlogic: Add A9 AO clock controller driver
To: jian.hu@amlogic.com, Neil Armstrong <neil.armstrong@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260618-a9_aoclk-v4-0-569d0425e50c@amlogic.com>
 <20260618-a9_aoclk-v4-2-569d0425e50c@amlogic.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20260618-a9_aoclk-v4-2-569d0425e50c@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jian.hu@amlogic.com,m:neil.armstrong@linaro.org,m:jbrunet@baylibre.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:xianwei.zhao@amlogic.com,m:khilman@baylibre.com,m:martin.blumenstingl@googlemail.com,m:linux-amlogic@lists.infradead.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[amlogic.com,linaro.org,baylibre.com,kernel.org,googlemail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313608-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 70FC06A245C

Hi Jian,

On 6/18/26 10:49, Jian Hu via B4 Relay wrote:

> +config COMMON_CLK_A9_AO
> +	tristate "Amlogic A9 SoC AO clock controller support"
> +	depends on ARM64 || COMPILE_TEST
> +	default ARCH_MESON
> +	select COMMON_CLK_MESON_REGMAP
> +	select COMMON_CLK_MESON_CLKC_UTILS
> +	select COMMON_CLK_MESON_DUALDIV

Selecting COMMON_CLK_MESON_REGMAP is unnecessary since you're already
selecting COMMON_CLK_MESON_DUALDIV here.

- Julian Braha


