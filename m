Return-Path: <devicetree+bounces-272512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /yCBBFVsrGl/pgEAu9opvQ
	(envelope-from <devicetree+bounces-272512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:20:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8A722D313
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A98C30180B1
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 18:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9797371CE4;
	Sat,  7 Mar 2026 18:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PDQshXIP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87F333729
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 18:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772907600; cv=none; b=mgEumjwHasUXa4pvb9P5XIk67r5IBELBgCl5d26ieR309TJ3upPfGASoeyxCZza/uwE+A7ZjlcRo0S9B/S9xl1+SVBBqu4gzQsIS4dT6Him8iIOw++HiXtUsuINrFq4dRaw1fRt2X/E2gbUF3fh0LHgI2ieLUy5hN7bfv0Jl7kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772907600; c=relaxed/simple;
	bh=iUKGqbc9kjkZuVb5F5jw8zI/5zes+EzS9Wi/AN/pf8I=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=lpiHkYTLA6jnr8i1v9NSasYP/Ua9X+93btt6Mesmmxr6JVLsVDbdYx0sUcDqlz2LSlkZ42ImFCrC7Gz0fN7PtlmOiJaz68c6iJmk1NzyO2tHeUHgaFFqFTmyfMKXFmSlG+e+tz64DSzkahVeVfb0mbpWwXUmXDZrHsGINUjU/64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PDQshXIP; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4645dde00a7so10412005b6e.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 10:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772907598; x=1773512398; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4X5uKvGMI1FbAKrUUToddxkVkm26QOP4QqCDY8kIaU8=;
        b=PDQshXIPSPPwDKa0WYCDbm/fSnTR2OJveXfgqFMZxbkgfEO60MqKqm7jh5uro+nCVp
         8BrYklhowuDemjlR61ZeIiMt5nl103yOcB1k94xEc0aXxiOQJE2seojWww7bQlDqxaYm
         R19InmpmoeL9v1ECQlG8BGPdUAw0CCzInemqvuJin1u6pxH1M82hX6wj0jrW3oigQZwq
         kBY1qfHEyjhxqJ7aa2l0HNVIDPPabIyI3ogQ5WXr+3y7usvzTjlqtRusXr1pWnXgF/sk
         nqFqIsdIOVUmNllvkiouRb/ZXbjJBenCF9dT56Sco0LMAYZSn2B+O3WgWxnQETmThfdu
         i32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772907598; x=1773512398;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4X5uKvGMI1FbAKrUUToddxkVkm26QOP4QqCDY8kIaU8=;
        b=nKJmR/vrHpEww8LwxCmGx/Dwp8sxKQcfOK39FcpIf7P71YCNeo59gjaHDaXLCZyfbs
         HIMnDVHkXi6Sn9sjpFGDDuEOaHMPLzqJhwSO7bofnx4zwLiFfieG5q6XyVx8DnxaVCLt
         p1/tC+LFwnPJ4zdkMNzBS32wARtkty8wzg7R4sYeh+vtdYnu4ads4sUyQRpLy7jd1LKc
         b36dl07A43W0l45UcwfHk5fcDtss5iGcHPpQwMD/LdWHJxFwZ3zJ1xC1KiisdrtBbjhg
         1DT+XD/FzIw+dRIyNYwrLiJC2O5lgvYx76D7WO1KXHH8cYNhL7g7b6hOexeRTTJmiPw5
         C/Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWe5rCj9xz7IUyzxPxXk6tbVO84TAlZwmecobDNOPSxxCwYxMTPYVWK8rvI/sN67B89DSdarP25sUz7@vger.kernel.org
X-Gm-Message-State: AOJu0YwTFxW+yNOTn3s1jRKgm9pCjfrp/0WbpMNbW1Dnk8kIua1fY08Z
	1krsMogj8tlDURyg5kPBXEPF2o4Pz6UWHk2rCr2lWFkDi81X8ADOvG6HB413YhqEiPo=
X-Gm-Gg: ATEYQzzpnALHeu0X1Nwwr38CR+StEVjdkb/Dm9dDBxwEUTbyKsWpkqX1nBSUIS8AeUH
	s1Zo3LqvZCP2zFMiJqmGG7nk5VvIDdG8gtzIOA2nWHmXmoTlo/ZME8N/SqkMbsVspw37ictUe+h
	5IRV1odnas/oXZ/9V0TtUzOSrCMHQNkHcAIYbEFxWOHzAd54qvXBLJTawbd0SMUzCG5JwLnzFEv
	QyvwyvMiPLM5sVlF4SxDfLATxHpospgIzKiAhaBdWyMaxQddDtnvMFi8dCnPYvN5ZU96zuoN+td
	+ghhWzbWQzPtiDbCISobpjPnfeVardDGKae+s63qAIjy5CQBaIDA+3MezexiTtlyPc/Nnr6yeFu
	BPqEeuyVkuJHpnUbcvSdLik0+EB57CPjzaodg8TrdUzdTSQ9rGGmbbibI8PDp0XPAZcvPAaD3n5
	hJ2dYymMRDBoVu0YGl52OTNVy+zdB7wt0eaj4Qpg2WliuhnLoU7EGyD97kWCMozaL2Fa2q302c/
	Q==
X-Received: by 2002:a05:6820:2906:b0:67a:471:d2ea with SMTP id 006d021491bc7-67b9c3f1d15mr3476921eaf.23.1772907598098;
        Sat, 07 Mar 2026 10:19:58 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67b9d50401dsm3016080eaf.12.2026.03.07.10.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 10:19:57 -0800 (PST)
Message-ID: <059e7a51-2203-4b03-b4b9-c4cca08adabe@baylibre.com>
Date: Sat, 7 Mar 2026 12:19:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] dt-bindings: iio: adc: ad4080: add AD4880 support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260305113756.47243-1-antoniu.miclaus@analog.com>
 <20260305113756.47243-4-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260305113756.47243-4-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3E8A722D313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272512-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

On 3/5/26 5:37 AM, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC
> with integrated fully differential amplifiers (FDA).
> 
Reviewed-by: David Lechner <dlechner@baylibre.com>


