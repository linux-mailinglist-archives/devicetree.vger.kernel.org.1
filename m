Return-Path: <devicetree+bounces-252796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B090DD02A6B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFB1E308F1AB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 12:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBD954CBAA6;
	Thu,  8 Jan 2026 12:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="koJLXys3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F904CBA9E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875109; cv=none; b=i+VLD/w5xCx6U7sZPtV22mn8L9BYyhOmQC7o3fTKTfq3HNTbShR0h6gvVQt9nl0zcSbO9IrmsQrX4rylz215Wb6XX4ivUDfpnKnfX4PxHPqMPtFes+iRtaWmXy8Rv5vKrSa6+hJlhcJkw1CG+tRkiW1SkPFx6n7YfvRLAuDsymU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875109; c=relaxed/simple;
	bh=aaHyXdS0nmiOSH+39v4TllnNhWztOoW+ppCJ7RxVa5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NCh3ajMvIjlKguvDYMSpLUcQTiMkdiwTz4nulxX8+LwcKJjju2sizbbL02sv5dmRCA9bNY0YnCKkcrukz9d9VZyz915HW/nHPrQF9fVdrQvzMm7LRjo8e7eTAm/YfdFstDEMpqNpJmc0hQScYAz8P00iOpjlrcpaWLBPAtixo8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=koJLXys3; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-93f5905e60eso1863779241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767875107; x=1768479907; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuHLAkpi+QoqrsNtnMo40SsdhSUfyacTFMUwhFx6NDQ=;
        b=koJLXys3IA+qyZ7CAZCe5pUZXZxq6kHVsMIHd4+B85mTLJqkMPydN+cmi3xx5f1Rt+
         cz+04Kza8mCuxWrxfc2kI6dWJTtI+MurnIS9KzApEIoWrh0V3p0ir5pq2cuzCvuZHrHt
         j6sXyTFEL5gAlMeiUV1up52QIUd+olw2bX7YV9MPpZoMdThDX/gW+EpOkNHsf5p842Al
         3vRgihucJdm6shRB07V+LqyTmlW398F207x7S2O5vqty/4s84k1R4JUUOMcpB7tgcFFt
         LKNPE4XR1bQb+lE4Og82o0Bt6rjPJ9xoF5cjF7GAUl9bXn/EKS32ocm/D9QZB2/lrUS9
         5YYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875107; x=1768479907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZuHLAkpi+QoqrsNtnMo40SsdhSUfyacTFMUwhFx6NDQ=;
        b=plCycgLNUdPMnq4mTlwYHnl06z1jY0dcdXHZ3HcpfjURByTkO+6HuhdENnMw2QbfqP
         KuXgqQjszd8mywPtBHOd+zwwwa68VlagtC1Gj3/pnQyCG9mGUH5HoFUokybNjCARutWM
         jw170b5ZOvwHEUDV91cDITEt5MrAqxZZMIpwOm2Oy2VR3Ulu8cHIf9tb3T2z29fQgsQK
         kn1fz3S7VoSMFfkeSXmTPONE2PZirYkEVMrkBCEMPWmPHQP59M1QxJy/RYEkvCbpEp0D
         uMLfAmsNrmBDS5FxuK4pVAp53MkoTv1z0ADPx74AwpolsQvFZAzs+LLRgS5whfB28brm
         dI0A==
X-Forwarded-Encrypted: i=1; AJvYcCU5ZeKj5hACKphCJYl77c5iFoNxn0//2aMDgT52wxOnCRK+Ww/JbV3Kffy014svzlxSDfTQBsTfwR23@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9wFwtHH0pwyEbLdZGNjaFEc79Zi9ZuVTTzMYycPNatoRE9uCk
	pUDsmC5KmRYREqCa6tiZ1d9F3kZi31HF2aFX/+Mx/qG4vBD4ACy1mg7G
X-Gm-Gg: AY/fxX7/c0Z//kXf9d/vSSPkajKZKhgzbQxnc3HLDmbRDCjpOW25+v6nEv913gI6uoo
	e7CJqPJbPstViiTCQUGohnlTvS1XHAmvHlXYsexo5mn7HNiWGJd5s1RtoZb5EXfudH5tUSmKOrx
	yG4k9s9zMKsGnVpVeuocNTEcBHPCSVOu45hirca9t+6btaSBnEU/pZtnjrf/nAd+zukLtAbMtuj
	VwLqqMEzvlcWmQSUEhNJPMaxX6sL7z1VGCzuYRKADN2zQxIRrcdcRwpQSxmrRrAdxMnP6lgi6WT
	pzzDk26Je800lDRZXqUiJPflPeya3QSNrWwGF9c0EQfCQkONFJSWjLoB2qQteHB4dNFZ1d0a5fW
	qGDz3M/briYPcmjIQu1EYqkKc5wQHwBNDne2T2y7L7aL8Im5EikOlmYzsfSd2rYGByaJyw7ghkm
	QfVUkQS5sy2m1VBALeLCE=
X-Google-Smtp-Source: AGHT+IEBwSk5QOmvxP7JWfiLaJmCUu07iMcs1hqKhN6MvYBXFCVIPi1VMHNI/PsFUx/a1aq7urblAw==
X-Received: by 2002:a05:6102:5714:b0:5db:d60a:6b1f with SMTP id ada2fe7eead31-5ecb6938423mr2317214137.23.1767875106642;
        Thu, 08 Jan 2026 04:25:06 -0800 (PST)
Received: from localhost ([2804:30c:2766:a500:b70:8c42:f792:bef6])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ae554sm5583799241.2.2026.01.08.04.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:25:05 -0800 (PST)
Date: Thu, 8 Jan 2026 09:26:51 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 1/9] spi: dt-bindings: change spi-{rx,tx}-bus-width to
 arrays
Message-ID: <aV-ii6pdDYA02euV@debian-BULLSEYE-live-builder-AMD64>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-1-145dc5204cd8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-1-145dc5204cd8@baylibre.com>

On 12/19, David Lechner wrote:
> Change spi-rx-bus-width and spi-tx-bus-width properties from single
> uint32 values to arrays of uint32 values. This allows describing SPI
> peripherals connected to controllers that have multiple data lanes for
> receiving or transmitting two or more words in parallel.
> 
> Each index in the array corresponds to a physical data lane (one or more
> wires depending on the bus width). Additional mapping properties will be
> needed in cases where a lane on the controller or peripheral is skipped.
> 
> Bindings that make use of this property are updated in the same commit
> to avoid validation errors.
> 
> The adi,ad4030 binding can now better describe the chips multi-lane
> capabilities, so that binding is refined and gets a new example.
> 
> Converting from single uint32 to array of uint32 does not break .dts/
> .dtb files since there is no difference between specifying a single
> uint32 value and an array with a single uint32 value in devicetree.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> 
> v4 changes:
> - New patch to replace data-lanes property patch.
> 
> In v3, Rob suggested possibly splitting the spi-controller.yaml file
> to have a way to make most SPI controllers have maxItems: 1 for these
> properties. I would like to avoid that because it doesn't seem scalable,
> e.g. if we need another similar split in the future, the number of
> combinations would grow exponentially (factorially?). I have an idea to
> instead do this using $dynamicAnchor and $dynamicRef, but dt-schema
> doesn't currently support that. So I propose we do the best we can for
> now with the current dt-schema and make further improvements later.
> 
> Also, in v3, I suggested that we could have leading 0s in the arrays
> to indicate unused lanes. But after further consideration, I think it's
> better to have separate lane-mapping properties for that purpose. It
> will be easier to explain and parse and be a bit more flexible that way.

LGTM
Reviewed-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

