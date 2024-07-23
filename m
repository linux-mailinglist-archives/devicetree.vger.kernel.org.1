Return-Path: <devicetree+bounces-87632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BCC93A1E8
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 15:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82C65B22373
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC501509A0;
	Tue, 23 Jul 2024 13:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AW8jZL4C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0F5137C34
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 13:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721742487; cv=none; b=ZwjZyDgFDFlM2FlMdtXj1tQAWCP1sspT9+Rr6bGgZ+zRMhlKtwMddGlBf28XCsyw3P5c44vFCPY1Uj/mxRrH/fBVt8r9b+SEfOYMjIswrI68AVOPnORCoNOa+t19Scn/qH37y9IqERtGokKAwcp5AbwXHRHUdI+OrusFypcBQ+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721742487; c=relaxed/simple;
	bh=wLC84+drlWdwVKDEcyc2HQlpIn8JD+FRk2GS95CTUXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XSLBO4ZuQZ7rh5zqTKCFtGXQZCwn9HLQfRjPSHLTCjBbHe3MYdURWwaGWIfGypB17Oe2S7RUQHFU72grYCQBwJ5duALCtdkh8exK7oH/PGYuaTMk/hAytbuYpto94CHqRBYa/lY/I6U+Sx8B81TeMpIqGJ01qCk9cfiOKJ4+xGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AW8jZL4C; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-703631c4930so2843567a34.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 06:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721742485; x=1722347285; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K0YXOXnrdhIFIRlCWz4PNo5db4DQk3/6vTvbcfzMZEg=;
        b=AW8jZL4CRAy6q8PAETfs5l3aj1yQtOdfTFu6RMMhg7r2rGThnkEuw3Lgf7n3sRVpAa
         j8my5q15/zzlAM0SWE5mNQZ+cNRH5H/1EHjUheKoro09owTJy09G/XaAzfW2Y5lUe4MT
         rOlEBPGFkmWHjE/Z2sbgxNqgMEo+lYOzGgtqZXRHNjOmAdrHUaT2E5GB+Vni6g5UTH/g
         qHJha5FpxABjSePzV1iID4uQHXv42PpvEst5uQl0txQmX8OT2rbWlOqVcVJR3G9xCF3t
         5jnf3ya/E/d9GuJNdFlCW+jTYTI16sDsg2Ub5JPUz/j7yY8vHKNxKNIDgnilLT/b9DDo
         dZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721742485; x=1722347285;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K0YXOXnrdhIFIRlCWz4PNo5db4DQk3/6vTvbcfzMZEg=;
        b=TY6jmQ/mPouYVvsSqPXg0Wxwcc7+H1pFypUzkYYKRifytK6X9BxRzck2JUFBQrmk3M
         5tdHK8G5UEb91M4ieWUpBTdf62IHTmGyFxn/Gs9iQSGL3F5F0i9/R54NfD/Xc75ndzQP
         /6C6w7OT/4vE9cljSJERZkXk1Qkz1PbCDY83aYVrswSfUzbk8yynKWVyvPwyFvCWYvxD
         BXyUfTAQWjNYNuUDcB6A3X+GSKp0sOzTclr680XRTfoBjr6yXmD9h01Za3P85EmvYNxN
         /B05LgY+8QXEfHdmP6g9Dp4adDVOiIzSNJigDmt59JRsz/Kprd6fwul+N1yHQVcr+mBs
         sMqA==
X-Forwarded-Encrypted: i=1; AJvYcCXXG9pnWD6pJlvZvlvfP0F1R96w+pBXuM1o6mJMcudbv8RaoOmvV5Hsmc4KNuQeZnCD0FGUtoGscMF4Fsp6WD1AStmee15QSpI32w==
X-Gm-Message-State: AOJu0Yx3R7iE3X4JxGH7cl52poM3Nc0GpxohMawwjgIElGcTQP5UTc2x
	+4W7g3HwPgqYmoF89bME3y4oqddbxTY0LE/zaltzUddh84e+V93LqJEVSMF3vaY=
X-Google-Smtp-Source: AGHT+IFeNUa8Q6yQYiY6Gp7Bcv69p6K29cfx+ZG9llkagfN1y1cWJYdttCHqcIKlE109ZY6nVmDZMg==
X-Received: by 2002:a05:6830:2801:b0:703:5ba3:581b with SMTP id 46e09a7af769-70918096ec3mr3152908a34.5.1721742484871;
        Tue, 23 Jul 2024 06:48:04 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-708f6174f6fsm2027023a34.58.2024.07.23.06.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 06:48:04 -0700 (PDT)
Message-ID: <9fd9ed71-4b2d-49a7-9432-1747ae2e9aef@baylibre.com>
Date: Tue, 23 Jul 2024 08:48:02 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 0/9] spi: axi-spi-engine: add offload support
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com>
 <75511e8371f7ffea1ed84a784231f3dc51363842.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <75511e8371f7ffea1ed84a784231f3dc51363842.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 7/23/24 2:35 AM, Nuno Sá wrote:
> Hi David,
> 
> 
> I think there are things that we need to better figure but things are improving
> IMO :)
> 
> I'm only doing a very superficial review since I need to better look at the
> patches...
> 
> But one thing that I do want to mention is a scenario (another funny one...)
> that I've discussing and that might be a reality. Something like:
> 
> +-------------------------------+    +------------------+
> |                               |    |                  |
> |  SOC/FPGA                     |    |   ADC            |
> |                               |    |                  |
> |       +---------------+       |    |                  |
> |       |  SPI PS Zynq  |============== SPI Bus         |
> |       +---------------+       |    |                  |
> |                               |    |                  |
> |  +---------------------+      |    |                  |
> |  | AXI SPI Engine      |      |    |                  |
> |  |                 v================ DATA Bus         |
> |  |                 v   |      |    |                  |
> |  |   +---------------+ |      |    |                  |
> |  |  | Offload 0     |  |      |    +------------------+
> |  |  |   RX DATA OUT |  |      |
> |  |  |    TRIGGER IN |  |      |
> |  |  +---------------+  |      |
> |                               |
> +-------------------------------+
> 
> From the above, the spi controller for typical register access/configuration is
> not the spi_enigine and the offload core is pretty much only used for streaming
> data. So I think your current approach would not work with this usecase. In your
> first RFC you had something overly complicated (IMHO) but you already had a
> concept that maybe it's worth looking at again. I mean having a spi_offload
> object that could describe it and more importantly have a provider/consumer
> logic where a spi consumer (or maybe even something else?) can get()/put() an
> offload object to stream data.

Although it isn't currently implemented this way in the core SPI code, I think
the DT bindings proposed in this version of the series would allow for this.
The offload provider is just the one with the #spi-offload-cells and doesn't
necessarily have to be the parent of the SPI peripheral.

> 
> I know, I did said that I did not liked for spi consumers to have to explicitly
> call something like spi_offload_get() but I guess I have been proved wrong :).
> We can also try to be smart about it as an explicit get is only needed (likely)
> in the above scenario (or maybe we can even do it directly in the spi core
> during spi_probe()). Or maybe it's not worth it to play smart and just let
> consumers do it (that's the typical pattern anyways).
> 
> Having said the above, I still think your current proposal for triggers and
> getting DMA streams is valid for the above usecase.
> 
> FWIW, I'm also trying to understand with the HW guys why the hell can't we just
> use the spi_engine controller for everything. But the whole discussion is
> already showing us that we may need more flexibility.
> 
> Thanks!
> - Nuno Sá


