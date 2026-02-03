Return-Path: <devicetree+bounces-262190-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MAZJlTVgWkCKgMAu9opvQ
	(envelope-from <devicetree+bounces-262190-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:00:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0663D8044
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:00:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A346830745EC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 11:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B15032C925;
	Tue,  3 Feb 2026 11:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bBRpzMFW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f177.google.com (mail-dy1-f177.google.com [74.125.82.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82384329389
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 11:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770116431; cv=none; b=to7tJ+j+0tgPMK7RyxjZ044uFHFYxhhDPtBJQIb/cct/wvLYYgYiqf1zY6VEQ7PBU9ASWYKOOA2hZNZ6DheuipW7A8IxMAqpvFJ4VRdlVatipjpfRMigBrJSsSD8UwY5GMlphlt1Y38M7yHk50I1nE8ThpIb2Ib4fHGxDRPDqjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770116431; c=relaxed/simple;
	bh=hudPfaB5Y8u+39+QhqcnbqU4DSfvZiJpkZwi23yNzcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tfHRW5JvFLMu1aWnv9DdExZZL+SlYY+1GfZyNU35MKfCq5x6rd7AsVqCdSVQ8l/KYUyXqix6WtAxujNPzCzSX71ZyhYaFuSTVDj+E+pA3kSW1zeUyvRxYvvSzuOFv/zWWCoqqdRYrtK0zt4wGYysRAwG0TWQZeThk1G1nLfTQ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bBRpzMFW; arc=none smtp.client-ip=74.125.82.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f177.google.com with SMTP id 5a478bee46e88-2b6b0500e06so8095290eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 03:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770116428; x=1770721228; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0JgnMsXOh9YRopf/e3+gz8PgFtk2UitVTNFeIUt3zTk=;
        b=bBRpzMFWc8IrJor0xe+IV8RxvGmwWg2IpM+53bbVASZd4OkxSngWIl2MFsLiOonJoJ
         xcJZQcwaXuyOVM4fqJxUwBvA18HTc/8qpo8MKA3ce1MrHwEBbmkQoyrVPTW16jNpRso6
         ntlLX8WJ3qOMSVmTJKjPs91RM0TI6BRM7U/fR84Mj4wF7q6LHua4cLe3cNcBSOj692a8
         oZjPP5rPdXcjhmS+qCQchB4Yp60mtm4DX6JoAeaiaMUGA4x3dxt3nxItVVc7orX6nLju
         8FIWXxyczFTl+olaraL90nsYdL3tT4xxoCsNtlgv3m7FkABGH/qxnK9B86rwKq1lsEh5
         07dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770116428; x=1770721228;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0JgnMsXOh9YRopf/e3+gz8PgFtk2UitVTNFeIUt3zTk=;
        b=CgVvdqRqiaOig6MleO57s/jPK/rLTAOEAOCfYb8dTIohKlNaU+LyqQ6L9/UAhYvYsZ
         OGVyn1Fzj8MW6mdHWBtBFAWKd4eUTeBqzUyDbl7ll4BKehIL7aMyWtcuFqV7+7Q/Vu87
         XEWvUkgzTCpU/M3Yh6RBBN1rxenHfoEdrrixGbHDPT75iIKBqAYTm2wrxz0OMbrD8kRs
         aMdbmihrBbjuHHpAbHsB4O6Cyluctt/MTkps5FT7D4MekFCVHQFQjRBRNZ8WrMAKKF7I
         Yyy16O3J3aqIBwZNu6pjGiwHqatM/hYEO0YBrdIBoJsG40pJLaKAZbz+bvQp4bS6rn5y
         PpAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWyiA5OCMyKs7O7wZZ7+T8M95yw4mzNk+4oJ24xmNNvfSle6g8RMXj/9fZMRthmthMK0Niif1vk2VX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7Vm0GROi6ImCUytkTDDHx6pPXmWPMS4aJUx5ALpfvSI93hFcS
	4bkcI0B/9HVfSo60Y/wFxuOP+hdayE1pp/FcHKDLC9Hna1qInKFXaMKW
X-Gm-Gg: AZuq6aJYqwQ5tw+t7Eca7Guxoq+GbP/Xx2keOfKDVoZAIpFuNsAm/eaUZgQEtaJlEhs
	gaA0enQ4ErsLB2bTGegBIv4knErIvMmXPGbxEhG7b11DtioEqER9rPXGkacvFVv/IulSEvhzP0a
	sSLeT6X2j5iHO2TMmoqhQJaDuiaSTH9UT8ZpHuAlAT25JR1e93jclPD3JRIQSw/BEj8ACrVGc/b
	AcwI/FKinloqSkXXhgdfWp9roqgqYKXacyDPZScvKwmN0wn9jJtF1/QphERncZdHTHZwNLHRcN8
	BgV4RPeHKzfu6DCM8BlEVsijlbdMSf15r/t6ZWvwRd2hblGuLLZ6ZfQt6UsRIZZyH2FUCOgtQ4c
	Nowek4E1D5p/eMhK7b0U2ExJHZ6hrg2TLtim3c48cAbG2fxhnhcgFP72jfHvYgI0jmUxiHb+DVJ
	CDsYR3Lpp/GLXau71jkqTvcrJBRZTvHCowN72jSeT7dszyGsFn
X-Received: by 2002:a05:7300:4306:b0:2a4:7f22:cc0d with SMTP id 5a478bee46e88-2b7c8909ad3mr6722053eec.32.1770116428294;
        Tue, 03 Feb 2026 03:00:28 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:ea13:571:b19b:36])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1add664sm22262633eec.26.2026.02.03.03.00.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 03:00:27 -0800 (PST)
Date: Tue, 3 Feb 2026 03:00:24 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian Reichel <sre@kernel.org>, 
	=?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v1 6/9] input: keyboard: Add driver for Asus Transformer
 dock multimedia keys
Message-ID: <aYHU5g5iOVjrHrE_@google.com>
References: <20260201104343.79231-1-clamor95@gmail.com>
 <20260201104343.79231-7-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260201104343.79231-7-clamor95@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262190-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F0663D8044
X-Rspamd-Action: no action

Hi Svyatoslav,

On Sun, Feb 01, 2026 at 12:43:40PM +0200, Svyatoslav Ryhel wrote:
> +static void asus_ec_input_event(struct input_handle *handle,
> +				unsigned int event_type,
> +				unsigned int event_code, int value)
> +{
> +	struct asus_ec_keys_data *priv = handle->handler->private;
> +
> +	/* Store special key state */
> +	if (event_type == EV_KEY && event_code == KEY_RIGHTALT)
> +		priv->special_key_pressed = !!value;

Is this functionality supposed to be triggered by any keyboard or only
the dock one?

Thanks.

-- 
Dmitry

