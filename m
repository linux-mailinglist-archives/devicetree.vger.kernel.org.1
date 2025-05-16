Return-Path: <devicetree+bounces-178015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC74FAB9F75
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 17:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 316E016DD7D
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 15:06:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD8D2AE6F;
	Fri, 16 May 2025 15:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="H6lfXKCX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C1F186E2D
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 15:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747407991; cv=none; b=Z8JoB/nsauoD4zM2bVNbQoO7mcqFYXrsQpY5H/JVGd75OZzhcL8wSoHYUvsuRvhlgMTCcK0fM7ilGNHfVZ1xEcNA4YBa5ps12OvfQ0nYhK1xT4A3XAIVVIF9digce5kyQk0Zx86dv3u2dD2WmKOFSYO/NJHk1JL1gZYkZjqdEG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747407991; c=relaxed/simple;
	bh=EwgaVrrNvERrVo6hXlK0vZlvt3rGO0/7YjrZNN42uI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=uICxh7Yqj8tgSK6m4Hyvd19MzSPUWYZFs1cNpn4uVebxGxWMz6tZjoRsH1hsOZU8U6NJ9Z7uwS47jPZFXuJKOclT8BuYFryHbU4r6ASd0CRrgMfPxUT9DBgRRA9pnVtYmp5zKIcWWDkizFMibMxozBa/5vHlq0P5oTk5ApqCGYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=H6lfXKCX; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-40356cb3352so1771132b6e.1
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 08:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747407988; x=1748012788; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L+mgC+9iYaOnkRUrISmU6CJ9rOcEfvgTcCvItE6s9B4=;
        b=H6lfXKCX16A/wxVj4/NqMWKAXL23Gnb4H+j1NqaZWJge5SgYA42vKEN2BE4bICwOKN
         XYm0jBqSh5TATXpCLAEcRULAZ0gGt/iWMFpWXSNa1hKGSR+cI+As6jqmjWDEiKj2N+lQ
         TIgiNpMi3KLMJpl8QKayeC28v2MW+t6hgDB1VixYaC7fEwAFZiR28bZepbDEuqp0LWoO
         RAVD9k2VCwxFJFowGwxv1zmiw0joyqCpm7hI5X6CxmHLJtKxHpvSDNooWftnMAqBF1LX
         nVvU3WJTbX0EQWlPG8lJDOtxNqOIwJmuopsNbAnYAQlPJxuEuu9SB1M87BR9DJJoaG4/
         NPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747407988; x=1748012788;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L+mgC+9iYaOnkRUrISmU6CJ9rOcEfvgTcCvItE6s9B4=;
        b=QazazYNGQYdb5hNECbjfiY6wgphbBFUr7om986LGXHOrzVinNQ/W1KSVt1HLMuy349
         npmbpCt0QbHg57wOSTwXJdIiN7uLAy8da8JQZFvnTJ4YnP1CsZhy2kxVbwgWn+2kPuy2
         9CKPDIjFaF4X6MlWn4NlgxZ3AlduLYcO47bjmqypxMwkU7EaZT53En6ObK0Px6Arc+cL
         8BqYu+LdCBEyjtyCZV3ROalArSSYqoam4KWFIFTgW5vdcFIe/u/42y1No9MxW8c7G946
         ip5TnuTK+cwqDP8g/YECf356yRFi4eZWxB2xIB01KRSEhUrFQ8gZg2jiy6jwgr7HI9TI
         AqHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4LY8yc1oNNYu42s3FwpFtqxvbv3SF4QEFsmI77KXLETeHcPur+lViahruYfdA+D2GnKUQaHfW5gee@vger.kernel.org
X-Gm-Message-State: AOJu0YwvBiYNM2OBMBcnd3mFQZRxzLMNo4zrLCvl1eUpqa1o1GcC1X54
	03CqnKlb1YpVPpweFV6FM1I4hBHEc2rhEOZQvxGlnI4ja7ry38kKr4f8edD/vd/38SM=
X-Gm-Gg: ASbGnctb0uaVZKnBtimTZWznkJAcU8aobDl/j432TzPPV+l+VGSl0dYN4SZGNiDHcpa
	Js7+7DU+VZ9vmnOFp9Yy63qOIgKGU83A+edr9HqM+3cuHgP7NF8+sb7iyt4J+aoC9Ehul+hMDtI
	3Jlhxk5ZAFfOQ7FnikQgp6dRAPC+2fsIzCEV9g6G9gtnvmN6KCbgI/nXO3H9BmermyU0pu+1NGK
	GaJ+K7W6AfTzF173oGc7/kSF/AATtyORrAkznGM8495Ho0PuU4tH9BgGJcCfk6CgovPHgiymXWw
	txFcfpU+wfV4O9u6wCVZH98bcilGhvKW0kXFu0ziU+VVqB/e4ngOs6SBYLvI1pG0F+Gz5G7f1dw
	RZsO7xy0dZi1wfZW1D477U6L+NWrJjvvL8bHi
X-Google-Smtp-Source: AGHT+IGwybJrLLcmMkITpWBEXTSEnwjYmONKAkl8G2GKlvK5oZqmeJ3ESVy2dHunVHsEPZoATzAbkg==
X-Received: by 2002:a05:6808:1452:b0:3f3:d699:e1a8 with SMTP id 5614622812f47-404cd743b0fmr4674851b6e.13.1747407988522;
        Fri, 16 May 2025 08:06:28 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d2f:9b08:7c22:3090? ([2600:8803:e7e4:1d00:d2f:9b08:7c22:3090])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-609f3000be0sm419083eaf.26.2025.05.16.08.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 May 2025 08:06:28 -0700 (PDT)
Message-ID: <6f764086-5644-44c3-be29-c16b7eddb6b8@baylibre.com>
Date: Fri, 16 May 2025 10:06:26 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/4] iio: adc: adi-axi-adc: add
 axi_adc_oversampling_ratio_set
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250516105810.3028541-1-pop.ioan-daniel@analog.com>
 <20250516105810.3028541-3-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250516105810.3028541-3-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/16/25 5:58 AM, Pop Ioan Daniel wrote:
> Add support for setting decimation rate.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


