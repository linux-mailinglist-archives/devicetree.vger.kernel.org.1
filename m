Return-Path: <devicetree+bounces-94850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E51956ECF
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36F46282785
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E2F60DCF;
	Mon, 19 Aug 2024 15:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="csgDOIBF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4414964D
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724081626; cv=none; b=gAH29dM4y6SIOWKKpXHd/cuz+YDc+ZrUE7XREpPyzhXTdrkC1u5y61rWV/bufcRNrtr49vuFSBiwrZcZszn8zfBGFyUndy1kLS/LnuEy2lmg1zlN0aHvJsE9STkwP89BOGPTcLJ/vRhl0rDIIdytA8/9lgw6d9Pw8mtilqNmYVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724081626; c=relaxed/simple;
	bh=Li4HtcxN71jzGrexxm+zQo8nWsEHwBcOm0yeIgTPTN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QNtx321ceqAxXaUTAhKUlfiTQMmwJj4/H6V3L7a6yxrl6mTCHPHX0lb5LDlO7AxyYuQHSaC8dCPd6DyIfS+lL1bCpvaw3AlXFsE88AndYdDBbFSGVtgIF82fuUV4WtRk6j/D7a//BEvn99yTZGuGRPZBWDSuOLkqchfTC3daw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=csgDOIBF; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3db18842a4dso2844548b6e.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 08:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724081623; x=1724686423; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NU3U23GKCuYq/Ylsob2wz7pN+1xAA1HJWk8KaCIZfQ4=;
        b=csgDOIBFEeB+IoqLO2ZTws42GFAOyQq7qSbzMCY0BuOh51JiGmU1DdnlEI/SBAoGhh
         FOKulx8PLyNtAwRNl/Q1u9jCpeQUmifw3YE/P0HGVF59OtLBX4vAQnkCdBrnYqc6Yhi8
         OO9yW+sHT3bg4AaQV1/6FEgHEa0e+Qjx2O+ShALScj6zB3dnaGg/IFe/BrurjgbMUoA/
         xL2HS4YzsC10GAm836mGwikjnznrZ9CvHMb2LBQ/a5pfu+aID8ET3L5pYOebvC1E0xhJ
         ACWiDnldrylYFQXd7LYzfFrPlcjb6/S5IXulTUy4RNgczO9ZkgiwN8Y3lsAUVuj5HpHx
         BqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724081623; x=1724686423;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NU3U23GKCuYq/Ylsob2wz7pN+1xAA1HJWk8KaCIZfQ4=;
        b=KitHBCIimADJhqj10KGSdAJGyj009yVu97If6/pcq4mv5FtTKplKipMLs/xKTSVnKx
         J8D+Y5c4jjLTpnceUgGSU3WhE8+iwVjrLXK63Zfp9HNsv3DmctRTOSWb0fwJuVbQG8dU
         9ntJFfYFFdwTGkD5ttP7pIicjB/GmsaxNLMXw8OU+90q8MQ5ktfcKnxTqBbJKoXJ/BKF
         BxLSI1BckjG6agebXsIRMBcDHpkzwYXVSH+OWUc9DgALrHEcZxjLU4XZKmlnuyEWZFRx
         60AV+025yxhAK25P5SfMEgJ4Nt4+gqPbzNByg9PM2dWZYYzZ3sK6B2t7ZgBkwfEJK99v
         cTMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX91d53LX7YH+OKahU2q01DtCIdia888IFuaUp4WuERVpnncO7JAlJSqO+r5630G8QJOZ2D9fMAbBml6x+f2s4LSF8mufin9OFrtg==
X-Gm-Message-State: AOJu0YxwDfNWTv4V8CsmFfLa85PckvmzIadEqO/8qQPnEPtJCESoxiae
	7HFh1ykwuRmZYL9DGwBR2W4Cz7QibGu0DzZu7r23B+BhyYa7lQUXMZwMkUoWWkg=
X-Google-Smtp-Source: AGHT+IFc2h/Q3kwclZpxHSSQoE/44UCvWbMzjNvb+iPkNIj9ksMQ4Q9fbRgkwskrfJdUapAJPCqYdA==
X-Received: by 2002:a05:6808:330a:b0:3d9:db77:f4d3 with SMTP id 5614622812f47-3ddb4d16b89mr4129b6e.2.1724081623291;
        Mon, 19 Aug 2024 08:33:43 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3dd33d400b4sm2326958b6e.11.2024.08.19.08.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 08:33:42 -0700 (PDT)
Message-ID: <3c4edf41-fd3b-4258-9b9e-a81b25568403@baylibre.com>
Date: Mon, 19 Aug 2024 10:33:41 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] iio: adc: ad7606: add support for AD7606C-{16,18}
 parts
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20240819064721.91494-1-aardelean@baylibre.com>
 <20240819064721.91494-8-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240819064721.91494-8-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 8/19/24 1:47 AM, Alexandru Ardelean wrote:
> The AD7606C-16 and AD7606C-18 are pretty similar with the AD7606B.
> The main difference between AD7606C-16 & AD7606C-18 is the precision in
> bits (16 vs 18).
> Because of that, some scales need to be defined for the 18-bit variants, as
> they need to be computed against 2**18 (vs 2**16 for the 16 bit-variants).
> 
> Because the AD7606C-16,18 also supports bipolar & differential channels,
> for SW-mode, the default range of 10 V or ±10V should be set at probe.
> On reset, the default range (in the registers) is set to value 0x3 which
> corresponds to '±10 V single-ended range', regardless of bipolar or
> differential configuration.
> 
> Aside from the scale/ranges, the AD7606C-16 is similar to the AD7606B.
> 
> And the AD7606C-18 variant offers 18-bit precision. The unfortunate effect
> of this 18-bit sample size, is that there is no simple/neat way to get the
> samples into a 32-bit array without having to do a home-brewed bit-buffer.
> The ADC must read all samples (from all 8 channels) in order to get the
> N-th sample (this could be reworked to do up-to-N-th sample for scan-direct).
> There doesn't seem to be any quick-trick to be usable to pad the samples
> up to at least 24 bits.
> Even the optional status-header is 8-bits, which would mean 26-bits of data
> per sample.
> That means that when using a simple SPI controller (which can usually read
> 8 bit multiples) a simple bit-buffer trick is required.
> 
Maybe it would be better to just use .bits_per_word = 18 for the 18-bit
ADC and not worry about "simple" SPI controller support for that one?


