Return-Path: <devicetree+bounces-212980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F259B444AB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:49:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 064BA1C231EF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 17:49:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7C83164D7;
	Thu,  4 Sep 2025 17:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AmP6AcG7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487E423B62B
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 17:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757008166; cv=none; b=qc5Y2au+B3K2AL3op8oxuCG0LGyZpPFh3VRP6wHmqJjHcmdvAGJ4l2z2XUuQ/ZITYfxOq5Q6Upfq44LCecZE4vJZDuU5C+KU+kghgBVDukH0IFVj7C//VbLTCSZYQ1XekaOBVuozOeb22JYZI3Bti7KpS2I/2XXpk6Qb6rzcQE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757008166; c=relaxed/simple;
	bh=YwNRepnk0GFRdhlc/QTbxMz71IwoSOYVL7SZjUS5WVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d4HxCTiEdGezVE9HW/8N2DFgpLM8PlMuKtO3yNbL5L3jOAQ2DKVnqWweCF8djxLcBysz/xwhE9BO8QgelvA0XOEGUNkiBrxA1uU8tsXlFVwxfOB3cR/ySOTmk5KV+ZIi9ZIBeG0blKhjzEmA+qwdHXVPs3N3lfyeTwEL5vqyryU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AmP6AcG7; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-61bf9ef4cc0so786911eaf.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757008163; x=1757612963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Ku4I0S3yP4ilH2tbjLZ7dKmCGzXQqH2zGJl3FpJ6pk=;
        b=AmP6AcG7ZwAzGdBtncriwXevjwKuCoBd0vn1EMQcWY1JFAhtt7IGPXUZrMWqNqJDrT
         Wu0rvhO3+DRglGxjwxwHr0jLeEiK9JwaJvyRcK+7443/JatE77ECXrJPlfzcBQxF0Kbg
         0nuSkEno+5CTgpMYdmqozrs69wHSgjIgy1J72H2AB1stsPuprZH3bOK75/smLeajtU6H
         SGMFefwUl3jMx2d0/4dR92WmtGTZG2xR/cJKOC+JElRtuKi1AEKyTooCDUzPYhhdQ8Di
         Wwsyb3pEiFIrNZbDr4uIylPXPTDjQnWCTiD4UXLCCN/Uoftk1GkdZeG/o6RHpnF2JrYy
         vmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757008163; x=1757612963;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Ku4I0S3yP4ilH2tbjLZ7dKmCGzXQqH2zGJl3FpJ6pk=;
        b=fKFi+Pt11z/RxwjyOlZhzC+cGNrgT8DlnaR1UXKj5Lcag+web7/f6ofICbxikPR4YZ
         RgLeNlLZB3asYPC3V8Ll5N6mjdX2ZXMU19jhqfPXT06Aeczu2DWkfm/x4PazkxSeAr6a
         scz3A54k/viwAKzvPvxAgtCuu7RppIaA8dsfzE3uWRFdTjkCngfK7wDG6QNQUihaQ+bn
         /ue4TfXQo13lUJZvrv8c2NWJEnj94F8UewmhtpranuZH+VNM5hhMAztibhPPUDcREofB
         2naSjV0FvFBgZ3vpUrc7SmuJIOnaiaytgSzTXJNfgNRF+Gv19tb3Ls97YKmWJE1odBRN
         Jvqw==
X-Forwarded-Encrypted: i=1; AJvYcCXh4ZVofiH+xkiXSLpsYzVKccajMm79zgg1udpGA6fzPsBnXaOvyhM93AKX44nqfvUGfd0GM58TPMVM@vger.kernel.org
X-Gm-Message-State: AOJu0YxKIXyiqg5NzxHVA5sYmkMHt5iInGui/qd5ftpnTyf3t7Gn9nuY
	8Q4/JEBL0/Js4+viBRzKzOg+3Qlgu/c677I5euR4qreo4rx+7j3qeG4JvTbQbKTrZ0k=
X-Gm-Gg: ASbGncvjFSW7W3OUJ8jQQWJbdBPbBuAYc8M7o2z8cHorWpSt1EPYO4YbE8ZZhQjNKsK
	8xjY+q7sqO9TdxcnzbuKUq9kw6fcsIVofSTLvGK04x+l509oAjSxkAppH1URRkSidx/DxFNON8c
	pIrBXUBcaaKr6E6pIYybjf7/gN5ShrzsDv7NvA1uU4DJh8RQG4BwmichMHXwYbTyPp8wDBaBdNy
	b3+ZU80dNAeto092iAIiLIOvLxrZ1hrl6EIDBeqI6pypeyOq4OdYFwYsLUQbICdLCN9A7/Tr6S4
	JdTqV2qlRSq5C29pH2xM+1OAw2OU9PycduoVjFVy8Yc++hz05IHGtrXt9K4H6a1zhPoIZePkEkS
	w8kzE0dlNRDicTfFfQN6x0LhxuVgW4p/6JJKTxKygPu/cEQJBNh1SGbRBE62p8yevpZhw9a3JP4
	IGyYxh5aJk8A==
