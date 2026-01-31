Return-Path: <devicetree+bounces-261484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1lrbCFFsfmnKYgIAu9opvQ
	(envelope-from <devicetree+bounces-261484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:55:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD4BC3EB4
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:55:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49AE03019453
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12AB437880C;
	Sat, 31 Jan 2026 20:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mw30PvAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B99B36682C
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 20:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769892940; cv=none; b=A6q/8HcMpb+SbQVSYEgjR6LXmGxoiK28hP27rztl/qis9Z9Fry66r0wLJsdfRB9H75kHQTaaRs/GM7hgpHXI2hXtg097+kWFRUyZEUsd1xfijqExhNQnlbe1GwulDucpMlvvIkii0y+FCbnnRFFIVny117hkxdFezPntuSupsRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769892940; c=relaxed/simple;
	bh=yNYsa0L/xKSFepadgD0N9FF+ya1AmQo28a/S/dVNtRw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dMbMrfWrHCTqN4J24QiZi/MCyuXgFK5u08yecrBsinjZnBN9X5TlPuSUlg+slhCwim2Yebjlbi3xfZdbpoVypn3Inso2JAkiL9sUGIOm4W0F3dKRHwAJb+lbtvZtAx0zrdtvBYRR5u7g1nFhV8RhERgBcABBTz8j9/ofpWzq4Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mw30PvAA; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-45f126d4794so2044175b6e.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 12:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769892937; x=1770497737; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f1fgxA2lt67n8a2OPSV306oPBMCXZ3WraMz8rl9ydMA=;
        b=mw30PvAA/RPiEJdz1BXAT1BW3r5qn6KUcjG4RrqlN6wfVc7ht3/G8mxT15qsRdCn42
         8vYWmAXK3dGXbBVkIiTWcCVsjfq8fl0vOUz0HvuG4t1sGLc3fqUWG5/EJkDysIMpbszi
         txSS06kugGMocmj2EXqCf9kEA61bRvzJkBFtzLi3FsyhaeHDHvCZm6bmS3QmIUX/aZ6Y
         t9wQFUTWLUaf7Qsa8ljwGrn0e9qfFimypqNpP5AA04vjVSgIJNyFOgVlJAEGUsT666Ks
         cRv3lbkmNlP7BLkaay0S6kGz2ntqZ6SQzLy4O3TepyywwWvgPK++e58sx5X8HRSgdb76
         KkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769892937; x=1770497737;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f1fgxA2lt67n8a2OPSV306oPBMCXZ3WraMz8rl9ydMA=;
        b=o/43KoaJbzRU8nPqF98L06YRGYLwai1RCMoHbyRuGGGqrwRrBMcQix7Zt6Ke0S9vJD
         VW4okTxLhTHjZGs9jMBqkxnx2dB64LkRlC6YNxhWiOHl0frlwDm9aTbvm44nnqtzu82q
         NJQp0SaGT/E6YF3KklCNgc9vcAufiAjVZeUSKj3a4mMiMAr3t8GpbyfqFvVUkUP+Sb+S
         y5r1ZgZWz9gBT0AiX1O+uQsLJao2QPLrVuoTDTsHBwCHLTbm9d1CbGvogp6/TDw7Aa2S
         gHo3iVtsasGVuu3ehmDMaB99ZvsFuuyn6e21U5PMVw1irm0W+jDFz189ffuzAqLfLgev
         mgGw==
X-Forwarded-Encrypted: i=1; AJvYcCURWJ1G1Ojq2PyHi8GtcRPh2HxmsAoTCWABqbn4hePk3aZFZ2yPDFQXSUcE75WQOz+ffStG9wnOaNwM@vger.kernel.org
X-Gm-Message-State: AOJu0YyC9pYmmLP0iVO0yQ1aseTiarZhwUr8QnTDn7+hzqwlXRzY3u//
	Uy3PKWNL2fn2gskXc4YpcVX1fP50zSyA2mBi4I0XnbdBVkP+VDMa8Ydx9gmOlJOhsQ8=
X-Gm-Gg: AZuq6aL7oSZ7EHDKioPE21Y58fEBYMF7gGtz9pqCvZccgLSMoWPqV2IDc7uNau0vQKK
	WLN6gdRE8uns0L54PAPiIZBP3z1ILitdnSCxESLLjGQJJSzWv8I/NUyjqeX0w1KfwNAkgHXiTnF
	5++s4fCA+92k1/fGaV5QYRrtrcLIHqmKUL2vU+n13Si9WuiN4/OTwMpkZnM7VZ+xh8PRDpxaMHI
	Kvxk8FsDBUibzaYMjXwakzEpmIUEU+czQvBNZEug28INIaKB8z2/QaGNng8VErxJnAD3HtZnY2p
	+FX2iqb9KOK6RNICxxRzNvzkPvEevv174b/icoHE0YkG5o2Xyi943uchy46wEjam0gPFtX1z0++
	YE4rsk4mQoCGDOquAbc6Mmjhesupc5Lx4oysBMM6DJBbqmR2k82ELiI5yrMYXy1EraKbjBNLl8o
	qt0mJtcppa9DXa7eTriiNAmjmFDsA8WfydIgXOhTlgKh0sYYUCdE4RBqQZS0mOuZ7BuFkwtK0=
X-Received: by 2002:a05:6808:1483:b0:45a:76b0:7f6c with SMTP id 5614622812f47-45f3490a356mr3554694b6e.0.1769892937002;
        Sat, 31 Jan 2026 12:55:37 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45f08f769e8sm6706934b6e.19.2026.01.31.12.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 12:55:35 -0800 (PST)
Message-ID: <c9330790-901a-49b4-b33e-f66cd1c2974a@baylibre.com>
Date: Sat, 31 Jan 2026 14:55:33 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: iio: amplifiers: Add AD8366 support
To: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-261484-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid]
X-Rspamd-Queue-Id: 7AD4BC3EB4
X-Rspamd-Action: no action

On 1/26/26 7:51 AM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add device tree binding documentation for amplifiers and digital
> attenuators. This covers different device variants with similar
> SPI control.
> 

...

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>

This header isn't needed for this example.

> +    spi {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      amplifier@0 {
> +        compatible = "adi,ad8366";
> +        reg = <0>;
> +        spi-max-frequency = <1000000>;
> +        vcc-supply = <&vcc_3v3>;
> +      };
> +    };

