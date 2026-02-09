Return-Path: <devicetree+bounces-264107-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBZsImElimlCHwAAu9opvQ
	(envelope-from <devicetree+bounces-264107-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 19:20:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 24295113756
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 19:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2C7D03006682
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 18:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4AFB2DE6FF;
	Mon,  9 Feb 2026 18:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lgl5AE0d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BAC2C11D3
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 18:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770661213; cv=none; b=OhgHfHYqEe1KZ2BjTHo1AB/yTQaSA22K2qVDZ0d8ljccX52t00xTlDpLMjTRZkzkccnRAa/WXHhjYz1oeNeMmQP1FdKjEBANcdOut0cpjIy+f0tkxhrMYweaDFj0giXxTv6us5kQd/uoITTld3L3LlMKRMu3Qo9fL4ViDzSXepE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770661213; c=relaxed/simple;
	bh=/Z5yt2oWOmU2bfIIiNcrfDmA9qc3h8e+hqkPxC3U1HQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r4o1mcefm/GHjw0mgsXQorc+i9LqzrueGYlaw5/hPN0UEvtBZRsQ953Ve49cBwNoZwvgSB2QreI4w9pd0/gvX0C2UYARErk4HzCxXV8wMXFwjVmoBGrSLSN+rwyLz3fg6wM8uuOJ3K49YtaEUnM6/Srl283RzNpw4yCqSXPKw6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lgl5AE0d; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7963af509f0so17925427b3.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 10:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770661213; x=1771266013; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FGFByPnEFRf0LM/uYZGp1EI046vvWPTETytQcURquF0=;
        b=Lgl5AE0dK/pmu+tRGL/wSPK6dGdzc6bb/poFAFlYGS+ljwgD8DAxhnFEUJp5rSVUfH
         ycH4H5EiBn5BbHTHhP/AGrCn2oO0JfjaXpcw9LVt2/HTB6mSHXy5rKXV/EEegx50P2mI
         n94JrirOKC+/bD75svYgwcWX3fPMkNDhtDnlojLUb1FZlJyc6FYL00MJlgoeRjd2dFpB
         GVcJvlOPDoep56rezbcb//dQ9vYGh3UNSv26yxedW1OqIOQmgJUE/IKvKfnf6gBMwZs5
         G4k4cNhN4RgLWLEKHSaUlYYq/vGo8G7vIj//X7JUig0nGpq02Z7KyqsYJPr8t2RLXY7f
         rjXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770661213; x=1771266013;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGFByPnEFRf0LM/uYZGp1EI046vvWPTETytQcURquF0=;
        b=NF3LVvsIfo3K58ze/TklcoHdtoRIp9ZGr/5Od04PEc6Py1ndiEozMxxfG49IMJpeo7
         gdFoKhbtd28PEjLk/8DlOBvQerBdKB9O0POYQTBI57VewBb8AREnISXhe4gFfaa1mvci
         6pch5QVWDX8ZpHZUxx62UZyBuwgjlTPPCeNZVuCN8Spj2Cm0e/BD/XRSpDwMd40dQHbJ
         Djni43eeOyPsM9Zn9+BXREQQco1ZapCq46s3r86zVjfTL9vTDxDk8vMqMGVi7c1HwWga
         22ZTzVHZ4YwHUAWXdY4bPjroctz4gCF56kaqEivzEW0He49/VS+SQAE//KSCmSfnmTwv
         /Vbw==
X-Forwarded-Encrypted: i=1; AJvYcCUxsZ4UVXM+R3enLMi6rhpq/9lnG1ptelOvxRwQeegZc8C38UEK6Z3QJSWpc9LXAa5YGMTYEgdbNZ7S@vger.kernel.org
X-Gm-Message-State: AOJu0YzlwBK7k87/3V8/juxV/5wVmB7cDKI4ZUvu3/CDkh266PrBjNPZ
	Sj3nh476uokQqyCfUeOq+x96ojVDzHww+HiZSkJzh8wKNLrkX/9K+CxtDtl/DI7E
X-Gm-Gg: AZuq6aLQnm8v7WWKXuxLeOdZG+d+ivuo0D6Yt+wcHO/co6r93PKHlD1VtbBClGXyzYF
	hXcDCU7TJULH4jsL28WNL0pTtCHNvbt42OTQ+QyE6aGVt4VdxvteQcrZUywMM0lgoKWV6IiHw4e
	y5uo5X4XwLuTdeyuWmxINZqn82Lap3LbrpGqRLtWDOut2WggMRuPZLGEPi5+k8+goEptqi3Dg+o
	Mr6+PIbdo94vwx5uLAqTa3eZThkixDEJBTjaQVIdgw6TuMAKQm8OXpkx60u1Mp2xf11ND2r5Hrp
	ymUFNV8cu/ETUGLbMFRFizmdIQyNzy7Y0L0yW51i9eDrKAyHuJyVkYVdFVcIIFz27X0vVboEMio
	JrUpi1B94XQFdB1Q81Qj6SYxdukWpLPaESy7BV44I7+8PI4hxcYqAaYz8ZhgOU2phsMzzYvQzSo
	Db3h6xBEkc6Cjes173/NFbHjHV
X-Received: by 2002:a05:690c:6c06:b0:796:5974:2a19 with SMTP id 00721157ae682-79659742b7cmr12456307b3.8.1770661212669;
        Mon, 09 Feb 2026 10:20:12 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7965705d5a1sm12602447b3.46.2026.02.09.10.20.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 10:20:12 -0800 (PST)
Message-ID: <73ec81de-86f8-477c-a5ca-aae83528dfab@gmail.com>
Date: Mon, 9 Feb 2026 20:20:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260209-cm36686-v2-0-a48126d2b124@gmail.com>
 <aYoBwFW4ZDFhmlvy@smile.fi.intel.com> <aYoCJMlaaPO8auIm@smile.fi.intel.com>
From: Erikas Bitovtas <xerikasxx@gmail.com>
Content-Language: en-US
In-Reply-To: <aYoCJMlaaPO8auIm@smile.fi.intel.com>
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
	TAGGED_FROM(0.00)[bounces-264107-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 24295113756
X-Rspamd-Action: no action



On 2/9/26 5:49 PM, Andy Shevchenko wrote:
> On Mon, Feb 09, 2026 at 05:48:22PM +0200, Andy Shevchenko wrote:
>> On Mon, Feb 09, 2026 at 04:23:40PM +0200, Erikas Bitovtas wrote:
>>> This patch series adds support for Capella cm36686 and cm36672p ambient
>>> light and proximity sensors.
>>>
>>> Capella cm36686 is a combined ambient light and proximity sensor with
>>> adjustable integration time, interrupt and hysteresis support. It has
>>> the slave address of 0x60. cm36672p is fully compatible with cm36686,
>>> except that it is a proximity-only sensor.
>>
>> So, can we share the code (assuming there is a driver and it already
>> uses or may be converted to regmap APIs)?
> 
> Ah, it's being added with the same driver... So, have you checked if there is
> any similar HW with the available driver in upstream?
> 

I checked only for other Capella sensors, I forgot that Vishay acquired Capella
Microsystems. Now that I checked, vcnl4040 uses the same registers and regfields
as cm36686 and can be used instead...
I am sorry for wasting your time. Should I add a fallback to vcnl4040's
devicetree schema and add cm36672p support by excluding the light channels instead?

