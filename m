Return-Path: <devicetree+bounces-276382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAtcO0BmuGlOdQEAu9opvQ
	(envelope-from <devicetree+bounces-276382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:21:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 778AC2A0250
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 21:21:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E5A6304501F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 20:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982ED3EE1CA;
	Mon, 16 Mar 2026 20:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EsHuI44q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4761C3EE1C8
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 20:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773692459; cv=none; b=AYON4p4RNdftYGHZdK7UCCF8YcJHLImtBZVtDDbUDDUIdKPVvuQy5MKAdrI41GB/tKE3HsAKqPVFie5Vm10JmLHOXLYcB5XqPBPYhbDpJpDfzg21JFxRMq9FcLHvGxZIfOMgmwrlirlGA8UDUFxV/WFtjFz0TjydjCYBb+z4G40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773692459; c=relaxed/simple;
	bh=J9Uib640/uZ9Y68E+/FhFk+s+Wvkj5et2AsL214hxDU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CYxscZ2wIxlpPAFR4iFijJLD862rq7mnGg61t2xxGzaDvjAJiiCOLt+h40V8NuyKIdaH9DT1axVWtYwxwgMiDik4QKUGQSRP4SRc+hbqgw89erlI28K/8B0ZIfxU7x70f8m3CEXTLLx5w5cK7vGFO97STkF1T+9h3Kx1DVSUSbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EsHuI44q; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b97b30fa5e5so276554366b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 13:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773692457; x=1774297257; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EK50oCppLfVEmX9UiOHb2vRevLeFvTSXkedS8zq8Z8U=;
        b=EsHuI44qWZrFuDBdX08ldG+47qQx6FiwWYAvCk3kGRxKX3pr9hqskPAIfc5xwdHbjF
         39r6JUidgSpKf9ErN4an3ihn2WP4EpU4PG9BVM+o5A0zpyANr7esG2V0FGiwFQPVpuZd
         H5nD+H+jia/P0QfNZ83DnuFa0R5qGE6HSabfoMNCgDrszvu5baZRIiwbJHGZduxAL6RY
         W7s7Sg6VMm5GZg+1R0lx8CBBkYFQFOpS8KQSpOP/I4Qx49BZxXob3g064prr6x/OhNv6
         Dbpp2NSh2ZadaayEoBzBxP34REJADe8OCq/89K3AJf8/AeX2jKIHxvBIEXmlmenNeJwR
         GP7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773692457; x=1774297257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EK50oCppLfVEmX9UiOHb2vRevLeFvTSXkedS8zq8Z8U=;
        b=c19jROpUluus59rOkXMThT6S9gu09Egk6MzMQafvN8TICgIB1lWZdjhBU/cVAzDVkj
         PwilefFJVZk/ULGNp9eJfK/rKkE7YZ4qvGb9qjvT7F3QWAeGmPqWGAE/vSF5qtinONQE
         BkDUiYk1laRPBNPfnSskLfRNUmLwHATpGkDLWxuCI2Y5XaqLsz4HlYCHtU9Q1v+SQ3xA
         D367nLKwkEtneKZS/sRBB5l+LuyeoZZPo5JwWmrs4MjBNFOtCEWS7raYQLvfsxPUdcxS
         rE3+qkjRsvA2bty+b2lne02Gs0PPWMXqiTkyD8ckCZysS6pt7VgSq+mRPNeDfSpMKfaE
         ZXYA==
X-Forwarded-Encrypted: i=1; AJvYcCVGo2sZkCZRAXPTUuAo/gJxsbbjgcocS/l/uGDxzFEbaDNiqloYybEdEmHVaKqA/BslUv8ZodwDmI6U@vger.kernel.org
X-Gm-Message-State: AOJu0YxhtJzWQkmkOwi6fWRRNyWLdYZKwpGLwc7r8ooW5dyihpyedNB0
	bNHSOP/D4EM48grBAul0qpDoNoOrpHzHe6Mp+wjH54QTUAXxRhwLLPSa
X-Gm-Gg: ATEYQzwh0JNzPqHjo5wugTlnxg/0sEUScuCI51c/wnieI20cf26Ed8/VrYyF/ihYWe/
	tJSRiwOyCajYhbEQwiithQBm4Qb8H91q7l97WajyGzfxg5eE96KkGeKlRjP6dtAQVx+ZEDz/eoN
	BXLUEo9KSa7ejN7Ql//jx0FTuhwldCepA/F18u8v9n1eO1+43jmSvg475422THhA5O/nDI9FBk1
	riDeN8ff9wAubj7ntD9rtCIxTVonrh3AyRy1EcpJ7hxQPvddAPcZFXobrJcKVbGfHwwZMV/QAcL
	sS+29nzfwM6BwMq9B8KRafXprABj+/q9qdcndWIjfN7EdWtuxV8OPxtGGHjkgB0cSopUv5yJfoo
	ch2Md9cKgel5AmEwhL14XZ499ncluW9lJbedmWPHOuKYo8zk/R1EU9Cpn5gPnnGwD3RyYq4FNj9
	90VQInJ/rchcnYpJgNwyoWVWIzXQ==
X-Received: by 2002:a17:906:c3a3:b0:b94:1fb3:155d with SMTP id a640c23a62f3a-b97653d1dcemr552544566b.53.1773692456428;
        Mon, 16 Mar 2026 13:20:56 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97cb0d2e1esm127505666b.55.2026.03.16.13.20.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 13:20:56 -0700 (PDT)
Message-ID: <ea623eb6-2f63-459d-a1c0-afffd2428426@gmail.com>
Date: Mon, 16 Mar 2026 22:20:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] iio: light: vcnl4000: add regulator support
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Raymond Hackley <raymondhackley@protonmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <abhhPnvQwpZozHPe@ashevche-desk.local>
Content-Language: en-US
From: Erikas Bitovtas <xerikasxx@gmail.com>
In-Reply-To: <abhhPnvQwpZozHPe@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,pmeerw.net,vger.kernel.org,lists.sr.ht,protonmail.com];
	TAGGED_FROM(0.00)[bounces-276382-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 778AC2A0250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/16/26 9:59 PM, Andy Shevchenko wrote:
> On Mon, Mar 16, 2026 at 07:19:44PM +0200, Erikas Bitovtas wrote:
>> This patch series introduces support for voltage supply, I2C and cathode
>> regulators. This fixes an issue where if a regulator is shared between
>> the proximity sensor and some other device, and the other device is
>> powered off, the proximity sensor would be powered off as well.
>>
>> One of the commits includes a Reported-by: tag without a Closes: tag -
>> the report was done outside of LKML.
> 
> You mean outside of public web access?
> 

The report was done in a Matrix channel. I could provide the link to the
report for the Closes: tag, but it requires to sign-in to view it.

