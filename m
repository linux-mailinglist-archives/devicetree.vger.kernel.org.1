Return-Path: <devicetree+bounces-273067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AtsKm8Pr2kYNQIAu9opvQ
	(envelope-from <devicetree+bounces-273067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:20:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6270523E871
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 19:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 68BAB304F304
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 18:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CD3F33F8C5;
	Mon,  9 Mar 2026 18:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="OePKG/MM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f170.google.com (mail-dy1-f170.google.com [74.125.82.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D5633F363
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 18:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773080144; cv=none; b=iOuuQDdHx8X4ZeSMcEEO2g8p+byNtMWRbDilOLT11gNKMifah9rOdwJ3Bp+YICtb+Fg4yqF/dJJye//ema+4Ipvk/yAw1EuCBAOjwq5El5svpb+IWR50OrigFgSsBpK4j3nuKW1FzHePmfQRBeof7oqsANGIa6w0uF0gZo+6rTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773080144; c=relaxed/simple;
	bh=DrnNhO9YiejBPR79fk6YWMRGSRi8LbzEUcT2iDql8qo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QK4Fehrhd6Kkv8ZoUnf1tsicV/VlpzUwAL3vMU+xcN+7JuCAH4rgO8+R6dWe72kh4lBs/7J0eWCvpqVIPe3vTwOzQUXaDqKC+BCmonsSM3nGQMYIYdriDw+dA4UGnYNJBbjlx76HQrkabU0qhL3bpISED6HDEKRl10Uedf5NsMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=OePKG/MM; arc=none smtp.client-ip=74.125.82.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-dy1-f170.google.com with SMTP id 5a478bee46e88-2be27fa54feso9612419eec.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773080141; x=1773684941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5v05B0dL6f+blImA08sWACNd2Nsm0939zAh2hm+b4Zo=;
        b=OePKG/MMbOikwH5zyneGFvjfcjD40RR7QKnWriZajWj8x48zRx+h3lxLCmo3cuWosp
         qHupE10JCtD+AGbHqetBr0kGJgBKLm1eqver1R+NkoGjZIDy5LntWqrSkgGJH9VgR/w1
         FQF9vaz36hVUgaW3TI4R5Hf84NfF6uAToJbvyUeodqEkLcmZUDhdEuIcH/OVegONx0P5
         TBlCXsVH1VHVVe3hrydxE+lEcQjlRE1MdvyCRyKLmiWH0KCt2z7fI5ql7zpk7ehdQGLT
         IQrPEfCt2jCsBCLGl/V9zGNUYNVM7EFxDpr0j/ujwU5qT6U7q8UeRE6suhqnXI/LKA0u
         mkBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773080141; x=1773684941;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5v05B0dL6f+blImA08sWACNd2Nsm0939zAh2hm+b4Zo=;
        b=mFvwnF5V7pSnkzjDKErPHfus4MO369oE9POlG+PyWboMbPrRkhh7PUwtkZC1041PZQ
         WwaSyms89UBg1we88WTHdpGY84v51xc65e6rr7SJOhNUNWzma0UpcBJugCRrU2/4soU8
         guNW1BY5G+jHAFqk//1sF1piBobVDcSfenOuxh8SO8dh79N/dJ7IoW0x1i9NVZZH9Wf0
         g31Rfo1IQsxV/acP/htKHNnO6LfgdSiiBCbOTzwHv8JxHi931GoSvlJss7kdw+F2Vd5R
         0nIFl6sXNv94ad3x36M3vq1tDVnnP/q4yi4WidVZ4yFChreq6z0A9e8TywnjFCfAvUUK
         iosA==
X-Forwarded-Encrypted: i=1; AJvYcCUoQrzEtV5lKVHW+LhGbLXHMxP238wNU+8sgJ4Nyb5uJoXt0JyiZYEvi8FqJ0csk3WTB1cEbiM494E7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+YDUnBCsZ9QRiIxwArGJMMYYH+dyY48gIc7ihUA3E+PjwcB+e
	Q5lK/PxLa9bZv+yUrP+ACmXhEXXX75LpC/daRH6Zl/McwxROLCrLTkjsFEdjFK8JsA==
X-Gm-Gg: ATEYQzzqA+1HN/XlpXJLezSegStc1d8U2TzPaasDmz0VcMyMGye/lFzxc3MqAYHyIpW
	nA57bWF+RcfVP7Ab44UY7iA6fFhlC7G22BP5hgVJmLEUyWZ20XD234JQZboaptGsu4k+5zOUlOm
	k73JarhOMgf+I0KuaVjy1gkMwNxs0wW9EpgzHhWrEKP36LsB1htcbHRxTIJGYJsFhQJfp5UWvbr
	gKYLVanSYcnD50bgnCbkCrLqM3T3pZIZTL5q8Leh+qPEteRK/SCUN4/+jf/SPLrdyTix6wDIaRC
	dxUx0kp0L5fdrBULE+mhN1ORyUxAIzDwB0qsqzKAMzZ6SdZQ3Ntp2cGsAJ3L+dxu35U4ykr/72e
	3ktnzz2KUT7x3WJtYhGopyvuJIzPzITs0ZgZdu2xVs4W6L0xAZzLQoT+knZS575DBMtUT+TPTnI
	8AKkpR3LMdQIcdJzUV8iAgZEWDD9NBzz6cO/o7NwLLq0UwrCmWQGERxDVz805iwADom2MSw2025
	xOLneLcXLKOZ19Bg4c39UiUkg==
X-Received: by 2002:a05:7300:6da2:b0:2ba:8018:cc62 with SMTP id 5a478bee46e88-2be4e0abd99mr5228221eec.38.1773080140424;
        Mon, 09 Mar 2026 11:15:40 -0700 (PDT)
Received: from ?IPV6:2a00:79e0:2e7c:8:237e:af03:2727:6f8c? ([2a00:79e0:2e7c:8:237e:af03:2727:6f8c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be4f82850fsm12031879eec.9.2026.03.09.11.15.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 11:15:39 -0700 (PDT)
Message-ID: <2034abb9-96b3-464f-af5a-d76b561c9b63@google.com>
Date: Mon, 9 Mar 2026 11:15:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/6] power: supply: max77759: add charger driver
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Mark Brown <broonie@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20260224-max77759-charger-v8-0-eb86bd570e9c@google.com>
 <20260224-max77759-charger-v8-5-eb86bd570e9c@google.com>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <20260224-max77759-charger-v8-5-eb86bd570e9c@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6270523E871
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273067-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,linuxfoundation.org,google.com,linux.intel.com,samsung.com,gmail.com,linux-foundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[google.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitsd@google.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Sebastian,

On 2/23/26 5:45 PM, Amit Sunil Dhamne via B4 Relay wrote:
> From: Amit Sunil Dhamne <amitsd@google.com>
>
> Add support for MAX77759 battery charger driver. This is a 4A 1-Cell
> Li+/LiPoly dual input switch mode charger. While the device can support
> USB & wireless charger inputs, this implementation only supports USB
> input. This implementation supports both buck and boost modes.
>
> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
> Reviewed-by: André Draszik <andre.draszik@linaro.org>
> ---
>
I hope you're doing well. I am sending a quick ping for this patch I 
emailed for a review :). I wanted to check if you need any further info 
or changes from my side.

Lore link for the patch:

https://lore.kernel.org/all/20260224-max77759-charger-v8-5-eb86bd570e9c@google.com/


Best Regards,

Amit


