Return-Path: <devicetree+bounces-113869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F23E9A9191
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 22:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23E431F234C4
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 20:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A9031FE0FE;
	Mon, 21 Oct 2024 20:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c9CBjxvp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7891C3F28
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 20:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729543757; cv=none; b=I4DPJQZGG22cRReZf/jm6yx5mZ5SxRVW4LN2HngrLDZk7+ki4tuZfpOM/EPgMgM9gLGJNbQ1Va5bHcyTiHZK8e5JSy+oZPCT9tFm3oP+Idm20VUjnJLcJy4mfGeqjT5ygv37NfOb2ZRbpVAZdvcCh+zNjaGhw6yuNJsyjIuH8fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729543757; c=relaxed/simple;
	bh=ZfTgfJUgIZyPW+LZsUJr56UVHGhS9OjGp7pormuj6Wo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tYOm+8SQ2PrtvF8LxGljVbeuMgeNOMlgmicpHFPcuwoy05do1wlDuy6UJiCO03Hrgv+LsJhf+r+oe+KNuWTl/QCQBgad9X0lUY7m6xDrumI3ehp2Y0QCNBNdijsjbJVRPfEfRhMDHcvuZiKM3q6YNJKCXR90QZFROTmePKz0aUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c9CBjxvp; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-288916b7fceso2448098fac.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729543753; x=1730148553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cHER1rdbewyxMbtZSXmYD5wXpGyy1P9l08fJZ6Fwh0I=;
        b=c9CBjxvpe9L/+oxJZyfOl26ZwqIDciFGFltYfrxx5GcCN9XBAaOkMguFHLZxy9NUI2
         +OTt2AY0MQy2QvVE6UlSBNKYB7Pw8tQol6RyqeuaMamAwUEfhhd7ZFxdvTRJohRK9u5U
         TVUuqNUYswlxTUdl9XeA6OnWXnMErmxx3AskTASqu44Pumfx1NqrmGLOd0O34C6Xo7+d
         zF2BiyXRGBs67FyXSh0JzrflZ8v41ueMnNqIH4fJobBnDjwczH4MkwQpLieRf56j3Jun
         KmNbQbsokNgDtlnH/rpzNlCA7+zwxeSuKFz09QbXI9T7BaXScUTrH4Q/1LxcRib/Yuge
         5/nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729543753; x=1730148553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cHER1rdbewyxMbtZSXmYD5wXpGyy1P9l08fJZ6Fwh0I=;
        b=qeO9FR0FhPVMQv8N3y1WaCsrFq7qYlaUkltCo6bwX7VPu5pkQyEah7prTZEdrsUyff
         NOp7CNFDNT5XtSEuDjOEV4Qln1xSvI5TToWZx0u266izZmhLa0fMu46kjQFi7y2Q2l8b
         5VlBitevDgk2uC4XeR0w/NG7+Wa4+lKfn3haD8wC6k2C3k2cadRJvEuWkB6IOcgu1z6m
         2B2vO5F3cA/j7s275J4ExRj1GgNeaRcPbiqPWYlKnwUNFdcWBz7mQtEtYCzoDen/1wBU
         mR/r6u80eB5doWzxeHtWTAjRfvPKS+PIGuFfQUlNooY/5Q7uvqh+jL9azVbWdUhtkqoc
         kOHw==
X-Forwarded-Encrypted: i=1; AJvYcCX9bx8teVB3fFGA0H88aHtHJNIySyT2IZG9kBf4rDx71ig9Wd9jA+AprAsAqXjMmiJ2AIA3cQP6lvux@vger.kernel.org
X-Gm-Message-State: AOJu0YzExs439kVb2KA3xySyd11OU/3NnzhHTvDkcHVpi26knAg5vTBk
	cL5seWfMWa7LNRxaD2rYf9fmaloxKdC5TvfEZQ5joZziK4zHs/ZyPS7VyuGEZxo=
X-Google-Smtp-Source: AGHT+IGmmrpTSr9WxLkmT+4UpgNt4QVTickW9FzWdpqPfYRED/JvnLlv4SD13b9FTYMHdJ1OsaXAjw==
X-Received: by 2002:a05:6870:c155:b0:288:e7f2:e9db with SMTP id 586e51a60fabf-28cb0195834mr324709fac.41.1729543752845;
        Mon, 21 Oct 2024 13:49:12 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-28c79426ea7sm1309274fac.54.2024.10.21.13.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 13:49:11 -0700 (PDT)
Message-ID: <02c951d2-cac0-435c-8d3e-48374d42cfa8@baylibre.com>
Date: Mon, 21 Oct 2024 15:49:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] iio: adc: ad7380: fix several supplies issues
To: Julien Stephan <jstephan@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-doc@vger.kernel.org
References: <20241021-ad7380-fix-supplies-v2-0-2ca551b3352a@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241021-ad7380-fix-supplies-v2-0-2ca551b3352a@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/21/24 5:00 AM, Julien Stephan wrote:
> Hello,
> 
> This series tries to fix several issues found on the ad7380 driver about
> supplies:
> 
> - vcc and vlogic are required, but are not retrieved and enabled in the
> probe function
> - ad7380-4 is the only device from the family that does not have internal
> reference and uses REFIN instead of REFIO for external reference.
> 
> driver, bindings, and doc are fixed accordingly
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
For the series: 

Reviewed-by: David Lechner <dlechner@baylibre.com>