X-Google-Smtp-Source: AGHT+IG4zBVlQRBxkma8GUNTG+C+W7SjfIE1L5FExVYDiBWoAchwsg2P9JCvYg0TiAjz/2GSVk2Rlg==
X-Received: by 2002:a05:6820:60f:b0:61e:2de0:4bba with SMTP id 006d021491bc7-61e335b37b7mr8977098eaf.2.1757008163249;
        Thu, 04 Sep 2025 10:49:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a178:aa1c:68f0:444a? ([2600:8803:e7e4:1d00:a178:aa1c:68f0:444a])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61e36e549a1sm1893178eaf.0.2025.09.04.10.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 10:49:22 -0700 (PDT)
Message-ID: <a3373804-08a4-4526-a432-c21a74ea3d6b@baylibre.com>
Date: Thu, 4 Sep 2025 12:49:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: adc: Add the NXP SAR ADC support for the
 s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250903102756.1748596-1-daniel.lezcano@linaro.org>
 <20250903102756.1748596-3-daniel.lezcano@linaro.org>
 <eedbfbfd1ba625b6750eb3ae20a69301b8bc3ef9.camel@gmail.com>
 <0bfce1eb-69f1-4dae-b461-234eb98ffce1@linaro.org>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <0bfce1eb-69f1-4dae-b461-234eb98ffce1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 9/4/25 12:40 PM, Daniel Lezcano wrote:
> 
> Hi Nuno,
> 
> On 03/09/2025 13:20, Nuno Sá wrote:
>> On Wed, 2025-09-03 at 12:27 +0200, Daniel Lezcano wrote:
>>> From: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
>>>
>>> The NXP S32G2 and S32G3 platforms integrate a successive approximation
>>> register (SAR) ADC. Two instances are available, each providing 8
>>> multiplexed input channels with 12-bit resolution. The conversion rate
>>> is up to 1 Msps depending on the configuration and sampling window.
>>>
>>> The SAR ADC supports raw, buffer, and trigger modes. It can operate
>>> in both single-shot and continuous conversion modes, with optional
>>> hardware triggering through the cross-trigger unit (CTU) or external
>>> events. An internal prescaler allows adjusting the sampling clock,
>>> while per-channel programmable sampling times provide fine-grained
>>> trade-offs between accuracy and latency. Automatic calibration is
>>> performed at probe time to minimize offset and gain errors.
>>>
>>> The driver is derived from the BSP implementation and has been partly
>>> rewritten to comply with upstream requirements. For this reason, all
>>> contributors are listed as co-developers, while the author refers to
>>> the initial BSP driver file creator.
>>>
>>> All modes have been validated on the S32G274-RDB2 platform using an
>>> externally generated square wave captured by the ADC. Tests covered
>>> buffered streaming via IIO, trigger synchronization, and accuracy
>>> verification against a precision laboratory signal source.
>>>
>>> Co-developed-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
>>> Signed-off-by: Alexandru-Catalin Ionita <alexandru-catalin.ionita@nxp.com>
>>> Co-developed-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
>>> Signed-off-by: Ciprian Costea <ciprianmarian.costea@nxp.com>
>>> Co-developed-by: Radu Pirea (NXP OSS) <radu-nicolae.pirea@oss.nxp.com>
>>> Signed-off-by: Radu Pirea (NXP OSS) <radu-nicolae.pirea@oss.nxp.com>
>>> Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
>>> Co-developed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>> ---
> 
> [ ... ]
> 
>> The above needs some discussion at the very least. Have you considered the IIO
>> DMA buffer interface? It should be extendable to accommodate any particularity
>> of your usecase (or we should at least discuss it).
>>
>> With it, you also gain a userspace interface where you can actually share DMA
>> buffers in a zero copy fashion. You can also share these buffers with USB
>> gadgets. For instance, with libiio, you would be able to fetch samples from your
>> host machine (through USB) in a very fast way (zero copy between IIO and USB).
>>
>> Setting up DMA to then "having" to push it to a SW buffer and needing a syscall
>> to retrieve the data seems counter-productive.
> 
> I've read a bit about the DMA engine. It is unclear how to use it and there are very few examples in the different drivers to refer to.
> 
> This proposed driver supports the RAW, BUFFER and TRIGGERED.
> 
> Shall I create an IIO device with the modes:
> 
> indio_dev->modes =
>     INDIO_DIRECT_MODE |

Only INDIO_DIRECT_MODE needs to be set here.

>     INDIO_BUFFER_HARDWARE |
>     INDIO_BUFFER_TRIGGERED
> 
> And then use:
> 
> devm_iio_triggered_buffer_setup()

Yes, use this and it will add INDIO_BUFFER_TRIGGERED to the flags.

> 
> and
> 
> devm_iio_dmaengine_buffer_setup_with_handle

Likewise, this will add INDIO_BUFFER_HARDWARE.

And you likely only need to call devm_iio_dmaengine_buffer_setup() which will
save some boilerplate code.

> 
> ?
> 
> 
> 


