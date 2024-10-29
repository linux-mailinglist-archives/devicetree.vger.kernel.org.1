Return-Path: <devicetree+bounces-117138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C899B5267
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 20:08:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 591AB2847A6
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 19:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B49A12071EC;
	Tue, 29 Oct 2024 19:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sM/28zE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895961E0B93
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 19:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730228902; cv=none; b=Xn8JIJh1ITg/iqI1ih8P9iSOs9oBifWBIlu2Nad/nsDlWCBWvXgWVoA1ShAbGK6e8hPVGocb7csw1Kpq1bp4o/gRaO7Ooek2gaFgQqunAzEgGF5q7UNaNw2VPM5BhwrKJiHLsvQbTRBGZ6cECCXEBghZvaBDxKiOG5LbenMtw0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730228902; c=relaxed/simple;
	bh=yY5LpqdOElRadRCJuowZSZq81JkIliRHkDUwccuAL+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g/AR48G6ShMB80lBIM8C5a7VTd63CJZy26qJX8jG4c/MPdqoNURC2nOZjJPHhNWiVPphqubIWZsGJ4yuhIWD/XOTw6BB7cIwqAAmxEE+rgFkL/WlDaVJVNi1D9x0IWfdJEIKyMtdxxQqVfLkslvpkWRvsP0Eo8LaAz+IYyVmkWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sM/28zE0; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3e5fbc40239so3338090b6e.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 12:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730228898; x=1730833698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rlGn30DklL/urDleXUnytaBfc7Ob+lhX5NWuPUuinHw=;
        b=sM/28zE0geoX8ETMLDnz9eN4myS6Wys8tExNyqHjRLTEA1C8BJL9h50y31RFGrntrl
         55pArE97Ha4P7YEb0q6reNyTt+dqnihUCEPfHHyuv6Q5NmOOfTQwhKHjnzf55XIB+qRa
         /CJogkiYUIAEVvlW76FcUnKWhiWCH0Y5STZGPQW4r4tc75pG4WEdKUnnMjVQzaiAR+2M
         6/K9ngKLZNf4L3KJsemydDnIioHvFfWbY0q9sGvu9TyKMuzy5tOW8rK0+Uw/qDDchMFU
         7/bNQTJtuGNIbKqhZkS3FiDK4YpIBOq9CZK9cTdIgdRsxlYPzfAAfLoKJ3ay7BlisyCu
         zjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730228898; x=1730833698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rlGn30DklL/urDleXUnytaBfc7Ob+lhX5NWuPUuinHw=;
        b=gg/WCdUlTdxdOMxui/ZlGzJlyAD4no9jzYnqdhqm7URlwaby1y9KYw7LALYBlVEKZB
         v+EdOYwwPduH1jBtIEOtGb/KTkkEYPXmY4hjgJYpfv8G3BhUgNCIAO1l2a7ZU1VLe5xt
         wLH4X2CfPiDL9gc3/naumduYW+gL/HBRv2VTxGsFQCjfF+YeEvjKsh+w3NXhCoDjyZ89
         9yn34U6PtcHG2+R2oE7U4+m4tCov4ZqkjbznHR7IExBjPLtnqVgsFm2BZDT0lCbXKwkI
         CFrgcce/uBjUvv0LM5XdTpoKYVhLg4X7VXWmjoGGBXgcqpemsswnu75MRfNfngNO0nDr
         vleg==
X-Forwarded-Encrypted: i=1; AJvYcCXlvq1P+hKWLm9aXugjfk+trK6KYuHIr8cSkkiAqjj4+oSdOKRxUvszUXm6TvwAiOFlL2eIqM6xan49@vger.kernel.org
X-Gm-Message-State: AOJu0YxJWUel1gb4si1XiA79hoiS9SubOC6WHQvx7OW2aAvw6XUZ4UFT
	tYS7vBNWbLYUTZ5SDZOokQVncdg8K8OiD/kQ+8q8WGqvUVNi+HG9aMf4HIAechE=
X-Google-Smtp-Source: AGHT+IHPKjfiKjfGHsHKSK6I37pobWoBNX+4WfMYxGzdChYrjPcnQEXxAmF33gf7W6w5G6lruCBPaw==
X-Received: by 2002:a05:6808:22a6:b0:3e3:e3ae:b774 with SMTP id 5614622812f47-3e63848d667mr9196506b6e.36.1730228898592;
        Tue, 29 Oct 2024 12:08:18 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e6325b0ac3sm2237573b6e.36.2024.10.29.12.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 12:08:17 -0700 (PDT)
Message-ID: <139a7fb4-124a-4d0e-b1a1-32f8d2fb65f2@baylibre.com>
Date: Tue, 29 Oct 2024 14:08:15 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/8] iio: add support for the ad3552r AXI DAC IP
To: Angelo Dureghello <angelo@kernel-space.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20241028-wip-bl-ad3552r-axi-v0-iio-testing-v9-0-f6960b4f9719@kernel-space.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241028-wip-bl-ad3552r-axi-v0-iio-testing-v9-0-f6960b4f9719@kernel-space.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/28/24 4:45 PM, Angelo Dureghello wrote:
> Purpose is to add ad3552r AXI DAC (fpga-based) support.
> 
> The "ad3552r" AXI IP, a variant of the generic "DAC" AXI IP,
> has been created to reach the maximum speed (33MUPS) supported
> from the ad3552r. To obtain the maximum transfer rate, a custom
> IP core module has been implemented with a QSPI interface with
> DDR (Double Data Rate) mode.
> 
> The design is actually using the DAC backend since the register
> map is the same of the generic DAC IP, except for some customized
> bitfields. For this reason, a new "compatible" has been added
> in adi-axi-dac.c.
> 
> Also, backend has been extended with all the needed functions
> for this use case, keeping the names gneric.
> 
> The following patch is actually applying to linux-iio/testing.
> 
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


